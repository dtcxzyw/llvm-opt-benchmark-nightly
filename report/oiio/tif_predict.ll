loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@PredictorSetupEncode:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call i32 %i.d(ptr noundef %0) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @PredictorSetup(ptr noundef nonnull %0)
  %.not49 = icmp eq i32 %i.f, 0
  br i1 %.not49, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !37
  switch i32 %i.g, label %bb.n [
    i32 2, label %bb.d
    i32 3, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = load i16, ptr %i.h, align 4, !tbaa !45
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.split, label %bb.e

.split:                                           ; preds = %bb.d
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 true)
  %switch.tableidx = add nsw i32 %i.m, -3         ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx, 4
  br i1 %i.n, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %.split
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PredictorSetupEncode, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %switch.load, ptr %i.p, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.split, %switch.lookup, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %.not52 = icmp eq ptr %i.r, @PredictorEncodeRow
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !54
  store ptr @PredictorEncodeRow, ptr %i.q, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !56
  store ptr @PredictorEncodeTile, ptr %i.t, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !58
  store ptr @PredictorEncodeTile, ptr %i.w, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %i.ab = and i32 %i.aa, 128
  %.not53 = icmp eq i32 %i.ab, 0
  br i1 %.not53, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, @horDiff16
  br i1 %i.ae, label %.sink.split57.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq ptr %i.ad, @horDiff32
  br i1 %i.af, label %.sink.split57.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq ptr %i.ad, @horDiff64
  br i1 %i.ag, label %.sink.split57.sink.split, label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @fpDiff, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 2 uses
  %.not50 = icmp eq ptr %i.aj, @PredictorEncodeRow
  br i1 %.not50, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !54
  store ptr @PredictorEncodeRow, ptr %i.ai, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.am, ptr %i.an, align 8, !tbaa !56
  store ptr @PredictorEncodeTile, ptr %i.al, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  store ptr @PredictorEncodeTile, ptr %i.ao, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !43
  %i.at = and i32 %i.as, 128
  %.not51 = icmp eq i32 %i.at, 0
  br i1 %.not51, label %bb.n, label %.sink.split57

.sink.split57.sink.split:                         ; preds = %bb.j, %bb.i, %bb.h
  %swabHorDiff32.sink = phi ptr [ @swabHorDiff16, %bb.h ], [ @swabHorDiff32, %bb.i ], [ @swabHorDiff64, %bb.j ]
  store ptr %swabHorDiff32.sink, ptr %i.ac, align 8, !tbaa !38
  br label %.sink.split57

.sink.split57:                                    ; preds = %.sink.split57.sink.split, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr @_TIFFNoPostDecode, ptr %i.au, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %.sink.split57, %bb.j, %bb.g, %bb.m, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.g ], [ 1, %.sink.split57 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @TIFFPredictorCleanup(ptr nofree noundef captures(none) initializes((936, 944), (952, 960), (1256, 1280)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !27
  %i.f = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store ptr %i.h, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %i.n, ptr %i.o, align 8, !tbaa !35
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @PredictorSetup(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  switch i32 %i.c, label %bb.h [
    i32 1, label %bb.o
    i32 2, label %bb.b
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i16, ptr %i.d, align 4, !tbaa !45   ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.e)
  %i.h = icmp eq i16 %i.g, 1
  br i1 %i.h, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.e, i1 true)
  %.off = add nsw i16 %i.i, -3
  %switch = icmp ult i16 %.off, 4
  br i1 %switch, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorSetup.module, ptr noundef nonnull @.str.8, i32 noundef %i.f) #10
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.k = load i16, ptr %i.j, align 2, !tbaa !59   ; 2 uses
  %.not = icmp eq i16 %i.k, 3
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %i.k to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorSetup.module, ptr noundef nonnull @.str.9, i32 noundef %i.l) #10
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i16, ptr %i.m, align 4, !tbaa !45   ; 2 uses
  %1 = add i16 %i.n, -16                          ; 2 uses
  %i.o = tail call i16 @llvm.fshl.i16(i16 %1, i16 %1, i16 13)
  switch i16 %i.o, label %bb.g [
    i16 0, label %bb.i
    i16 1, label %bb.i
    i16 2, label %bb.i
    i16 6, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = zext i16 %i.n to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorSetup.module, ptr noundef nonnull @.str.10, i32 noundef %i.p) #10
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorSetup.module, ptr noundef nonnull @.str.11, i32 noundef %i.c) #10
  br label %bb.o

