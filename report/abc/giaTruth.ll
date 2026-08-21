inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ObjComputeTruthTableStop:bb.a
  tail call void @free(ptr noundef nonnull %i.o) #24
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.thread.i7, %bb.d
  %i.r = phi ptr [ %i.p, %.thread.i7 ], [ %i.l, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.r) #24
  store ptr null, ptr %i.k, align 8, !tbaa !109
  br label %Vec_IntFreeP.exit8

Vec_IntFreeP.exit8:                               ; preds = %Vec_IntFreeP.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Vec_PtrFreeP.exit, label %bb.f

bb.f:                                             ; preds = %Vec_IntFreeP.exit8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %bb.g, label %.thread.i10

.thread.i10:                                      ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.w) #24
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.thread.i10, %bb.f
  %i.z = phi ptr [ %i.x, %.thread.i10 ], [ %i.t, %bb.f ]
  tail call void @free(ptr noundef nonnull %i.z) #24
  store ptr null, ptr %i.s, align 8, !tbaa !110
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %Vec_IntFreeP.exit8, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %Vec_WrdFreeP.exit, label %bb.h

bb.h:                                             ; preds = %Vec_PtrFreeP.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ae, null
  br i1 %.not.i11, label %bb.i, label %.thread.i12

.thread.i12:                                      ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ae) #24
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %.thread.i12, %bb.h
  %i.ah = phi ptr [ %i.af, %.thread.i12 ], [ %i.ab, %bb.h ]
  tail call void @free(ptr noundef nonnull %i.ah) #24
  store ptr null, ptr %i.aa, align 8, !tbaa !111
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %Vec_PtrFreeP.exit, %bb.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ObjCollectInternalCut_rec(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 952        ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr i8, ptr %.val18, i64 8
  %.val18.val = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val18.val, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %i.f = icmp slt i32 %i.e, -999999999
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds [12 x i8], ptr %.val14, i64 %i.c
  %.val15 = load i64, ptr %i.h, align 4
  %i.i = trunc i64 %.val15 to i32
  %i.j = and i32 %i.i, 536870911
  %i.k = sub nsw i32 %1, %i.j
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %i.k)
  %.val = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.l = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.c
  %.val16 = load i64, ptr %i.l, align 4
  %i.m = lshr i64 %.val16, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = and i32 %i.n, 536870911
  %i.p = sub nsw i32 %1, %i.o
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4        ; 3 uses
  %.val17 = load i32, ptr %i.s, align 4, !tbaa !38 ; 8 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.t = getelementptr i8, ptr %.val19, i64 8
  %.val19.val = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.u = getelementptr inbounds [4 x i8], ptr %.val19.val, i64 %i.c
  store i32 %.val17, ptr %i.u, align 4, !tbaa !33
  %i.v = load i32, ptr %i.r, align 8, !tbaa !39
  %i.w = icmp eq i32 %.val17, %i.v
  br i1 %i.w, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %.val17, 16
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.ad = icmp samesign ult i32 %.val17, 1073741823
  %i.ae = shl nuw nsw i32 %.val17, 1
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val17, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ag, null
  %i.ah = zext nneg i32 %spec.select.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %bb.j ]
  store ptr %i.al, ptr %i.af, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.r, align 8, !tbaa !39
  %.pre = load i32, ptr %i.s, align 4, !tbaa !38
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.am = phi i32 [ %.val17, %bb.b ], [ %.val17, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = add nsw i32 %i.am, 1
  store i32 %i.ap, ptr %i.s, align 4, !tbaa !38
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %1, ptr %i.ar, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ObjCollectInternalCut(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val1316 = load i32, ptr %i.a, align 4, !tbaa !38 ; 2 uses
  %i.b = icmp sgt i32 %.val1316, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr i8, ptr %0, i64 952
  %.val14 = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr i8, ptr %.val14, i64 8
  %.val14.val = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val1319 = phi i32 [ %.val1316, %.lr.ph ], [ %.val13, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val14.val, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = icmp slt i32 %i.j, -999999999
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 4, !tbaa !33
  %.val13.pre = load i32, ptr %i.a, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val13 = phi i32 [ %.val1319, %bb.b ], [ %.val13.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %.val13 to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !38
  %i.q = load i32, ptr %i.o, align 8, !tbaa !39
  %i.r = icmp eq i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 3 uses
  br i1 %i.r, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %.critedge
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #26
  %.pre21.pre = load i32, ptr %i.p, align 4, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.f, %bb.g
  %.pre21 = phi i32 [ %.pre21.pre, %bb.f ], [ 0, %bb.g ]
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !32
  store i32 16, ptr %i.o, align 8, !tbaa !39
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge, %Vec_IntGrow.exit11.sink.split.i
  %i.x = phi i32 [ %.pre21, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %.critedge ] ; 2 uses
  %i.y = phi ptr [ %i.w, %Vec_IntGrow.exit11.sink.split.i ], [ %i.t, %.critedge ]
  %i.z = add nsw i32 %i.x, 1
  store i32 %i.z, ptr %i.p, align 4, !tbaa !38
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !33
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Gia_ObjComputeTruthTableCut(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val129 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %.val129 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 12
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = icmp eq i32 %i.m, %i.f
  br i1 %i.n, label %Vec_IntFind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.b, !llvm.loop !113

Vec_IntFind.exit:                                 ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 968
  %.val142 = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr i8, ptr %.val142, i64 8
  %.val142.val = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val142.val, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66
  br label %.critedge4

Vec_IntFind.exit.thread:                          ; preds = %bb.c, %bb.a
  %.val119 = load i64, ptr %1, align 4
  %i.s = and i64 %.val119, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.s, 2305843005455597567
  br i1 %narrow.i.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %Vec_IntFind.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 7 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4        ; 3 uses
  %.val137 = load i32, ptr %i.v, align 4, !tbaa !56 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64   ; 9 uses
  %i.y = icmp slt i32 %.val137, %i.x
  br i1 %i.y, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.u, align 8, !tbaa !57   ; 4 uses
  %i.aa = shl nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp sgt i32 %i.x, %i.aa
  %.not.i.i = icmp slt i32 %i.z, %i.x             ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.g, label %Vec_WrdGrow.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.x to i64
  %i.af = shl nsw i64 %i.ae, 3                    ; 2 uses
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

bb.k:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.l, label %Vec_WrdGrow.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp slt i32 %i.z, 1073741823
  %spec.select.i = select i1 %i.aj, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.z, %spec.select.i
  br i1 %.not.i22.i, label %bb.m, label %Vec_WrdGrow.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %spec.select.i to i64
  %i.an = shl nsw i64 %i.am, 3                    ; 2 uses
  br i1 %.not9.i23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = phi ptr [ %i.ao, %bb.n ], [ %i.ap, %bb.o ]
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.p, %bb.j
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ %i.x, %bb.j ]
  store i32 %spec.select.sink.i, ptr %i.u, align 8, !tbaa !57
  %.pre247 = load i32, ptr %i.v, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.l, %bb.k, %bb.f
  %i.ar = phi i32 [ %.pre247, %Vec_WrdGrow.exit.sink.split.i ], [ %.val137, %bb.l ], [ %.val137, %bb.k ], [ %.val137, %bb.f ] ; 3 uses
  %i.as = icmp slt i32 %i.ar, %i.x
  br i1 %i.as, label %.lr.ph.i156, label %Vec_WrdFillExtra.exit

.lr.ph.i156:                                      ; preds = %Vec_WrdGrow.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = sext i32 %i.ar to i64
  %i.aw = shl nsw i64 %i.av, 3
  %scevgep.i = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = xor i32 %i.ar, -1
  %i.ay = add i32 %i.x, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bb, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i156
  store i32 %i.x, ptr %i.v, align 4, !tbaa !56
  %.val143.pr = load i32, ptr %i.w, align 4, !tbaa !64
  %.val144.pre = load ptr, ptr %i.t, align 8, !tbaa !61 ; 2 uses
  %.phi.trans.insert249 = getelementptr i8, ptr %.val144.pre, i64 4
  %.val144.val.pre = load i32, ptr %.phi.trans.insert249, align 4, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %Vec_WrdFillExtra.exit, %bb.d
  %.val144.val = phi i32 [ %.val144.val.pre, %Vec_WrdFillExtra.exit ], [ %.val137, %bb.d ]
  %.val144 = phi ptr [ %.val144.pre, %Vec_WrdFillExtra.exit ], [ %i.u, %bb.d ]
  %.val143 = phi i32 [ %.val143.pr, %Vec_WrdFillExtra.exit ], [ %i.x, %bb.d ] ; 3 uses
  %i.bc = getelementptr i8, ptr %.val144, i64 8
  %.val144.val145 = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.bd = sext i32 %.val144.val to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val144.val145, i64 %i.bd
  %i.bf = sext i32 %.val143 to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %.val143, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %.critedge4

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.bj = zext nneg i32 %.val143 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bk, i1 false), !tbaa !30
  br label %.critedge4

bb.r:                                             ; preds = %Vec_IntFind.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 4      ; 3 uses
  %.val135 = load i32, ptr %i.bn, align 4, !tbaa !38 ; 4 uses
  %i.bo = getelementptr i8, ptr %0, i64 24
  %.val139 = load i32, ptr %i.bo, align 8, !tbaa !65 ; 8 uses
  %i.bp = icmp slt i32 %.val135, %.val139
  br i1 %i.bp, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !39 ; 4 uses
  %i.br = shl nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = icmp sgt i32 %.val139, %i.br
  %.not.i.i159 = icmp slt i32 %i.bq, %.val139     ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i159, label %bb.u, label %Vec_IntGrow.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i170 = icmp eq ptr %i.bu, null
  %i.bv = sext i32 %.val139 to i64
  %i.bw = shl nsw i64 %i.bv, 2                    ; 2 uses
  br i1 %.not9.i.i170, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.bw) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bw) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bz = phi ptr [ %i.bx, %bb.v ], [ %i.by, %bb.w ]
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

bb.y:                                             ; preds = %bb.s
  br i1 %.not.i.i159, label %bb.z, label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ca = icmp slt i32 %i.bq, 1073741823
  %spec.select.i166 = select i1 %i.ca, i32 %i.br, i32 2147483647 ; 3 uses
  %.not.i22.i167 = icmp slt i32 %i.bq, %spec.select.i166
  br i1 %.not.i22.i167, label %bb.aa, label %Vec_IntGrow.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %.not9.i23.i168 = icmp eq ptr %i.cc, null
  %i.cd = sext i32 %spec.select.i166 to i64
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  br i1 %.not9.i23.i168, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.ce) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.ce) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ch = phi ptr [ %i.cf, %bb.ab ], [ %i.cg, %bb.ac ]
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.ad, %bb.x
  %spec.select.sink.i169 = phi i32 [ %spec.select.i166, %bb.ad ], [ %.val139, %bb.x ]
  store i32 %spec.select.sink.i169, ptr %i.bm, align 8, !tbaa !39
  %.pre = load i32, ptr %i.bn, align 4, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.z, %bb.y, %bb.t
  %i.ci = phi i32 [ %.pre, %Vec_IntGrow.exit.sink.split.i ], [ %.val135, %bb.z ], [ %.val135, %bb.y ], [ %.val135, %bb.t ] ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %.val139
  br i1 %i.cj, label %.lr.ph.i161, label %Vec_IntFillExtra.exit

