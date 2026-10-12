Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/gif?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
@gif_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @gif_options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"gifflags\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"set GIF flags\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"offsetting\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"enable picture offsetting\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"transdiff\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"enable transparency detection between frames\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"gifimage\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"enable encoding only images per frame\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"global_palette\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"write a palette to the global gif header where feasible\00", align 1
@gif_options = internal constant [6 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 48, i32 1, %union.anon.2 { i64 3 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 17, [4 x i8] zeroinitializer, ptr @.str.6 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 17, [4 x i8] zeroinitializer, ptr @.str.6 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 17, [4 x i8] zeroinitializer, ptr @.str.6 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 52, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 56, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [52 x i8] c"GIF does not support resolutions above 65535x65535\0A\00", align 1
@ff_lzw_encode_state_size = external local_unnamed_addr constant i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"avctx->pix_fmt == AV_PIX_FMT_PAL8\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"libavcodec/gif.c\00", align 1
@gif89a_sig = internal unnamed_addr constant [6 x i8] c"GIF89a", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"No available color, can not use transparency\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Could not allocated remapped frame buffer.\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"%dx%d image at pos (%d;%d) [area:%dx%d]\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @gif_encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 65535
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = icmp sgt i32 %i.g, 65535
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16) #10
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store i32 -1, ptr %i.i, align 8, !tbaa !33
  %i.j = load i32, ptr @ff_lzw_encode_state_size, align 4, !tbaa !34
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @av_mallocz(i64 noundef %i.k) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = load i32, ptr %i.c, align 8, !tbaa !29
  %i.o = load i32, ptr %i.f, align 4, !tbaa !30
  %i.p = shl i32 %i.n, 1
  %i.q = mul i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 1000                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.r, ptr %i.s, align 8, !tbaa !36
  %i.t = sext i32 %i.r to i64
  %i.u = tail call noalias ptr @av_malloc(i64 noundef %i.t) #10
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !37
  %i.w = load i32, ptr %i.c, align 8, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = tail call noalias ptr @av_malloc(i64 noundef %i.x) #10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store ptr %i.y, ptr %i.z, align 8, !tbaa !38
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !37
  %.not19 = icmp eq ptr %i.aa, null
  br i1 %.not19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !35
  %.not20 = icmp eq ptr %i.ab, null
  br i1 %.not20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !39
  %i.af = tail call i32 @avpriv_set_systematic_pal2(ptr noundef nonnull %i.ac, i32 noundef %i.ae) #10
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !39
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 470) #10
  tail call void @abort() #11
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.f, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -12, %bb.d ], [ -12, %bb.f ], [ -12, %bb.e ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @gif_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 13 uses
  %i.b = alloca [256 x i32], align 16             ; 7 uses
  %i.c = alloca [256 x i8], align 16              ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  %i.j = mul i32 %i.g, 7
  %i.k = mul i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 5
  %i.m = add nsw i32 %i.l, 16384
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.n) #10 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !67
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = icmp eq i32 %i.x, 11
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1084 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !69
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ad, ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i64 1024, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.1, %.preheader.i ] ; 4 uses
  %.020.i = phi i32 [ 255, %bb.d ], [ %spec.select17.i.1, %.preheader.i ] ; 2 uses
  %.01218.i = phi i32 [ -1, %bb.d ], [ %spec.select.i.1, %.preheader.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.ag = lshr i32 %i.af, 24                      ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, %.020.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 %.01218.i
  %spec.select17.i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %.020.i) ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = lshr i32 %i.ak, 24                      ; 2 uses
  %i.am = icmp samesign ult i32 %i.al, %spec.select17.i
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select.i.1 = select i1 %i.am, i32 %i.an, i32 %spec.select.i ; 2 uses
  %spec.select17.i.1 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %spec.select17.i) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %get_palette_transparency_index.exit, label %.preheader.i, !llvm.loop !40

get_palette_transparency_index.exit:              ; preds = %.preheader.i
  %i.ao = icmp samesign ult i32 %spec.select17.i.1, 128
  %i.ap = select i1 %i.ao, i32 %spec.select.i.1, i32 -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !33
  store i32 1, ptr %i.ab, align 4, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !71
  %.not44 = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not44, ptr %i.aa, ptr null
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.ad, ptr noundef nonnull dereferenceable(1024) %i.aa, i64 1024)
  %.not45 = icmp eq i32 %bcmp, 0
  %spec.store.select = select i1 %.not45, ptr null, ptr %i.aa
  br label %bb.f

bb.f:                                             ; preds = %get_palette_transparency_index.exit, %bb.e, %bb.b
  %.0 = phi ptr [ %spec.store.select, %bb.e ], [ null, %bb.b ], [ %spec.select, %get_palette_transparency_index.exit ] ; 8 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !68    ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34 ; 10 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !28  ; 16 uses
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !30  ; 13 uses
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !29  ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1088
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !33
  %.fr.i = freeze i32 %i.ba                       ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !72 ; 3 uses
  %i.bd = and i32 %i.bc, 2
  %.not.i52 = icmp eq i32 %i.bd, 0
  br i1 %.not.i52, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73
  %.not199.i = icmp eq ptr %i.bf, null
  br i1 %.not199.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not200.i = icmp eq ptr %.0, null
  %i.bg = zext i1 %.not200.i to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.bg, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 -1, i64 1024, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 52 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !74
  %.not201.i = icmp eq i32 %i.bj, 0
  %i.bk = icmp sgt i32 %.fr.i, -1                 ; 2 uses
  %or.cond79.not84.i = and i1 %i.bk, %.not201.i
  %.not2330.i.i = icmp sgt i32 %i.ax, 0
  %or.cond80.i = select i1 %or.cond79.not84.i, i1 %.not2330.i.i, i1 false
  br i1 %or.cond80.i, label %.preheader.lr.ph.i.i, label %is_image_translucent.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %.not28.i.i = icmp sgt i32 %i.ay, 0
  %i.bl = sext i32 %i.av to i64                   ; 5 uses
  br i1 %.not28.i.i, label %.preheader.us.preheader.i.i, label %is_image_translucent.exit.thread.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ay to i64 ; 3 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %..critedge_crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.01732.us.i.i = phi i32 [ %i.br, %..critedge_crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ]
  %.02131.us.i.i = phi ptr [ %i.bq, %..critedge_crit_edge.us.i.i ], [ %i.at, %.preheader.us.preheader.i.i ] ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %..critedge_crit_edge.us.i.i, label %bb.k, !llvm.loop !41

bb.k:                                             ; preds = %bb.j, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02131.us.i.i, i64 %indvars.iv.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !75
  %i.bo = zext i8 %i.bn to i32
  %i.bp = icmp eq i32 %.fr.i, %i.bo
  br i1 %i.bp, label %is_image_translucent.exit.i, label %bb.j

..critedge_crit_edge.us.i.i:                      ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %.02131.us.i.i, i64 %i.bl
  %i.br = add nuw nsw i32 %.01732.us.i.i, 1       ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.br, %i.ax
  br i1 %exitcond38.not.i.i, label %is_image_translucent.exit.thread.i, label %.preheader.us.i.i, !llvm.loop !42

is_image_translucent.exit.i:                      ; preds = %bb.k
  %i.bs = trunc i32 %i.bc to i1
  br i1 %i.bs, label %bb.l, label %gif_crop_translucent.exit.i

bb.l:                                             ; preds = %is_image_translucent.exit.i
  %i.bt = add nsw i32 %i.ay, -1                   ; 7 uses
  %i.bu = add nsw i32 %i.ax, -1                   ; 6 uses
  %i.bv = icmp sgt i32 %i.ax, 1
  br i1 %i.bv, label %.preheader116.us.preheader.i.i, label %.thread104.i.i

.preheader116.us.preheader.i.i:                   ; preds = %bb.l
  %wide.trip.count156.i = zext nneg i32 %i.bu to i64
  br label %.preheader116.us.i.i

.preheader116.us.i.i:                             ; preds = %._crit_edge.us.i.i, %.preheader116.us.preheader.i.i
  %indvars.iv150.i.i = phi i64 [ 0, %.preheader116.us.preheader.i.i ], [ %indvars.iv.next151.i.i, %._crit_edge.us.i.i ] ; 4 uses
  %i.bw = mul nsw i64 %indvars.iv150.i.i, %i.bl
  %invariant.gep.i.i = getelementptr i8, ptr %i.at, i64 %i.bw
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next.i221.i = add nuw nsw i64 %indvars.iv.i220.i, 1 ; 2 uses
  %exitcond.not.i222.i = icmp eq i64 %indvars.iv.next.i221.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i222.i, label %._crit_edge.us.i.i, label %bb.n, !llvm.loop !43

