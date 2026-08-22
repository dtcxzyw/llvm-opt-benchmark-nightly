Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/encode?download=true
inline.NumInlined: 177
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@BrotliDestroyManagedDictionary
declare hidden void @BrotliDestroyManagedDictionary(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @BrotliEncoderDestroyPreparedDictionary(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !585
  %.not16 = icmp eq i32 %i.a, -558043678
  br i1 %.not16, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !583  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.c, align 4, !tbaa !53
  switch i32 %i.e, label %bb.g [
    i32 -558043677, label %bb.e
    i32 -558043679, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @DestroyPreparedDictionary(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @BrotliCleanupSharedEncoderDictionary(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c) #19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !583
  tail call void @BrotliFree(ptr noundef nonnull %i.g, ptr noundef %i.h) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !583
  tail call void @BrotliDestroyManagedDictionary(ptr noundef nonnull %0) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  ret void
}

declare hidden void @DestroyPreparedDictionary(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliCleanupSharedEncoderDictionary(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local range(i32 0, 2) i32 @BrotliEncoderAttachPreparedDictionary(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.b = icmp eq i32 %i.a, -558043678
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !583  ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 7 uses
  %.044 = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  switch i32 %.044, label %.critedge [
    i32 -558043677, label %bb.d
    i32 -558043680, label %bb.d
    i32 -558043679, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = tail call i32 @AttachPreparedDictionary(ptr noundef nonnull %i.f, ptr noundef nonnull %.045) #19
  %.not50.not = icmp eq i32 %i.g, 0
  br i1 %.not50.not, label %.critedge, label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !586
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.k = load i8, ptr %i.j, align 4, !tbaa !587
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !563  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !588
  %i.q = icmp eq ptr %i.p, @kStaticDictionaryHashWords
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !589
  %i.t = icmp eq ptr %i.s, @kStaticDictionaryHashLengths
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.u = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ %i.t, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %.045, i64 544 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !586
  %.not47 = icmp eq i32 %i.w, 0
  br i1 %.not47, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.045, i64 548
  %i.y = load i8, ptr %i.x, align 4, !tbaa !587
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.045, i64 616
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !563 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !588
  %i.ae = icmp eq ptr %i.ad, @kStaticDictionaryHashWords
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !589
  %i.ah = icmp eq ptr %i.ag, @kStaticDictionaryHashLengths
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ai = phi i1 [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ %i.ah, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6972
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %.not48 = icmp eq i32 %i.ak, 0
  br i1 %.not48, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !590
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 1312
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !590
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ao)
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !590
  %i.aq = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !591
  %.not52 = icmp eq i64 %i.ar, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %.045, i64 24
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.au = add nuw i64 %.051, 1                    ; 2 uses
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !591
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %bb.p, label %._crit_edge, !llvm.loop !592

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %.051 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.o ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.051
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !593
  %i.az = tail call i32 @AttachPreparedDictionary(ptr noundef nonnull %i.as, ptr noundef %i.ay) #19
  %.not49 = icmp eq i32 %i.az, 0
  br i1 %.not49, label %.critedge, label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n
  br i1 %i.ai, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  br i1 %i.u, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.h, ptr noundef nonnull align 8 dereferenceable(768) %i.v, i64 768, i1 false), !tbaa.struct !595
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i64 0, ptr %i.ba, align 8, !tbaa !596
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge, %bb.d
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.m, %bb.q, %bb.c, %bb.d, %bb.s
  %.2 = phi i32 [ 1, %bb.s ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.p ]
  ret i32 %.2
}

declare hidden i32 @AttachPreparedDictionary(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nounwind optsize uwtable
define hidden i64 @BrotliEncoderEstimatePeakMemoryUsage(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
SanitizeParams.exit:
  %3 = alloca %struct.BrotliEncoderParams, align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.a, align 4, !tbaa !50
  store <2 x i32> <i32 0, i32 11>, ptr %3, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 22, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @BrotliInitSharedEncoderDictionary(ptr noundef nonnull %i.d) #19
  %i.e = icmp slt i32 %1, 25
  %i.f = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.g = call i32 @llvm.umin.i32(i32 %i.f, i32 11) ; 3 uses
  %i.h = icmp slt i32 %0, 3
  %narrow.not = or i1 %i.h, %i.e
  %i.i = icmp slt i32 %1, 10
  %i.j = select i1 %narrow.not, i32 24, i32 30
  %spec.select91 = call i32 @llvm.umin.i32(i32 %1, i32 %i.j)
  %i.k = select i1 %i.i, i32 10, i32 %spec.select91 ; 9 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !79   ; 2 uses
  %switch.i = icmp slt i32 %0, 2                  ; 2 uses
  br i1 %switch.i, label %ComputeLgBlock.exit.thread, label %bb.a

bb.a:                                             ; preds = %SanitizeParams.exit
  %i.m = icmp samesign ult i32 %0, 4
  br i1 %i.m, label %ComputeLgBlock.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i32 %0, 8
  br i1 %i.o, label %bb.d, label %ComputeLgBlock.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = icmp samesign ugt i32 %i.k, 16
  br i1 %i.p, label %bb.e, label %ComputeLgBlock.exit

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @llvm.umin.i32(i32 %i.k, i32 18)
  br label %ComputeLgBlock.exit

bb.f:                                             ; preds = %bb.b
  %i.r = call i32 @llvm.smax.i32(i32 %i.l, i32 16)
  %i.s = call i32 @llvm.umin.i32(i32 %i.r, i32 24)
  br label %ComputeLgBlock.exit

ComputeLgBlock.exit.thread:                       ; preds = %SanitizeParams.exit, %bb.a, %bb.c
  %.0.i.ph = phi i32 [ 14, %bb.a ], [ 16, %bb.c ], [ %i.k, %SanitizeParams.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.g

ComputeLgBlock.exit:                              ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 16, %bb.d ], [ %i.s, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.v = icmp samesign ugt i32 %0, 9
  br i1 %i.v, label %bb.o, label %bb.g

bb.g:                                             ; preds = %ComputeLgBlock.exit.thread, %ComputeLgBlock.exit
  %i.w = phi ptr [ %i.t, %ComputeLgBlock.exit.thread ], [ %i.u, %ComputeLgBlock.exit ] ; 9 uses
  %.0.i78 = phi i32 [ %.0.i.ph, %ComputeLgBlock.exit.thread ], [ %.0.i, %ComputeLgBlock.exit ] ; 5 uses
  %i.x = icmp eq i32 %0, 4
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %2, 1048575
  br i1 %i.y, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 54, ptr %i.w, align 4, !tbaa !137
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %0, 5
  br i1 %i.z, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.h, %bb.j
  store i32 %i.g, ptr %i.w, align 4, !tbaa !137
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp samesign ult i32 %i.k, 17
  br i1 %i.aa, label %ChooseHasher.exit.thread, label %bb.l

ChooseHasher.exit.thread:                         ; preds = %bb.k
  %i.ab = icmp samesign ult i32 %0, 7
  %i.ac = icmp samesign ult i32 %0, 9
  %i.ad = select i1 %i.ac, i32 41, i32 42
  %i.ae = select i1 %i.ab, i32 40, i32 %i.ad      ; 2 uses
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !137
  br label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %2, 1048575
  %i.ag = icmp samesign ugt i32 %i.k, 18
  %or.cond.i = and i1 %i.af, %i.ag
  %i.ah = add nsw i32 %i.g, -1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.inv.i = icmp samesign ugt i32 %0, 6
  %i.aj = select i1 %.inv.i, i32 6, i32 68        ; 2 uses
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !139
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 15, ptr %i.ak, align 4, !tbaa !140
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = icmp samesign ult i32 %0, 7             ; 2 uses
  %i.am = select i1 %i.al, i32 58, i32 5          ; 2 uses
  store i32 %i.am, ptr %i.w, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !139
  %i.an = select i1 %i.al, i32 14, i32 15
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !140
  br label %bb.o

bb.o:                                             ; preds = %ComputeLgBlock.exit, %bb.n, %bb.m, %.thread, %bb.i
  %i.ap = phi i32 [ %i.am, %bb.n ], [ %i.aj, %bb.m ], [ 54, %bb.i ], [ %i.g, %.thread ], [ 10, %ComputeLgBlock.exit ] ; 3 uses
  %i.aq = phi i1 [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.i ], [ false, %.thread ], [ true, %ComputeLgBlock.exit ]
  %i.ar = phi ptr [ %i.w, %bb.n ], [ %i.w, %bb.m ], [ %i.w, %bb.i ], [ %i.w, %.thread ], [ %i.u, %ComputeLgBlock.exit ]
  %.0.i77 = phi i32 [ %.0.i78, %bb.n ], [ %.0.i78, %bb.m ], [ %.0.i78, %bb.i ], [ %.0.i78, %.thread ], [ %.0.i, %ComputeLgBlock.exit ]
  %i.as = icmp samesign ugt i32 %i.k, 24
  br i1 %i.as, label %bb.p, label %ChooseHasher.exit

bb.p:                                             ; preds = %bb.o
  switch i32 %i.ap, label %ChooseHasher.exit [
    i32 3, label %ChooseHasher.exit.sink.split
    i32 54, label %bb.q
    i32 6, label %bb.r
    i32 68, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %ChooseHasher.exit.sink.split

bb.r:                                             ; preds = %bb.p, %bb.p
  br label %ChooseHasher.exit.sink.split

ChooseHasher.exit.sink.split:                     ; preds = %bb.p, %bb.r, %bb.q
  %.sink = phi i32 [ 55, %bb.q ], [ 65, %bb.r ], [ 35, %bb.p ] ; 2 uses
  store i32 %.sink, ptr %i.ar, align 4, !tbaa !137
  br label %ChooseHasher.exit

ChooseHasher.exit:                                ; preds = %ChooseHasher.exit.sink.split, %bb.p, %bb.o
  %i.at = phi i32 [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %.sink, %ChooseHasher.exit.sink.split ]
  br i1 %switch.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %ChooseHasher.exit
  %i.au = zext nneg i32 %i.k to i64
  %i.av = shl nuw nsw i64 1, %i.au
  %i.aw = call i64 @llvm.umin.i64(i64 %2, i64 %i.av) ; 2 uses
  %.not = icmp eq i32 %0, 1                       ; 2 uses
  %i.ax = select i1 %.not, i64 131072, i64 32768
  %invariant.umin.i = call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.ax, i64 %i.aw)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0.i55 = phi i64 [ 256, %bb.s ], [ %i.az, %bb.t ] ; 4 uses
  %i.ay = icmp ult i64 %.0.i55, %invariant.umin.i
  %i.az = shl nuw nsw i64 %.0.i55, 1
  br i1 %i.ay, label %bb.t, label %HashTableSize.exit, !llvm.loop !121

HashTableSize.exit:                               ; preds = %bb.t
  %i.ba = icmp ult i64 %.0.i55, 1024
  %i.bb = shl i64 %.0.i55, 2
  %i.bc = select i1 %i.ba, i64 0, i64 %i.bb
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %HashTableSize.exit
  %i.bd = call i64 @llvm.umin.i64(i64 %i.aw, i64 131072)
  %i.be = mul nuw nsw i64 %i.bd, 5
  br label %bb.v

bb.v:                                             ; preds = %HashTableSize.exit, %bb.u
  %. = phi i64 [ 14600, %bb.u ], [ 15120, %HashTableSize.exit ]
  %i.bf = phi i64 [ %i.be, %bb.u ], [ 0, %HashTableSize.exit ]
  %i.bg = add i64 %i.bc, %.
  %i.bh = add i64 %i.bg, %i.bf
  br label %bb.am

bb.w:                                             ; preds = %ChooseHasher.exit.thread, %ChooseHasher.exit
  %i.bi = phi i32 [ %i.ae, %ChooseHasher.exit.thread ], [ %i.at, %ChooseHasher.exit ]
  %i.bj = phi i1 [ false, %ChooseHasher.exit.thread ], [ %i.aq, %ChooseHasher.exit ]
  %.0.i778890 = phi i32 [ %.0.i78, %ChooseHasher.exit.thread ], [ %.0.i77, %ChooseHasher.exit ] ; 2 uses
  %i.bk = zext nneg i32 %.0.i778890 to i64
  %i.bl = shl nuw nsw i64 1, %i.bk                ; 3 uses
  %i.bm = call i32 @llvm.umax.i32(i32 %i.k, i32 %.0.i778890)
  %i.bn = add nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.bo = icmp ult i64 %2, %i.bl
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = shl nuw nsw i64 1, %i.bp
  %i.br = add nuw nsw i64 %i.bq, %i.bl
  %i.bs = select i1 %i.bo, i64 %2, i64 %i.br
  %i.bt = call i32 @llvm.umin.i32(i32 %i.bn, i32 24)
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 1, %i.bu
  %i.bw = call i64 @llvm.umin.i64(i64 %2, i64 %i.bv) ; 2 uses
  %i.bx = call i64 @llvm.umin.i64(i64 %2, i64 %i.bl) ; 2 uses
  %i.by = shl nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.bz = mul nuw nsw i64 %i.bx, 6
end_hunk_0
