Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/internal_dwa?download=true
inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_destroy:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63 ; 2 uses
  %.not51.2 = icmp eq ptr %i.bi, null
  br i1 %.not51.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !31
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
  store i64 %4, ptr %i.i, align 8, !tbaa !86
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
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 1 ; 7 uses
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
  store ptr @sLegacyChannelRules, ptr %i.ac, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 25, ptr %i.ad, align 8, !tbaa !50
  br label %DwaCompressor_readChannelRules.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %i.l, 2
  br i1 %i.ae, label %bb.g, label %DwaCompressor_readChannelRules.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = load i16, ptr %i.k, align 2, !tbaa !60  ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = icmp ult i16 %i.af, 2
  %i.ai = icmp ult i64 %i.l, %i.ag
  %or.cond549 = or i1 %i.ah, %i.ai
  br i1 %or.cond549, label %DwaCompressor_readChannelRules.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ag ; 2 uses
  %i.al = add nsw i64 %i.ag, -2                   ; 3 uses
  %.not92.i = icmp eq i64 %i.al, 0
  br i1 %.not92.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.i

bb.i:                                             ; preds = %Classifier_destroy.exit.i, %.lr.ph.i
  %.03783.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bt, %Classifier_destroy.exit.i ]
  %.06082.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bk, %Classifier_destroy.exit.i ] ; 4 uses
  %.06181.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.bl, %Classifier_destroy.exit.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ap = icmp ult i64 %.06181.i, 4
  br i1 %i.ap, label %DwaCompressor_readChannelRules.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(129) %i.b, i8 0, i64 129, i1 false)
  %i.aq = add i64 %.06181.i, -3                   ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.j
  %.04560.i.i = phi i64 [ 0, %bb.j ], [ %i.bf, %bb.q ] ; 8 uses
  %7 = icmp ugt i64 %.04560.i.i, %i.aq
  br i1 %7, label %.thread53.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.06082.i, i64 %.04560.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !58  ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %.04560.i.i
  store i8 %i.as, ptr %i.au, align 1, !tbaa !58
  %i.av = add nuw nsw i64 %.04560.i.i, 1          ; 3 uses
  %.not = icmp ult i64 %.04560.i.i, %i.aq
  br i1 %.not, label %bb.n, label %.thread53.i.i

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.06082.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !58  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !58
  %i.ba = add nuw nsw i64 %.04560.i.i, 2          ; 4 uses
  %8 = icmp ugt i64 %i.ba, %i.aq
  br i1 %8, label %.thread53.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.06082.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !58  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ba
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !58
  %i.bf = add nuw nsw i64 %.04560.i.i, 3          ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %i.bf, 129
  br i1 %exitcond.not.i.i.2, label %.thread53.i.i, label %bb.k, !llvm.loop !170

.thread.i.i:                                      ; preds = %bb.p, %bb.n, %bb.l
  %.04560.i.i.lcssa768 = phi i64 [ %.04560.i.i, %bb.l ], [ %i.av, %bb.n ], [ %i.ba, %bb.p ] ; 2 uses
  %i.bg = add nuw nsw i64 %.04560.i.i.lcssa768, 1 ; 3 uses
  %i.bh = tail call ptr %i.ao(i64 noundef %i.bg) #21, !inline_history !171 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %.thread53.i.i, label %bb.r