bb.n:                                             ; preds = %bb.m, %.preheader116.us.i.i
  %indvars.iv.i220.i = phi i64 [ 0, %.preheader116.us.i.i ], [ %indvars.iv.next.i221.i, %bb.m ] ; 2 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i220.i
  %i.bx = load i8, ptr %gep.i.i, align 1, !tbaa !75
  %i.by = zext i8 %i.bx to i32
  %.not.us.i.i = icmp eq i32 %.fr.i, %i.by
  br i1 %.not.us.i.i, label %bb.m, label %.thread.i.i

._crit_edge.us.i.i:                               ; preds = %bb.m
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %exitcond157.i = icmp eq i64 %indvars.iv.next151.i.i, %wide.trip.count156.i
  br i1 %exitcond157.i, label %.thread104.i.i, label %.preheader116.us.i.i

.thread.i.i:                                      ; preds = %bb.n
  %indvars155.le.i = trunc i64 %indvars.iv150.i.i to i32 ; 5 uses
  %i.bz = icmp sgt i32 %i.bu, %indvars155.le.i
  br i1 %i.bz, label %.preheader.us.preheader.i217.i, label %.thread104.i.i

.preheader.us.preheader.i217.i:                   ; preds = %.thread.i.i
  %i.ca = zext nneg i32 %i.ax to i64
  %i.cb = add nsw i64 %i.ca, -1
  %sext205.i = shl i64 %indvars.iv150.i.i, 32
  %i.cc = ashr exact i64 %sext205.i, 32
  br label %.preheader.us.i218.i

.preheader.us.i218.i:                             ; preds = %._crit_edge.us125.i.i, %.preheader.us.preheader.i217.i
  %indvars.iv159.i.i = phi i64 [ %i.cb, %.preheader.us.preheader.i217.i ], [ %indvars.iv.next160.i.i, %._crit_edge.us125.i.i ] ; 3 uses
  %i.cd = mul nsw i64 %indvars.iv159.i.i, %i.bl
  %invariant.gep204.i.i = getelementptr i8, ptr %i.at, i64 %i.cd
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next155.i.i = add nuw nsw i64 %indvars.iv154.i.i, 1 ; 2 uses
  %exitcond158.not.i.i = icmp eq i64 %indvars.iv.next155.i.i, %wide.trip.count.i.i
  br i1 %exitcond158.not.i.i, label %._crit_edge.us125.i.i, label %bb.p, !llvm.loop !44

bb.p:                                             ; preds = %bb.o, %.preheader.us.i218.i
  %indvars.iv154.i.i = phi i64 [ 0, %.preheader.us.i218.i ], [ %indvars.iv.next155.i.i, %bb.o ] ; 2 uses
  %gep205.i.i = getelementptr i8, ptr %invariant.gep204.i.i, i64 %indvars.iv154.i.i
  %i.ce = load i8, ptr %gep205.i.i, align 1, !tbaa !75
  %i.cf = zext i8 %i.ce to i32
  %.not91.us.i.i = icmp eq i32 %.fr.i, %i.cf
  br i1 %.not91.us.i.i, label %bb.o, label %.thread104.loopexit.i.i

._crit_edge.us125.i.i:                            ; preds = %bb.o
  %indvars.iv.next160.i.i = add nsw i64 %indvars.iv159.i.i, -1 ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv.next160.i.i, %i.cc
  br i1 %i.cg, label %.preheader.us.i218.i, label %.thread104.i.i

.thread104.loopexit.i.i:                          ; preds = %bb.p
  %i.ch = trunc nsw i64 %indvars.iv159.i.i to i32
  br label %.thread104.i.i

.thread104.i.i:                                   ; preds = %._crit_edge.us.i.i, %._crit_edge.us125.i.i, %.thread104.loopexit.i.i, %.thread.i.i, %bb.l
  %.241.i = phi i32 [ %indvars155.le.i, %.thread.i.i ], [ %indvars155.le.i, %._crit_edge.us125.i.i ], [ %indvars155.le.i, %.thread104.loopexit.i.i ], [ 0, %bb.l ], [ %i.bu, %._crit_edge.us.i.i ] ; 5 uses
  %.083121.i.i = phi i32 [ %i.bu, %.thread.i.i ], [ %indvars155.le.i, %._crit_edge.us125.i.i ], [ %i.ch, %.thread104.loopexit.i.i ], [ %i.bu, %bb.l ], [ %i.bu, %._crit_edge.us.i.i ] ; 4 uses
  %.not85.i = icmp eq i32 %i.ay, 1
  br i1 %.not85.i, label %.thread109.i.i, label %.lr.ph128.preheader.i.i

.lr.ph128.preheader.i.i:                          ; preds = %.thread104.i.i
  %i.ci = icmp slt i32 %.241.i, %.083121.i.i
  %i.cj = sext i32 %.241.i to i64                 ; 2 uses
  br i1 %i.ci, label %.lr.ph128.i.us.preheader.i, label %.thread109.i.i

.lr.ph128.i.us.preheader.i:                       ; preds = %.lr.ph128.preheader.i.i
  %wide.trip.count160.i = zext nneg i32 %i.bt to i64 ; 2 uses
  br label %.lr.ph128.i.us.i

