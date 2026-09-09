Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imgutils?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@av_image_fill_pointers:bb.a
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

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !22
  %.not34.1 = icmp eq i64 %i.q, 0
  br i1 %.not34.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.j ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !22
  %.not34.2 = icmp eq i64 %i.x, 0
  br i1 %.not34.2, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.q
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.c, %bb.d, %bb.e, %bb.f, %bb.b, %bb.a
  %.030 = phi i32 [ %i.ac, %bb.c ], [ %i.e, %bb.a ], [ %i.ac, %bb.b ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ -22, %.preheader.3 ], [ -22, %.preheader.2 ], [ -22, %.preheader.1 ], [ -22, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 -22, 1) i32 @avpriv_set_systematic_pal2(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  switch i32 %1, label %.split28 [
    i32 20, label %vector.body114
    i32 17, label %vector.body107
    i32 22, label %vector.body99
    i32 19, label %vector.body91
    i32 8, label %vector.body
  ]

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %bb.a ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4) ; 3 uses
  %i.a = shl nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.b = shl nuw nsw <4 x i64> %step.add, splat (i64 8)
  %i.c = shl nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %i.d = shl nuw nsw <4 x i64> %step.add, splat (i64 16)
  %i.e = add nuw nsw <4 x i64> %i.c, splat (i64 4278190080)
  %i.f = add nuw nsw <4 x i64> %i.d, splat (i64 4278190080)
  %i.g = add nuw nsw <4 x i64> %i.e, %i.a
  %i.h = add nuw nsw <4 x i64> %i.f, %i.b
  %i.i = add nuw nsw <4 x i64> %i.g, %vec.ind
  %i.j = add nuw nsw <4 x i64> %i.h, %step.add
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = trunc nuw <4 x i64> %i.i to <4 x i32>
  %i.m = trunc nuw <4 x i64> %i.j to <4 x i32>
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %i.l, ptr %i.k, align 4, !tbaa !13
  store <4 x i32> %i.m, ptr %i.n, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.o = icmp eq i64 %index.next, 256
  br i1 %i.o, label %.split28, label %vector.body, !llvm.loop !34

