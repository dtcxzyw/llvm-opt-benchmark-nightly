Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imgutils?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@av_image_fill_max_pixsteps:bb.a
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = icmp sgt i32 %i.ai, %i.am
  br i1 %i.an, label %bb.e, label %.split20.us

bb.e:                                             ; preds = %.split.us.3
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !13
  br label %.split20.us

bb.f:                                             ; preds = %.split.preheader
  store i32 %i.c, ptr %i.f, align 4, !tbaa !13
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  store i32 0, ptr %i.aq, align 4, !tbaa !13
  br label %.split.1

.split.1:                                         ; preds = %bb.f, %.split.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = icmp sgt i32 %i.at, %i.ax
  br i1 %i.ay, label %bb.g, label %.split.2

bb.g:                                             ; preds = %.split.1
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !13
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ba
  store i32 1, ptr %i.bb, align 4, !tbaa !13
  br label %.split.2

.split.2:                                         ; preds = %bb.g, %.split.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  %i.bj = icmp sgt i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.h, label %.split.3

bb.h:                                             ; preds = %.split.2
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !13
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl
  store i32 2, ptr %i.bm, align 4, !tbaa !13
  br label %.split.3

.split.3:                                         ; preds = %bb.h, %.split.2
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11 ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = icmp sgt i32 %i.bp, %i.bt
  br i1 %i.bu, label %bb.i, label %.split20.us

bb.i:                                             ; preds = %.split.3
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !13
  %i.bv = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bw
  store i32 3, ptr %i.bx, align 4, !tbaa !13
  br label %.split20.us

.split20.us:                                      ; preds = %.split.3, %bb.i, %.split.us.3, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @av_image_get_linesize(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %0) #12 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %image_get_linesize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = and i64 %i.e, 8
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %bb.c, label %image_get_linesize.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !12
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = icmp sgt i32 %i.i, %i.m
  br i1 %i.n, label %bb.d, label %.split.1.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.l, align 4, !tbaa !13
  %i.o = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.k
  store i32 0, ptr %i.o, align 4, !tbaa !13
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !12
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = icmp sgt i32 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %.split.2.i

bb.e:                                             ; preds = %.split.1.i
  store i32 %i.r, ptr %i.u, align 4, !tbaa !13
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  store i32 1, ptr %i.x, align 4, !tbaa !13
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.e, %.split.1.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !12
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.f, label %.split.3.i

bb.f:                                             ; preds = %.split.2.i
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !13
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac
  store i32 2, ptr %i.ag, align 4, !tbaa !13
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.f, %.split.2.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = icmp sgt i32 %i.aj, %i.an
  br i1 %i.ao, label %bb.g, label %av_image_fill_max_pixsteps.exit

bb.g:                                             ; preds = %.split.3.i
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !13
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.al
  store i32 3, ptr %i.ap, align 4, !tbaa !13
  br label %av_image_fill_max_pixsteps.exit

av_image_fill_max_pixsteps.exit:                  ; preds = %.split.3.i, %bb.g
  %i.aq = sext i32 %2 to i64                      ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13 ; 2 uses
  %i.at = icmp slt i32 %1, 0
  br i1 %i.at, label %image_get_linesize.exit, label %bb.h

bb.h:                                             ; preds = %av_image_fill_max_pixsteps.exit
  %i.au = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aq
  %i.av = load i32, ptr %i.au, align 4, !tbaa !13
  %i.aw = add i32 %i.av, -1
  %or.cond.i = icmp ult i32 %i.aw, 2
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = zext i8 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ba = phi i32 [ %i.az, %bb.i ], [ 0, %bb.h ]
  %i.bb = sub nsw i32 0, %1
  %i.bc = ashr i32 %i.bb, %i.ba                   ; 2 uses
  %3 = sub nsw i32 0, %i.bc                       ; 2 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = sdiv i32 2147483647, %3
  %i.be = icmp sgt i32 %i.as, %i.bd
  br i1 %i.be, label %image_get_linesize.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = mul nsw i32 %i.as, %3                   ; 2 uses
  %i.bg = and i64 %i.e, 4
  %.not24.i = icmp eq i64 %i.bg, 0
  %4 = add nsw i32 %i.bf, 7
  %i.bh = ashr i32 %4, 3
  %.0.i = select i1 %.not24.i, i32 %i.bf, i32 %i.bh
  br label %image_get_linesize.exit

