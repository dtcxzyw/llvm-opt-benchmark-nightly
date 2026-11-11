Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaNtk?download=true
inline.NumInlined: 1096
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Cba_ManPrintDistribStat:bb.a
; Function Attrs: nounwind uwtable
define void @Cba_ManPrintDistrib(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [90 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(360) %i.a, i8 0, i64 360, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 1564       ; 3 uses
  %.val14 = load i32, ptr %i.b, align 4, !tbaa !31
  %i.c = sext i32 %.val14 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #31 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @Cba_ManCreatePrimMap(ptr noundef nonnull %i.e) #27
  %.val19 = load i32, ptr %i.b, align 4, !tbaa !31 ; 2 uses
  %.not.not20 = icmp sgt i32 %.val19, 1
  br i1 %.not.not20, label %Cba_ManNtk.exit.lr.ph, label %.critedge

Cba_ManNtk.exit.lr.ph:                            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1568
  br label %Cba_ManNtk.exit

Cba_ManNtk.exit:                                  ; preds = %Cba_ManNtk.exit.lr.ph, %Cba_NtkCollectDistrib.exit
  %.val25 = phi i32 [ %.val19, %Cba_ManNtk.exit.lr.ph ], [ %.val, %Cba_NtkCollectDistrib.exit ]
  %indvars.iv = phi i64 [ 1, %Cba_ManNtk.exit.lr.ph ], [ %indvars.iv.next, %Cba_NtkCollectDistrib.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 92       ; 2 uses
  %.val16.i = load i32, ptr %i.i, align 4, !tbaa !34 ; 4 uses
  %i.j = icmp sgt i32 %.val16.i, 1
  br i1 %i.j, label %.lr.ph.i, label %Cba_NtkCollectDistrib.exit

.lr.ph.i:                                         ; preds = %Cba_ManNtk.exit
  %i.k = getelementptr i8, ptr %i.h, i64 96
  %i.l = getelementptr i8, ptr %i.h, i64 188      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 184 ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 192      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %.lr.ph.i
  %.val.i16.pre.pre30 = phi i32 [ %.val16.i, %.lr.ph.i ], [ %.val.i16.pre.pre31, %bb.p ] ; 4 uses
  %.val.i16.pre27 = phi i32 [ %.val16.i, %.lr.ph.i ], [ %.val.i16.pre28, %bb.p ] ; 3 uses
  %.val.i1623 = phi i32 [ %.val16.i, %.lr.ph.i ], [ %.val.i16, %bb.p ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 4 uses
  %.val14.i = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !36    ; 3 uses
  %i.q = add i8 %i.p, -90
  %i.r = icmp ult i8 %i.q, -87
  br i1 %i.r, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i15 = icmp eq i8 %i.p, 3
  br i1 %.not.i15, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32   ; 5 uses
  %.val5.i = load i32, ptr %i.l, align 4, !tbaa !48 ; 4 uses
  %i.t = icmp slt i32 %.val5.i, 1
  br i1 %i.t, label %Cba_ObjNtkId.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw nsw i32 %i.s, 1                  ; 5 uses
  %.not.i.not.i.i.i = icmp samesign ugt i32 %.val5.i, %i.s
  br i1 %.not.i.not.i.i.i, label %Cba_ObjFunc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.m, align 8, !tbaa !49   ; 4 uses
  %i.w = shl nsw i32 %i.v, 1                      ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.w, %i.s
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = zext nneg i32 %i.u to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %i.z) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.f
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.v, %i.s
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp slt i32 %i.v, 1073741823
  %spec.select.i.i.i.i = select i1 %i.ac, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.v, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !39  ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.m, %bb.n, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.ab, %bb.i ], [ %i.aa, %bb.h ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ]
  %spec.select.sink.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %spec.select.i.i.i.i, %bb.m ], [ %spec.select.i.i.i.i, %bb.n ]
  store ptr %storemerge, ptr %i.n, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i.i, ptr %i.m, align 8, !tbaa !49
  %.pre.i.i.i = load i32, ptr %i.l, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.k, %bb.j
  %i.ai = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val5.i, %bb.k ], [ %.val5.i, %bb.j ] ; 2 uses
  %.not3.i.i.i = icmp sgt i32 %i.ai, %i.s
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.u to i64
  %i.al = shl nsw i64 %i.ak, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.am = sub nsw i64 %wide.trip.count.i.i.i.i, %i.ak
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i, i8 0, i64 %i.an, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.u, ptr %i.l, align 4, !tbaa !48
  %.val.i16.pre.pre.pre = load i32, ptr %i.i, align 4, !tbaa !34
  br label %Cba_ObjFunc.exit.i

