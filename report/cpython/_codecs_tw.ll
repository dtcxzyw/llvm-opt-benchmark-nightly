Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_codecs_tw?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_cjk_exec:bb.a
  %.not21.i = icmp sgt i32 %i.ai, 0
  br i1 %.not21.i, label %.lr.ph.i, label %register_maps.exit

.lr.ph.i:                                         ; preds = %add_codecs.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = load i32, ptr %i.b, align 8, !tbaa !55
  %i.an = sext i32 %i.am to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %.not.i, label %bb.g, label %register_maps.exit, !llvm.loop !54

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ap = getelementptr [24 x i8], ptr %i.ao, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store <4 x i8> <i8 95, i8 95, i8 109, i8 97>, ptr %i.a, align 16
  store i8 112, ptr %i.aj, align 4
  store i8 95, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.ar = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.aq) #8 ; 0 uses
  %i.as = call ptr @PyCapsule_New(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %i.at = call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.as) #8
  %i.au = icmp sgt i32 %i.at, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.au, label %bb.f, label %register_maps.exit

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
define internal range(i64 -1, 2) i64 @big5_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %i.c = phi i64 [ %i.an, %bb.n ], [ %i.a, %bb.a ] ; 3 uses
  %.03146 = phi i64 [ %i.aq, %bb.n ], [ %7, %bb.a ] ; 3 uses
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
  %i.m = icmp slt i64 %.03146, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.n, ptr %i.o, align 1, !tbaa !25
  br label %bb.n, !llvm.loop !65

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.03146, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @big5_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !33
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not40 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not40, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = zext i8 %i.aa to i32
  %.not41 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not41, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nuw nsw i32 %i.v, %i.y
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 3 uses
  %.not42 = icmp eq i16 %i.af, -1
  br i1 %.not42, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %i.aj = trunc i16 %i.af to i8
  %i.ak = load ptr, ptr %6, align 8, !tbaa !27
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.sink69 = phi i64 [ 2, %bb.m ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.m ], [ -1, %bb.f ]
  %i.am = load i64, ptr %4, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.an, ptr %4, align 8, !tbaa !28
  %i.ao = load ptr, ptr %6, align 8, !tbaa !27
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.sink69
  store ptr %i.ap, ptr %6, align 8, !tbaa !27
  %i.aq = add nsw i64 %.03146, %.sink
  %i.ar = icmp slt i64 %i.an, %5
  br i1 %i.ar, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.n, %bb.h, %bb.e, %bb.g, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @big5_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.b = phi ptr [ %i.x, %bb.i ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.02235 = phi i64 [ %i.y, %bb.i ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i8 %i.c to i32
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.e) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.i, !llvm.loop !66

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.02235, 1
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.c to i64
  %i.j = getelementptr [16 x i8], ptr @big5_decmap, i64 %i.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25    ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !37    ; 2 uses
  %.not29 = icmp ult i8 %i.m, %i.o
  br i1 %.not29, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38
  %.not30 = icmp ugt i8 %i.m, %i.q
  br i1 %.not30, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %5 = sub nuw i8 %i.m, %i.o
  %6 = zext i8 %5 to i64
  %i.r = getelementptr [2 x i8], ptr %i.k, i64 %6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29   ; 2 uses
  %.not31 = icmp eq i16 %i.s, -2
  br i1 %.not31, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext i16 %i.s to i32
  %i.u = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.t) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.sink56 = phi i64 [ 1, %bb.b ], [ 2, %bb.h ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.h ]
  %i.w = load ptr, ptr %2, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %i.w, i64 %.sink56 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !27
  %i.y = add nsw i64 %.02235, %.sink              ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.b, %bb.c, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -4, %bb.h ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ -2, %bb.c ], [ -4, %bb.b ], [ 0, %bb.i ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @cp950_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.r
  %i.c = phi i64 [ %i.ba, %bb.r ], [ %i.a, %bb.a ] ; 3 uses
  %.04061 = phi i64 [ %i.bd, %bb.r ], [ %7, %bb.a ] ; 3 uses
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
  %i.m = icmp slt i64 %.04061, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.n, ptr %i.o, align 1, !tbaa !25
  br label %bb.r, !llvm.loop !67

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.04061, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr [16 x i8], ptr @cp950ext_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !33
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not51 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not51, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = zext i8 %i.aa to i32
  %.not52 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nuw nsw i32 %i.v, %i.y
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 2 uses
  %.not53 = icmp eq i16 %i.af, -1
  br i1 %.not53, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ag = getelementptr [16 x i8], ptr @big5_encmap, i64 %i.s ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !32 ; 2 uses
  %.not54 = icmp eq ptr %i.ah, null
  br i1 %.not54, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = and i32 %.0.i, 255                      ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !33
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %.not55 = icmp samesign ult i32 %i.ai, %i.al
  br i1 %.not55, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %i.ag, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i32
  %.not56 = icmp samesign ugt i32 %i.ai, %i.ao
  br i1 %.not56, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = sub nuw nsw i32 %i.ai, %i.al
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [2 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !29 ; 2 uses
  %.not57 = icmp eq i16 %i.as, -1
  br i1 %.not57, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %.038 = phi i16 [ %i.af, %bb.l ], [ %i.as, %bb.p ] ; 2 uses
  %i.at = lshr i16 %.038, 8
  %i.au = trunc nuw i16 %i.at to i8
  %i.av = load ptr, ptr %6, align 8, !tbaa !27
  store i8 %i.au, ptr %i.av, align 1, !tbaa !25
  %i.aw = trunc i16 %.038 to i8
  %i.ax = load ptr, ptr %6, align 8, !tbaa !27
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.sink88 = phi i64 [ 2, %bb.q ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.q ], [ -1, %bb.f ]
  %i.az = load i64, ptr %4, align 8, !tbaa !28
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.ba, ptr %4, align 8, !tbaa !28
  %i.bb = load ptr, ptr %6, align 8, !tbaa !27
  %i.bc = getelementptr i8, ptr %i.bb, i64 %.sink88
  store ptr %i.bc, ptr %6, align 8, !tbaa !27
  %i.bd = add nsw i64 %.04061, %.sink
  %i.be = icmp slt i64 %i.ba, %5
  br i1 %i.be, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.r, %bb.h, %bb.e, %bb.g, %bb.p, %bb.o, %bb.n, %bb.m, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.r ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @cp950_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %i.b = phi ptr [ %i.ak, %bb.n ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.03253 = phi i64 [ %i.al, %bb.n ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i8 %i.c to i32
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.e) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.n, !llvm.loop !68

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.03253, 1
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.c to i64                      ; 2 uses
  %i.j = getelementptr [16 x i8], ptr @cp950ext_decmap, i64 %i.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25    ; 3 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !37    ; 2 uses
  %.not43 = icmp ult i8 %i.m, %i.o
  br i1 %.not43, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38
  %.not44 = icmp ugt i8 %i.m, %i.q
  br i1 %.not44, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %5 = sub nuw i8 %i.m, %i.o
  %6 = zext i8 %5 to i64
  %i.r = getelementptr [2 x i8], ptr %i.k, i64 %6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29   ; 2 uses
  %.not45 = icmp eq i16 %i.s, -2
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext i16 %i.s to i32
  %i.u = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.t) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.w = getelementptr [16 x i8], ptr @big5_decmap, i64 %i.i ; 3 uses
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !36  ; 2 uses
  %.not46 = icmp eq ptr %i.x, null
  br i1 %.not46, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.b, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25    ; 3 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !37  ; 2 uses
  %.not47 = icmp ult i8 %i.z, %i.ab
  br i1 %.not47, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.w, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %.not48 = icmp ugt i8 %i.z, %i.ad
  br i1 %.not48, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %7 = sub nuw i8 %i.z, %i.ab
  %8 = zext i8 %7 to i64
  %i.ae = getelementptr [2 x i8], ptr %i.x, i64 %8
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29 ; 2 uses
  %.not49 = icmp eq i16 %i.af, -2
  br i1 %.not49, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ag) #8
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.b
  %.sink79 = phi i64 [ 1, %bb.b ], [ 2, %bb.h ], [ 2, %bb.m ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.h ], [ -2, %bb.m ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !27
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.sink79 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !27
  %i.al = add nsw i64 %.03253, %.sink             ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.b, %bb.c, %bb.h, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -4, %bb.m ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ -4, %bb.h ], [ -2, %bb.c ], [ -4, %bb.b ], [ 0, %bb.n ]
  ret i64 %.2
}

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!39 = distinct !{!39, !21}
!40 = !{!"p1 _ZTS11_typeobject", !10, i64 0}
!41 = !{!"_object", !7, i64 0, !40, i64 8}
!42 = !{!41, !40, i64 8}
!43 = !{!"PyVarObject", !41, i64 0, !16, i64 16}
!44 = !{!"p1 _ZTS11PyMethodDef", !10, i64 0}
!45 = !{!"p1 _ZTS11PyMemberDef", !10, i64 0}
!46 = !{!"p1 _ZTS11PyGetSetDef", !10, i64 0}
!47 = !{!"_typeobject", !43, i64 0, !17, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !16, i64 168, !17, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !16, i64 208, !10, i64 216, !10, i64 224, !44, i64 232, !45, i64 240, !46, i64 248, !40, i64 256, !18, i64 264, !10, i64 272, !10, i64 280, !16, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !10, i64 360, !18, i64 368, !10, i64 376, !8, i64 384, !10, i64 392, !10, i64 400, !7, i64 408, !19, i64 410}
!48 = !{!47, !16, i64 168}
!49 = !{!18, !18, i64 0}
!50 = !{!23, !17, i64 0}
!51 = !{!24, !12, i64 0}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !62}
!54 = distinct !{!54, !21}
!55 = !{!13, !8, i64 0}
!56 = !{!"p1 _ZTS10unim_index", !10, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTS10dbcs_index", !10, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!10, !10, i64 0}
!61 = !{!23, !22, i64 72}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"dbcs_map", !17, i64 0, !56, i64 8, !58, i64 16}
!64 = !{!63, !17, i64 0}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
end_hunk_0