image_get_linesize.exit:                          ; preds = %bb.l, %bb.k, %av_image_fill_max_pixsteps.exit, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ %.0.i, %bb.l ], [ -22, %av_image_fill_max_pixsteps.exit ], [ -22, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @av_image_fill_linesizes(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 11 uses
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %1) #12 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %image_get_linesize.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = and i64 %i.e, 8
  %.not19 = icmp eq i64 %i.f, 0
  br i1 %.not19, label %bb.c, label %image_get_linesize.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !12
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = icmp sgt i32 %i.i, %i.m
  br i1 %i.n, label %bb.d, label %.split.1.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.l, align 4, !tbaa !13
  %i.o = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.k
  store i32 0, ptr %i.o, align 4, !tbaa !13
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !12
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = icmp sgt i32 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %.split.2.i

bb.e:                                             ; preds = %.split.1.i
  store i32 %i.r, ptr %i.u, align 4, !tbaa !13
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  store i32 1, ptr %i.x, align 4, !tbaa !13
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.e, %.split.1.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !12
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.f, label %.split.3.i

bb.f:                                             ; preds = %.split.2.i
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !13
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac
  store i32 2, ptr %i.ag, align 4, !tbaa !13
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.f, %.split.2.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = icmp sgt i32 %i.aj, %i.an
  br i1 %i.ao, label %bb.g, label %av_image_fill_max_pixsteps.exit

bb.g:                                             ; preds = %.split.3.i
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !13
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.al
  store i32 3, ptr %i.ap, align 4, !tbaa !13
  br label %av_image_fill_max_pixsteps.exit

av_image_fill_max_pixsteps.exit:                  ; preds = %.split.3.i, %bb.g
  %i.aq = icmp slt i32 %2, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 4 uses
  %i.as = sub nsw i32 0, %2                       ; 4 uses
  %i.at = and i64 %i.e, 4
  %.not24.i = icmp eq i64 %i.at, 0                ; 4 uses
  br i1 %i.aq, label %image_get_linesize.exit.thread, label %av_image_fill_max_pixsteps.exit.split.preheader

av_image_fill_max_pixsteps.exit.split.preheader:  ; preds = %av_image_fill_max_pixsteps.exit
  %i.au = load i32, ptr %i.a, align 16, !tbaa !13 ; 2 uses
  %i.av = load i32, ptr %i.b, align 16, !tbaa !13
  %i.aw = add i32 %i.av, -1
  %or.cond.i = icmp ult i32 %i.aw, 2
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.preheader
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.preheader, %bb.h
  %i.az = phi i32 [ %i.ay, %bb.h ], [ 0, %av_image_fill_max_pixsteps.exit.split.preheader ]
  %i.ba = ashr i32 %i.as, %i.az                   ; 2 uses
  %3 = sub nsw i32 0, %i.ba                       ; 2 uses
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %image_get_linesize.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = sdiv i32 2147483647, %3
  %i.bc = icmp sgt i32 %i.au, %i.bb
  br i1 %i.bc, label %image_get_linesize.exit.thread, label %image_get_linesize.exit

image_get_linesize.exit:                          ; preds = %bb.i, %bb.j
  %i.bd = mul nsw i32 %i.au, %3                   ; 2 uses
  %4 = add nsw i32 %i.bd, 7
  %i.be = ashr i32 %4, 3
  %.0.i = select i1 %.not24.i, i32 %i.bd, i32 %i.be ; 3 uses
  %i.bf = icmp slt i32 %.0.i, 0
  br i1 %i.bf, label %image_get_linesize.exit.thread, label %av_image_fill_max_pixsteps.exit.split.1

av_image_fill_max_pixsteps.exit.split.1:          ; preds = %image_get_linesize.exit
  store i32 %.0.i, ptr %0, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !13
  %i.bk = add i32 %i.bj, -1
  %or.cond.i.1 = icmp ult i32 %i.bk, 2
  br i1 %or.cond.i.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.1
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.bm = zext i8 %i.bl to i32
  br label %bb.l

bb.l:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.1, %bb.k
  %i.bn = phi i32 [ %i.bm, %bb.k ], [ 0, %av_image_fill_max_pixsteps.exit.split.1 ]
  %i.bo = ashr i32 %i.as, %i.bn                   ; 2 uses
  %5 = sub nsw i32 0, %i.bo                       ; 2 uses
  %.not.i.1 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.1, label %image_get_linesize.exit.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = sdiv i32 2147483647, %5
  %i.bq = icmp sgt i32 %i.bh, %i.bp
  br i1 %i.bq, label %image_get_linesize.exit.thread, label %image_get_linesize.exit.1

image_get_linesize.exit.1:                        ; preds = %bb.m, %bb.l
  %i.br = mul nsw i32 %i.bh, %5                   ; 2 uses
  %6 = add nsw i32 %i.br, 7
  %i.bs = ashr i32 %6, 3
  %.0.i.1 = select i1 %.not24.i, i32 %i.br, i32 %i.bs ; 3 uses
  %i.bt = icmp slt i32 %.0.i.1, 0
  br i1 %i.bt, label %image_get_linesize.exit.thread, label %av_image_fill_max_pixsteps.exit.split.2

av_image_fill_max_pixsteps.exit.split.2:          ; preds = %image_get_linesize.exit.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i.1, ptr %i.bu, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.bz = add i32 %i.by, -1
  %or.cond.i.2 = icmp ult i32 %i.bz, 2
  br i1 %or.cond.i.2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.2
  %i.ca = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.cb = zext i8 %i.ca to i32
  br label %bb.o

bb.o:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.2, %bb.n
  %i.cc = phi i32 [ %i.cb, %bb.n ], [ 0, %av_image_fill_max_pixsteps.exit.split.2 ]
  %i.cd = ashr i32 %i.as, %i.cc                   ; 2 uses
  %7 = sub nsw i32 0, %i.cd                       ; 2 uses
  %.not.i.2 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.2, label %image_get_linesize.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = sdiv i32 2147483647, %7
  %i.cf = icmp sgt i32 %i.bw, %i.ce
  br i1 %i.cf, label %image_get_linesize.exit.thread, label %image_get_linesize.exit.2

image_get_linesize.exit.2:                        ; preds = %bb.p, %bb.o
  %i.cg = mul nsw i32 %i.bw, %7                   ; 2 uses
  %8 = add nsw i32 %i.cg, 7
  %i.ch = ashr i32 %8, 3
  %.0.i.2 = select i1 %.not24.i, i32 %i.cg, i32 %i.ch ; 3 uses
  %i.ci = icmp slt i32 %.0.i.2, 0
  br i1 %i.ci, label %image_get_linesize.exit.thread, label %av_image_fill_max_pixsteps.exit.split.3

av_image_fill_max_pixsteps.exit.split.3:          ; preds = %image_get_linesize.exit.2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.i.2, ptr %i.cj, align 4, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.co = add i32 %i.cn, -1
  %or.cond.i.3 = icmp ult i32 %i.co, 2
  br i1 %or.cond.i.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.3
  %i.cp = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i32
  br label %bb.r

bb.r:                                             ; preds = %av_image_fill_max_pixsteps.exit.split.3, %bb.q
  %i.cr = phi i32 [ %i.cq, %bb.q ], [ 0, %av_image_fill_max_pixsteps.exit.split.3 ]
  %i.cs = ashr i32 %i.as, %i.cr                   ; 2 uses
  %9 = sub nsw i32 0, %i.cs                       ; 2 uses
  %.not.i.3 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.3, label %image_get_linesize.exit.3, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = sdiv i32 2147483647, %9
  %i.cu = icmp sgt i32 %i.cl, %i.ct
  br i1 %i.cu, label %image_get_linesize.exit.thread, label %image_get_linesize.exit.3

image_get_linesize.exit.3:                        ; preds = %bb.s, %bb.r
  %i.cv = mul nsw i32 %i.cl, %9                   ; 2 uses
  %10 = add nsw i32 %i.cv, 7
  %i.cw = ashr i32 %10, 3
  %.0.i.3 = select i1 %.not24.i, i32 %i.cv, i32 %i.cw ; 3 uses
  %i.cx = icmp slt i32 %.0.i.3, 0
  br i1 %i.cx, label %image_get_linesize.exit.thread, label %bb.t

bb.t:                                             ; preds = %image_get_linesize.exit.3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.3, ptr %i.cy, align 4, !tbaa !13
  br label %image_get_linesize.exit.thread

image_get_linesize.exit.thread:                   ; preds = %image_get_linesize.exit, %bb.j, %bb.m, %image_get_linesize.exit.1, %bb.p, %image_get_linesize.exit.2, %bb.s, %image_get_linesize.exit.3, %bb.t, %av_image_fill_max_pixsteps.exit, %bb.a, %bb.b
  %.016 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ -22, %av_image_fill_max_pixsteps.exit ], [ 0, %bb.t ], [ %.0.i, %image_get_linesize.exit ], [ -22, %bb.j ], [ -22, %bb.m ], [ %.0.i.1, %image_get_linesize.exit.1 ], [ %.0.i.3, %image_get_linesize.exit.3 ], [ -22, %bb.p ], [ %.0.i.2, %image_get_linesize.exit.2 ], [ -22, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_image_fill_plane_sizes(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call ptr @av_pix_fmt_desc_get(i32 noundef %1) #12 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = and i64 %i.d, 8
  %.not43 = icmp eq i64 %i.e, 0
  br i1 %.not43, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.g = sext i32 %2 to i64                       ; 4 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 %i.f)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = mul i64 %i.f, %i.g
  store i64 %i.h, ptr %0, align 8, !tbaa !20
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  %i.j = and i64 %i.i, 2
  %.not44 = icmp eq i64 %i.j, 0
  br i1 %.not44, label %.preheader50, label %.critedge.sink.split

.preheader50:                                     ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !12
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.m
  store i32 1, ptr %i.n, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q
  store i32 1, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !12
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  store i32 1, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  store i32 1, ptr %i.z, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ab = sub nsw i32 0, %2                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %.not45 = icmp eq i32 %i.ad, 0
  br i1 %.not45, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader50
  %i.ae = load i8, ptr %i.aa, align 2, !tbaa !21
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = ashr i32 %i.ab, %i.af
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  %mul46 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ak, i64 %i.aj)
  %mul.ov47 = extractvalue { i64, i1 } %mul46, 1
  br i1 %mul.ov47, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !13
  %.not45.1 = icmp eq i32 %i.ao, 0
  br i1 %.not45.1, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.aa, align 2, !tbaa !21
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = ashr i32 %i.ab, %i.aq
  %i.as = sub nsw i32 0, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %mul46.1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.av, i64 %i.au)
  %mul.ov47.1 = extractvalue { i64, i1 } %mul46.1, 1
  br i1 %mul.ov47.1, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !13
  %.not45.2 = icmp eq i32 %i.az, 0
  br i1 %.not45.2, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %mul46.2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 %i.bb)
  %mul.ov47.2 = extractvalue { i64, i1 } %mul46.2, 1
  br i1 %mul.ov47.2, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = mul i64 %i.bb, %i.g
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.d, %bb.j
  %.sink57 = phi i64 [ 24, %bb.j ], [ 8, %bb.d ]
  %.sink = phi i64 [ %i.bc, %bb.j ], [ 1024, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink57
  store i64 %.sink, ptr %i.bd, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.e, %.preheader50, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c, %bb.a, %bb.b
  %.2 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ -22, %bb.i ], [ -22, %bb.c ], [ 0, %.preheader50 ], [ -22, %bb.e ], [ 0, %bb.h ], [ 0, %bb.f ], [ -22, %bb.g ], [ 0, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @av_image_fill_pointers(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load <4 x i32>, ptr %4, align 4, !tbaa !13
  %i.d = sext <4 x i32> %i.c to <4 x i64>
  store <4 x i64> %i.d, ptr %i.a, align 16, !tbaa !20
  %i.e = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 16, !tbaa !20  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2147483647
  br i1 %i.h, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 4 uses
  %i.k = sub nuw nsw i64 2147483647, %i.g
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.m = trunc nuw nsw i64 %i.g to i32
  %i.n = trunc nuw nsw i64 %i.j to i32
  %i.o = add nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !20  ; 4 uses
  %i.r = sub nsw i32 2147483647, %i.o
  %i.s = zext nneg i32 %i.r to i64
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.u = trunc nuw nsw i64 %i.q to i32
  %i.v = add i32 %i.o, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20   ; 3 uses
  %i.y = sub nsw i32 2147483647, %i.v
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader.3
  %i.ab = trunc nuw nsw i64 %i.x to i32
  %i.ac = add i32 %i.v, %i.ab                     ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %3, ptr %0, align 8, !tbaa !22
  %.not34 = icmp eq i64 %i.j, 0
  br i1 %.not34, label %.critedge, label %bb.d
end_hunk_0
