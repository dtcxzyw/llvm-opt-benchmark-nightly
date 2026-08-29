Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitDsd?download=true
inline.NumInlined: 404
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 70
begin_hunk_0_@Kit_DsdObjAlloc:bb.a
  store i32 %i.ae, ptr %calloc, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !49
  %i.ah = icmp eq i16 %i.q, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ai = shl i16 %i.q, 1                         ; 2 uses
  store i16 %i.ai, ptr %i.af, align 2, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  %i.al = zext i16 %i.ai to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = tail call ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef %i.am) #30
  %.pre27.pre = load i16, ptr %i.p, align 4, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre27 = phi i16 [ %.pre27.pre, %bb.c ], [ %i.q, %bb.d ]
  %i.ap = phi ptr [ %i.an, %bb.c ], [ %i.ao, %bb.d ] ; 2 uses
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.aq = phi i16 [ %i.q, %._crit_edge ], [ %.pre27, %bb.e ] ; 2 uses
  %i.ar = phi ptr [ %.pre, %._crit_edge ], [ %i.ap, %bb.e ]
  %i.as = add i16 %i.aq, 1
  store i16 %i.as, ptr %i.p, align 4, !tbaa !48
  %i.at = zext i16 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  store ptr %calloc, ptr %i.au, align 8, !tbaa !51
  ret ptr %calloc
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Kit_DsdObjFree(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Kit_DsdNtkAlloc(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 5 uses
  %i.a = add nsw i32 %0, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #28
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = trunc i32 %0 to i16
  store i16 %i.f, ptr %calloc, align 8, !tbaa !44
  %i.g = trunc i32 %i.a to i16
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 2
  store i16 %i.g, ptr %i.h, align 2, !tbaa !49
  %i.i = icmp slt i32 %0, 6
  %i.j = add nsw i32 %0, -5
  %i.k = shl i32 6, %i.j
  %i.l = select i1 %i.i, i32 6, i32 %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #28
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !53
  ret ptr %calloc
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Kit_DsdNtkFree(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !48
  %.not28 = icmp eq i16 %i.c, 0
  br i1 %.not28, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.f) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i16, ptr %i.b, align 4, !tbaa !48
  %i.h = zext i16 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.k) #29
  store ptr null, ptr %i.j, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.l) #29
  store ptr null, ptr %i.a, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not24 = icmp eq ptr %i.n, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_DsdPrintHex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 2 uses
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = lshr i32 %i.a, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.013.in = phi i32 [ %.013, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.013 = add nsw i32 %.013.in, -1                ; 3 uses
  %i.d = lshr i32 %.013, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = shl i32 %.013, 2
  %i.i = and i32 %i.h, 28
  %i.j = lshr i32 %i.g, %i.i
  %i.k = and i32 %i.j, 15                         ; 3 uses
  %i.l = icmp samesign ult i32 %i.k, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.k) #29 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i32 %i.k, 55
  %fputc = tail call i32 @fputc(i32 %i.n, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = icmp samesign ugt i32 %.013.in, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @Kit_DsdWriteHex(ptr nofree noundef writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 2 uses
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %.lr.ph.preheader.a, label %._crit_edge

.lr.ph.preheader.a:                               ; preds = %bb.a
  %i.c = lshr i32 %i.a, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %.lr.ph
  %.0.in16 = phi i32 [ %.0.a, %.lr.ph ], [ %i.c, %.lr.ph.preheader.a ] ; 2 uses
  %.01215 = phi ptr [ %.1.a, %.lr.ph ], [ %0, %.lr.ph.preheader.a ] ; 2 uses
  %.0.a = add nsw i32 %.0.in16, -1                ; 3 uses
  %i.d = lshr i32 %.0.a, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = shl i32 %.0.a, 2
  %i.i = and i32 %i.h, 28
  %i.j = lshr i32 %i.g, %i.i
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 10
  %i.m = trunc nuw nsw i32 %i.k to i8             ; 2 uses
  %i.n = add nuw nsw i8 %i.m, 55
  %i.o = or disjoint i8 %i.m, 48
  %storemerge.a = select i1 %i.l, i8 %i.o, i8 %i.n
  %.1.a = getelementptr inbounds nuw i8, ptr %.01215, i64 1 ; 2 uses
  store i8 %storemerge.a, ptr %.01215, align 1, !tbaa !57
  %3 = icmp samesign ugt i32 %.0.in16, 1
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.012.lcssa = phi ptr [ %0, %bb.a ], [ %.1.a, %.lr.ph ]
  ret ptr %.012.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_DsdPrint2_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !44
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %Kit_DsdNtkObj.exit.thread, label %Kit_DsdNtkObj.exit

Kit_DsdNtkObj.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = sub nuw nsw i32 %2, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Kit_DsdNtkObj.exit.thread, label %bb.b

Kit_DsdNtkObj.exit.thread:                        ; preds = %bb.a, %Kit_DsdNtkObj.exit
  %i.k = add nsw i32 %2, 97
  %fputc37 = tail call i32 @fputc(i32 %i.k, ptr %0) ; 0 uses
  br label %bb.n

bb.b:                                             ; preds = %Kit_DsdNtkObj.exit
  %i.l = load i32, ptr %i.i, align 4              ; 2 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 7
  switch i32 %i.n, label %bb.e [
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ 44, %bb.e ], [ 43, %bb.d ], [ 42, %bb.b ]
  %i.p = and i32 %i.l, 448
  %i.q = icmp eq i32 %i.p, 320
  %. = select i1 %i.q, i32 91, i32 40
  %fputc = tail call i32 @fputc(i32 %., ptr %0)   ; 0 uses
  %i.r = load i32, ptr %i.i, align 4              ; 2 uses
  %.not39 = icmp ult i32 %i.r, 67108864
  br i1 %.not39, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !59
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %fputc35 = tail call i32 @fputc(i32 33, ptr %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = lshr i32 %i.v, 1
  tail call void @Kit_DsdPrint2_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.x)
  %i.y = load i32, ptr %i.i, align 4              ; 2 uses
  %i.z = lshr i32 %i.y, 26                        ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %fputc36 = tail call i32 @fputc(i32 %.0, ptr %0) ; 0 uses
  %.pre = load i32, ptr %i.i, align 4             ; 2 uses
  %.pre42 = lshr i32 %.pre, 26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pre-phi = phi i32 [ %i.z, %bb.i ], [ %.pre42, %bb.j ]
  %i.ad = phi i32 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = zext nneg i32 %.pre-phi to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.g, label %.critedge, !llvm.loop !60

.critedge:                                        ; preds = %bb.k, %bb.f
  %.lcssa = phi i32 [ %i.r, %bb.f ], [ %i.ad, %bb.k ]
  %i.ag = and i32 %.lcssa, 448
  %i.ah = icmp eq i32 %i.ag, 320
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %fputc34 = tail call i32 @fputc(i32 93, ptr %0) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %fputc33 = tail call i32 @fputc(i32 41, ptr %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c, %Kit_DsdNtkObj.exit.thread
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_DsdPrint2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !61   ; 2 uses
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc = tail call i32 @fputc(i32 33, ptr %0)   ; 0 uses
  %.pre = load i16, ptr %i.a, align 2, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = lshr i16 %i.d, 1
  %i.f = zext nneg i16 %i.e to i32
  tail call void @Kit_DsdPrint2_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.f)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_DsdPrint_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !44
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %Kit_DsdNtkObj.exit.thread, label %Kit_DsdNtkObj.exit

Kit_DsdNtkObj.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = sub nuw nsw i32 %2, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Kit_DsdNtkObj.exit.thread, label %bb.b

Kit_DsdNtkObj.exit.thread:                        ; preds = %bb.a, %Kit_DsdNtkObj.exit
  %i.k = add nsw i32 %2, 97
  %fputc35 = tail call i32 @fputc(i32 %i.k, ptr %0) ; 0 uses
  br label %bb.p

bb.b:                                             ; preds = %Kit_DsdNtkObj.exit
  %i.l = load i32, ptr %i.i, align 4              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 7
  switch i32 %i.n, label %bb.e [
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ 44, %bb.e ], [ 43, %bb.d ], [ 42, %bb.b ]
  %i.p = and i32 %i.l, 448
  %i.q = icmp eq i32 %i.p, 320
  br i1 %i.q, label %bb.g, label %Kit_DsdPrintHex.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.s = lshr i32 %i.l, 10
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  %i.w = lshr i32 %i.l, 26
  %i.x = shl nuw i32 1, %i.w                      ; 2 uses
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.lr.ph.preheader.i, label %Kit_DsdPrintHex.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.z = lshr i32 %i.x, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.013.in.i = phi i32 [ %.013.i, %bb.j ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = add nsw i32 %.013.in.i, -1            ; 3 uses
  %i.aa = lshr i32 %.013.i, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !25
  %i.ae = shl i32 %.013.i, 2
  %i.af = and i32 %i.ae, 28
  %i.ag = lshr i32 %i.ad, %i.af
  %i.ah = and i32 %i.ag, 15                       ; 3 uses
  %i.ai = icmp samesign ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.ah) #29 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ak = add nuw nsw i32 %i.ah, 55
  %fputc.i = tail call i32 @fputc(i32 %i.ak, ptr %0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = icmp samesign ugt i32 %.013.in.i, 1
  br i1 %i.al, label %.lr.ph.i, label %Kit_DsdPrintHex.exit, !llvm.loop !56

Kit_DsdPrintHex.exit:                             ; preds = %bb.j, %bb.g, %bb.f
  %fputc = tail call i32 @fputc(i32 40, ptr %0)   ; 0 uses
  %i.am = load i32, ptr %i.i, align 4
  %.not37 = icmp ult i32 %i.am, 67108864
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %Kit_DsdPrintHex.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !59
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %i.aq, 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %fputc33 = tail call i32 @fputc(i32 33, ptr %0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = lshr i32 %i.aq, 1
  tail call void @Kit_DsdPrint_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.as)
  %i.at = load i32, ptr %i.i, align 4
  %i.au = lshr i32 %i.at, 26                      ; 2 uses
  %i.av = add nsw i32 %i.au, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %fputc34 = tail call i32 @fputc(i32 %.0, ptr %0) ; 0 uses
  %.pre = load i32, ptr %i.i, align 4
  %.pre39 = lshr i32 %.pre, 26
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %i.au, %bb.m ], [ %.pre39, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = zext nneg i32 %.pre-phi to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.k, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %bb.o, %Kit_DsdPrintHex.exit
  %fputc32 = tail call i32 @fputc(i32 41, ptr %0) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.c, %Kit_DsdNtkObj.exit.thread
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_DsdPrint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !61   ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc = tail call i32 @fputc(i32 33, ptr %0)   ; 0 uses
  %.pre = load i16, ptr %i.b, align 2, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i16 [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.f = lshr i16 %i.e, 1
  %i.g = zext nneg i16 %i.f to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @Kit_DsdWrite_rec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !44
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %Kit_DsdNtkObj.exit.thread, label %Kit_DsdNtkObj.exit

Kit_DsdNtkObj.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = sub nuw nsw i32 %2, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Kit_DsdNtkObj.exit.thread, label %bb.b

Kit_DsdNtkObj.exit.thread:                        ; preds = %bb.a, %Kit_DsdNtkObj.exit
  %i.k = trunc i32 %2 to i8
  %i.l = add i8 %i.k, 97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.l, ptr %0, align 1, !tbaa !57
  br label %bb.m

bb.b:                                             ; preds = %Kit_DsdNtkObj.exit
  %i.n = load i32, ptr %i.i, align 4              ; 4 uses
  %i.o = lshr i32 %i.n, 6
  %i.p = and i32 %i.o, 7
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i8 [ 44, %bb.e ], [ 43, %bb.d ], [ 42, %bb.b ]
  %i.r = and i32 %i.n, 448
  %i.s = icmp eq i32 %i.r, 320
  br i1 %i.s, label %bb.g, label %Kit_DsdWriteHex.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.u = lshr i32 %i.n, 10
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = lshr i32 %i.n, 26
  %i.z = shl nuw i32 1, %i.y                      ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %.lr.ph.preheader.i.a, label %Kit_DsdWriteHex.exit

.lr.ph.preheader.i.a:                             ; preds = %bb.g
  %i.ab = lshr i32 %i.z, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.a
  %.0.in16.i = phi i32 [ %.0.i.a, %.lr.ph.i ], [ %i.ab, %.lr.ph.preheader.i.a ] ; 2 uses
  %.01215.i = phi ptr [ %.1.i.a, %.lr.ph.i ], [ %0, %.lr.ph.preheader.i.a ] ; 2 uses
  %.0.i.a = add nsw i32 %.0.in16.i, -1            ; 3 uses
  %i.ac = lshr i32 %.0.i.a, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = shl i32 %.0.i.a, 2
  %i.ah = and i32 %i.ag, 28
  %i.ai = lshr i32 %i.af, %i.ah
  %i.aj = and i32 %i.ai, 15                       ; 2 uses
  %i.ak = icmp samesign ult i32 %i.aj, 10
  %i.al = trunc nuw nsw i32 %i.aj to i8           ; 2 uses
  %i.am = add nuw nsw i8 %i.al, 55
  %i.an = or disjoint i8 %i.al, 48
  %storemerge.i.a = select i1 %i.ak, i8 %i.an, i8 %i.am
  %.1.i.a = getelementptr inbounds nuw i8, ptr %.01215.i, i64 1 ; 2 uses
  store i8 %storemerge.i.a, ptr %.01215.i, align 1, !tbaa !57
  %3 = icmp samesign ugt i32 %.0.in16.i, 1
  br i1 %3, label %.lr.ph.i, label %Kit_DsdWriteHex.exit, !llvm.loop !58

Kit_DsdWriteHex.exit:                             ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.035 = phi ptr [ %0, %bb.f ], [ %0, %bb.g ], [ %.1.i.a, %.lr.ph.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 1 ; 2 uses
  store i8 40, ptr %.035, align 1, !tbaa !57
  %i.ap = load i32, ptr %i.i, align 4
  %.not40 = icmp ult i32 %i.ap, 67108864
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %Kit_DsdWriteHex.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.138 = phi ptr [ %i.ao, %.lr.ph ], [ %.3, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !59
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = and i32 %i.at, 1
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.138, i64 1
  store i8 33, ptr %.138, align 1, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi ptr [ %i.av, %bb.i ], [ %.138, %bb.h ]
  %i.aw = lshr i32 %i.at, 1
  %i.ax = tail call ptr @Kit_DsdWrite_rec(ptr noundef nonnull %.2, ptr noundef nonnull %1, i32 noundef %i.aw) ; 3 uses
  %i.ay = load i32, ptr %i.i, align 4
  %i.az = lshr i32 %i.ay, 26                      ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %.0, ptr %i.ax, align 1, !tbaa !57
  %.pre = load i32, ptr %i.i, align 4
  %.pre42 = lshr i32 %.pre, 26
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pre-phi = phi i32 [ %i.az, %bb.j ], [ %.pre42, %bb.k ]
  %.3 = phi ptr [ %i.ax, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = zext nneg i32 %.pre-phi to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.h, label %.critedge, !llvm.loop !63

.critedge:                                        ; preds = %bb.l, %Kit_DsdWriteHex.exit
  %.1.lcssa = phi ptr [ %i.ao, %Kit_DsdWriteHex.exit ], [ %.3, %bb.l ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  store i8 41, ptr %.1.lcssa, align 1, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.c, %Kit_DsdNtkObj.exit.thread
  %.034 = phi ptr [ %i.m, %Kit_DsdNtkObj.exit.thread ], [ %i.q, %bb.c ], [ %i.bg, %.critedge ]
  ret ptr %.034
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Kit_DsdWrite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !61   ; 2 uses
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 33, ptr %0, align 1, !tbaa !57
  %.pre = load i16, ptr %i.a, align 2, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  %i.f = lshr i16 %i.e, 1
  %i.g = zext nneg i16 %i.f to i32
  %i.h = tail call ptr @Kit_DsdWrite_rec(ptr noundef %.0, ptr noundef nonnull %1, i32 noundef %i.g)
  store i8 0, ptr %i.h, align 1, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define void @Kit_DsdPrintExpanded(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Kit_DsdExpand(ptr noundef %0) ; 3 uses
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !64 ; 3 uses
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !61   ; 2 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %Kit_DsdPrint.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc.i = tail call i32 @fputc(i32 33, ptr %i.b) ; 0 uses
  %.pre.i = load i16, ptr %i.d, align 2, !tbaa !61
  br label %Kit_DsdPrint.exit

Kit_DsdPrint.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi i16 [ %.pre.i, %bb.b ], [ %i.e, %bb.a ]
  %i.h = lshr i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.b, ptr noundef nonnull readonly %i.a, i32 noundef %i.i)
  tail call void @Kit_DsdNtkFree(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Kit_DsdExpand(ptr noundef %0) local_unnamed_addr #0 {
Kit_DsdNtkRoot.exit.thread:
  %i.a = load i16, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.b = zext i16 %i.a to i32                     ; 4 uses
  %calloc.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 9 uses
  %i.c = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #28 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  store i16 %i.a, ptr %calloc.i, align 8, !tbaa !44
  %i.h = trunc i32 %i.c to i16                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 2 ; 3 uses
  store i16 %i.h, ptr %i.i, align 2, !tbaa !49
  %i.j = icmp ult i16 %i.a, 6
  %i.k = add nsw i32 %i.b, -5
  %i.l = shl i32 6, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = select i1 %i.j, i64 24, i64 %i.n
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #28
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !61   ; 4 uses
  %i.t = lshr i16 %i.s, 1                         ; 2 uses
  %i.u = icmp uge i16 %i.t, %i.a
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %narrow.i = sub nuw nsw i16 %i.t, %i.a
  %i.x = zext nneg i16 %narrow.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 448
  switch i32 %i.ab, label %bb.k [
    i32 64, label %bb.a
    i32 128, label %bb.f
  ]

bb.a:                                             ; preds = %Kit_DsdNtkRoot.exit.thread
  %calloc.i21 = tail call dereferenceable_or_null(4) ptr @calloc(i64 1, i64 4) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.ad = and i32 %i.b, 63                        ; 2 uses
  %i.ae = or disjoint i32 %i.ad, 64
  store i32 %i.ae, ptr %calloc.i21, align 4
  %i.af = icmp eq i16 %i.h, 0
  br i1 %i.af, label %bb.b, label %Kit_DsdObjAlloc.exit

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %i.i, align 2, !tbaa !49
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef 0) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = tail call noalias ptr @malloc(i64 noundef 0) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ %i.ag, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !50
  br label %Kit_DsdObjAlloc.exit

Kit_DsdObjAlloc.exit:                             ; preds = %bb.a, %bb.e
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.a ]
  store i16 1, ptr %i.ac, align 4, !tbaa !48
  store ptr %calloc.i21, ptr %i.aj, align 8, !tbaa !51
  %i.ak = and i16 %i.s, 1
  %.tr34 = trunc nuw nsw i32 %i.ad to i16
  %i.al = shl nuw nsw i16 %.tr34, 1
  %i.am = or disjoint i16 %i.al, %i.ak
  br label %bb.l

bb.f:                                             ; preds = %Kit_DsdNtkRoot.exit.thread
  %calloc.i24 = tail call dereferenceable_or_null(8) ptr @calloc(i64 1, i64 8) ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.ao = and i32 %i.b, 63
  %i.ap = or disjoint i32 %i.ao, 67110016
  store i32 %i.ap, ptr %calloc.i24, align 4
  %i.aq = icmp eq i16 %i.h, 0
end_hunk_0
begin_hunk_1_@Kit_DsdCompSort:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv76
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = icmp slt i32 %.065, %i.cf
  br i1 %i.cg, label %bb.aj, label %.lr.ph67.1

bb.aj:                                            ; preds = %.lr.ph67._crit_edge, %bb.ai
  %i.ch = phi i32 [ %.pre, %.lr.ph67._crit_edge ], [ %i.cf, %bb.ai ]
  %i.ci = trunc nuw nsw i64 %indvars.iv76 to i32
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %bb.ah, %bb.ai, %bb.aj
  %.149 = phi i32 [ %i.ci, %bb.aj ], [ %.04863, %bb.ai ], [ %.04863, %bb.ah ] ; 2 uses
  %.147 = phi i32 [ %i.cb, %bb.aj ], [ %.04664, %bb.ai ], [ %.04664, %bb.ah ] ; 4 uses
  %.1 = phi i32 [ %i.ch, %bb.aj ], [ %.065, %bb.ai ], [ %.065, %bb.ah ] ; 3 uses
  %indvars.iv.next77 = or disjoint i64 %indvars.iv76, 1 ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next77
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25 ; 3 uses
  %i.cl = icmp slt i32 %.147, %i.ck
  br i1 %i.cl, label %.lr.ph67._crit_edge.1, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph67.1
  %i.cm = icmp eq i32 %.147, %i.ck
  br i1 %i.cm, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next77
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !25 ; 2 uses
  %i.cp = icmp slt i32 %.1, %i.co
  br i1 %i.cp, label %bb.am, label %bb.an

.lr.ph67._crit_edge.1:                            ; preds = %.lr.ph67.1
  %.phi.trans.insert.1 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next77
  %.pre.1 = load i32, ptr %.phi.trans.insert.1, align 4, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph67._crit_edge.1, %bb.al
  %i.cq = phi i32 [ %.pre.1, %.lr.ph67._crit_edge.1 ], [ %i.co, %bb.al ]
  %i.cr = trunc nuw nsw i64 %indvars.iv.next77 to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.149.1 = phi i32 [ %i.cr, %bb.am ], [ %.149, %bb.al ], [ %.149, %bb.ak ] ; 3 uses
  %.147.1 = phi i32 [ %i.ck, %bb.am ], [ %.147, %bb.al ], [ %.147, %bb.ak ] ; 2 uses
  %.1.1 = phi i32 [ %i.cq, %bb.am ], [ %.1, %bb.al ], [ %.1, %bb.ak ] ; 2 uses
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge68.unr-lcssa, label %.lr.ph67, !llvm.loop !308

._crit_edge68.unr-lcssa:                          ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge68, label %.lr.ph67.epil.preheader

.lr.ph67.epil.preheader:                          ; preds = %._crit_edge68.unr-lcssa, %._crit_edge
  %indvars.iv76.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next77.1, %._crit_edge68.unr-lcssa ] ; 3 uses
  %.065.epil.init = phi i32 [ 0, %._crit_edge ], [ %.1.1, %._crit_edge68.unr-lcssa ]
  %.04664.epil.init = phi i32 [ 0, %._crit_edge ], [ %.147.1, %._crit_edge68.unr-lcssa ] ; 2 uses
  %.04863.epil.init = phi i32 [ -1, %._crit_edge ], [ %.149.1, %._crit_edge68.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv76.epil.init
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !25 ; 2 uses
  %i.cu = icmp slt i32 %.04664.epil.init, %i.ct
  br i1 %i.cu, label %.lr.ph67._crit_edge.epil, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph67.epil.preheader
  %i.cv = icmp eq i32 %.04664.epil.init, %i.ct
  br i1 %i.cv, label %bb.ap, label %._crit_edge68

bb.ap:                                            ; preds = %bb.ao
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv76.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !25
  %i.cy = icmp slt i32 %.065.epil.init, %i.cx
  br i1 %i.cy, label %.lr.ph67._crit_edge.epil, label %._crit_edge68

.lr.ph67._crit_edge.epil:                         ; preds = %.lr.ph67.epil.preheader, %bb.ap
  %i.cz = trunc nuw nsw i64 %indvars.iv76.epil.init to i32
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.ao, %bb.ap, %.lr.ph67._crit_edge.epil, %._crit_edge68.unr-lcssa
  %.149.lcssa = phi i32 [ %.149.1, %._crit_edge68.unr-lcssa ], [ %i.cz, %.lr.ph67._crit_edge.epil ], [ %.04863.epil.init, %bb.ap ], [ %.04863.epil.init, %bb.ao ] ; 4 uses
  %i.da = sext i32 %.149.lcssa to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %2, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !59
  %i.dd = zext i16 %i.dc to i32
  store i32 %i.dd, ptr %4, align 4, !tbaa !25
  %xtraiter94 = and i64 %wide.trip.count, 1
  %i.de = icmp eq i64 %i.by, 0
  br i1 %i.de, label %.lr.ph72.epil.preheader, label %._crit_edge68.new

._crit_edge68.new:                                ; preds = %._crit_edge68
  %unroll_iter97 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.as, %._crit_edge68.new
  %indvars.iv81 = phi i64 [ 0, %._crit_edge68.new ], [ %indvars.iv.next82.1, %bb.as ] ; 3 uses
  %.15170 = phi i32 [ 1, %._crit_edge68.new ], [ %.2.1, %bb.as ] ; 3 uses
  %niter98 = phi i64 [ 0, %._crit_edge68.new ], [ %niter98.next.1, %bb.as ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv81
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !25 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, %.149.lcssa
  br i1 %i.dh, label %.lr.ph72.1, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph72
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !59
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nsw i32 %.15170, 1
  %i.dn = sext i32 %.15170 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dn
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !25
  br label %.lr.ph72.1

.lr.ph72.1:                                       ; preds = %.lr.ph72, %bb.aq
  %.2 = phi i32 [ %.15170, %.lr.ph72 ], [ %i.dm, %bb.aq ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv81
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %.149.lcssa
  br i1 %i.ds, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph72.1
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !59
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nsw i32 %.2, 1
  %i.dy = sext i32 %.2 to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dy
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph72.1
  %.2.1 = phi i32 [ %.2, %.lr.ph72.1 ], [ %i.dx, %bb.ar ] ; 2 uses
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %niter98.next.1 = add i64 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %._crit_edge73.loopexit.unr-lcssa, label %.lr.ph72, !llvm.loop !309

._crit_edge73.loopexit.unr-lcssa:                 ; preds = %bb.as
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %._crit_edge73, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %._crit_edge73.loopexit.unr-lcssa, %._crit_edge68
  %indvars.iv81.epil.init = phi i64 [ 0, %._crit_edge68 ], [ %indvars.iv.next82.1, %._crit_edge73.loopexit.unr-lcssa ]
  %.15170.epil.init = phi i32 [ 1, %._crit_edge68 ], [ %.2.1, %._crit_edge73.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv81.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !25 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %.149.lcssa
  br i1 %i.ec, label %._crit_edge73, label %bb.at

bb.at:                                            ; preds = %.lr.ph72.epil.preheader
  %i.ed = sext i32 %i.eb to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !59
  %i.eg = zext i16 %i.ef to i32
  %i.eh = sext i32 %.15170.epil.init to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !25
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit.unr-lcssa, %bb.at, %.lr.ph72.epil.preheader, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @Extra_BubbleSort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Kit_DsdShrink_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = ashr i32 %2, 1                           ; 2 uses
  %i.d = load i16, ptr %1, align 8, !tbaa !44     ; 7 uses
  %i.e = zext i16 %i.d to i32                     ; 8 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %Kit_DsdNtkObj.exit.thread, label %Kit_DsdNtkObj.exit

Kit_DsdNtkObj.exit:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = sub nuw nsw i32 %i.c, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 13 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %Kit_DsdNtkObj.exit.thread, label %bb.b

bb.b:                                             ; preds = %Kit_DsdNtkObj.exit
  %i.o = load i32, ptr %i.l, align 4              ; 4 uses
  %i.p = lshr i32 %i.o, 6
  %i.q = and i32 %i.p, 7
  %i.r = lshr i32 %i.o, 26                        ; 11 uses
  switch i32 %i.q, label %bb.y [
    i32 3, label %.preheader
    i32 4, label %.preheader124
  ]

.preheader124:                                    ; preds = %bb.b
  %.not146 = icmp eq i32 %i.r, 0
  br i1 %.not146, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader124
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 4 uses
  %.not.i109 = icmp eq ptr %i.u, null
  br i1 %.not.i109, label %Kit_DsdLitSupport.exit110.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.r, 1
  br i1 %i.v, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 62
  br label %.lr.ph.split

Kit_DsdLitSupport.exit110.us.preheader:           ; preds = %.lr.ph
  %4 = lshr i32 %i.o, 24
  %5 = and i32 %4, 252
  %6 = zext nneg i32 %5 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %6, i1 false), !tbaa !25
  br label %.critedge2

.preheader:                                       ; preds = %bb.b
  %.not147 = icmp eq i32 %i.r, 0
  br i1 %.not147, label %.critedge, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %Kit_DsdLitSupport.exit.us.preheader, label %.lr.ph134.split.preheader

.lr.ph134.split.preheader:                        ; preds = %.lr.ph134
  %wide.trip.count163 = zext nneg i32 %i.r to i64 ; 2 uses
  %xtraiter214 = and i64 %wide.trip.count163, 1
  %i.z = icmp eq i32 %i.r, 1
  br i1 %i.z, label %.lr.ph134.split.epil.preheader, label %.lr.ph134.split.preheader.new

.lr.ph134.split.preheader.new:                    ; preds = %.lr.ph134.split.preheader
  %unroll_iter217 = and i64 %wide.trip.count163, 62
  br label %.lr.ph134.split

Kit_DsdLitSupport.exit.us.preheader:              ; preds = %.lr.ph134
  %7 = lshr i32 %i.o, 24
  %8 = and i32 %7, 252
  %9 = zext nneg i32 %8 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %9, i1 false), !tbaa !25
  br label %.critedge

.lr.ph134.split:                                  ; preds = %Kit_DsdLitSupport.exit.1, %.lr.ph134.split.preheader.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph134.split.preheader.new ], [ %indvars.iv.next161.1, %Kit_DsdLitSupport.exit.1 ] ; 4 uses
  %niter218 = phi i64 [ 0, %.lr.ph134.split.preheader.new ], [ %niter218.next.1, %Kit_DsdLitSupport.exit.1 ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv160
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !59
  %i.ac = lshr i16 %i.ab, 1                       ; 2 uses
  %i.ad = zext nneg i16 %i.ac to i32              ; 2 uses
  %i.ae = icmp ult i16 %i.ac, %i.d
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph134.split
  %i.af = shl nuw i32 1, %i.ad
  br label %Kit_DsdLitSupport.exit

bb.d:                                             ; preds = %.lr.ph134.split
  %i.ag = sub nuw nsw i32 %i.ad, %i.e
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25
  br label %Kit_DsdLitSupport.exit

Kit_DsdLitSupport.exit:                           ; preds = %bb.c, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.d ], [ %i.af, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !25
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next161
  %i.an = load i16, ptr %i.am, align 2, !tbaa !59
  %i.ao = lshr i16 %i.an, 1                       ; 2 uses
  %i.ap = zext nneg i16 %i.ao to i32              ; 2 uses
  %i.aq = icmp ult i16 %i.ao, %i.d
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Kit_DsdLitSupport.exit
  %i.ar = sub nuw nsw i32 %i.ap, %i.e
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  br label %Kit_DsdLitSupport.exit.1

bb.f:                                             ; preds = %Kit_DsdLitSupport.exit
  %i.av = shl nuw i32 1, %i.ap
  br label %Kit_DsdLitSupport.exit.1

Kit_DsdLitSupport.exit.1:                         ; preds = %bb.f, %bb.e
  %i.aw = phi i32 [ %i.au, %bb.e ], [ %i.av, %bb.f ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next161
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !25
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter218.next.1 = add i64 %niter218, 2         ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %.lr.ph134.split, !llvm.loop !310

.critedge.loopexit.unr-lcssa:                     ; preds = %Kit_DsdLitSupport.exit.1
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %.critedge, label %.lr.ph134.split.epil.preheader

.lr.ph134.split.epil.preheader:                   ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph134.split.preheader
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph134.split.preheader ], [ %indvars.iv.next161.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod216 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv160.epil.init
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !59
  %i.ba = lshr i16 %i.az, 1                       ; 2 uses
  %i.bb = zext nneg i16 %i.ba to i32              ; 2 uses
  %i.bc = icmp ult i16 %i.ba, %i.d
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph134.split.epil.preheader
  %i.bd = sub nuw nsw i32 %i.bb, %i.e
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !25
  br label %Kit_DsdLitSupport.exit.epil

bb.h:                                             ; preds = %.lr.ph134.split.epil.preheader
  %i.bh = shl nuw i32 1, %i.bb
  br label %Kit_DsdLitSupport.exit.epil

Kit_DsdLitSupport.exit.epil:                      ; preds = %bb.h, %bb.g
  %i.bi = phi i32 [ %i.bg, %bb.g ], [ %i.bh, %bb.h ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160.epil.init
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %Kit_DsdLitSupport.exit.epil, %.critedge.loopexit.unr-lcssa, %Kit_DsdLitSupport.exit.us.preheader, %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @Kit_DsdCompSort(ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bk, i32 noundef %i.r, ptr noundef nonnull %i.a)
  %i.bl = load i32, ptr %i.a, align 16, !tbaa !25
  %i.bm = tail call i32 @Kit_DsdShrink_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.bl, ptr noundef %3)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %Kit_DsdObjAlloc.exit
  %indvars.iv168 = phi i64 [ 1, %.critedge ], [ %indvars.iv.next169, %Kit_DsdObjAlloc.exit ] ; 2 uses
  %.0138 = phi i32 [ %i.bm, %.critedge ], [ %i.ct, %Kit_DsdObjAlloc.exit ]
  %calloc.i = tail call dereferenceable_or_null(8) ptr @calloc(i64 1, i64 8) ; 5 uses
  %i.bp = load i16, ptr %0, align 8, !tbaa !44
  %i.bq = zext i16 %i.bp to i32
  %i.br = load i16, ptr %i.bn, align 4, !tbaa !48 ; 5 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bs, %i.bq
  %i.bu = and i32 %i.bt, 63
  %i.bv = or disjoint i32 %i.bu, 134218944
  store i32 %i.bv, ptr %calloc.i, align 4
  %i.bw = load i16, ptr %i.bo, align 2, !tbaa !49
  %i.bx = icmp eq i16 %i.br, %i.bw
  br i1 %i.bx, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !50
  br label %Kit_DsdObjAlloc.exit

bb.j:                                             ; preds = %bb.i
  %i.by = shl i16 %i.br, 1                        ; 2 uses
  store i16 %i.by, ptr %i.bo, align 2, !tbaa !49
  %i.bz = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !50 ; 2 uses
  %.not.i108 = icmp eq ptr %i.bz, null
  %i.ca = zext i16 %i.by to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  br i1 %.not.i108, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef %i.cb) #30
  %.pre27.pre.i = load i16, ptr %i.bn, align 4, !tbaa !48
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cb) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre27.i = phi i16 [ %.pre27.pre.i, %bb.k ], [ %i.br, %bb.l ]
  %i.ce = phi ptr [ %i.cc, %bb.k ], [ %i.cd, %bb.l ] ; 2 uses
  store ptr %i.ce, ptr %.phi.trans.insert.i, align 8, !tbaa !50
  br label %Kit_DsdObjAlloc.exit

Kit_DsdObjAlloc.exit:                             ; preds = %._crit_edge.i, %bb.m
  %i.cf = phi i16 [ %i.br, %._crit_edge.i ], [ %.pre27.i, %bb.m ] ; 2 uses
  %i.cg = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ce, %bb.m ]
  %i.ch = add i16 %i.cf, 1
  store i16 %i.ch, ptr %i.bn, align 4, !tbaa !48
  %i.ci = zext i16 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  store ptr %calloc.i, ptr %i.cj, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv168
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25
  %i.cm = tail call i32 @Kit_DsdShrink_rec(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.cl, ptr noundef %3)
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i16 %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = trunc i32 %.0138 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %calloc.i, i64 6
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !59
  %i.cr = load i32, ptr %calloc.i, align 4
  %i.cs = shl i32 %i.cr, 1
  %i.ct = and i32 %i.cs, 126                      ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.cu = load i32, ptr %i.l, align 4
  %i.cv = lshr i32 %i.cu, 26
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next169, %i.cw
  br i1 %i.cx, label %bb.i, label %._crit_edge140, !llvm.loop !311

._crit_edge140:                                   ; preds = %Kit_DsdObjAlloc.exit
  %i.cy = and i32 %2, 1
  %i.cz = or disjoint i32 %i.ct, %i.cy
  br label %Kit_DsdNtkObj.exit.thread

.lr.ph.split:                                     ; preds = %Kit_DsdLitSupport.exit110.1, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %Kit_DsdLitSupport.exit110.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %Kit_DsdLitSupport.exit110.1 ]
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.db = load i16, ptr %i.da, align 2, !tbaa !59
  %i.dc = lshr i16 %i.db, 1                       ; 2 uses
  %i.dd = zext nneg i16 %i.dc to i32              ; 2 uses
  %i.de = icmp ult i16 %i.dc, %i.d
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split
  %i.df = shl nuw i32 1, %i.dd
  br label %Kit_DsdLitSupport.exit110

bb.o:                                             ; preds = %.lr.ph.split
  %i.dg = sub nuw nsw i32 %i.dd, %i.e
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  br label %Kit_DsdLitSupport.exit110

Kit_DsdLitSupport.exit110:                        ; preds = %bb.n, %bb.o
  %i.dk = phi i32 [ %i.dj, %bb.o ], [ %i.df, %bb.n ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !25
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
end_hunk_1