vector.body91:                                    ; preds = %bb.a, %vector.body91
  %index92 = phi i64 [ %index.next95, %vector.body91 ], [ 0, %bb.a ] ; 2 uses
  %vec.ind93 = phi <4 x i32> [ %vec.ind.next96, %vector.body91 ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 3 uses
  %i.p = lshr <4 x i32> %vec.ind93, splat (i32 3)
  %i.q = mul nuw nsw <4 x i32> %i.p, splat (i32 255)
  %i.r = lshr <4 x i32> %vec.ind93, splat (i32 1)
  %i.s = and <4 x i32> %i.r, splat (i32 3)
  %i.t = mul nuw nsw <4 x i32> %i.s, splat (i32 21760)
  %i.u = or disjoint <4 x i32> %i.t, <i32 -16777216, i32 -65536, i32 -16777216, i32 -65536>
  %i.v = add nsw <4 x i32> %i.u, %i.q
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index92
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !13
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %vec.ind.next96 = add <4 x i32> %vec.ind93, splat (i32 4)
  %i.x = icmp eq i64 %index.next95, 256
  br i1 %i.x, label %.split28, label %vector.body91, !llvm.loop !35

vector.body99:                                    ; preds = %bb.a, %vector.body99
  %index100 = phi i64 [ %index.next103, %vector.body99 ], [ 0, %bb.a ] ; 2 uses
  %vec.ind101 = phi <4 x i32> [ %vec.ind.next104, %vector.body99 ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 3 uses
  %i.y = lshr <4 x i32> %vec.ind101, splat (i32 3)
  %i.z = mul <4 x i32> %i.y, splat (i32 16711680)
  %i.aa = lshr <4 x i32> %vec.ind101, splat (i32 1)
  %i.ab = and <4 x i32> %i.aa, splat (i32 3)
  %i.ac = mul nuw nsw <4 x i32> %i.ab, splat (i32 21760)
  %i.ad = add <4 x i32> %i.z, splat (i32 -16777216)
  %i.ae = or disjoint <4 x i32> %i.ad, %i.ac
  %i.af = or disjoint <4 x i32> %i.ae, <i32 0, i32 255, i32 0, i32 255>
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index100
  store <4 x i32> %i.af, ptr %i.ag, align 4, !tbaa !13
  %index.next103 = add nuw i64 %index100, 4       ; 2 uses
  %vec.ind.next104 = add <4 x i32> %vec.ind101, splat (i32 4)
  %i.ah = icmp eq i64 %index.next103, 256
  br i1 %i.ah, label %.split28, label %vector.body99, !llvm.loop !36

vector.body107:                                   ; preds = %bb.a, %vector.body107
  %index108 = phi i64 [ %index.next110, %vector.body107 ], [ 0, %bb.a ] ; 2 uses
  %vec.ind109 = phi <4 x i32> [ %vec.ind.next111, %vector.body107 ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 4 uses
  %i.ai = lshr <4 x i32> %vec.ind109, splat (i32 6)
  %i.aj = mul nuw nsw <4 x i32> %i.ai, splat (i32 85)
  %i.ak = lshr <4 x i32> %vec.ind109, splat (i32 3)
  %i.al = and <4 x i32> %i.ak, splat (i32 7)
  %i.am = mul nuw nsw <4 x i32> %i.al, splat (i32 9216)
  %i.an = and <4 x i32> %vec.ind109, splat (i32 7)
  %i.ao = mul nuw nsw <4 x i32> %i.an, splat (i32 2359296)
  %i.ap = or disjoint <4 x i32> %i.ao, %i.am
  %i.aq = or disjoint <4 x i32> %i.ap, splat (i32 -16777216)
  %i.ar = add nsw <4 x i32> %i.aq, %i.aj
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index108
  store <4 x i32> %i.ar, ptr %i.as, align 4, !tbaa !13
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %vec.ind.next111 = add <4 x i32> %vec.ind109, splat (i32 4)
  %i.at = icmp eq i64 %index.next110, 256
  br i1 %i.at, label %.split28, label %vector.body107, !llvm.loop !37

vector.body114:                                   ; preds = %bb.a, %vector.body114
  %index115 = phi i64 [ %index.next117, %vector.body114 ], [ 0, %bb.a ] ; 2 uses
  %vec.ind116 = phi <4 x i32> [ %vec.ind.next118, %vector.body114 ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 4 uses
  %i.au = lshr <4 x i32> %vec.ind116, splat (i32 5)
  %i.av = mul <4 x i32> %i.au, splat (i32 2359296)
  %i.aw = lshr <4 x i32> %vec.ind116, splat (i32 2)
  %i.ax = and <4 x i32> %i.aw, splat (i32 7)
  %i.ay = mul nuw nsw <4 x i32> %i.ax, splat (i32 9216)
  %i.az = and <4 x i32> %vec.ind116, splat (i32 3)
  %i.ba = mul nuw nsw <4 x i32> %i.az, splat (i32 85)
  %i.bb = add <4 x i32> %i.av, splat (i32 -16777216)
  %i.bc = or disjoint <4 x i32> %i.bb, %i.ay
  %i.bd = or disjoint <4 x i32> %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index115
  store <4 x i32> %i.bd, ptr %i.be, align 4, !tbaa !13
  %index.next117 = add nuw i64 %index115, 4       ; 2 uses
  %vec.ind.next118 = add <4 x i32> %vec.ind116, splat (i32 4)
  %i.bf = icmp eq i64 %index.next117, 256
  br i1 %i.bf, label %.split28, label %vector.body114, !llvm.loop !38

.split28:                                         ; preds = %vector.body, %vector.body91, %vector.body99, %vector.body107, %vector.body114, %bb.a
  %.2.split = phi i32 [ -22, %bb.a ], [ 0, %vector.body114 ], [ 0, %vector.body107 ], [ 0, %vector.body99 ], [ 0, %vector.body91 ], [ 0, %vector.body ]
  ret i32 %.2.split
}

; Function Attrs: nounwind uwtable
define i32 @av_image_alloc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 5 uses
  %i.b = alloca [4 x i64], align 16               ; 8 uses
  %6 = alloca %struct.ImgUtils, align 8           ; 6 uses
  %i.c = alloca [4 x i64], align 16               ; 7 uses
  %i.d = alloca [4 x i64], align 16               ; 7 uses
  %i.e = tail call ptr @av_pix_fmt_desc_get(i32 noundef %4) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr @imgutils_class, ptr %6, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = tail call i32 @av_image_get_linesize(i32 noundef -1, i32 noundef %2, i32 noundef 0) ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i32 %i.g, 1
  %i.j = zext i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %.0.i.i = select i1 %i.i, i64 %i.k, i64 %i.h    ; 2 uses
  %i.l = icmp slt i32 %2, 1
  %i.m = icmp slt i32 %3, 1
  %or.cond5.i.i = or i1 %i.l, %i.m
  %i.n = icmp sgt i64 %.0.i.i, 2147482622
  %or.cond7.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.n
  br i1 %or.cond7.i.i, label %av_image_check_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %.0.i.i, 1024
  %narrow.i = add nuw i32 %3, 128
  %i.p = zext i32 %narrow.i to i64
  %i.q = mul nsw i64 %i.o, %i.p
  %i.r = icmp ugt i64 %i.q, 2147483646
  br i1 %i.r, label %av_image_check_size.exit.thread, label %bb.d

av_image_check_size.exit.thread:                  ; preds = %bb.b, %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.s = icmp sgt i32 %5, 7
  %i.t = add nuw nsw i32 %2, 7
  %i.u = and i32 %i.t, 2147483640
  %i.v = select i1 %i.s, i32 %i.u, i32 %2
  %i.w = tail call i32 @av_image_fill_linesizes(ptr noundef %1, i32 noundef %4, i32 noundef %i.v) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %7 = add i32 %5, -1                             ; 4 uses
  %i.y = sub i32 0, %5                            ; 4 uses
  %8 = load i32, ptr %1, align 4, !tbaa !13
  %9 = add i32 %7, %8
  %10 = and i32 %9, %i.y                          ; 2 uses
  store i32 %10, ptr %1, align 4, !tbaa !13
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %i.c, align 16, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %i.z = add i32 %7, %13
  %14 = and i32 %i.z, %i.y                        ; 2 uses
  store i32 %14, ptr %12, align 4, !tbaa !13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %15, ptr %16, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %18 = load i32, ptr %17, align 4, !tbaa !13
  %19 = add i32 %7, %18
  %20 = and i32 %19, %i.y                         ; 2 uses
  store i32 %20, ptr %17, align 4, !tbaa !13
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %21, ptr %22, align 16, !tbaa !20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = add i32 %7, %24
  %26 = and i32 %25, %i.y                         ; 2 uses
  store i32 %26, ptr %23, align 4, !tbaa !13
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %27, ptr %28, align 8, !tbaa !20
  %i.aa = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.d, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %i.c) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ac = sext i32 %5 to i64                      ; 2 uses
  %i.ad = load i64, ptr %i.d, align 16, !tbaa !20 ; 2 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = icmp ugt i64 %i.ag, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = load i64, ptr %i.am, align 16, !tbaa !20 ; 2 uses
  %i.ao = xor i64 %i.an, -1
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add i64 %i.an, %i.al                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i64 %i.as, %i.aq
  %i.aw = tail call noalias ptr @av_malloc(i64 noundef %i.av) #12 ; 5 uses
  %.not72 = icmp eq ptr %i.aw, null
  br i1 %.not72, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.ax = load <4 x i32>, ptr %1, align 4, !tbaa !13
  %i.ay = sext <4 x i32> %i.ax to <4 x i64>
  store <4 x i64> %i.ay, ptr %i.a, align 16, !tbaa !20
  %i.az = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.b, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %i.a) ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %av_image_fill_pointers.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.bb = load i64, ptr %i.b, align 16, !tbaa !20 ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, 2147483647
  br i1 %i.bc, label %av_image_fill_pointers.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20 ; 4 uses
  %i.bf = sub nuw nsw i64 2147483647, %i.bb
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %av_image_fill_pointers.exit.thread, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bh = trunc nuw nsw i64 %i.bb to i32
  %i.bi = trunc nuw nsw i64 %i.be to i32
  %i.bj = add nuw i32 %i.bi, %i.bh                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !20 ; 4 uses
  %i.bm = sub nuw nsw i32 2147483647, %i.bj
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %av_image_fill_pointers.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bp = trunc nuw nsw i64 %i.bl to i32
  %i.bq = add i32 %i.bj, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !20 ; 3 uses
  %i.bt = sub nsw i32 2147483647, %i.bq
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = icmp ugt i64 %i.bs, %i.bu
  br i1 %i.bv, label %av_image_fill_pointers.exit.thread, label %bb.k

bb.k:                                             ; preds = %.preheader.3.i
  %i.bw = trunc nuw nsw i64 %i.bs to i32
  %i.bx = add i32 %i.bq, %i.bw                    ; 7 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !22
  %.not34.i = icmp eq i64 %i.be, 0
  br i1 %.not34.i, label %av_image_fill_pointers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !22
  %.not34.1.i = icmp eq i64 %i.bl, 0
  br i1 %.not34.1.i, label %av_image_fill_pointers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.be ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !22
  %.not34.2.i = icmp eq i64 %i.bs, 0
  br i1 %.not34.2.i, label %av_image_fill_pointers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bl
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !22
  br label %av_image_fill_pointers.exit

av_image_fill_pointers.exit.thread:               ; preds = %bb.j, %.preheader.preheader.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i
  %.030.i.ph = phi i32 [ -22, %.preheader.1.i ], [ -22, %.preheader.2.i ], [ -22, %.preheader.3.i ], [ -22, %.preheader.preheader.i ], [ %i.az, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

av_image_fill_pointers.exit:                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ce = icmp slt i32 %i.bx, 0
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %av_image_fill_pointers.exit.thread, %av_image_fill_pointers.exit
  %.030.i78 = phi i32 [ %.030.i.ph, %av_image_fill_pointers.exit.thread ], [ %i.bx, %av_image_fill_pointers.exit ]
  tail call void @av_free(ptr noundef nonnull %i.aw) #12
  br label %.loopexit

bb.p:                                             ; preds = %av_image_fill_pointers.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !18
  %i.ch = and i64 %i.cg, 2
  %.not73 = icmp eq i64 %i.ch, 0
  br i1 %.not73, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.ck = tail call i32 @avpriv_set_systematic_pal2(ptr noundef %i.cj, i32 noundef %4) ; 0 uses
  %i.cl = icmp slt i32 %5, 4
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #12
  tail call void @av_free(ptr noundef nonnull %i.aw) #12
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %.pre = load i64, ptr %i.cf, align 8, !tbaa !18
  %.pre85 = and i64 %.pre, 2
  %i.cm = icmp eq i64 %.pre85, 0
  br i1 %i.cm, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22 ; 2 uses
  %.not75 = icmp eq ptr %i.co, null
  br i1 %.not75, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = load i32, ptr %1, align 4, !tbaa !13
  %i.cu = mul nsw i32 %i.ct, %3
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = icmp sgt i64 %i.cs, %i.cv
  br i1 %i.cw, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %i.cv
  %i.cy = sub nsw i64 %i.cs, %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cx, i8 0, i64 %i.cy, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.e, %bb.f, %bb.g, %bb.h, %av_image_check_size.exit.thread, %bb.s, %bb.t, %bb.u, %bb.v, %bb.i, %.preheader, %bb.d, %bb.a, %bb.r, %bb.o
  %.061 = phi i32 [ -22, %bb.a ], [ -22, %av_image_check_size.exit.thread ], [ %i.w, %bb.d ], [ %i.aa, %.preheader ], [ %.030.i78, %bb.o ], [ -22, %bb.r ], [ -12, %bb.i ], [ %i.bx, %bb.s ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ], [ %i.bx, %bb.t ], [ -22, %bb.e ], [ -22, %bb.h ], [ -22, %bb.g ], [ -22, %bb.f ], [ %i.bx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_image_check_size(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.ImgUtils, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr @imgutils_class, ptr %4, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !30
  %i.d = tail call i32 @av_image_get_linesize(i32 noundef -1, i32 noundef %0, i32 noundef 0) ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i32 %i.d, 1
  %i.g = zext i32 %0 to i64
end_hunk_0
begin_hunk_1_@image_copy:bb.a
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi88 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !12
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !12
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !12
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !12
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !12
  %i.aj = load i32, ptr %i.v, align 4, !tbaa !12
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !12
  %i.al = load i32, ptr %i.z, align 4, !tbaa !12
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = add nsw <4 x i32> %i.ah, splat (i32 1)
  %i.ar = add nsw <4 x i32> %i.ap, splat (i32 1)
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.aq) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi88, <4 x i32> %i.ar) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05570.ph = phi i32 [ 0, %.lr.ph ], [ %i.av, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %0, align 8, !tbaa !22
  %i.ax = load i64, ptr %1, align 8, !tbaa !20
  %i.ay = load ptr, ptr %2, align 8, !tbaa !22
  %i.az = load i64, ptr %3, align 8, !tbaa !20
  %i.ba = sext i32 %5 to i64
  tail call void %7(ptr noundef %i.aw, i64 noundef %i.ax, ptr noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ba, i32 noundef %6) #12, !callees !45
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bc = and i64 %i.bb, 2
  %.not65 = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22 ; 2 uses
  br i1 %.not65, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !22
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not66 = icmp eq ptr %i.be, null
  br i1 %.not66, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22 ; 2 uses
  %.not67 = icmp eq ptr %i.bg, null
  br i1 %.not67, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.bh = phi ptr [ %.pre82, %._crit_edge ], [ %i.bg, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.be, ptr noundef nonnull align 1 dereferenceable(1024) %i.bh, i64 1024, i1 false)
  br label %.critedge

.preheader:                                       ; preds = %scalar.ph
  %.not6471 = icmp sgt i32 %.055., 0
  br i1 %.not6471, label %.lr.ph73, label %.critedge

.lr.ph73:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bj = sub nsw i32 0, %6
  %wide.trip.count79 = zext nneg i32 %.055. to i64
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.05570 = phi i32 [ %.055., %scalar.ph ], [ %.05570.ph, %scalar.ph.preheader ]
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.bm = add nsw i32 %i.bl, 1
  %.055. = tail call i32 @llvm.smax.i32(i32 %.05570, i32 %i.bm) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !43

bb.h:                                             ; preds = %.lr.ph73, %bb.l
  %indvars.iv76 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next77, %bb.l ] ; 7 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv76 to i32
  %i.bo = tail call i32 @av_image_get_linesize(i32 noundef %4, i32 noundef %5, i32 noundef %i.bn) ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = icmp sgt i32 %i.bo, -1
  br i1 %i.bq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = trunc i64 %indvars.iv76 to i32
  %i.bs = add i32 %i.br, -1
  %or.cond = icmp ult i32 %i.bs, 2
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bt = load i8, ptr %i.bi, align 2, !tbaa !21
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = ashr i32 %i.bj, %i.bu
  %i.bw = sub nsw i32 0, %i.bv
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %.critedge

bb.l:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ %6, %bb.i ], [ %i.bw, %bb.j ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv76
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !20
  tail call void %7(ptr noundef %i.by, i64 noundef %i.ca, ptr noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.bp, i32 noundef %.0) #12, !callees !45
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.critedge, label %bb.h, !llvm.loop !44

.critedge:                                        ; preds = %bb.l, %.preheader68, %.preheader, %bb.k, %bb.g, %bb.f, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @av_image_copy_uc_from(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  tail call fastcc void @image_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @av_image_copy_plane_uc_from)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @av_image_fill_arrays(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %7 = alloca %struct.ImgUtils, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr @imgutils_class, ptr %7, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = tail call i32 @av_image_get_linesize(i32 noundef -1, i32 noundef %4, i32 noundef 0) ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i32 %i.d, 1
  %i.g = zext i32 %4 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %.0.i.i = select i1 %i.f, i64 %i.h, i64 %i.e    ; 2 uses
  %i.i = icmp slt i32 %4, 1
  %i.j = icmp slt i32 %5, 1
  %or.cond5.i.i = or i1 %i.i, %i.j
  %i.k = icmp sgt i64 %.0.i.i, 2147482622
  %or.cond7.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.k
  br i1 %or.cond7.i.i, label %av_image_check_size.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %.0.i.i, 1024
  %narrow.i = add nuw i32 %5, 128
  %i.m = zext i32 %narrow.i to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 2147483646
  br i1 %i.o, label %av_image_check_size.exit.thread, label %bb.c

av_image_check_size.exit.thread:                  ; preds = %bb.a, %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.p = tail call i32 @av_image_fill_linesizes(ptr noundef %1, i32 noundef %3, i32 noundef %4) ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.c
  %8 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %6, i64 0
  %9 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %10 = sub <2 x i32> %8, %9                      ; 2 uses
  %11 = load <4 x i32>, ptr %1, align 4, !tbaa !13
  %i.r = shufflevector <2 x i32> %10, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.s = add <4 x i32> %i.r, %11
  %12 = shufflevector <2 x i32> %10, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.t = and <4 x i32> %i.s, %12
  store <4 x i32> %i.t, ptr %1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.u = load <4 x i32>, ptr %1, align 4, !tbaa !13
  %i.v = sext <4 x i32> %i.u to <4 x i64>
  store <4 x i64> %i.v, ptr %i.a, align 16, !tbaa !20
  %i.w = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %i.a) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %av_image_fill_pointers.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader
  %i.y = load i64, ptr %i.b, align 16, !tbaa !20  ; 4 uses
  %i.z = icmp ugt i64 %i.y, 2147483647
  br i1 %i.z, label %av_image_fill_pointers.exit, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20 ; 4 uses
  %i.ac = sub nuw nsw i64 2147483647, %i.y
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %av_image_fill_pointers.exit, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ae = trunc nuw nsw i64 %i.y to i32
  %i.af = trunc nuw nsw i64 %i.ab to i32
  %i.ag = add nuw i32 %i.af, %i.ae                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load i64, ptr %i.ah, align 16, !tbaa !20 ; 4 uses
  %i.aj = sub nuw nsw i32 2147483647, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %av_image_fill_pointers.exit, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.am = trunc nuw nsw i64 %i.ai to i32
  %i.an = add i32 %i.ag, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20 ; 3 uses
  %i.aq = sub nsw i32 2147483647, %i.an
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %av_image_fill_pointers.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.3.i
  %i.at = trunc nuw nsw i64 %i.ap to i32
  %i.au = add i32 %i.an, %i.at                    ; 5 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %av_image_fill_pointers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %0, align 8, !tbaa !22
  %.not34.i = icmp eq i64 %i.ab, 0
  br i1 %.not34.i, label %av_image_fill_pointers.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !22
  %.not34.1.i = icmp eq i64 %i.ai, 0
  br i1 %.not34.1.i, label %av_image_fill_pointers.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !22
  %.not34.2.i = icmp eq i64 %i.ap, 0
  br i1 %.not34.2.i, label %av_image_fill_pointers.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ai
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !22
  br label %av_image_fill_pointers.exit

av_image_fill_pointers.exit:                      ; preds = %.preheader, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.030.i = phi i32 [ %i.au, %bb.e ], [ %i.w, %.preheader ], [ %i.au, %bb.d ], [ %i.au, %bb.h ], [ %i.au, %bb.g ], [ %i.au, %bb.f ], [ -22, %.preheader.3.i ], [ -22, %.preheader.2.i ], [ -22, %.preheader.1.i ], [ -22, %.preheader.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %av_image_check_size.exit.thread, %bb.c, %av_image_fill_pointers.exit
  %.022 = phi i32 [ %.030.i, %av_image_fill_pointers.exit ], [ -22, %av_image_check_size.exit.thread ], [ %i.p, %bb.c ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define i32 @av_image_get_buffer_size(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.ImgUtils, align 8           ; 6 uses
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [4 x i64], align 16               ; 4 uses
  %i.c = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = tail call ptr @av_pix_fmt_desc_get(i32 noundef %0) #12
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr @imgutils_class, ptr %4, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = tail call i32 @av_image_get_linesize(i32 noundef -1, i32 noundef %1, i32 noundef 0) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i32 %i.f, 1
  %i.i = zext i32 %1 to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %.0.i.i = select i1 %i.h, i64 %i.j, i64 %i.g    ; 2 uses
  %i.k = icmp slt i32 %1, 1
  %i.l = icmp slt i32 %2, 1
  %or.cond5.i.i = or i1 %i.k, %i.l
  %i.m = icmp sgt i64 %.0.i.i, 2147482622
  %or.cond7.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.m
  br i1 %or.cond7.i.i, label %av_image_check_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw nsw i64 %.0.i.i, 1024
  %narrow.i = add nuw i32 %2, 128
  %i.o = zext i32 %narrow.i to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.p, 2147483646
  br i1 %i.q, label %av_image_check_size.exit.thread, label %bb.d

av_image_check_size.exit.thread:                  ; preds = %bb.b, %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.r = call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.a, i32 noundef %0, i32 noundef %1) ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.preheader34

.preheader34:                                     ; preds = %bb.d
  %5 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %3, i64 0
  %6 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %3, i64 1
  %7 = sub <2 x i32> %5, %6                       ; 2 uses
  %8 = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.t = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.u = add <4 x i32> %i.t, %8
  %9 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.v = and <4 x i32> %i.u, %9
  %i.w = sext <4 x i32> %i.v to <4 x i64>
  store <4 x i64> %i.w, ptr %i.b, align 16, !tbaa !20
  %i.x = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.c, i32 noundef %0, i32 noundef %2, ptr noundef nonnull %i.b) ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader34
  %i.z = load i64, ptr %i.c, align 16, !tbaa !20  ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 2147483647
  br i1 %i.aa, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = sub nuw nsw i64 2147483647, %i.z
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.af = trunc nuw nsw i64 %i.z to i32
  %i.ag = trunc nuw nsw i64 %i.ac to i32
  %i.ah = add nuw i32 %i.af, %i.ag                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !20 ; 2 uses
  %i.ak = sub nsw i32 2147483647, %i.ah
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.an = trunc nuw nsw i64 %i.aj to i32
  %i.ao = add i32 %i.ah, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.ar = sub nsw i32 2147483647, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.3
  %i.au = trunc nuw nsw i64 %i.aq to i32
  %i.av = add i32 %i.ao, %i.au
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.e, %av_image_check_size.exit.thread, %.preheader34, %bb.d, %bb.a
  %.028 = phi i32 [ -22, %bb.a ], [ -22, %av_image_check_size.exit.thread ], [ %i.r, %bb.d ], [ %i.x, %.preheader34 ], [ -22, %.preheader.preheader ], [ %i.av, %bb.e ], [ -22, %.preheader.1 ], [ -22, %.preheader.3 ], [ -22, %.preheader.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define range(i32 -22, -2147483648) i32 @av_image_copy_to_buffer(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call i32 @av_image_get_buffer_size(i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) ; 4 uses
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %4) #12 ; 5 uses
  %i.d = icmp sle i32 %i.b, %1
  %i.e = icmp sgt i32 %i.b, -1
  %or.cond.not72 = and i1 %i.d, %i.e
  %i.f = icmp ne ptr %i.c, null
  %or.cond3 = select i1 %or.cond.not72, i1 %i.f, i1 false
  br i1 %or.cond3, label %.preheader75, label %.loopexit

.preheader75:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32    ; 3 uses
  %.not92 = icmp eq i8 %i.h, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %wide.trip.count = zext i8 %i.h to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = icmp ult i8 %i.h, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 252
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.06377 = phi i32 [ 0, %.lr.ph.new ], [ %..063.3, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %..063 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.06377)
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %..063.1 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %..063)
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %..063.2 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %..063.1)
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %..063.3 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %..063.2) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.06377.epil.init = phi i32 [ 0, %.lr.ph ], [ %..063.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.06377.epil = phi i32 [ %.06377.epil.init, %.epil.preheader ], [ %..063.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %..063.epil = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %.06377.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.unr-lcssa
  %..063.lcssa = phi i32 [ %..063.3, %._crit_edge.loopexit.unr-lcssa ], [ %..063.epil, %bb.c ]
  %i.x = add nuw i32 %..063.lcssa, 1
  %i.y = zext i32 %i.x to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader75
  %.063.lcssa = phi i64 [ 1, %.preheader75 ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5)
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph88, label %bb.d

.lr.ph88:                                         ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ac = sub nsw i32 0, %6
  %i.ad = add i32 %7, -1
  %i.ae = sub i32 0, %7
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 521) #12
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %.lr.ph88, %._crit_edge83
  %indvars.iv95 = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next96, %._crit_edge83 ] ; 5 uses
  %.06786 = phi ptr [ %0, %.lr.ph88 ], [ %.168.lcssa, %._crit_edge83 ] ; 3 uses
  %i.af = trunc i64 %indvars.iv95 to i32
  %i.ag = add i32 %i.af, -1
  %or.cond5 = icmp ult i32 %i.ag, 2
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.ab, align 2, !tbaa !21
  %i.ai = zext i8 %i.ah to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ %i.ai, %bb.f ], [ 0, %bb.e ]
  %i.ak = ashr i32 %i.ac, %i.aj                   ; 3 uses
  %i.al = sub i32 0, %i.ak                        ; 2 uses
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv95
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 5 uses
  %i.as = add i32 %i.ad, %i.aq
  %i.at = and i32 %i.as, %i.ae
  %i.au = sext i32 %i.at to i64                   ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv95 ; 5 uses
  %xtraiter109 = and i32 %i.al, 3                 ; 3 uses
  %i.aw = icmp ugt i32 %i.ak, -4
  br i1 %i.aw, label %.epil.preheader108, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter114 = and i32 %i.al, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph82.new
  %.080 = phi ptr [ %i.ao, %.lr.ph82.new ], [ %i.bm, %bb.h ] ; 2 uses
  %.16878 = phi ptr [ %.06786, %.lr.ph82.new ], [ %i.bj, %bb.h ] ; 2 uses
  %niter115 = phi i32 [ 0, %.lr.ph82.new ], [ %niter115.next.3, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.16878, ptr align 1 %.080, i64 %i.ar, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %.16878, i64 %i.au ; 2 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !13
  %i.az = sext i32 %i.ay to i64
end_hunk_1