.lr.ph128.i.us.i:                                 ; preds = %._crit_edge.i.loopexit.us.i, %.lr.ph128.i.us.preheader.i
  %indvars.iv167.i.us.i = phi i64 [ 0, %.lr.ph128.i.us.preheader.i ], [ %indvars.iv.next168.i.us.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  %invariant.gep206.i.us.i = getelementptr i8, ptr %i.at, i64 %indvars.iv167.i.us.i
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.q, %.lr.ph128.i.us.i
  %indvars.iv162.i.us.i = phi i64 [ %i.cj, %.lr.ph128.i.us.i ], [ %indvars.iv.next163.i.us.i, %bb.q ] ; 2 uses
  %i.ck = mul nsw i64 %indvars.iv162.i.us.i, %i.bl
  %gep207.i.us.i = getelementptr i8, ptr %invariant.gep206.i.us.i, i64 %i.ck
  %i.cl = load i8, ptr %gep207.i.us.i, align 1, !tbaa !75
  %i.cm = zext i8 %i.cl to i32
  %.not93.i.us.i = icmp eq i32 %.fr.i, %i.cm
  br i1 %.not93.i.us.i, label %bb.q, label %.thread107.i.i

bb.q:                                             ; preds = %.lr.ph.i.us.i
  %indvars.iv.next163.i.us.i = add nsw i64 %indvars.iv162.i.us.i, 1 ; 2 uses
  %lftr.wideiv165.i.us.i = trunc i64 %indvars.iv.next163.i.us.i to i32
  %exitcond166.not.i.us.i = icmp eq i32 %.083121.i.i, %lftr.wideiv165.i.us.i
  br i1 %exitcond166.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !45

._crit_edge.i.loopexit.us.i:                      ; preds = %bb.q
  %indvars.iv.next168.i.us.i = add nuw i64 %indvars.iv167.i.us.i, 1 ; 2 uses
  %exitcond161.i = icmp eq i64 %indvars.iv.next168.i.us.i, %wide.trip.count160.i
  br i1 %exitcond161.i, label %.thread109.i.i, label %.lr.ph128.i.us.i

.thread107.i.i:                                   ; preds = %.lr.ph.i.us.i
  %indvars133.le = trunc i64 %indvars.iv167.i.us.i to i32 ; 5 uses
  %i.cn = icmp sgt i32 %i.bt, %indvars133.le
  br i1 %i.cn, label %.lr.ph131.us.preheader.i.i, label %.thread109.i.i

.lr.ph131.us.preheader.i.i:                       ; preds = %.thread107.i.i
  %sext206.i = shl i64 %indvars.iv167.i.us.i, 32
  %i.co = ashr exact i64 %sext206.i, 32
  br label %.lr.ph131.us.i.i

.lr.ph131.us.i.i:                                 ; preds = %._crit_edge132.us.i.i, %.lr.ph131.us.preheader.i.i
  %indvars.iv177.i.i = phi i64 [ %wide.trip.count160.i, %.lr.ph131.us.preheader.i.i ], [ %indvars.iv.next178.i.i, %._crit_edge132.us.i.i ] ; 3 uses
  %invariant.gep208.i.i = getelementptr i8, ptr %i.at, i64 %indvars.iv177.i.i
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next173.i.i = add nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %lftr.wideiv175.i.i = trunc i64 %indvars.iv.next173.i.i to i32
  %exitcond176.not.i.i = icmp eq i32 %.083121.i.i, %lftr.wideiv175.i.i
  br i1 %exitcond176.not.i.i, label %._crit_edge132.us.i.i, label %bb.s, !llvm.loop !46

bb.s:                                             ; preds = %bb.r, %.lr.ph131.us.i.i
  %indvars.iv172.i.i = phi i64 [ %i.cj, %.lr.ph131.us.i.i ], [ %indvars.iv.next173.i.i, %bb.r ] ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv172.i.i, %i.bl
  %gep209.i.i = getelementptr i8, ptr %invariant.gep208.i.i, i64 %i.cp
  %i.cq = load i8, ptr %gep209.i.i, align 1, !tbaa !75
  %i.cr = zext i8 %i.cq to i32
  %.not95.us.i.i = icmp eq i32 %.fr.i, %i.cr
  br i1 %.not95.us.i.i, label %bb.r, label %.thread109.loopexit.i.i

._crit_edge132.us.i.i:                            ; preds = %bb.r
  %indvars.iv.next178.i.i = add nsw i64 %indvars.iv177.i.i, -1 ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next178.i.i, %i.co
  br i1 %i.cs, label %.lr.ph131.us.i.i, label %.thread109.i.i

.thread109.loopexit.i.i:                          ; preds = %bb.s
  %i.ct = trunc nsw i64 %indvars.iv177.i.i to i32
  br label %.thread109.i.i

.thread109.i.i:                                   ; preds = %._crit_edge.i.loopexit.us.i, %._crit_edge132.us.i.i, %.thread109.loopexit.i.i, %.thread107.i.i, %.lr.ph128.preheader.i.i, %.thread104.i.i
  %.246.i = phi i32 [ %indvars133.le, %.thread107.i.i ], [ %i.bt, %.lr.ph128.preheader.i.i ], [ %indvars133.le, %.thread109.loopexit.i.i ], [ 0, %.thread104.i.i ], [ %indvars133.le, %._crit_edge132.us.i.i ], [ %i.bt, %._crit_edge.i.loopexit.us.i ] ; 3 uses
  %.086119.i.i = phi i32 [ %i.bt, %.thread107.i.i ], [ %i.bt, %.lr.ph128.preheader.i.i ], [ %i.ct, %.thread109.loopexit.i.i ], [ 0, %.thread104.i.i ], [ %indvars133.le, %._crit_edge132.us.i.i ], [ %i.bt, %._crit_edge.i.loopexit.us.i ]
  %reass.sub = sub i32 %.083121.i.i, %.241.i
  %i.cu = add i32 %reass.sub, 1                   ; 2 uses
  %reass.sub131.i = sub i32 %.086119.i.i, %.246.i
  %i.cv = add i32 %reass.sub131.i, 1              ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.22, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef %.246.i, i32 noundef %.241.i, i32 noundef %i.ay, i32 noundef %i.ax) #10
  br label %gif_crop_translucent.exit.i

is_image_translucent.exit.thread.i:               ; preds = %..critedge_crit_edge.us.i.i, %.preheader.lr.ph.i.i, %bb.i
  %i.cw = and i32 %i.bc, 1
  %.not.i223.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i223.i, label %gif_crop_translucent.exit.i, label %bb.t

bb.t:                                             ; preds = %is_image_translucent.exit.thread.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = icmp ne ptr %.0, null
  %or.cond.i224.i = or i1 %i.da, %i.cz
  br i1 %or.cond.i224.i, label %gif_crop_translucent.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !68 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = add i32 %i.ay, -1                       ; 9 uses
  %i.df = add i32 %i.ax, -1                       ; 9 uses
  %i.dg = icmp sgt i32 %i.ax, 1
  br i1 %i.dg, label %.lr.ph.preheader.i232.i, label %._crit_edge111.i.i

.lr.ph.preheader.i232.i:                          ; preds = %bb.u
  %i.dh = sext i32 %i.dd to i64                   ; 2 uses
  %i.di = sext i32 %i.av to i64                   ; 2 uses
  %wide.trip.count.i233.i = zext nneg i32 %i.df to i64
  %i.dj = sext i32 %i.ay to i64                   ; 3 uses
  %bcmp.i104.i = tail call i32 @bcmp(ptr %i.db, ptr readonly %i.at, i64 %i.dj)
  %.not84.i105.i = icmp eq i32 %bcmp.i104.i, 0
  br i1 %.not84.i105.i, label %.lr.ph.i.preheader, label %._crit_edge.i225.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i232.i
  %exitcond.not.i237.i205 = icmp eq i32 %i.df, 1
  br i1 %exitcond.not.i237.i205, label %._crit_edge111.i.i, label %.lr.ph.i234.i.lr.ph, !llvm.loop !47

.lr.ph.i234.i.lr.ph:                              ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i234.i, !llvm.loop !47

.lr.ph.i234.i:                                    ; preds = %.lr.ph.i234.i.lr.ph, %.lr.ph.i
  %indvars.iv.next.i236.i206 = phi i64 [ 1, %.lr.ph.i234.i.lr.ph ], [ %indvars.iv.next.i236.i, %.lr.ph.i ] ; 5 uses
  %i.dk = mul nsw i64 %indvars.iv.next.i236.i206, %i.dh
  %i.dl = getelementptr inbounds i8, ptr %i.db, i64 %i.dk
  %i.dm = mul nsw i64 %indvars.iv.next.i236.i206, %i.di
  %i.dn = getelementptr inbounds i8, ptr %i.at, i64 %i.dm
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.dl, ptr readonly %i.dn, i64 %i.dj)
  %.not84.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not84.i.i, label %.lr.ph.i, label %._crit_edge.i225.loopexit.i, !llvm.loop !47

.lr.ph.i:                                         ; preds = %.lr.ph.i234.i
  %indvars.iv.next.i236.i = add nuw nsw i64 %indvars.iv.next.i236.i206, 1 ; 2 uses
  %exitcond.not.i237.i = icmp eq i64 %indvars.iv.next.i236.i, %wide.trip.count.i233.i
  br i1 %exitcond.not.i237.i, label %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge, label %.lr.ph.i234.i, !llvm.loop !47

._crit_edge.i225.loopexit.i:                      ; preds = %.lr.ph.i234.i
  %i.do = trunc nuw nsw i64 %indvars.iv.next.i236.i206 to i32
  br label %._crit_edge.i225.i