.lr.ph.i161:                                      ; preds = %Vec_IntGrow.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %i.cm = sext i32 %i.ci to i64                   ; 4 uses
  %wide.trip.count.i162 = sext i32 %.val139 to i64 ; 2 uses
  %i.cn = sub nsw i64 %wide.trip.count.i162, %i.cm ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i161
  %n.vec = and i64 %i.cn, -8                      ; 3 uses
  %i.co = add nsw i64 %n.vec, %i.cm
  %invariant.gep = getelementptr [4 x i8], ptr %i.cl, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 -1000000000), ptr %gep, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1000000000), ptr %i.cp, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %Vec_IntFillExtra.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i161, %middle.block
  %indvars.iv.i163.ph = phi i64 [ %i.cm, %.lr.ph.i161 ], [ %i.co, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %scalar.ph ], [ %indvars.iv.i163.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv.i163
  store i32 -1000000000, ptr %i.cr, align 4, !tbaa !33
  %indvars.iv.next.i164 = add nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond.not.i165 = icmp eq i64 %indvars.iv.next.i164, %wide.trip.count.i162
  br i1 %exitcond.not.i165, label %Vec_IntFillExtra.exit, label %scalar.ph, !llvm.loop !115

Vec_IntFillExtra.exit:                            ; preds = %scalar.ph, %middle.block, %Vec_IntGrow.exit.i
  store i32 %.val139, ptr %i.bn, align 4, !tbaa !38
  %.val128.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.val1316.i.pre = load i32, ptr %i.g, align 4, !tbaa !38
  %.pre252 = ptrtoint ptr %.val128.pre to i64
  %.pre253 = sub i64 %i.b, %.pre252
  %.pre255 = sdiv exact i64 %.pre253, 12
  %.pre257 = trunc i64 %.pre255 to i32
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_IntFillExtra.exit, %bb.r
  %.pre-phi258 = phi i32 [ %.pre257, %Vec_IntFillExtra.exit ], [ %i.f, %bb.r ]
  %.val1316.i = phi i32 [ %.val1316.i.pre, %Vec_IntFillExtra.exit ], [ %i.h, %bb.r ] ; 2 uses
  %i.cs = icmp sgt i32 %.val1316.i, 0
  br i1 %i.cs, label %.lr.ph.i171, label %.critedge.i

.lr.ph.i171:                                      ; preds = %bb.ae
  %i.ct = getelementptr i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ct, align 8, !tbaa !32
  %.val14.i = load ptr, ptr %i.bl, align 8, !tbaa !60
  %i.cu = getelementptr i8, ptr %.val14.i, i64 8
  %.val14.val.i = load ptr, ptr %i.cu, align 8, !tbaa !32
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i171
  %.val1319.i = phi i32 [ %.val1316.i, %.lr.ph.i171 ], [ %.val13.i, %bb.ah ]
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i173, %bb.ah ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i172
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val14.val.i, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !33
  %i.da = icmp slt i32 %i.cz, -999999999
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cy, align 4, !tbaa !33
  %.val13.pre.i = load i32, ptr %i.g, align 4, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.val13.i = phi i32 [ %.val1319.i, %bb.af ], [ %.val13.pre.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %i.db = sext i32 %.val13.i to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i173, %i.db
  br i1 %i.dc, label %bb.af, label %.critedge.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.ah, %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !59 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 3 uses
  store i32 0, ptr %i.df, align 4, !tbaa !38
  %i.dg = load i32, ptr %i.de, align 8, !tbaa !39
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32 ; 3 uses
  br i1 %i.dh, label %bb.ai, label %Gia_ObjCollectInternalCut.exit

bb.ai:                                            ; preds = %.critedge.i
  %.not9.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dj, i64 noundef 64) #26
  %.pre21.pre.i = load i32, ptr %i.df, align 4, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ak, %bb.aj
  %.pre21.i = phi i32 [ %.pre21.pre.i, %bb.aj ], [ 0, %bb.ak ]
  %i.dm = phi ptr [ %i.dk, %bb.aj ], [ %i.dl, %bb.ak ] ; 2 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !32
  store i32 16, ptr %i.de, align 8, !tbaa !39
  br label %Gia_ObjCollectInternalCut.exit

Gia_ObjCollectInternalCut.exit:                   ; preds = %.critedge.i, %Vec_IntGrow.exit11.sink.split.i.i
  %i.dn = phi i32 [ %.pre21.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.do = phi ptr [ %i.dm, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.dj, %.critedge.i ]
  %i.dp = add nsw i32 %i.dn, 1
  store i32 %i.dp, ptr %i.df, align 4, !tbaa !38
  %i.dq = sext i32 %i.dn to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dq
  store i32 -1, ptr %i.dr, align 4, !tbaa !33
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %.pre-phi258)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61 ; 7 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 4      ; 3 uses
  %.val136 = load i32, ptr %i.du, align 4, !tbaa !56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !64
  %i.dx = load ptr, ptr %i.dd, align 8, !tbaa !59 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val134 = load i32, ptr %i.dy, align 4, !tbaa !38 ; 2 uses
  %i.dz = add nsw i32 %.val134, 2
  %i.ea = mul nsw i32 %i.dz, %i.dw                ; 8 uses
  %i.eb = icmp slt i32 %.val136, %i.ea
  br i1 %i.eb, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %Gia_ObjCollectInternalCut.exit
  %i.ec = load i32, ptr %i.dt, align 8, !tbaa !57 ; 4 uses
  %i.ed = shl nsw i32 %i.ec, 1                    ; 2 uses
  %i.ee = icmp sgt i32 %i.ea, %i.ed
  %.not.i.i175 = icmp slt i32 %i.ec, %i.ea        ; 2 uses
  br i1 %i.ee, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.an, label %Vec_WrdGrow.exit.i176

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i185 = icmp eq ptr %i.eg, null
  %i.eh = sext i32 %i.ea to i64
  %i.ei = shl nsw i64 %i.eh, 3                    ; 2 uses
  br i1 %.not9.i.i185, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef %i.ei) #26
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.el = phi ptr [ %i.ej, %bb.ao ], [ %i.ek, %bb.ap ]
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i183