bb.i:                                             ; preds = %.split, %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.r = load i16, ptr %i.q, align 2, !tbaa !60
  %i.s = icmp eq i16 %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.u = load i16, ptr %i.t, align 2, !tbaa !61
  %i.v = zext i16 %i.u to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = phi i64 [ %i.v, %bb.j ], [ 1, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43
  %i.aa = and i32 %i.z, 1024
  %.not40 = icmp eq i32 %i.aa, 0
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i64 @TIFFTileRowSize(ptr noundef nonnull %0) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ac = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink = phi i64 [ %i.ac, %bb.m ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink, ptr %i.ad, align 8, !tbaa !63
  %i.ae = icmp ne i64 %.sink, 0
  %. = zext i1 %i.ae to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ %., %bb.n ], [ %i.c, %bb.a ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horAcc8(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 16 uses
  %i.e = srem i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  br label %.loopexit157

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %2, %i.d
  br i1 %i.f, label %bb.d, label %.loopexit157

bb.d:                                             ; preds = %bb.c
  switch i64 %i.d, label %bb.h [
    i64 1, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !64
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = add nsw i64 %2, -3
  %i.j = icmp sgt i64 %2, 4
  br i1 %i.j, label %.lr.ph173, label %.preheader

.preheader:                                       ; preds = %.lr.ph173, %bb.e
  %.0144.lcssa = phi i32 [ %i.h, %bb.e ], [ %i.am, %.lr.ph173 ] ; 2 uses
  %.0143.lcssa = phi i64 [ 1, %bb.e ], [ %i.ao, %.lr.ph173 ] ; 5 uses
  %i.k = icmp slt i64 %.0143.lcssa, %2
  br i1 %i.k, label %.lr.ph177.preheader, label %.loopexit157

.lr.ph177.preheader:                              ; preds = %.preheader
  %i.l = sub i64 %2, %.0143.lcssa
  %xtraiter227 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader, %.lr.ph177.prol
  %.1176.prol = phi i64 [ %i.r, %.lr.ph177.prol ], [ %.0143.lcssa, %.lr.ph177.preheader ] ; 2 uses
  %.1145175.prol = phi i32 [ %i.p, %.lr.ph177.prol ], [ %.0144.lcssa, %.lr.ph177.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph177.prol ], [ 0, %.lr.ph177.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.1176.prol ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.1145175.prol, %i.o             ; 3 uses
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %i.m, align 1, !tbaa !64
  %i.r = add nuw nsw i64 %.1176.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter227
  br i1 %prol.iter.cmp.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol, !llvm.loop !65

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.1176.unr = phi i64 [ %.0143.lcssa, %.lr.ph177.preheader ], [ %i.r, %.lr.ph177.prol ]
  %.1145175.unr = phi i32 [ %.0144.lcssa, %.lr.ph177.preheader ], [ %i.p, %.lr.ph177.prol ]
  %i.s = sub i64 %.0143.lcssa, %2
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.loopexit157, label %.lr.ph177

.lr.ph173:                                        ; preds = %bb.e, %.lr.ph173
  %.0143172 = phi i64 [ %i.ao, %.lr.ph173 ], [ 1, %bb.e ] ; 2 uses
  %.0144171 = phi i32 [ %i.am, %.lr.ph173 ], [ %i.h, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.0143172 ; 5 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !64
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %.0144171, %i.w                  ; 2 uses
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %i.u, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.x, %i.ab                     ; 2 uses
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !64
  %i.ag = zext i8 %i.af to i32
  %i.ah = add i32 %i.ac, %i.ag                    ; 2 uses
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !64
  %i.al = zext i8 %i.ak to i32
  %i.am = add i32 %i.ah, %i.al                    ; 3 uses
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !64
  %i.ao = add nuw nsw i64 %.0143172, 4            ; 3 uses
  %i.ap = icmp slt i64 %i.ao, %i.i
  br i1 %i.ap, label %.lr.ph173, label %.preheader

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.1176 = phi i64 [ %i.bn, %.lr.ph177 ], [ %.1176.unr, %.lr.ph177.prol.loopexit ] ; 5 uses
  %.1145175 = phi i32 [ %i.bl, %.lr.ph177 ], [ %.1145175.unr, %.lr.ph177.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.1176 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !64
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %.1145175, %i.as                ; 2 uses
  %i.au = trunc i32 %i.at to i8
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.1176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.ay = zext i8 %i.ax to i32
  %i.az = add i32 %i.at, %i.ay                    ; 2 uses
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.aw, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.1176
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i32 %i.az, %i.be                    ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.bc, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.1176
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i32 %i.bf, %i.bk                    ; 2 uses
  %i.bm = trunc i32 %i.bl to i8
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !64
  %i.bn = add nuw nsw i64 %.1176, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bn, %2
  br i1 %exitcond.not.3, label %.loopexit157, label %.lr.ph177

bb.f:                                             ; preds = %bb.d
  %i.bo = icmp sgt i64 %2, 3
  br i1 %i.bo, label %.lr.ph170.preheader, label %.loopexit157

.lr.ph170.preheader:                              ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64  ; 2 uses
  %i.bt = load i8, ptr %1, align 1, !tbaa !64     ; 2 uses
  %i.bu = add nsw i64 %2, -4                      ; 2 uses
  %i.bv = udiv i64 %i.bu, 3                       ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %i.bx = icmp ult i64 %i.bu, 3
end_hunk_0