Cba_ObjFunc.exit.i:                               ; preds = %._crit_edge.i.i.i.i, %bb.e
  %.val.i16.pre.pre = phi i32 [ %.val.i16.pre.pre.pre, %._crit_edge.i.i.i.i ], [ %.val.i16.pre.pre30, %bb.e ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.aq = sext i32 %i.ap to i64
  br label %Cba_ObjNtkId.exit

Cba_ObjNtkId.exit:                                ; preds = %bb.d, %Cba_ObjFunc.exit.i
  %.val.i16.pre.pre32 = phi i32 [ %.val.i16.pre.pre, %Cba_ObjFunc.exit.i ], [ %.val.i16.pre.pre30, %bb.d ]
  %.val.i16.pre = phi i32 [ %.val.i16.pre.pre, %Cba_ObjFunc.exit.i ], [ %.val.i16.pre27, %bb.d ] ; 2 uses
  %i.ar = phi i64 [ %i.aq, %Cba_ObjFunc.exit.i ], [ 0, %bb.d ]
  %i.as = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !40
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.av = zext nneg i8 %i.p to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %Cba_ObjNtkId.exit, %bb.b
  %.val.i16.pre.pre31 = phi i32 [ %.val.i16.pre.pre30, %bb.o ], [ %.val.i16.pre.pre32, %Cba_ObjNtkId.exit ], [ %.val.i16.pre.pre30, %bb.b ]
  %.val.i16.pre28 = phi i32 [ %.val.i16.pre27, %bb.o ], [ %.val.i16.pre, %Cba_ObjNtkId.exit ], [ %.val.i16.pre27, %bb.b ]
  %.val.i16 = phi i32 [ %.val.i1623, %bb.o ], [ %.val.i16.pre, %Cba_ObjNtkId.exit ], [ %.val.i1623, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = sext i32 %.val.i16 to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.b, label %Cba_NtkCollectDistrib.exit.loopexit, !llvm.loop !3

Cba_NtkCollectDistrib.exit.loopexit:              ; preds = %bb.p
  %.val.pre = load i32, ptr %i.b, align 4, !tbaa !31
  br label %Cba_NtkCollectDistrib.exit

Cba_NtkCollectDistrib.exit:                       ; preds = %Cba_NtkCollectDistrib.exit.loopexit, %Cba_ManNtk.exit
  %.val = phi i32 [ %.val.pre, %Cba_NtkCollectDistrib.exit.loopexit ], [ %.val25, %Cba_ManNtk.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = sext i32 %.val to i64
  %.not.not = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %.not.not, label %Cba_ManNtk.exit, label %.critedge, !llvm.loop !91

.critedge:                                        ; preds = %Cba_NtkCollectDistrib.exit, %bb.a
  call void @Cba_ManPrintDistribStat(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.d)
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.d) #27
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(read) uwtable
define range(i32 -1, 2) i32 @Cba_StrCmpInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !36    ; 3 uses
  %i.d = add i8 %i.c, -58
  %i.e = icmp ult i8 %i.d, -10                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36    ; 2 uses
  %i.h = add i8 %i.g, -58
  %i.i = icmp ult i8 %i.h, -10
  br i1 %i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = add i8 %i.n, -58
  %i.p = icmp ult i8 %i.o, -10
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %i.a
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !36 ; 2 uses
  %i.q = add i8 %.pre, -58
  %i.r = icmp ult i8 %i.q, -10
  %or.cond = select i1 %i.e, i1 true, i1 %i.r
  br i1 %or.cond, label %._crit_edge, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.e
  %.pre48 = zext i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge47, %bb.d
  %.pre-phi = phi i64 [ %.pre48, %._crit_edge47 ], [ %i.k, %bb.d ] ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %2, i32 0) ; 2 uses
  %i.s = trunc nuw i64 %.pre-phi to i32           ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge56

bb.g:                                             ; preds = %.lr.ph
  %i.u = trunc nuw i64 %i.x to i32                ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge56, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.w = phi i32 [ %i.u, %bb.g ], [ %i.s, %bb.f ]
  %indvars.iv53 = phi i64 [ %i.x, %bb.g ], [ %.pre-phi, %bb.f ]
  %i.x = add nsw i64 %indvars.iv53, -1            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !36
  %i.aa = add i8 %i.z, -58
  %i.ab = icmp ult i8 %i.aa, -10
  br i1 %i.ab, label %._crit_edge55, label %bb.g, !llvm.loop !4

._crit_edge55:                                    ; preds = %.lr.ph
  br label %._crit_edge56, !llvm.loop !4

._crit_edge56:                                    ; preds = %bb.g, %._crit_edge55, %bb.f
  %.0.in.lcssa = phi i32 [ %i.w, %._crit_edge55 ], [ %smin, %bb.f ], [ %smin, %bb.g ]
  %i.ac = sext i32 %.0.in.lcssa to i64            ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ad, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ah = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ag, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.ai = trunc i64 %i.ah to i32
  %.033 = tail call i32 @llvm.scmp.i32.i32(i32 %i.af, i32 %i.ai)
  br label %bb.i

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.aj = phi i8 [ %i.g, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %i.ak = icmp slt i8 %i.c, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.al = icmp sgt i8 %i.c, %i.aj
  %.44 = zext i1 %i.al to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge, %._crit_edge56
  %.1 = phi i32 [ %.033, %._crit_edge56 ], [ -1, %._crit_edge ], [ %.44, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nounwind memory(read) uwtable
define range(i32 -1, 2) i32 @Cba_StrCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !45     ; 5 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !36    ; 2 uses
  %.not43 = icmp eq i8 %i.c, 0
  br i1 %.not43, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 8 uses
  %i.d = phi i8 [ %i.ah, %bb.i ], [ %i.c, %bb.a ] ; 4 uses
  %.044 = phi i32 [ %i.af, %bb.i ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !36    ; 6 uses
  %.not20 = icmp eq i8 %i.f, 0
  br i1 %.not20, label %.critedge.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not21 = icmp eq i8 %i.d, %i.f
  br i1 %.not21, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.h = add i8 %i.d, -58
  %i.i = icmp ult i8 %i.h, -10                    ; 2 uses
  %i.j = add i8 %i.f, -58
  %i.k = icmp ult i8 %i.j, -10
  %or.cond = and i1 %i.i, %i.k
  br i1 %or.cond, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %indvars.iv, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.g, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
  %i.n = add i8 %i.m, -58
  %i.o = icmp ult i8 %i.n, -10
  br i1 %i.o, label %bb.f, label %._crit_edge47.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = add i8 %i.f, -58
  %i.q = icmp ult i8 %i.p, -10
  %or.cond.i = or i1 %i.i, %i.q
  br i1 %or.cond.i, label %._crit_edge.i, label %._crit_edge47.i

._crit_edge47.i:                                  ; preds = %bb.f, %bb.e
  %.not91 = icmp eq i64 %indvars.iv, 0
  br i1 %.not91, label %._crit_edge83, label %.lr.ph82

bb.g:                                             ; preds = %.lr.ph82
  %i.r = icmp sgt i64 %indvars.iv.i81, 1
  br i1 %i.r, label %.lr.ph82, label %._crit_edge83, !llvm.loop !4

.lr.ph82:                                         ; preds = %._crit_edge47.i, %bb.g
  %indvars.iv.i81 = phi i64 [ %i.s, %bb.g ], [ %indvars.iv, %._crit_edge47.i ] ; 3 uses
  %i.s = add nsw i64 %indvars.iv.i81, -1          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !36
  %i.v = add i8 %i.u, -58
  %i.w = icmp ult i8 %i.v, -10
  br i1 %i.w, label %._crit_edge, label %bb.g, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph82
  br label %._crit_edge83, !llvm.loop !4

._crit_edge83:                                    ; preds = %bb.g, %._crit_edge, %._crit_edge47.i
  %.0.in.lcssa.i = phi i64 [ %indvars.iv.i81, %._crit_edge ], [ 0, %._crit_edge47.i ], [ 0, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.in.lcssa.i
  %i.y = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.x, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.lcssa.i
  %i.ab = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.aa, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.ac = trunc i64 %i.ab to i32
  %.033.i = tail call i32 @llvm.scmp.i32.i32(i32 %i.z, i32 %i.ac)
  br label %Cba_StrCmpInt.exit

._crit_edge.i:                                    ; preds = %bb.c, %bb.f
  %i.ad = icmp slt i8 %i.d, %i.f
  br i1 %i.ad, label %Cba_StrCmpInt.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ae = icmp sgt i8 %i.d, %i.f
  %.44.i = zext i1 %i.ae to i32
  br label %Cba_StrCmpInt.exit

bb.i:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = add nuw nsw i32 %.044, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36  ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !92

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.split.loop.exit
  %.lcssa42.ph = phi i64 [ %indvars.iv, %.critedge.split.loop.exit ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.0.lcssa.ph = phi i32 [ %i.ai, %.critedge.split.loop.exit ], [ %i.af, %bb.i ] ; 4 uses
  %.phi.trans.insert = zext i32 %.0.lcssa.ph to i64
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert53, align 1, !tbaa !36 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa42.ph ; 2 uses
  %i.ak = zext nneg i32 %.0.lcssa.ph to i64       ; 2 uses
  %i.al = add i8 %.pre, -58
  %i.am = icmp ult i8 %i.al, -10
  br i1 %i.am, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.an = phi i64 [ %i.ak, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.ao = phi ptr [ %i.aj, %.critedge ], [ %i.a, %bb.a ]
  %.0.lcssa64 = phi i32 [ %.0.lcssa.ph, %.critedge ], [ 0, %bb.a ]
  %.lcssa4262 = phi i64 [ %.lcssa42.ph, %.critedge ], [ 0, %bb.a ]
  %i.ap = phi i8 [ %.pre, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36  ; 2 uses
  %i.as = add i8 %i.ar, -58
  %i.at = icmp ult i8 %i.as, -10
  br i1 %i.at, label %._crit_edge.i32, label %bb.j

bb.j:                                             ; preds = %.critedge.thread, %.critedge
  %i.au = phi i1 [ true, %.critedge.thread ], [ false, %.critedge ]
  %i.av = phi i64 [ %i.an, %.critedge.thread ], [ %i.ak, %.critedge ]
  %i.aw = phi ptr [ %i.ao, %.critedge.thread ], [ %i.aj, %.critedge ]
  %.0.lcssa63 = phi i32 [ %.0.lcssa64, %.critedge.thread ], [ %.0.lcssa.ph, %.critedge ]
  %.lcssa4261 = phi i64 [ %.lcssa4262, %.critedge.thread ], [ %.lcssa42.ph, %.critedge ] ; 2 uses
  %i.ax = phi i8 [ %i.ap, %.critedge.thread ], [ %.pre, %.critedge ]
  %.not36 = icmp eq i32 %.0.lcssa63, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.aw, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = add i8 %i.az, -58
  %i.bb = icmp ult i8 %i.ba, -10
  br i1 %i.bb, label %bb.l, label %._crit_edge47.i25

bb.l:                                             ; preds = %bb.k, %bb.j
  %.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %.pre.i23 = load i8, ptr %.phi.trans.insert.i22, align 1, !tbaa !36 ; 2 uses
  %i.bc = add i8 %.pre.i23, -58
  %i.bd = icmp ult i8 %i.bc, -10
  %or.cond.i24 = select i1 %i.au, i1 true, i1 %i.bd
  br i1 %or.cond.i24, label %._crit_edge.i32, label %._crit_edge47.i25

._crit_edge47.i25:                                ; preds = %bb.l, %bb.k
  %i.be = trunc nuw i64 %.lcssa4261 to i32
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph86, label %._crit_edge89

bb.m:                                             ; preds = %.lr.ph86
  %i.bg = trunc nuw i64 %i.bi to i32
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph86, label %._crit_edge89, !llvm.loop !4

.lr.ph86:                                         ; preds = %._crit_edge47.i25, %bb.m
  %indvars.iv.i2885 = phi i64 [ %i.bi, %bb.m ], [ %.lcssa4261, %._crit_edge47.i25 ] ; 2 uses
  %i.bi = add nsw i64 %indvars.iv.i2885, -1       ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !36
  %i.bl = add i8 %i.bk, -58
  %i.bm = icmp ult i8 %i.bl, -10
  br i1 %i.bm, label %._crit_edge87, label %bb.m, !llvm.loop !4

._crit_edge87:                                    ; preds = %.lr.ph86
  br label %._crit_edge89, !llvm.loop !4

._crit_edge89:                                    ; preds = %bb.m, %._crit_edge87, %._crit_edge47.i25
  %.0.in.lcssa.i29 = phi i64 [ %indvars.iv.i2885, %._crit_edge87 ], [ 0, %._crit_edge47.i25 ], [ 0, %bb.m ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.in.lcssa.i29
  %i.bo = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.bn, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.lcssa.i29
  %i.br = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.bq, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.bs = trunc i64 %i.br to i32
  %.033.i30 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bp, i32 %i.bs)
  br label %Cba_StrCmpInt.exit

._crit_edge.i32:                                  ; preds = %bb.l, %.critedge.thread
  %i.bt = phi i8 [ %i.ap, %.critedge.thread ], [ %i.ax, %bb.l ] ; 2 uses
  %i.bu = phi i8 [ %i.ar, %.critedge.thread ], [ %.pre.i23, %bb.l ] ; 2 uses
  %i.bv = icmp slt i8 %i.bt, %i.bu
  br i1 %i.bv, label %Cba_StrCmpInt.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i32
  %i.bw = icmp sgt i8 %i.bt, %i.bu
  %.44.i33 = zext i1 %i.bw to i32
  br label %Cba_StrCmpInt.exit

Cba_StrCmpInt.exit:                               ; preds = %bb.n, %._crit_edge.i32, %._crit_edge89, %bb.h, %._crit_edge.i, %._crit_edge83
  %.017 = phi i32 [ %.44.i, %bb.h ], [ %.033.i, %._crit_edge83 ], [ -1, %._crit_edge.i ], [ %.033.i30, %._crit_edge89 ], [ -1, %._crit_edge.i32 ], [ %.44.i33, %bb.n ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define void @Cba_NtkObjOrder(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
end_hunk_0
begin_hunk_1_@Cba_ManSetMap:bb.a
  %.not.i22.i.i = icmp slt i32 %i.e, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.p, null
  %i.q = sext i32 %spec.select.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.m ], [ %i.b, %bb.g ]
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !49
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.i, %bb.h, %bb.c
  %i.v = phi i32 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.d, %bb.i ], [ %i.d, %bb.h ], [ %i.d, %bb.c ] ; 2 uses
  %.not4.i = icmp sgt i32 %i.v, %1
  br i1 %.not4.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.b to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub nsw i64 %wide.trip.count.i.i, %i.y
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ab, i1 false), !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.b, ptr %i.c, align 4, !tbaa !48
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.a, %._crit_edge.i.i
  %i.ac = getelementptr i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ad = sext i32 %1 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ad
  store i32 %2, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !48 ; 7 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !49
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %Vec_IntSetEntry.exit
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.ap = phi ptr [ %i.an, %bb.p ], [ %i.ao, %bb.q ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = phi ptr [ %i.aw, %bb.t ], [ %i.ax, %bb.u ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.af, align 8, !tbaa !49
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntSetEntry.exit, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %Vec_IntSetEntry.exit ], [ %i.ah, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !48
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %1, ptr %i.be, align 4, !tbaa !40
  ret void
}

declare ptr @Abc_NamBuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #22

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #22

declare i32 @Abc_NamStrFindOrAddLim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{null}
!6 = distinct !{!6, !29}
!7 = distinct !{!7, !29}
!8 = distinct !{!8, !29}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"Vec_Ptr_t_", !14, i64 0, !14, i64 4, !18, i64 8}
!20 = !{!19, !18, i64 8}
!21 = !{!17, !17, i64 0}
!22 = !{!"p1 long", !17, i64 0}
!23 = !{!"Vec_Wrd_t_", !14, i64 0, !14, i64 4, !22, i64 8}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !14, i64 4}
!26 = !{!"long", !13, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!19, !14, i64 0}
!31 = !{!19, !14, i64 4}
!32 = !{!"p1 omnipotent char", !17, i64 0}
!33 = !{!"Vec_Str_t_", !14, i64 0, !14, i64 4, !32, i64 8}
!34 = !{!33, !14, i64 4}
!35 = !{!33, !32, i64 8}
!36 = !{!13, !13, i64 0}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!"Vec_Int_t_", !14, i64 0, !14, i64 4, !37, i64 8}
!39 = !{!38, !37, i64 8}
!40 = !{!14, !14, i64 0}
!41 = !{!"p1 _ZTS10Cba_Man_t_", !17, i64 0}
!42 = !{!"p1 _ZTS10Vec_Ptr_t_", !17, i64 0}
!43 = !{!"Cba_Ntk_t_", !41, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 20, !14, i64 20, !38, i64 24, !38, i64 40, !38, i64 56, !38, i64 72, !33, i64 88, !38, i64 104, !38, i64 120, !38, i64 136, !38, i64 152, !38, i64 168, !38, i64 184, !38, i64 200, !38, i64 216, !38, i64 232, !38, i64 248, !38, i64 264, !38, i64 280, !38, i64 296, !38, i64 312, !38, i64 328, !38, i64 344, !38, i64 360, !38, i64 376, !42, i64 392, !38, i64 400, !38, i64 416}
!44 = !{!43, !41, i64 0}
!45 = !{!32, !32, i64 0}
!46 = !{!"Vec_Vec_t_", !14, i64 0, !14, i64 4, !18, i64 8}
!47 = !{!46, !14, i64 4}
!48 = !{!38, !14, i64 4}
!49 = !{!38, !14, i64 0}
!50 = !{!"p1 _ZTS10Abc_Nam_t_", !17, i64 0}
!51 = !{!"p1 _ZTS14Hash_IntMan_t_", !17, i64 0}
!52 = !{!"Cba_Man_t_", !32, i64 0, !32, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !51, i64 40, !38, i64 48, !38, i64 64, !38, i64 80, !38, i64 96, !13, i64 112, !13, i64 832, !13, i64 1192, !14, i64 1552, !19, i64 1560, !14, i64 1576, !33, i64 1584, !33, i64 1600, !17, i64 1616}
!53 = !{!52, !51, i64 40}
!54 = !{!"p1 _ZTS10Vec_Int_t_", !17, i64 0}
!55 = !{!"Hash_IntMan_t_", !54, i64 0, !54, i64 8, !14, i64 16}
!56 = !{!55, !54, i64 8}
!57 = !{!"Hash_IntObj_t_", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!58 = !{!57, !14, i64 0}
!59 = !{!57, !14, i64 4}
!60 = !{!52, !50, i64 16}
!61 = !{!52, !50, i64 24}
!62 = !{!43, !14, i64 12}
!63 = !{!33, !14, i64 0}
!64 = !{!52, !14, i64 1552}
!65 = !{!43, !14, i64 8}
!66 = !{!52, !32, i64 8}
!67 = !{!55, !14, i64 16}
!68 = !{!52, !50, i64 32}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !29}
!71 = distinct !{!71, !29}
!72 = distinct !{!72, !29}
!73 = distinct !{!73, !29}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = !{!23, !14, i64 0}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29, !87, !88}
!82 = distinct !{!82, !29, !88, !87}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29, !87, !88}
!85 = distinct !{!85, !29, !88, !87}
!86 = distinct !{!86, !29}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !28}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !28}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = distinct !{!137, !29}
!138 = !{!52, !32, i64 0}
!139 = !{!55, !54, i64 0}
!140 = distinct !{!140, !29}
!141 = distinct !{!141, !29}
!142 = distinct !{!142, !29}
!143 = distinct !{!143, !29}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = distinct !{!148, !29}
!149 = distinct !{!149, !29}
!150 = distinct !{!150, !29}
!151 = distinct !{!151, !29}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !29}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
!158 = distinct !{!158, !29}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
!161 = distinct !{!161, !29}
!162 = distinct !{!162, !29}
!163 = distinct !{!163, !29}
!164 = !{!"p1 _ZTS10Gia_Obj_t_", !17, i64 0}
!165 = !{!"p1 _ZTS10Gia_Rpr_t_", !17, i64 0}
!166 = !{!"p1 _ZTS10Vec_Wec_t_", !17, i64 0}
!167 = !{!"p1 _ZTS10Vec_Str_t_", !17, i64 0}
!168 = !{!"p1 _ZTS10Abc_Cex_t_", !17, i64 0}
!169 = !{!"p1 _ZTS10Gia_Plc_t_", !17, i64 0}
!170 = !{!"p1 _ZTS10Gia_Man_t_", !17, i64 0}
!171 = !{!"p1 _ZTS10Vec_Flt_t_", !17, i64 0}
!172 = !{!"float", !13, i64 0}
!173 = !{!"p1 _ZTS10Vec_Vec_t_", !17, i64 0}
!174 = !{!"p1 _ZTS10Vec_Wrd_t_", !17, i64 0}
!175 = !{!"p1 _ZTS10Vec_Bit_t_", !17, i64 0}
end_hunk_1