._crit_edge.i225.i:                               ; preds = %.lr.ph.preheader.i232.i, %._crit_edge.i225.loopexit.i
  %.443.lcssa.i = phi i32 [ %i.do, %._crit_edge.i225.loopexit.i ], [ 0, %.lr.ph.preheader.i232.i ] ; 2 uses
  %indvars.iv.i235.lcssa.i = phi i64 [ %indvars.iv.next.i236.i206, %._crit_edge.i225.loopexit.i ], [ 0, %.lr.ph.preheader.i232.i ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.i235.lcssa.i to i32 ; 3 uses
  %i.dq = zext nneg i32 %i.ax to i64
  %i.dr = add nsw i64 %i.dq, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %._crit_edge.i225.i
  %indvars.iv138.i.i = phi i64 [ %i.dr, %._crit_edge.i225.i ], [ %indvars.iv.next139.i.i, %bb.w ] ; 4 uses
  %i.ds = mul nsw i64 %indvars.iv138.i.i, %i.dh
  %i.dt = getelementptr inbounds i8, ptr %i.db, i64 %i.ds
  %i.du = mul nsw i64 %indvars.iv138.i.i, %i.di
  %i.dv = getelementptr inbounds i8, ptr %i.at, i64 %i.du
  %bcmp85.i.i = tail call i32 @bcmp(ptr %i.dt, ptr readonly %i.dv, i64 %i.dj)
  %.not86.i.i = icmp eq i32 %bcmp85.i.i, 0
  br i1 %.not86.i.i, label %bb.w, label %._crit_edge111.loopexit.split.loop.exit.i.i

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next139.i.i = add nsw i64 %indvars.iv138.i.i, -1 ; 2 uses
  %i.dw = icmp sgt i64 %indvars.iv.next139.i.i, %indvars.iv.i235.lcssa.i
  br i1 %i.dw, label %bb.v, label %._crit_edge111.i.i, !llvm.loop !48

._crit_edge111.loopexit.split.loop.exit.i.i:      ; preds = %bb.v
  %i.dx = trunc nsw i64 %indvars.iv138.i.i to i32
  br label %._crit_edge111.i.i

.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge111.i.i, !llvm.loop !47

._crit_edge111.i.i:                               ; preds = %bb.w, %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge, %._crit_edge111.loopexit.split.loop.exit.i.i, %bb.u
  %.6.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ 0, %bb.u ], [ %.443.lcssa.i, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %.443.lcssa.i, %bb.w ] ; 4 uses
  %.lcssa105169.i.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ 0, %bb.u ], [ %i.dp, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %i.dp, %bb.w ]
  %.079.lcssa.i.i = phi i32 [ %i.df, %.lr.ph.i.preheader ], [ %i.df, %bb.u ], [ %i.dx, %._crit_edge111.loopexit.split.loop.exit.i.i ], [ %i.df, %.lr.ph.i.._crit_edge111.i.i.loopexit189_crit_edge ], [ %i.dp, %bb.w ] ; 3 uses
  %reass.sub.i.i = sub i32 %.079.lcssa.i.i, %.lcssa105169.i.i
  %i.dy = add i32 %reass.sub.i.i, 1               ; 2 uses
  %i.dz = icmp sgt i32 %i.de, 0
  br i1 %i.dz, label %.lr.ph121.preheader.i.i, label %.thread96.i.i

.lr.ph121.preheader.i.i:                          ; preds = %._crit_edge111.i.i
  %i.ea = sext i32 %i.dd to i64                   ; 2 uses
  %i.eb = sext i32 %i.av to i64                   ; 2 uses
  %i.ec = add i32 %.079.lcssa.i.i, 1              ; 2 uses
  %.not87.not115.i.i = icmp sgt i32 %.6.i, %.079.lcssa.i.i
  %i.ed = sext i32 %.6.i to i64                   ; 2 uses
  br i1 %.not87.not115.i.i, label %.thread96.i.i, label %.lr.ph121.i.preheader.i

.lr.ph121.i.preheader.i:                          ; preds = %.lr.ph121.preheader.i.i
  %wide.trip.count.i = zext nneg i32 %i.de to i64 ; 2 uses
  br label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %._crit_edge119.i.loopexit.i, %.lr.ph121.i.preheader.i
  %indvars.iv145.i.i = phi i64 [ %indvars.iv.next146.i.i, %._crit_edge119.i.loopexit.i ], [ 0, %.lr.ph121.i.preheader.i ] ; 5 uses
  %invariant.gep.i230.i = getelementptr i8, ptr %i.db, i64 %indvars.iv145.i.i
  %invariant.gep177.i.i = getelementptr i8, ptr %i.at, i64 %indvars.iv145.i.i
  br label %.lr.ph118.i.i

bb.x:                                             ; preds = %.lr.ph118.i.i
  %indvars.iv.next142.i.i = add nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next142.i.i to i32
  %exitcond144.not.i.i = icmp eq i32 %i.ec, %lftr.wideiv.i.i
  br i1 %exitcond144.not.i.i, label %._crit_edge119.i.loopexit.i, label %.lr.ph118.i.i, !llvm.loop !49

.lr.ph118.i.i:                                    ; preds = %bb.x, %.lr.ph121.i.i
  %indvars.iv141.i.i = phi i64 [ %i.ed, %.lr.ph121.i.i ], [ %indvars.iv.next142.i.i, %bb.x ] ; 3 uses
  %i.ee = mul nsw i64 %indvars.iv141.i.i, %i.ea
  %gep.i231.i = getelementptr i8, ptr %invariant.gep.i230.i, i64 %i.ee
  %i.ef = load i8, ptr %gep.i231.i, align 1, !tbaa !75
  %i.eg = mul nsw i64 %indvars.iv141.i.i, %i.eb
  %gep178.i.i = getelementptr i8, ptr %invariant.gep177.i.i, i64 %i.eg
  %i.eh = load i8, ptr %gep178.i.i, align 1, !tbaa !75
  %.not88.i.i = icmp eq i8 %i.ef, %i.eh
  br i1 %.not88.i.i, label %bb.x, label %.thread.i226.i

._crit_edge119.i.loopexit.i:                      ; preds = %bb.x
  %indvars.iv.next146.i.i = add nuw nsw i64 %indvars.iv145.i.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next146.i.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.thread96.i.i, label %.lr.ph121.i.i

.thread.i226.i:                                   ; preds = %.lr.ph118.i.i
  %indvars153.le.i = trunc i64 %indvars.iv145.i.i to i32 ; 5 uses
  %i.ei = icmp sgt i32 %i.de, %indvars153.le.i
  br i1 %i.ei, label %.lr.ph125.preheader.i.i, label %.thread96.i.i

.lr.ph125.preheader.i.i:                          ; preds = %.thread.i226.i
  %sext.i = shl i64 %indvars.iv145.i.i, 32
  %i.ej = ashr exact i64 %sext.i, 32
  br label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %._crit_edge126.i.i, %.lr.ph125.preheader.i.i
  %indvars.iv155.i.i = phi i64 [ %wide.trip.count.i, %.lr.ph125.preheader.i.i ], [ %indvars.iv.next156.i.i, %._crit_edge126.i.i ] ; 4 uses
  %invariant.gep179.i.i = getelementptr i8, ptr %i.db, i64 %indvars.iv155.i.i
  %invariant.gep181.i.i = getelementptr i8, ptr %i.at, i64 %indvars.iv155.i.i
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next151.i229.i = add nsw i64 %indvars.iv150.i228.i, 1 ; 2 uses
  %lftr.wideiv153.i.i = trunc i64 %indvars.iv.next151.i229.i to i32
  %exitcond154.not.i.i = icmp eq i32 %i.ec, %lftr.wideiv153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge126.i.i, label %bb.z, !llvm.loop !50

bb.z:                                             ; preds = %bb.y, %.lr.ph125.i.i
  %indvars.iv150.i228.i = phi i64 [ %i.ed, %.lr.ph125.i.i ], [ %indvars.iv.next151.i229.i, %bb.y ] ; 3 uses
  %i.ek = mul nsw i64 %indvars.iv150.i228.i, %i.ea
  %gep180.i.i = getelementptr i8, ptr %invariant.gep179.i.i, i64 %i.ek
  %i.el = load i8, ptr %gep180.i.i, align 1, !tbaa !75
  %i.em = mul nsw i64 %indvars.iv150.i228.i, %i.eb
  %gep182.i.i = getelementptr i8, ptr %invariant.gep181.i.i, i64 %i.em
  %i.en = load i8, ptr %gep182.i.i, align 1, !tbaa !75
  %.not91.i.i = icmp eq i8 %i.el, %i.en
  br i1 %.not91.i.i, label %bb.y, label %.thread96.loopexit132.i.i

._crit_edge126.i.i:                               ; preds = %bb.y
  %indvars.iv.next156.i.i = add nsw i64 %indvars.iv155.i.i, -1 ; 2 uses
  %i.eo = icmp sgt i64 %indvars.iv.next156.i.i, %i.ej
  br i1 %i.eo, label %.lr.ph125.i.i, label %.thread96.i.i

.thread96.loopexit132.i.i:                        ; preds = %bb.z
  %i.ep = trunc nsw i64 %indvars.iv155.i.i to i32
  br label %.thread96.i.i

