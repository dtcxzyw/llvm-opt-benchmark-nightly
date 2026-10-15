Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_codecs_cn?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_cjk_exec:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.b, align 8, !tbaa !58
  %i.at = sext i32 %i.as to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %.not.i, label %bb.g, label %register_maps.exit, !llvm.loop !57

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.av = getelementptr [24 x i8], ptr %i.au, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store <4 x i8> <i8 95, i8 95, i8 109, i8 97>, ptr %i.a, align 16
  store i8 112, ptr %i.ap, align 4
  store i8 95, ptr %i.aq, align 1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !68
  %i.ax = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %i.aw) #10 ; 0 uses
  %i.ay = call ptr @PyCapsule_New(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.10, ptr noundef null) #10
  %i.az = call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.ay) #10
  %i.ba = icmp sgt i32 %i.az, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.ba, label %bb.f, label %register_maps.exit

register_maps.exit:                               ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %add_codecs.exit.i
  %.3.i = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %add_codecs.exit.i ], [ -1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @gb2312_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %i.c = phi i64 [ %i.ap, %bb.n ], [ %i.a, %bb.a ] ; 3 uses
  %.03248 = phi i64 [ %i.as, %bb.n ], [ %7, %bb.a ] ; 3 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !29
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.03248, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.n, ptr %i.o, align 1, !tbaa !25
  br label %bb.n, !llvm.loop !69

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.03248, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @gbcommon_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !33
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not41 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not41, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = zext i8 %i.aa to i32
  %.not42 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not42, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nuw nsw i32 %i.v, %i.y
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 3 uses
  %.not44 = icmp sgt i16 %i.af, -1
  br i1 %.not44, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw nsw i16 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, -128
  %i.aj = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !25
  %i.ak = trunc i16 %i.af to i8
  %i.al = or i8 %i.ak, -128
  %i.am = load ptr, ptr %6, align 8, !tbaa !27
  %i.an = getelementptr i8, ptr %i.am, i64 1
  store i8 %i.al, ptr %i.an, align 1, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.sink71 = phi i64 [ 2, %bb.m ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.m ], [ -1, %bb.f ]
  %i.ao = load i64, ptr %4, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.ap, ptr %4, align 8, !tbaa !28
  %i.aq = load ptr, ptr %6, align 8, !tbaa !27
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.sink71
  store ptr %i.ar, ptr %6, align 8, !tbaa !27
  %i.as = add nsw i64 %.03248, %.sink
  %i.at = icmp slt i64 %i.ap, %5
  br i1 %i.at, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.n, %bb.h, %bb.e, %bb.g, %bb.i, %bb.l, %bb.k, %bb.j, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @gb2312_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.b = phi ptr [ %i.z, %bb.i ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.02236 = phi i64 [ %i.aa, %bb.i ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.i, !llvm.loop !70

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.02236, 1
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.d, 127
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr [16 x i8], ptr @gb2312_decmap, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25
  %i.o = xor i8 %i.n, -128                        ; 3 uses
  %5 = zext i8 %i.o to i64
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !37    ; 2 uses
  %6 = zext i8 %i.q to i64
  %.not30 = icmp ult i8 %i.o, %i.q
  br i1 %.not30, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.k, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !38
  %.not31 = icmp ugt i8 %i.o, %i.s
  br i1 %.not31, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %7 = sub nuw nsw i64 %5, %6
  %i.t = getelementptr [2 x i8], ptr %i.l, i64 %7
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29   ; 2 uses
  %.not32 = icmp eq i16 %i.u, -2
  br i1 %.not32, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext i16 %i.u to i32
  %i.w = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.v) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.sink56 = phi i64 [ 1, %bb.b ], [ 2, %bb.h ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.h ]
  %i.y = load ptr, ptr %2, align 8, !tbaa !27
  %i.z = getelementptr i8, ptr %i.y, i64 %.sink56 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !27
  %i.aa = add nsw i64 %.02236, %.sink             ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.b, %bb.c, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -4, %bb.h ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ -2, %bb.c ], [ -4, %bb.b ], [ 0, %bb.i ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @gbk_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread56

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %i.c = phi i64 [ %i.at, %bb.t ], [ %i.a, %bb.a ] ; 3 uses
  %.03960 = phi i64 [ %i.aw, %bb.t ], [ %7, %bb.a ] ; 3 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !29
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.03960, 1
  br i1 %i.m, label %.thread56, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.n, ptr %i.o, align 1, !tbaa !25
  br label %bb.t, !llvm.loop !71

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread56, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.03960, 2
  br i1 %i.q, label %.thread56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %trunc = trunc nuw i32 %.0.i to i16
  switch i16 %trunc, label %bb.l [
    i16 8212, label %.thread
    i16 8213, label %bb.j
    i16 183, label %bb.k
    i16 12539, label %.thread56
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread

bb.k:                                             ; preds = %bb.i
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @gbcommon_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !32  ; 2 uses
  %.not47 = icmp eq ptr %i.u, null
  br i1 %.not47, label %.thread56, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !33
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not48 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not48, label %.thread56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = zext i8 %i.aa to i32
  %.not49 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not49, label %.thread56, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = sub nuw nsw i32 %i.v, %i.y
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 5 uses
  %.not50 = icmp eq i16 %i.af, -1
  br i1 %.not50, label %.thread56, label %bb.p

.thread:                                          ; preds = %bb.j, %bb.k, %bb.i
  %.037.ph = phi i16 [ -24150, %bb.i ], [ -24156, %bb.k ], [ -22460, %bb.j ] ; 2 uses
  %i.ag = lshr i16 %.037.ph, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = lshr i16 %i.af, 8
  %i.ak = trunc nuw i16 %i.aj to i8
  %i.al = or i8 %i.ak, -128
  %i.am = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %.not51 = icmp sgt i16 %i.af, -1
  br i1 %.not51, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %.03754 = phi i16 [ %.037.ph, %.thread ], [ %i.af, %bb.p ]
  %i.an = trunc i16 %.03754 to i8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ao = trunc i16 %i.af to i8
  %i.ap = or i8 %i.ao, -128
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i8 [ %i.ap, %bb.r ], [ %i.an, %bb.q ]
  %i.aq = load ptr, ptr %6, align 8, !tbaa !27
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i8 %.sink, ptr %i.ar, align 1, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f
  %.sink88 = phi i64 [ 2, %bb.s ], [ 1, %bb.f ]
  %.sink85 = phi i64 [ -2, %bb.s ], [ -1, %bb.f ]
  %i.as = load i64, ptr %4, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.at, ptr %4, align 8, !tbaa !28
  %i.au = load ptr, ptr %6, align 8, !tbaa !27
  %i.av = getelementptr i8, ptr %i.au, i64 %.sink88
  store ptr %i.av, ptr %6, align 8, !tbaa !27
  %i.aw = add nsw i64 %.03960, %.sink85
  %i.ax = icmp slt i64 %i.at, %5
  br i1 %i.ax, label %.lr.ph, label %.thread56

.thread56:                                        ; preds = %bb.t, %bb.h, %bb.e, %bb.g, %bb.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.i ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.t ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @gbk_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread62

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %i.b = phi ptr [ %i.ay, %bb.s ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %.04166 = phi i64 [ %i.az, %bb.s ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 4 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread62, label %bb.s, !llvm.loop !72

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.04166, 1
  br i1 %i.h, label %.thread62, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.c, label %.thread60 [
    i8 -95, label %bb.e
    i8 -88, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  switch i8 %i.j, label %.thread60 [
    i8 -86, label %bb.f
    i8 -92, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8212) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread62, label %bb.s

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25
  %i.o = icmp eq i8 %i.n, 68
  br i1 %i.o, label %bb.h, label %.thread60

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8213) #10
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread62, label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 183) #10
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread62, label %bb.s

.thread60:                                        ; preds = %bb.e, %bb.d, %bb.g
  %i.t = and i32 %i.d, 127
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr [16 x i8], ptr @gb2312_decmap, i64 %i.u ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !36  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread60
  %i.x = getelementptr i8, ptr %i.b, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25
  %i.z = xor i8 %i.y, -128                        ; 3 uses
  %5 = zext i8 %i.z to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !37  ; 2 uses
  %6 = zext i8 %i.ab to i64
  %.not53 = icmp ult i8 %i.z, %i.ab
  br i1 %.not53, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.v, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %.not54 = icmp ugt i8 %i.z, %i.ad
  br i1 %.not54, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %7 = sub nuw nsw i64 %5, %6
  %i.ae = getelementptr [2 x i8], ptr %i.w, i64 %7
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 2 uses
  %.not55 = icmp eq i16 %i.af, -2
  br i1 %.not55, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ag) #10
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread62, label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %.thread60
  %i.aj = zext i8 %i.c to i64
  %i.ak = getelementptr [16 x i8], ptr @gbkext_decmap, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !36 ; 2 uses
  %.not56 = icmp eq ptr %i.al, null
  br i1 %.not56, label %.thread62, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %i.b, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25  ; 3 uses
  %8 = zext i8 %i.an to i64
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !37  ; 2 uses
  %9 = zext i8 %i.ap to i64
  %.not57 = icmp ult i8 %i.an, %i.ap
  br i1 %.not57, label %.thread62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %i.ak, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !38
  %.not58 = icmp ugt i8 %i.an, %i.ar
  br i1 %.not58, label %.thread62, label %bb.q

bb.q:                                             ; preds = %bb.p
  %10 = sub nuw nsw i64 %8, %9
  %i.as = getelementptr [2 x i8], ptr %i.al, i64 %10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !29 ; 2 uses
  %.not59 = icmp eq i16 %i.at, -2
  br i1 %.not59, label %.thread62, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = zext i16 %i.at to i32
  %i.av = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.au) #10
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread62, label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.m, %bb.r, %bb.i, %bb.f, %bb.b
  %.sink99 = phi i64 [ 1, %bb.b ], [ 2, %bb.f ], [ 2, %bb.i ], [ 2, %bb.r ], [ 2, %bb.m ], [ 2, %bb.h ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.f ], [ -2, %bb.i ], [ -2, %bb.r ], [ -2, %bb.m ], [ -2, %bb.h ]
  %i.ax = load ptr, ptr %2, align 8, !tbaa !27
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.sink99 ; 2 uses
  store ptr %i.ay, ptr %2, align 8, !tbaa !27
  %i.az = add nsw i64 %.04166, %.sink             ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %.thread62

.thread62:                                        ; preds = %bb.s, %bb.r, %bb.b, %bb.c, %bb.f, %bb.h, %bb.i, %bb.m, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -4, %bb.r ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ -4, %bb.m ], [ -4, %bb.i ], [ -4, %bb.h ], [ -4, %bb.f ], [ -2, %bb.c ], [ -4, %bb.b ], [ 0, %bb.s ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @gb18030_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread122

.lr.ph:                                           ; preds = %bb.a, %bb.ad
  %i.c = phi i64 [ %i.dj, %bb.ad ], [ %i.a, %bb.a ] ; 3 uses
  %.091134 = phi i64 [ %i.dm, %bb.ad ], [ %7, %bb.a ] ; 5 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !29
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.091134, 1
  br i1 %i.m, label %.thread122, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.n, ptr %i.o, align 1, !tbaa !25
  br label %bb.ad, !llvm.loop !73

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.091134, 4
  br i1 %i.q, label %.thread122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add i32 %.0.i, -65536                    ; 4 uses
  %i.s = urem i32 %i.r, 10
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = load ptr, ptr %6, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %i.v, i64 3
  store i8 %i.u, ptr %i.w, align 1, !tbaa !25
  %i.x = udiv i32 %i.r, 10
  %i.y = urem i32 %i.x, 126
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = add nuw nsw i8 %i.z, -127
  %i.ab = load ptr, ptr %6, align 8, !tbaa !27
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !25
  %i.ad = udiv i32 %i.r, 1260
  %i.ae = urem i32 %i.ad, 10
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = or disjoint i8 %i.af, 48
  %i.ah = load ptr, ptr %6, align 8, !tbaa !27
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !25
  %i.aj = udiv i32 %i.r, 12600
  %i.ak = trunc i32 %i.aj to i8
  %i.al = add i8 %i.ak, -112
  %i.am = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  br label %bb.ad, !llvm.loop !73

bb.j:                                             ; preds = %bb.g
  %i.an = icmp slt i64 %.091134, 2
  br i1 %i.an, label %.thread122, label %bb.k

bb.k:                                             ; preds = %bb.j
  %trunc = trunc nuw i32 %.0.i to i16
  switch i16 %trunc, label %bb.n [
    i16 8212, label %.thread
    i16 8213, label %bb.l
    i16 183, label %bb.m
    i16 12539, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre = lshr i32 %.0.i, 8
  %.pre146 = zext nneg i32 %.pre to i64
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  br label %.thread

bb.m:                                             ; preds = %bb.k
  br label %.thread

bb.n:                                             ; preds = %bb.k
  %i.ao = lshr i32 %.0.i, 8
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = getelementptr [16 x i8], ptr @gbcommon_encmap, i64 %i.ap ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !32 ; 2 uses
  %.not106 = icmp eq ptr %i.ar, null
  br i1 %.not106, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = and i32 %.0.i, 255                      ; 3 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %i.au = load i8, ptr %i.at, align 8, !tbaa !33
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %.not107 = icmp samesign ult i32 %i.as, %i.av
  br i1 %.not107, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %i.aq, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = zext i8 %i.ax to i32
  %.not108 = icmp samesign ugt i32 %i.as, %i.ay
  br i1 %.not108, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = sub nuw nsw i32 %i.as, %i.av
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr [2 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %.not109 = icmp eq i16 %i.bc, -1
  br i1 %.not109, label %bb.r, label %bb.z

bb.r:                                             ; preds = %._crit_edge, %bb.q, %bb.p, %bb.o, %bb.n
  %.pre-phi147 = phi i64 [ %.pre146, %._crit_edge ], [ %i.ap, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ap, %bb.n ]
  %i.bd = getelementptr [16 x i8], ptr @gb18030ext_encmap, i64 %.pre-phi147 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !32 ; 2 uses
  %.not110 = icmp eq ptr %i.be, null
  br i1 %.not110, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = and i32 %.0.i, 255                      ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !33
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %.not111 = icmp samesign ult i32 %i.bf, %i.bi
  br i1 %.not111, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.bd, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %i.bl = zext i8 %i.bk to i32
  %.not112 = icmp samesign ugt i32 %i.bf, %i.bl
  br i1 %.not112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = sub nuw nsw i32 %i.bf, %i.bi
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr [2 x i8], ptr %i.be, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !29 ; 2 uses
  %.not113 = icmp eq i16 %i.bp, -1
  br i1 %.not113, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.bq = icmp samesign ult i64 %.091134, 4
  br i1 %i.bq, label %.thread122, label %.preheader

.preheader:                                       ; preds = %bb.v, %bb.x
  %i.br = phi i32 [ %i.bv, %bb.x ], [ 128, %bb.v ] ; 2 uses
end_hunk_0
begin_hunk_1_@hz_encode:bb.a
bb.p:                                             ; preds = %bb.o
  %i.at = sub nuw nsw i32 %i.am, %i.ap
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr [2 x i8], ptr %i.al, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !29 ; 5 uses
  %.not71 = icmp sgt i16 %i.aw, -1
  br i1 %.not71, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = load i8, ptr %0, align 1, !tbaa !25
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.az = icmp slt i64 %.05676, 4
  br i1 %i.az, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %6, align 8, !tbaa !27
  store i8 126, ptr %i.ba, align 1, !tbaa !25
  %i.bb = load ptr, ptr %6, align 8, !tbaa !27
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 123, ptr %i.bc, align 1, !tbaa !25
  %i.bd = lshr i16 %i.aw, 8
  %i.be = trunc nuw nsw i16 %i.bd to i8
  %i.bf = load ptr, ptr %6, align 8, !tbaa !27
  %i.bg = getelementptr i8, ptr %i.bf, i64 2
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !25
  %i.bh = trunc i16 %i.aw to i8
  %i.bi = load ptr, ptr %6, align 8, !tbaa !27
  %i.bj = getelementptr i8, ptr %i.bi, i64 3
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !25
  %i.bk = load i64, ptr %4, align 8, !tbaa !28
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %4, align 8, !tbaa !28
  %i.bm = load ptr, ptr %6, align 8, !tbaa !27
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store ptr %i.bn, ptr %6, align 8, !tbaa !27
  %i.bo = add nsw i64 %.05676, -4
  store i8 1, ptr %0, align 1, !tbaa !25
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.bp = icmp slt i64 %.05676, 2
  br i1 %i.bp, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = lshr i16 %i.aw, 8
  %i.br = trunc nuw nsw i16 %i.bq to i8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
  %i.bt = trunc i16 %i.aw to i8
  %i.bu = load ptr, ptr %6, align 8, !tbaa !27
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !25
  %i.bw = load i64, ptr %4, align 8, !tbaa !28
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %4, align 8, !tbaa !28
  %i.by = load ptr, ptr %6, align 8, !tbaa !27
  %i.bz = getelementptr i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %6, align 8, !tbaa !27
  %i.ca = add nsw i64 %.05676, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.i, %bb.k
  %.4 = phi i64 [ %i.ab, %bb.i ], [ %i.bo, %bb.s ], [ %i.ca, %bb.u ], [ %i.ag, %bb.k ]
  %i.cb = load i64, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %5
  br i1 %i.cc, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.v, %bb.l, %bb.f, %bb.h, %bb.j, %bb.m, %bb.t, %bb.r, %bb.p, %bb.o, %bb.n, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.t ], [ 1, %bb.m ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.f ], [ 0, %bb.v ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @hz_encode_init(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  store i8 0, ptr %0, align 1, !tbaa !25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 1) i64 @hz_encode_reset(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !25
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %2, align 8, !tbaa !27
  store i8 126, ptr %i.c, align 1, !tbaa !25
  %i.d = load ptr, ptr %2, align 8, !tbaa !27
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 125, ptr %i.e, align 1, !tbaa !25
  store i8 0, ptr %0, align 1, !tbaa !25
  %i.f = load ptr, ptr %2, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %i.f, i64 2
  store ptr %i.g, ptr %2, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @hz_decode(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %i.b = phi ptr [ %i.am, %bb.r ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.04056 = phi i64 [ %i.an, %bb.r ], [ %3, %.lr.ph.preheader ] ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 4 uses
  %i.d = zext nneg i8 %i.c to i32
  %i.e = icmp eq i8 %i.c, 126
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %.04056, 1
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  switch i8 %i.h, label %.thread [
    i8 126, label %bb.d
    i8 123, label %bb.f
    i8 10, label %bb.g
    i8 125, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !tbaa !25
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 126) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.r, !llvm.loop !79

bb.f:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !25
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.sink.split, label %.thread

bb.g:                                             ; preds = %bb.c
  %i.o = load i8, ptr %0, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.r, label %.thread, !llvm.loop !79

bb.h:                                             ; preds = %bb.c
  %i.q = load i8, ptr %0, align 1, !tbaa !25
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %.sink.split, label %.thread

.sink.split:                                      ; preds = %bb.h, %bb.f
  %.sink = phi i8 [ 1, %bb.f ], [ 0, %bb.h ]
  store i8 %.sink, ptr %0, align 1, !tbaa !25
  br label %bb.r, !llvm.loop !79

bb.i:                                             ; preds = %.lr.ph
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %0, align 1, !tbaa !25
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.w = icmp eq i64 %.04056, 1
  br i1 %i.w, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = zext nneg i8 %i.c to i64
  %i.y = getelementptr [16 x i8], ptr @gb2312_decmap, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !36  ; 2 uses
  %.not49 = icmp eq ptr %i.z, null
  br i1 %.not49, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25  ; 3 uses
  %5 = zext i8 %i.ab to i64
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !37  ; 2 uses
  %6 = zext i8 %i.ad to i64
  %.not50 = icmp ult i8 %i.ab, %i.ad
  br i1 %.not50, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %i.y, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !38
  %.not51 = icmp ugt i8 %i.ab, %i.af
  br i1 %.not51, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %7 = sub nuw nsw i64 %5, %6
  %i.ag = getelementptr [2 x i8], ptr %i.z, i64 %7
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !29 ; 2 uses
  %.not52 = icmp eq i16 %i.ah, -2
  br i1 %.not52, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ai) #10
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.g, %bb.e, %.sink.split
  %.sink94 = phi i64 [ 2, %bb.g ], [ 1, %bb.k ], [ 2, %.sink.split ], [ 2, %bb.e ], [ 2, %bb.q ]
  %.sink91 = phi i64 [ -2, %bb.g ], [ -1, %bb.k ], [ -2, %.sink.split ], [ -2, %bb.e ], [ -2, %bb.q ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !27
  %i.am = getelementptr i8, ptr %i.al, i64 %.sink94 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !27
  %i.an = add nsw i64 %.04056, %.sink91           ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.r, %bb.q, %bb.f, %bb.i, %bb.m, %bb.k, %bb.l, %bb.e, %bb.b, %bb.c, %bb.d, %bb.h, %bb.p, %bb.o, %bb.n, %bb.g, %bb.a
  %.3 = phi i64 [ 0, %bb.a ], [ -4, %bb.q ], [ 1, %bb.g ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.h ], [ 1, %bb.d ], [ 1, %bb.c ], [ -2, %bb.b ], [ -4, %bb.e ], [ -2, %bb.l ], [ -4, %bb.k ], [ 1, %bb.m ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %bb.r ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @hz_decode_init(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  store i8 0, ptr %0, align 1, !tbaa !25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i64 @hz_decode_reset(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  store i8 0, ptr %0, align 1, !tbaa !25
  ret i64 0
}

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTS8dbcs_map", !10, i64 0}
!12 = !{!"p1 _ZTS16_multibyte_codec", !10, i64 0}
!13 = !{!"_cjk_mod_state", !8, i64 0, !8, i64 4, !11, i64 8, !12, i64 16}
!14 = !{!13, !11, i64 8}
!15 = !{!13, !12, i64 16}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"p1 _ZTS7_object", !10, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!13, !8, i64 4}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTS14_cjk_mod_state", !10, i64 0}
!23 = !{!"_multibyte_codec", !17, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !22, i64 72}
!24 = !{!"", !12, i64 0, !18, i64 8}
!25 = !{!7, !7, i64 0}
!26 = !{!24, !18, i64 8}
!27 = !{!17, !17, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{!19, !19, i64 0}
!30 = !{!"p1 short", !10, i64 0}
!31 = !{!"unim_index", !30, i64 0, !7, i64 8, !7, i64 9}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !7, i64 8}
!34 = !{!31, !7, i64 9}
!35 = !{!"dbcs_index", !30, i64 0, !7, i64 8, !7, i64 9}
!36 = !{!35, !30, i64 0}
!37 = !{!35, !7, i64 8}
!38 = !{!35, !7, i64 9}
!39 = !{!"_gb18030_to_unibmp_ranges", !8, i64 0, !8, i64 4, !19, i64 8}
!40 = !{!39, !8, i64 0}
!41 = !{!39, !19, i64 8}
!42 = distinct !{!42, !21}
!43 = !{!"p1 _ZTS11_typeobject", !10, i64 0}
!44 = !{!"_object", !7, i64 0, !43, i64 8}
!45 = !{!44, !43, i64 8}
!46 = !{!"PyVarObject", !44, i64 0, !16, i64 16}
!47 = !{!"p1 _ZTS11PyMethodDef", !10, i64 0}
!48 = !{!"p1 _ZTS11PyMemberDef", !10, i64 0}
!49 = !{!"p1 _ZTS11PyGetSetDef", !10, i64 0}
!50 = !{!"_typeobject", !46, i64 0, !17, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !16, i64 168, !17, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !16, i64 208, !10, i64 216, !10, i64 224, !47, i64 232, !48, i64 240, !49, i64 248, !43, i64 256, !18, i64 264, !10, i64 272, !10, i64 280, !16, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !10, i64 360, !18, i64 368, !10, i64 376, !8, i64 384, !10, i64 392, !10, i64 400, !7, i64 408, !19, i64 410}
!51 = !{!50, !16, i64 168}
!52 = !{!18, !18, i64 0}
!53 = !{!23, !17, i64 0}
!54 = !{!24, !12, i64 0}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !66}
!57 = distinct !{!57, !21}
!58 = !{!13, !8, i64 0}
!59 = !{!"p1 _ZTS10unim_index", !10, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTS10dbcs_index", !10, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!10, !10, i64 0}
!64 = !{!22, !22, i64 0}
!65 = !{!23, !22, i64 72}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"dbcs_map", !17, i64 0, !59, i64 8, !61, i64 16}
!68 = !{!67, !17, i64 0}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = !{!39, !8, i64 4}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
end_hunk_1