bb.ar:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.as, label %Vec_WrdGrow.exit.i176

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp slt i32 %i.ec, 1073741823
  %spec.select.i180 = select i1 %i.em, i32 %i.ed, i32 2147483647 ; 3 uses
  %.not.i22.i181 = icmp slt i32 %i.ec, %spec.select.i180
  br i1 %.not.i22.i181, label %bb.at, label %Vec_WrdGrow.exit.i176

bb.at:                                            ; preds = %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i182 = icmp eq ptr %i.eo, null
  %i.ep = sext i32 %spec.select.i180 to i64
  %i.eq = shl nsw i64 %i.ep, 3                    ; 2 uses
  br i1 %.not9.i23.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.er = tail call ptr @realloc(ptr noundef nonnull %i.eo, i64 noundef %i.eq) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.es = tail call noalias ptr @malloc(i64 noundef %i.eq) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.et = phi ptr [ %i.er, %bb.au ], [ %i.es, %bb.av ]
  store ptr %i.et, ptr %i.en, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i183

Vec_WrdGrow.exit.sink.split.i183:                 ; preds = %bb.aw, %bb.aq
  %spec.select.sink.i184 = phi i32 [ %spec.select.i180, %bb.aw ], [ %i.ea, %bb.aq ]
  store i32 %spec.select.sink.i184, ptr %i.dt, align 8, !tbaa !57
  %.pre235 = load i32, ptr %i.du, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i176

