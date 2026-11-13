Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imgutils?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@av_image_fill_plane_sizes:bb.a
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
  %i.ad = add nsw <4 x i32> %i.z, splat (i32 -16777216)
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
  %i.bb = add nsw <4 x i32> %i.av, splat (i32 -16777216)
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
  %i.c = alloca [4 x i64], align 16               ; 5 uses
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
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = add i32 %5, -1
  %i.aa = sub i32 0, %5
  %i.ab = load <4 x i32>, ptr %1, align 4, !tbaa !13
  %i.ac = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ad = shufflevector <4 x i32> %i.ac, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ae = add <4 x i32> %i.ad, %i.ab
  %i.af = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = and <4 x i32> %i.ae, %i.ag              ; 3 uses
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.aj = sext <2 x i32> %i.ai to <2 x i64>
  store <2 x i64> %i.aj, ptr %i.c, align 16, !tbaa !20
  store <4 x i32> %i.ah, ptr %1, align 4, !tbaa !13
  %i.ak = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.al = sext <2 x i32> %i.ak to <2 x i64>
  store <2 x i64> %i.al, ptr %i.y, align 16, !tbaa !20
  %i.am = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.d, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %i.c) ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ao = sext i32 %5 to i64                      ; 2 uses
  %i.ap = load i64, ptr %i.d, align 16, !tbaa !20 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = icmp ugt i64 %i.as, %i.av
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.az = load i64, ptr %i.ay, align 16, !tbaa !20 ; 2 uses
  %i.ba = xor i64 %i.az, -1
  %i.bb = icmp ugt i64 %i.ax, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = add i64 %i.az, %i.ax                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = xor i64 %i.be, -1
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = add i64 %i.be, %i.bc
  %i.bi = tail call noalias ptr @av_malloc(i64 noundef %i.bh) #12 ; 5 uses
  %.not72 = icmp eq ptr %i.bi, null
  br i1 %.not72, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.bj = load <4 x i32>, ptr %1, align 4, !tbaa !13
  %i.bk = sext <4 x i32> %i.bj to <4 x i64>
  store <4 x i64> %i.bk, ptr %i.a, align 16, !tbaa !20
  %i.bl = call i32 @av_image_fill_plane_sizes(ptr noundef nonnull %i.b, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %i.a) ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %av_image_fill_pointers.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.bn = load i64, ptr %i.b, align 16, !tbaa !20 ; 4 uses
  %i.bo = icmp ugt i64 %i.bn, 2147483647
  br i1 %i.bo, label %av_image_fill_pointers.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !20 ; 4 uses
  %i.br = sub nuw nsw i64 2147483647, %i.bn
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %av_image_fill_pointers.exit.thread, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bt = trunc nuw nsw i64 %i.bn to i32
  %i.bu = trunc nuw nsw i64 %i.bq to i32
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !20 ; 4 uses
  %i.by = sub nuw nsw i32 2147483647, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %av_image_fill_pointers.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.cb = trunc nuw nsw i64 %i.bx to i32
  %i.cc = add i32 %i.bv, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !20 ; 3 uses
  %i.cf = sub nsw i32 2147483647, %i.cc
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %av_image_fill_pointers.exit.thread, label %bb.k

bb.k:                                             ; preds = %.preheader.3.i
  %i.ci = trunc nuw nsw i64 %i.ce to i32
  %i.cj = add i32 %i.cc, %i.ci                    ; 7 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !22
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %av_image_fill_pointers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !22
  %.not34.1.i = icmp eq i64 %i.bx, 0
  br i1 %.not34.1.i, label %av_image_fill_pointers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bq ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !22
  %.not34.2.i = icmp eq i64 %i.ce, 0
  br i1 %.not34.2.i, label %av_image_fill_pointers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bx
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !22
  br label %av_image_fill_pointers.exit

av_image_fill_pointers.exit.thread:               ; preds = %bb.j, %.preheader.preheader.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i
end_hunk_0