.thread53.i.i:                                    ; preds = %.thread.i.i, %bb.k, %bb.m, %bb.o, %bb.q
  %.046.ph.i.i = phi i32 [ 23, %bb.k ], [ 23, %bb.q ], [ 23, %bb.o ], [ 23, %bb.m ], [ 1, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %DwaCompressor_readChannelRules.exit.thread

bb.r:                                             ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.bg, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %.06082.i, i64 %i.bg ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !58  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bl = sub i64 %i.aq, %.04560.i.i.lcssa768     ; 2 uses
  %i.bm = icmp ugt i8 %i.bj, 63
  br i1 %i.bm, label %Classifier_destroy.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !58
  %i.bp = and i8 %i.bj, 12
  %i.bq = icmp eq i8 %i.bp, 12
  %i.br = icmp ugt i8 %i.bo, 2
  %or.cond.i = select i1 %i.bq, i1 true, i1 %i.br
  %spec.select.i = select i1 %or.cond.i, i32 23, i32 0
  br label %Classifier_destroy.exit.i

Classifier_destroy.exit.i:                        ; preds = %bb.s, %bb.r
  %.147.i.ph.i = phi i32 [ 23, %bb.r ], [ %spec.select.i, %bb.s ] ; 2 uses
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !31
  tail call void %i.bs(ptr noundef nonnull %i.bh) #21, !inline_history !172
  %i.bt = add i64 %.03783.i, 1                    ; 2 uses
  %i.bu = icmp eq i32 %.147.i.ph.i, 0             ; 2 uses
  %i.bv = icmp ne i64 %i.bl, 0
  %i.bw = and i1 %i.bu, %i.bv
  br i1 %i.bw, label %bb.i, label %._crit_edge.i, !llvm.loop !173

._crit_edge.i:                                    ; preds = %Classifier_destroy.exit.i
  br i1 %i.bu, label %._crit_edge.thread.i, label %DwaCompressor_readChannelRules.exit.thread

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.h
  %.037.lcssa118.i = phi i64 [ %i.bt, %._crit_edge.i ], [ 0, %bb.h ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.037.lcssa118.i, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ca = mul i64 %.037.lcssa118.i, 24            ; 2 uses
  %i.cb = tail call ptr %i.bz(i64 noundef %i.ca) #21, !inline_history !174 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %DwaCompressor_readChannelRules.exit.thread, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ca, i1 false)
  %.not93.i = icmp eq i64 %.037.lcssa118.i, 0
  br i1 %.not93.i, label %DwaCompressor_readChannelRules.exit, label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %bb.t, %Classifier_read.exit51.i
  %.089.i = phi i64 [ %i.dv, %Classifier_read.exit51.i ], [ 0, %bb.t ] ; 2 uses
  %.16287.i = phi i64 [ %.3.i, %Classifier_read.exit51.i ], [ %i.al, %bb.t ] ; 4 uses
  %.06486.i = phi ptr [ %.165.i, %Classifier_read.exit51.i ], [ %i.aj, %bb.t ] ; 6 uses
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.089.i ; 6 uses
  %i.cg = icmp ult i64 %.16287.i, 4
  br i1 %i.cg, label %Classifier_read.exit51.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph91.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(129) %i.a, i8 0, i64 129, i1 false)
  %i.ch = add i64 %.16287.i, -3                   ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  %.04560.i44.i = phi i64 [ 0, %bb.u ], [ %i.cw, %bb.ab ] ; 8 uses
  %9 = icmp ugt i64 %.04560.i44.i, %i.ch
  br i1 %9, label %.thread53.i46.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.06486.i, i64 %.04560.i44.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !58  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %.thread.i49.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04560.i44.i
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !58
  %i.cm = add nuw nsw i64 %.04560.i44.i, 1        ; 3 uses
  %.not780 = icmp ult i64 %.04560.i44.i, %i.ch
  br i1 %.not780, label %bb.y, label %.thread53.i46.i

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %.06486.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !58  ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.thread.i49.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !58
  %i.cr = add nuw nsw i64 %.04560.i44.i, 2        ; 4 uses
  %10 = icmp ugt i64 %i.cr, %i.ch
  br i1 %10, label %.thread53.i46.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %.06486.i, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !58  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %.thread.i49.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !58
  %i.cw = add nuw nsw i64 %.04560.i44.i, 3        ; 2 uses
  %exitcond.not.i45.i.2 = icmp eq i64 %i.cw, 129
  br i1 %exitcond.not.i45.i.2, label %.thread53.i46.i, label %bb.v, !llvm.loop !170

.thread.i49.i:                                    ; preds = %bb.aa, %bb.y, %bb.w
  %.04560.i44.i.lcssa765 = phi i64 [ %.04560.i44.i, %bb.w ], [ %i.cm, %bb.y ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.cx = add nuw nsw i64 %.04560.i44.i.lcssa765, 1 ; 3 uses
  %i.cy = tail call ptr %i.cd(i64 noundef %i.cx) #21, !inline_history !171 ; 3 uses
  %.not.i50.i = icmp eq ptr %i.cy, null
  br i1 %.not.i50.i, label %.thread53.i46.i, label %bb.ac

.thread53.i46.i:                                  ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %.thread.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %Classifier_read.exit51.i

bb.ac:                                            ; preds = %.thread.i49.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cy, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.cx, i1 false)
  store ptr %i.cy, ptr %i.cf, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 22
  store i16 0, ptr %i.cz, align 2, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.da = getelementptr inbounds nuw i8, ptr %.06486.i, i64 %i.cx ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !58  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !58  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 4 uses
  %i.df = sub i64 %i.ch, %.04560.i44.i.lcssa765   ; 4 uses
  %i.dg = zext i8 %i.db to i32                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 4
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !56
  %i.dk = icmp ugt i8 %i.db, 63
  br i1 %i.dk, label %Classifier_read.exit51.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = lshr i32 %i.dg, 2
  %i.dm = and i32 %i.dl, 3                        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !57
  %i.do = icmp eq i32 %i.dm, 3
  br i1 %i.do, label %Classifier_read.exit51.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = and i8 %i.db, 1
  %i.dq = zext nneg i8 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i16 %i.dq, ptr %i.dr, align 4, !tbaa !54
  %i.ds = icmp ugt i8 %i.dd, 2
  br i1 %i.ds, label %Classifier_read.exit51.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = zext nneg i8 %i.dd to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !52
  br label %Classifier_read.exit51.i

Classifier_read.exit51.i:                         ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.thread53.i46.i, %.lr.ph91.i
  %.165.i = phi ptr [ %.06486.i, %.lr.ph91.i ], [ %.06486.i, %.thread53.i46.i ], [ %i.de, %bb.af ], [ %i.de, %bb.ac ], [ %i.de, %bb.ad ], [ %i.de, %bb.ae ]
  %.3.i = phi i64 [ %.16287.i, %.lr.ph91.i ], [ %.16287.i, %.thread53.i46.i ], [ %i.df, %bb.af ], [ %i.df, %bb.ac ], [ %i.df, %bb.ad ], [ %i.df, %bb.ae ]
  %i.dv = add nuw i64 %.089.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dv, %.037.lcssa118.i
  br i1 %exitcond.not.i, label %DwaCompressor_readChannelRules.exit, label %.lr.ph91.i, !llvm.loop !175

DwaCompressor_readChannelRules.exit:              ; preds = %Classifier_read.exit51.i, %bb.e, %bb.t
  %.0496 = phi ptr [ %i.k, %bb.e ], [ %i.ak, %bb.t ], [ %i.ak, %Classifier_read.exit51.i ] ; 3 uses
  %i.dw = call fastcc i32 @DwaCompressor_initializeBuffers(ptr noundef %0, ptr noundef %i.c) ; 2 uses
  %.not441 = icmp eq i32 %i.dw, 0
  br i1 %.not441, label %bb.ag, label %DwaCompressor_readChannelRules.exit.thread

bb.ag:                                            ; preds = %DwaCompressor_readChannelRules.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !187
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !188
  store i64 %i.ec, ptr %i.c, align 8, !tbaa !48
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !61 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !62 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.0496, i64 %.sroa.5.0.copyload ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.sroa.6.0.copyload ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %.sroa.7.0.copyload ; 3 uses
  %i.ek = icmp ugt ptr %.0496, %i.j
  %i.el = icmp slt i64 %.sroa.5.0.copyload, 0
  %or.cond480 = select i1 %i.ek, i1 true, i1 %i.el
  %i.em = icmp ugt ptr %i.eh, %i.j
  %or.cond481 = select i1 %or.cond480, i1 true, i1 %i.em
  %i.en = icmp slt i64 %i.h, 0
  %or.cond483 = or i1 %i.en, %or.cond481
  %i.eo = icmp ugt ptr %i.ei, %i.j
  %or.cond484 = select i1 %or.cond483, i1 true, i1 %i.eo
  br i1 %or.cond484, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = icmp slt i64 %i.i, 0
  %i.eq = icmp ugt ptr %i.ej, %i.j
  %or.cond485 = select i1 %i.ep, i1 true, i1 %i.eq
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.8.0.copyload
  %i.es = icmp ugt ptr %i.er, %i.j
  %or.cond487 = select i1 %or.cond485, i1 true, i1 %i.es
  br i1 %or.cond487, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = icmp ugt i64 %.sroa.0.0.copyload, 2
  br i1 %i.et, label %DwaCompressor_readChannelRules.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @DwaCompressor_setupChannelData(ptr noundef %0)
  %.not444 = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not444, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !48
  %i.ew = icmp ugt i64 %.sroa.4.0.copyload, %i.ev
  br i1 %i.ew, label %DwaCompressor_readChannelRules.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.dx, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !63
  %i.fc = tail call i32 @exr_uncompress_buffer(ptr noundef %i.ez, ptr noundef %.0496, i64 noundef %.sroa.5.0.copyload, ptr noundef %i.fb, i64 noundef %.sroa.4.0.copyload, ptr noundef null) #21
  %.not445 = icmp eq i32 %i.fc, 0
  br i1 %.not445, label %bb.am, label %DwaCompressor_readChannelRules.exit.thread

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.not446 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not446, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fd = load ptr, ptr %i.ed, align 8, !tbaa !61 ; 3 uses
  %.not447 = icmp eq ptr %i.fd, null
  br i1 %.not447, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = shl nuw i64 %.sroa.11.0.copyload, 1     ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !87
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i64 %.sroa.13.0.copyload, label %DwaCompressor_readChannelRules.exit.thread [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fi = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !189
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !190
  %i.fn = tail call i32 @internal_huf_decompress(ptr noundef %i.fi, ptr noundef %i.eh, i64 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.fd, i64 noundef %.sroa.11.0.copyload, ptr noundef %i.fk, i64 noundef %i.fm) #21 ; 2 uses
  %.not450 = icmp eq i32 %i.fn, 0
  br i1 %.not450, label %bb.as, label %DwaCompressor_readChannelRules.exit.thread

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46
  %i.fr = call i32 @exr_uncompress_buffer(ptr noundef %i.fq, ptr noundef %i.eh, i64 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.fd, i64 noundef %i.fe, ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not448 = icmp eq i32 %i.fr, 0                 ; 2 uses
  %i.fs = load i64, ptr %i.d, align 8
  %.not449 = icmp eq i64 %i.fe, %i.fs
  %.0391 = select i1 %.not448, i32 23, i32 %i.fr
  %cond10 = select i1 %.not448, i1 %.not449, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br i1 %cond10, label %bb.as, label %DwaCompressor_readChannelRules.exit.thread

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.am
  %.not451 = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not451, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.ft = shl nuw i64 %.sroa.12.0.copyload, 1     ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !88
  %i.fw = icmp ugt i64 %i.ft, %i.fv
  br i1 %i.fw, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fx = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 184
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 192
  %i.ga = call i32 @internal_decode_alloc_buffer(ptr noundef %i.fx, i32 noundef 3, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fz, i64 noundef %i.ft) #21 ; 2 uses
  %.not453 = icmp eq i32 %i.ga, 0
  br i1 %.not453, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !46
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 184
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !189
  %i.gg = call i32 @exr_uncompress_buffer(ptr noundef %i.gd, ptr noundef %i.ei, i64 noundef %.sroa.7.0.copyload, ptr noundef %i.gf, i64 noundef %i.ft, ptr noundef nonnull %i.e) #21
  %.not454 = icmp eq i32 %i.gg, 0
  %i.gh = load i64, ptr %i.e, align 8
  %.not455 = icmp eq i64 %i.ft, %i.gh
  %or.cond489 = select i1 %.not454, i1 %.not455, i1 false
  br i1 %or.cond489, label %bb.aw, label %.thread

.thread:                                          ; preds = %bb.at, %bb.au, %bb.av
  %.2393.ph = phi i32 [ 23, %bb.av ], [ %i.ga, %bb.au ], [ 23, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %DwaCompressor_readChannelRules.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gi = load ptr, ptr %i.ef, align 8, !tbaa !62
  %i.gj = load ptr, ptr %i.dx, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !189
  call void @internal_zip_reconstruct_bytes(ptr noundef %i.gi, ptr noundef %i.gl, i64 noundef %i.ft) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.as
  %.not452 = icmp eq i64 %.sroa.12.0.copyload, 0
  br i1 %.not452, label %bb.ay, label %DwaCompressor_readChannelRules.exit.thread

end_hunk_0