.thread96.i.i:                                    ; preds = %._crit_edge119.i.loopexit.i, %._crit_edge126.i.i, %.thread96.loopexit132.i.i, %.thread.i226.i, %.lr.ph121.preheader.i.i, %._crit_edge111.i.i
  %.650.i = phi i32 [ 0, %._crit_edge111.i.i ], [ %indvars153.le.i, %.thread.i226.i ], [ %i.de, %.lr.ph121.preheader.i.i ], [ %indvars153.le.i, %.thread96.loopexit132.i.i ], [ %indvars153.le.i, %._crit_edge126.i.i ], [ %i.de, %._crit_edge119.i.loopexit.i ] ; 3 uses
  %.080104.i.i = phi i32 [ %i.de, %._crit_edge111.i.i ], [ %i.de, %.thread.i226.i ], [ %i.de, %.lr.ph121.preheader.i.i ], [ %i.ep, %.thread96.loopexit132.i.i ], [ %indvars153.le.i, %._crit_edge126.i.i ], [ %i.de, %._crit_edge119.i.loopexit.i ]
  %reass.sub.i = sub i32 %.080104.i.i, %.650.i
  %i.eq = add i32 %reass.sub.i, 1                 ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.22, i32 noundef %i.eq, i32 noundef %i.dy, i32 noundef %.650.i, i32 noundef %.6.i, i32 noundef %i.ay, i32 noundef %i.ax) #10
  br label %gif_crop_translucent.exit.i

gif_crop_translucent.exit.i:                      ; preds = %.thread96.i.i, %bb.t, %is_image_translucent.exit.thread.i, %.thread109.i.i, %is_image_translucent.exit.i
  %.258.i = phi i32 [ %i.ax, %is_image_translucent.exit.i ], [ %i.cu, %.thread109.i.i ], [ %i.ax, %is_image_translucent.exit.thread.i ], [ %i.ax, %bb.t ], [ %i.dy, %.thread96.i.i ] ; 6 uses
  %.255.i = phi i32 [ %i.ay, %is_image_translucent.exit.i ], [ %i.cv, %.thread109.i.i ], [ %i.ay, %is_image_translucent.exit.thread.i ], [ %i.ay, %bb.t ], [ %i.eq, %.thread96.i.i ] ; 11 uses
  %.852.i = phi i32 [ 0, %is_image_translucent.exit.i ], [ %.246.i, %.thread109.i.i ], [ 0, %is_image_translucent.exit.thread.i ], [ 0, %bb.t ], [ %.650.i, %.thread96.i.i ] ; 3 uses
  %.8.i = phi i32 [ 0, %is_image_translucent.exit.i ], [ %.241.i, %.thread109.i.i ], [ 0, %is_image_translucent.exit.thread.i ], [ 0, %bb.t ], [ %.6.i, %.thread96.i.i ] ; 4 uses
  %.0183.i = phi i32 [ 0, %is_image_translucent.exit.i ], [ 0, %.thread109.i.i ], [ %i.bh, %is_image_translucent.exit.thread.i ], [ %i.bh, %bb.t ], [ %i.bh, %.thread96.i.i ]
  %i.er = phi i1 [ true, %is_image_translucent.exit.i ], [ true, %.thread109.i.i ], [ false, %is_image_translucent.exit.thread.i ], [ false, %bb.t ], [ false, %.thread96.i.i ] ; 2 uses
  %.0177.i = phi i8 [ 8, %is_image_translucent.exit.i ], [ 8, %.thread109.i.i ], [ 4, %is_image_translucent.exit.thread.i ], [ 4, %bb.t ], [ 4, %.thread96.i.i ]
  %i.es = load i32, ptr %i.bi, align 4, !tbaa !74
  %.not203.i = icmp eq i32 %i.es, 0
  br i1 %.not203.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %gif_crop_translucent.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !76
  %.not204.i = icmp eq i64 %i.eu, 0
  br i1 %.not204.i, label %bb.ab, label %.loopexit89.i

bb.ab:                                            ; preds = %bb.aa, %gif_crop_translucent.exit.i
  %.not205.i = icmp eq ptr %.0, null
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.ew = select i1 %.not205.i, ptr %i.ev, ptr %.0 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.0.0.copyload.i = load i32, ptr %i.ex, align 8, !tbaa !34 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !34 ; 2 uses
  %i.ey = icmp sgt i32 %.sroa.0.0.copyload.i, 0
  %i.ez = icmp sgt i32 %.sroa.5.0.copyload.i, 0
  %or.cond.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = zext nneg i32 %.sroa.0.0.copyload.i to i64
  %i.fb = shl nuw nsw i64 %i.fa, 6
  %i.fc = zext nneg i32 %.sroa.5.0.copyload.i to i64
  %i.fd = udiv i64 %i.fb, %i.fc                   ; 2 uses
  %i.fe = add nsw i64 %i.fd, -271
  %or.cond4.i = icmp ult i64 %i.fe, -256
  %i.ff = trunc i64 %i.fd to i8
  %i.fg = add i8 %i.ff, -15
  %i.fh = select i1 %or.cond4.i, i8 0, i8 %i.fg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0179.i = phi i8 [ %i.fh, %bb.ac ], [ 0, %bb.ab ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.r, ptr noundef nonnull align 1 dereferenceable(6) @gif89a_sig, i64 6, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.fj = load i32, ptr %i.f, align 8, !tbaa !29
  %i.fk = trunc i32 %i.fj to i16
  store i16 %i.fk, ptr %i.fi, align 1, !tbaa !75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fm = load i32, ptr %i.h, align 4, !tbaa !30
  %i.fn = trunc i32 %i.fm to i16
  store i16 %i.fn, ptr %i.fl, align 1, !tbaa !75
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.ad
  %indvars.iv.i239.i = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next.i241.i.1, %.preheader.i.i ] ; 4 uses
  %.020.i.i = phi i32 [ 255, %bb.ad ], [ %spec.select17.i.i.1, %.preheader.i.i ] ; 2 uses
  %.01218.i.i = phi i32 [ -1, %bb.ad ], [ %spec.select.i240.i.1, %.preheader.i.i ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i239.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !34
  %i.fq = lshr i32 %i.fp, 24                      ; 2 uses
  %i.fr = icmp samesign ult i32 %i.fq, %.020.i.i
  %i.fs = trunc nuw nsw i64 %indvars.iv.i239.i to i32
  %spec.select.i240.i = select i1 %i.fr, i32 %i.fs, i32 %.01218.i.i
  %spec.select17.i.i = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 %.020.i.i) ; 2 uses
  %indvars.iv.next.i241.i = or disjoint i64 %indvars.iv.i239.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.i241.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !34
  %i.fv = lshr i32 %i.fu, 24                      ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, %spec.select17.i.i
  %i.fx = trunc nuw nsw i64 %indvars.iv.next.i241.i to i32
  %spec.select.i240.i.1 = select i1 %i.fw, i32 %i.fx, i32 %spec.select.i240.i ; 2 uses
  %spec.select17.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %spec.select17.i.i) ; 2 uses
  %indvars.iv.next.i241.i.1 = add nuw nsw i64 %indvars.iv.i239.i, 2 ; 2 uses
  %exitcond.not.i242.i.1 = icmp eq i64 %indvars.iv.next.i241.i.1, 256
  br i1 %exitcond.not.i242.i.1, label %get_palette_transparency_index.exit.i, label %.preheader.i.i, !llvm.loop !40

get_palette_transparency_index.exit.i:            ; preds = %.preheader.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.fz = icmp samesign ult i32 %spec.select17.i.i.1, 128
  %i.ga = select i1 %i.fz, i32 %spec.select.i240.i.1, i32 -1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !71 ; 2 uses
  %i.gd = shl i32 %i.gc, 7
  %.not206.i = icmp eq i32 %i.gc, 0
  %i.ge = select i1 %.not206.i, i32 0, i32 7
  %i.gf = or disjoint i32 %i.ge, %i.gd
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = or disjoint i8 %i.gg, 112
  store i8 %i.gh, ptr %i.fy, align 1, !tbaa !75
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.gj = icmp slt i32 %i.ga, 0
  %i.gk = trunc i32 %i.ga to i8
  %i.gl = select i1 %i.gj, i8 31, i8 %i.gk
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 %.0179.i, ptr %i.gm, align 1, !tbaa !75
  %i.gn = getelementptr inbounds nuw i8, ptr %i.r, i64 13 ; 2 uses
  %i.go = load i32, ptr %i.gb, align 8, !tbaa !71
  %.not207.i = icmp eq i32 %i.go, 0
  br i1 %.not207.i, label %.loopexit89.i, label %.preheader88.i