Vec_WrdGrow.exit.i176:                            ; preds = %Vec_WrdGrow.exit.sink.split.i183, %bb.as, %bb.ar, %bb.am
  %i.eu = phi i32 [ %.pre235, %Vec_WrdGrow.exit.sink.split.i183 ], [ %.val136, %bb.as ], [ %.val136, %bb.ar ], [ %.val136, %bb.am ] ; 3 uses
  %i.ev = icmp slt i32 %i.eu, %i.ea
  br i1 %i.ev, label %.lr.ph.i178, label %Vec_WrdFillExtra.exit186

.lr.ph.i178:                                      ; preds = %Vec_WrdGrow.exit.i176
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46
  %i.ey = sext i32 %i.eu to i64
  %i.ez = shl nsw i64 %i.ey, 3
  %scevgep.i179 = getelementptr i8, ptr %i.ex, i64 %i.ez
  %i.fa = xor i32 %i.eu, -1
  %i.fb = add i32 %i.ea, %i.fa
  %i.fc = zext i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i179, i8 0, i64 %i.fe, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit186

Vec_WrdFillExtra.exit186:                         ; preds = %Vec_WrdGrow.exit.i176, %.lr.ph.i178
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !56
  %.pre236 = load ptr, ptr %i.dd, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre236, i64 4
  %.val132.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !38
  %.pre238.pre = load ptr, ptr %i.ds, align 8, !tbaa !61
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_WrdFillExtra.exit186, %Gia_ObjCollectInternalCut.exit
  %.pre238 = phi ptr [ %.pre238.pre, %Vec_WrdFillExtra.exit186 ], [ %i.dt, %Gia_ObjCollectInternalCut.exit ] ; 2 uses
  %.val132 = phi i32 [ %.val132.pre, %Vec_WrdFillExtra.exit186 ], [ %.val134, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.ff = phi ptr [ %.pre236, %Vec_WrdFillExtra.exit186 ], [ %i.dx, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 4      ; 2 uses
  %i.fh = icmp sgt i32 %.val132, 1
  br i1 %i.fh, label %.lr.ph214, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.ax
  %.phi.trans.insert239 = getelementptr i8, ptr %.pre238, i64 8
  %.val.i187.pre = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !46
  %.pre241 = load i32, ptr %i.dv, align 4, !tbaa !64
  %.val4.i.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.val5.i.pre = load ptr, ptr %i.bl, align 8, !tbaa !60
  %.phi.trans.insert244 = getelementptr i8, ptr %.val5.i.pre, i64 8
  %.val5.val.i.pre = load ptr, ptr %.phi.trans.insert244, align 8, !tbaa !32
  br label %.critedge

.lr.ph214:                                        ; preds = %bb.ax
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  %.val127 = load ptr, ptr %i.fi, align 8, !tbaa !32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.val150 = load i32, ptr %i.dv, align 4, !tbaa !64 ; 8 uses
  %i.fj = getelementptr i8, ptr %.pre238, i64 8
  %.val151.val = load ptr, ptr %i.fj, align 8, !tbaa !46 ; 5 uses
  %.val151.val289 = ptrtoaddr ptr %.val151.val to i64 ; 12 uses
  %i.fk = sext i32 %.val150 to i64                ; 18 uses
  %.val153 = load ptr, ptr %i.bl, align 8, !tbaa !60
  %i.fl = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.fl, align 8, !tbaa !32 ; 3 uses
  %i.fm = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %wide.trip.count = zext nneg i32 %.val132 to i64
  %.idx = shl nsw i64 %i.fk, 3                    ; 9 uses
  %i.fn = icmp sgt i32 %.val150, 0
  %i.fo = icmp sgt i32 %.val150, 0
  %i.fp = icmp sgt i32 %.val150, 0
  %i.fq = icmp sgt i32 %.val150, 0
  %i.fr = add i64 %.idx, %.val151.val289          ; 2 uses
  %i.fs = shl nsw i64 %i.fk, 3
  %i.ft = add i64 %i.fr, 8
  %i.fu = shl nsw i64 %i.fk, 3
  %i.fv = shl nsw i64 %i.fk, 4
end_hunk_0