.preheader88.i:                                   ; preds = %get_palette_transparency_index.exit.i, %.preheader88.i
  %.088 = phi ptr [ %i.hj, %.preheader88.i ], [ %i.gn, %get_palette_transparency_index.exit.i ] ; 7 uses
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i.1, %.preheader88.i ], [ 0, %get_palette_transparency_index.exit.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv163.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !34 ; 3 uses
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.088, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !75
  %i.gt = lshr i32 %i.gq, 8
  %i.gu = trunc i32 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.088, i64 1
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !75
  %i.gw = lshr i32 %i.gq, 16
  %i.gx = trunc i32 %i.gw to i8
  store i8 %i.gx, ptr %.088, align 1, !tbaa !75
  %i.gy = getelementptr inbounds nuw i8, ptr %.088, i64 3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv163.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !34 ; 3 uses
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.088, i64 5
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !75
  %i.he = lshr i32 %i.hb, 8
  %i.hf = trunc i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.088, i64 4
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !75
  %i.hh = lshr i32 %i.hb, 16
  %i.hi = trunc i32 %i.hh to i8
  store i8 %i.hi, ptr %i.gy, align 1, !tbaa !75
  %i.hj = getelementptr inbounds nuw i8, ptr %.088, i64 6 ; 2 uses
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %exitcond166.not.i.1 = icmp eq i64 %indvars.iv.next164.i.1, 256
  br i1 %exitcond166.not.i.1, label %.loopexit89.i, label %.preheader88.i, !llvm.loop !51

.loopexit89.i:                                    ; preds = %.preheader88.i, %get_palette_transparency_index.exit.i, %bb.aa
  %.1 = phi ptr [ %i.gn, %get_palette_transparency_index.exit.i ], [ %i.r, %bb.aa ], [ %i.hj, %.preheader88.i ] ; 15 uses
  %i.hk = icmp ne i32 %.0183.i, 0                 ; 2 uses
  %i.hl = icmp slt i32 %.fr.i, 0
  %or.cond6.i = and i1 %i.hl, %i.hk
  br i1 %or.cond6.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit89.i
  %i.hm = mul nsw i32 %.8.i, %i.av
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.at, i64 %i.hn
  %i.hp = sext i32 %.852.i to i64
  %i.hq = getelementptr inbounds i8, ptr %i.ho, i64 %i.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.hr = icmp sgt i32 %.258.i, 0
  br i1 %i.hr, label %.preheader19.lr.ph.i.i, label %vector.body.preheader

.preheader19.lr.ph.i.i:                           ; preds = %bb.ae
  %i.hs = icmp sgt i32 %.255.i, 0
  %i.ht = sext i32 %i.av to i64
  br i1 %i.hs, label %.preheader19.preheader.i.i, label %vector.body.preheader

.preheader19.preheader.i.i:                       ; preds = %.preheader19.lr.ph.i.i
  %wide.trip.count.i245.i = zext nneg i32 %.255.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i245.i, 3  ; 3 uses
  %i.hu = icmp ult i32 %.255.i, 4
  %unroll_iter = and i64 %wide.trip.count.i245.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod229 = icmp ne i64 %xtraiter, 0
  br label %.preheader19.i.i

.preheader19.i.i:                                 ; preds = %._crit_edge.i249.i, %.preheader19.preheader.i.i
  %.01422.i.i = phi i32 [ %i.jq, %._crit_edge.i249.i ], [ 0, %.preheader19.preheader.i.i ]
  %.01721.i.i = phi ptr [ %i.jp, %._crit_edge.i249.i ], [ %i.hq, %.preheader19.preheader.i.i ] ; 6 uses
  br i1 %i.hu, label %.epil.preheader, label %.preheader19.i.i.new

vector.body:                                      ; preds = %vector.body.interim.3, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.3, %vector.body.interim.3 ] ; 6 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x i32>, ptr %i.hv, align 16, !tbaa !34
  %wide.load.fr = freeze <4 x i32> %wide.load
  %i.hw = icmp eq <4 x i32> %wide.load.fr, zeroinitializer ; 2 uses
  %i.hx = bitcast <4 x i1> %i.hw to i4
  %.not207 = icmp eq i4 %i.hx, 0
  br i1 %.not207, label %vector.body.interim, label %pick_palette_entry.exit.i

vector.body.interim:                              ; preds = %vector.body
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next
  %wide.load.1 = load <4 x i32>, ptr %i.hy, align 16, !tbaa !34
  %wide.load.fr.1 = freeze <4 x i32> %wide.load.1
  %i.hz = icmp eq <4 x i32> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.ia = bitcast <4 x i1> %i.hz to i4
  %.not207.1 = icmp eq i4 %i.ia, 0
  br i1 %.not207.1, label %vector.body.interim.1, label %pick_palette_entry.exit.i

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next.1 = or disjoint i64 %index, 8       ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next.1
  %wide.load.2 = load <4 x i32>, ptr %i.ib, align 16, !tbaa !34
  %wide.load.fr.2 = freeze <4 x i32> %wide.load.2
  %i.ic = icmp eq <4 x i32> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.id = bitcast <4 x i1> %i.ic to i4
  %.not207.2 = icmp eq i4 %i.id, 0
  br i1 %.not207.2, label %vector.body.interim.2, label %pick_palette_entry.exit.i

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %index.next.2 = or disjoint i64 %index, 12      ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next.2
  %wide.load.3 = load <4 x i32>, ptr %i.ie, align 16, !tbaa !34
  %wide.load.fr.3 = freeze <4 x i32> %wide.load.3
  %i.if = icmp eq <4 x i32> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.ig = bitcast <4 x i1> %i.if to i4
  %.not207.3 = icmp eq i4 %i.ig, 0
  br i1 %.not207.3, label %vector.body.interim.3, label %pick_palette_entry.exit.i

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ih = icmp eq i64 %index.next.3, 256
  br i1 %i.ih, label %.thread.i, label %vector.body, !llvm.loop !52

.preheader19.i.i.new:                             ; preds = %.preheader19.i.i, %.preheader19.i.i.new
  %indvars.iv.i246.i = phi i64 [ %indvars.iv.next.i247.i.3, %.preheader19.i.i.new ], [ 0, %.preheader19.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader19.i.i.new ], [ 0, %.preheader19.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 %indvars.iv.i246.i
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !75
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !34
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !34
  %i.io = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 %indvars.iv.i246.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !75
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !34
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 %indvars.iv.i246.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !75
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !34
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !34
  %i.jc = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 %indvars.iv.i246.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !75
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !34
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !34
  %indvars.iv.next.i247.i.3 = add nuw nsw i64 %indvars.iv.i246.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i249.i.unr-lcssa, label %.preheader19.i.i.new, !llvm.loop !53

._crit_edge.i249.i.unr-lcssa:                     ; preds = %.preheader19.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i249.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i249.i.unr-lcssa, %.preheader19.i.i
  %indvars.iv.i246.i.epil.init = phi i64 [ 0, %.preheader19.i.i ], [ %indvars.iv.next.i247.i.3, %._crit_edge.i249.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv.i246.i.epil = phi i64 [ %indvars.iv.i246.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i247.i.epil, %bb.af ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.01721.i.i, i64 %indvars.iv.i246.i.epil
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !75
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jl ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !34
  %i.jo = add nsw i32 %i.jn, 1
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !34
  %indvars.iv.next.i247.i.epil = add nuw nsw i64 %indvars.iv.i246.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i249.i, label %bb.af, !llvm.loop !54

._crit_edge.i249.i:                               ; preds = %bb.af, %._crit_edge.i249.i.unr-lcssa
  %i.jp = getelementptr inbounds i8, ptr %.01721.i.i, i64 %i.ht
  %i.jq = add nuw nsw i32 %.01422.i.i, 1          ; 2 uses
  %exitcond25.not.i.i = icmp eq i32 %i.jq, %.258.i
  br i1 %exitcond25.not.i.i, label %vector.body.preheader, label %.preheader19.i.i, !llvm.loop !55

vector.body.preheader:                            ; preds = %._crit_edge.i249.i, %bb.ae, %.preheader19.lr.ph.i.i
  br label %vector.body

.thread.i:                                        ; preds = %vector.body.interim.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.20) #10
  br label %bb.ah

pick_palette_entry.exit.i:                        ; preds = %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body
  %index.lcssa = phi i64 [ %index, %vector.body ], [ %index.next, %vector.body.interim ], [ %index.next.1, %vector.body.interim.1 ], [ %index.next.2, %vector.body.interim.2 ]
  %.lcssa214 = phi <4 x i1> [ %i.hw, %vector.body ], [ %i.hz, %vector.body.interim ], [ %i.ic, %vector.body.interim.1 ], [ %i.if, %vector.body.interim.2 ]
  %i.jr = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa214, i1 false)
  %i.js = add i64 %index.lcssa, %i.jr
  %i.jt = trunc nuw nsw i64 %i.js to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit89.i
  %i.ju = and i1 %i.bk, %i.hk
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %pick_palette_entry.exit.i, %.thread.i
  %.0185209.i = phi i32 [ %i.jt, %pick_palette_entry.exit.i ], [ %.fr.i, %bb.ag ], [ -1, %.thread.i ] ; 3 uses
  %4 = phi i1 [ true, %pick_palette_entry.exit.i ], [ %i.ju, %bb.ag ], [ false, %.thread.i ] ; 4 uses
  %.not208.i = icmp eq ptr %.0, null              ; 4 uses
  br i1 %.not208.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !71
  %.not209.i = icmp eq i32 %i.jw, 0
  br i1 %.not209.i, label %bb.aj, label %shrink_palette.exit.thread.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jx = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.jy = select i1 %.not208.i, ptr %i.jx, ptr %.0
  br label %.preheader.i250.i

.preheader.i250.i:                                ; preds = %.loopexit.i.i, %bb.aj
  %.02025.i.i = phi i64 [ 0, %bb.aj ], [ %i.kh, %.loopexit.i.i ] ; 3 uses
  %.02124.i.i = phi i64 [ 0, %bb.aj ], [ %.1.i254.i, %.loopexit.i.i ] ; 6 uses
  %.not22.not.i.i = icmp eq i64 %.02124.i.i, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.02025.i.i
  %.pre.i251.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !34 ; 2 uses
  br i1 %.not22.not.i.i, label %.critedge.i.i, label %.lr.ph.i252.i

bb.ak:                                            ; preds = %.lr.ph.i252.i
  %i.jz = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %exitcond.not.i253.i = icmp eq i64 %i.jz, %.02124.i.i
  br i1 %exitcond.not.i253.i, label %.critedge.i.i, label %.lr.ph.i252.i, !llvm.loop !56

.lr.ph.i252.i:                                    ; preds = %.preheader.i250.i, %bb.ak
  %.023.i.i = phi i64 [ %i.jz, %bb.ak ], [ 0, %.preheader.i250.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.023.i.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !34
  %i.kc = icmp eq i32 %.pre.i251.i, %i.kb
  br i1 %i.kc, label %.loopexit.i.i, label %bb.ak

.critedge.i.i:                                    ; preds = %bb.ak, %.preheader.i250.i
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02124.i.i
  store i32 %.pre.i251.i, ptr %i.kd, align 4, !tbaa !34
  %i.ke = trunc i64 %.02124.i.i to i8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02025.i.i
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !75
  %i.kg = add nuw nsw i64 %.02124.i.i, 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i252.i, %.critedge.i.i
  %.1.i254.i = phi i64 [ %i.kg, %.critedge.i.i ], [ %.02124.i.i, %.lr.ph.i252.i ] ; 3 uses
  %i.kh = add nuw nsw i64 %.02025.i.i, 1          ; 2 uses
  %exitcond27.not.i.i = icmp eq i64 %i.kh, 256
  br i1 %exitcond27.not.i.i, label %shrink_palette.exit.i, label %.preheader.i250.i, !llvm.loop !57

shrink_palette.exit.i:                            ; preds = %.loopexit.i.i
  %or.cond8.i = or i1 %i.er, %4                   ; 2 uses
  %brmerge.i = or i1 %.not208.i, %or.cond8.i
  %.0185.mux.i = select i1 %or.cond8.i, i32 %.0185209.i, i32 -1
  br i1 %brmerge.i, label %get_palette_transparency_index.exit264.i, label %.preheader.i256.i

shrink_palette.exit.thread.i:                     ; preds = %bb.ai
  %or.cond871.i = or i1 %i.er, %4
  %spec.select183.a = select i1 %or.cond871.i, i32 %.0185209.i, i32 -1
  br label %get_palette_transparency_index.exit264.i

.preheader.i256.i:                                ; preds = %shrink_palette.exit.i, %.preheader.i256.i
  %indvars.iv.i257.i = phi i64 [ %indvars.iv.next.i262.i.1, %.preheader.i256.i ], [ 0, %shrink_palette.exit.i ] ; 4 uses
  %.020.i258.i = phi i32 [ %spec.select17.i261.i.1, %.preheader.i256.i ], [ 255, %shrink_palette.exit.i ] ; 2 uses
  %.01218.i259.i = phi i32 [ %spec.select.i260.i.1, %.preheader.i256.i ], [ -1, %shrink_palette.exit.i ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv.i257.i
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !34
  %i.kk = lshr i32 %i.kj, 24                      ; 2 uses
  %i.kl = icmp samesign ult i32 %i.kk, %.020.i258.i
  %i.km = trunc nuw nsw i64 %indvars.iv.i257.i to i32
  %spec.select.i260.i = select i1 %i.kl, i32 %i.km, i32 %.01218.i259.i
  %spec.select17.i261.i = tail call i32 @llvm.umin.i32(i32 %i.kk, i32 %.020.i258.i) ; 2 uses
  %indvars.iv.next.i262.i = or disjoint i64 %indvars.iv.i257.i, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv.next.i262.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !34
  %i.kp = lshr i32 %i.ko, 24                      ; 2 uses
  %i.kq = icmp samesign ult i32 %i.kp, %spec.select17.i261.i
  %i.kr = trunc nuw nsw i64 %indvars.iv.next.i262.i to i32
  %spec.select.i260.i.1 = select i1 %i.kq, i32 %i.kr, i32 %spec.select.i260.i ; 2 uses
  %spec.select17.i261.i.1 = tail call i32 @llvm.umin.i32(i32 %i.kp, i32 %spec.select17.i261.i) ; 2 uses
  %indvars.iv.next.i262.i.1 = add nuw nsw i64 %indvars.iv.i257.i, 2 ; 2 uses
  %exitcond.not.i263.i.1 = icmp eq i64 %indvars.iv.next.i262.i.1, 256
  br i1 %exitcond.not.i263.i.1, label %bb.al, label %.preheader.i256.i, !llvm.loop !40

bb.al:                                            ; preds = %.preheader.i256.i
  %i.ks = icmp samesign ult i32 %spec.select17.i261.i.1, 128
  %spec.select184 = select i1 %i.ks, i32 %spec.select.i260.i.1, i32 -1
  br label %get_palette_transparency_index.exit264.i

get_palette_transparency_index.exit264.i:         ; preds = %bb.al, %shrink_palette.exit.thread.i, %shrink_palette.exit.i
  %i.kt = phi i1 [ %4, %shrink_palette.exit.thread.i ], [ %4, %shrink_palette.exit.i ], [ false, %bb.al ]
  %.03973.i = phi i64 [ 0, %shrink_palette.exit.thread.i ], [ %.1.i254.i, %shrink_palette.exit.i ], [ %.1.i254.i, %bb.al ] ; 3 uses
  %i.ku = phi i32 [ %spec.select183.a, %shrink_palette.exit.thread.i ], [ %.0185.mux.i, %shrink_palette.exit.i ], [ %spec.select184, %bb.al ] ; 4 uses
  store i8 33, ptr %.1, align 1, !tbaa !75
  %i.kv = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 -7, ptr %i.kv, align 1, !tbaa !75
  %i.kw = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i8 4, ptr %i.kw, align 1, !tbaa !75
  %i.kx = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.ky = icmp sgt i32 %i.ku, -1
  %i.kz = zext i1 %i.ky to i8
  %i.la = or disjoint i8 %.0177.i, %i.kz
  store i8 %i.la, ptr %i.kx, align 1, !tbaa !75
  %i.lb = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i16 5, ptr %i.lb, align 1, !tbaa !75
  %i.lc = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.ld = icmp slt i32 %i.ku, 0
  br i1 %i.ld, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %get_palette_transparency_index.exit264.i
  %.not210.i = icmp eq i64 %.03973.i, 0
  br i1 %.not210.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.le = zext nneg i32 %i.ku to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !75
  %i.lh = zext i8 %i.lg to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %get_palette_transparency_index.exit264.i
  %i.li = phi i32 [ 31, %get_palette_transparency_index.exit264.i ], [ %i.lh, %bb.an ], [ %i.ku, %bb.am ]
  %i.lj = trunc i32 %i.li to i8
  store i8 %i.lj, ptr %i.lc, align 1, !tbaa !75
  %i.lk = getelementptr inbounds nuw i8, ptr %.1, i64 7
  store i8 0, ptr %i.lk, align 1, !tbaa !75
  %i.ll = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i8 44, ptr %i.ll, align 1, !tbaa !75
  %i.lm = getelementptr inbounds nuw i8, ptr %.1, i64 9
  %i.ln = trunc i32 %.852.i to i16
  store i16 %i.ln, ptr %i.lm, align 1, !tbaa !75
  %i.lo = getelementptr inbounds nuw i8, ptr %.1, i64 11
  %i.lp = trunc i32 %.8.i to i16
  store i16 %i.lp, ptr %i.lo, align 1, !tbaa !75
  %i.lq = getelementptr inbounds nuw i8, ptr %.1, i64 13
  %i.lr = trunc i32 %.255.i to i16
  store i16 %i.lr, ptr %i.lq, align 1, !tbaa !75
  %i.ls = getelementptr inbounds nuw i8, ptr %.1, i64 15
  %i.lt = trunc i32 %.258.i to i16
  store i16 %i.lt, ptr %i.ls, align 1, !tbaa !75
  %i.lu = getelementptr inbounds nuw i8, ptr %.1, i64 17 ; 2 uses
  br i1 %.not208.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !71
  %.not211.i = icmp eq i32 %i.lw, 0
  br i1 %.not211.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lx = trunc i64 %.03973.i to i32
  %i.ly = add i32 %i.lx, -1                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ly, 65536           ; 2 uses
  %i.lz = lshr i32 %i.ly, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.ly, i32 %i.lz ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ma = lshr i32 %spec.select.i.i, 8
  %i.mb = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ma
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.mb
  %i.mc = zext nneg i32 %.110.i.i to i64
  %i.md = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !75
  %i.mf = zext i8 %i.me to i32
  %i.mg = add nuw nsw i32 %.1.i.i, %i.mf          ; 2 uses
  %i.mh = trunc i32 %i.mg to i8
  %i.mi = or i8 %i.mh, -128
  store i8 %i.mi, ptr %i.lu, align 1, !tbaa !75
  %i.mj = getelementptr inbounds nuw i8, ptr %.1, i64 18
  %i.mk = shl nuw i32 2, %i.mg
  %wide.trip.count170.i = zext i32 %i.mk to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.2 = phi ptr [ %i.mj, %bb.aq ], [ %i.nf, %bb.ar ] ; 7 uses
  %indvars.iv167.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next168.i.1, %bb.ar ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv167.i
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !34 ; 3 uses
  %i.mn = trunc i32 %i.mm to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %.2, i64 2
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !75
  %i.mp = lshr i32 %i.mm, 8
  %i.mq = trunc i32 %i.mp to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !75
  %i.ms = lshr i32 %i.mm, 16
  %i.mt = trunc i32 %i.ms to i8
  store i8 %i.mt, ptr %.2, align 1, !tbaa !75
  %i.mu = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv167.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !34 ; 3 uses
  %i.my = trunc i32 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %.2, i64 5
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !75
  %i.na = lshr i32 %i.mx, 8
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !75
  %i.nd = lshr i32 %i.mx, 16
  %i.ne = trunc i32 %i.nd to i8
  store i8 %i.ne, ptr %i.mu, align 1, !tbaa !75
  %i.nf = getelementptr inbounds nuw i8, ptr %.2, i64 6 ; 2 uses
  %indvars.iv.next168.i.1 = add nuw nsw i64 %indvars.iv167.i, 2 ; 2 uses
  %exitcond171.not.i.1 = icmp eq i64 %indvars.iv.next168.i.1, %wide.trip.count170.i
  br i1 %exitcond171.not.i.1, label %.loopexit87.i, label %bb.ar, !llvm.loop !58

bb.as:                                            ; preds = %bb.ap
  store i8 0, ptr %i.lu, align 1, !tbaa !75
  %i.ng = getelementptr inbounds nuw i8, ptr %.1, i64 18
  br label %.loopexit87.i

.loopexit87.i:                                    ; preds = %bb.ar, %bb.as
  %.3 = phi ptr [ %i.ng, %bb.as ], [ %i.nf, %bb.ar ] ; 2 uses
  store i8 8, ptr %.3, align 1, !tbaa !75
  %i.nh = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !35
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !37
  %i.nm = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !36
  tail call void @ff_lzw_encode_init(ptr noundef %i.nj, ptr noundef %i.nl, i32 noundef %i.nn, i32 noundef 12, i32 noundef 0, i32 noundef 1) #10
  %.not212.i = icmp eq i64 %.03973.i, 0
  br i1 %.not212.i, label %remap_frame_to_palette.exit.i, label %bb.at

bb.at:                                            ; preds = %.loopexit87.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !80 ; 2 uses
  %.not213.i = icmp eq ptr %i.np, null
  br i1 %.not213.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.nq = load i32, ptr %i.h, align 4, !tbaa !30
  %i.nr = mul nsw i32 %i.nq, %i.av
  %i.ns = sext i32 %i.nr to i64
  %i.nt = tail call noalias ptr @av_malloc(i64 noundef %i.ns) #10 ; 3 uses
  store ptr %i.nt, ptr %i.no, align 8, !tbaa !80
  %.not214.i = icmp eq ptr %i.nt, null
  br i1 %.not214.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21) #10
  br label %gif_image_write_image.exit

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.nu = phi ptr [ %i.nt, %bb.au ], [ %i.np, %bb.at ] ; 2 uses
  %i.nv = load i32, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.nw = load i32, ptr %i.h, align 4, !tbaa !30  ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, 0
  %i.ny = icmp sgt i32 %i.nv, 0
  %or.cond.i265.i = and i1 %i.ny, %i.nx
  br i1 %or.cond.i265.i, label %.preheader.preheader.i.i, label %remap_frame_to_palette.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.aw
  %i.nz = sext i32 %i.av to i64
  %wide.trip.count22.i.i = zext nneg i32 %i.nw to i64
  %wide.trip.count.i266.i = zext nneg i32 %i.nv to i64 ; 2 uses
  %xtraiter231 = and i64 %wide.trip.count.i266.i, 3 ; 3 uses
  %i.oa = icmp ult i32 %i.nv, 4
  %unroll_iter235 = and i64 %wide.trip.count.i266.i, 2147483644
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  br label %.preheader.i267.i

.preheader.i267.i:                                ; preds = %._crit_edge.i273.i, %.preheader.preheader.i.i
  %indvars.iv19.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next20.i.i, %._crit_edge.i273.i ] ; 2 uses
  %i.ob = mul nsw i64 %indvars.iv19.i.i, %i.nz    ; 2 uses
  %invariant.gep.i268.i = getelementptr i8, ptr %i.at, i64 %i.ob ; 5 uses
  %invariant.gep25.i.i = getelementptr i8, ptr %i.nu, i64 %i.ob ; 5 uses
  br i1 %i.oa, label %.epil.preheader230, label %.preheader.i267.i.new

._crit_edge.i273.i.unr-lcssa:                     ; preds = %.preheader.i267.i.new
  br i1 %lcmp.mod233.not, label %._crit_edge.i273.i, label %.epil.preheader230

.epil.preheader230:                               ; preds = %._crit_edge.i273.i.unr-lcssa, %.preheader.i267.i
  %indvars.iv.i269.i.epil.init = phi i64 [ 0, %.preheader.i267.i ], [ %indvars.iv.next.i271.i.3, %._crit_edge.i273.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod234)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader230
  %indvars.iv.i269.i.epil = phi i64 [ %indvars.iv.i269.i.epil.init, %.epil.preheader230 ], [ %indvars.iv.next.i271.i.epil, %bb.ax ] ; 3 uses
  %epil.iter232 = phi i64 [ 0, %.epil.preheader230 ], [ %epil.iter232.next, %bb.ax ]
  %gep.i270.i.epil = getelementptr i8, ptr %invariant.gep.i268.i, i64 %indvars.iv.i269.i.epil
  %i.oc = load i8, ptr %gep.i270.i.epil, align 1, !tbaa !75
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !75
  %gep26.i.i.epil = getelementptr i8, ptr %invariant.gep25.i.i, i64 %indvars.iv.i269.i.epil
  store i8 %i.of, ptr %gep26.i.i.epil, align 1, !tbaa !75
end_hunk_0
