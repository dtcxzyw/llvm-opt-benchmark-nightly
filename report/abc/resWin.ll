Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/resWin?download=true
inline.NumInlined: 126
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Res_WinMarkPaths_rec:bb.a
  %i.am = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !54
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %Abc_NodeSetTravIdPrevious.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = lshr i32 %i.ap, 12
  %.not25 = icmp sgt i32 %i.aq, %2
  br i1 %.not25, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %.val2833 = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.as = icmp sgt i32 %.val2833, 0
  br i1 %i.as, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.at = getelementptr i8, ptr %0, i64 32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.q ]
  %.val29 = load ptr, ptr %0, align 8, !tbaa !37
  %.val30 = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr i8, ptr %.val29, i64 32
  %.val29.val = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.av = getelementptr i8, ptr %.val29.val, i64 8
  %.val29.val.val = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !54
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %.val29.val.val, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = tail call i32 @Res_WinMarkPaths_rec(ptr noundef %i.ba, ptr noundef %1, i32 noundef %2)
  %i.bc = or i32 %i.bb, %.035                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val28 = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.bd = sext i32 %.val28 to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.q, label %.critedge, !llvm.loop !80

.critedge:                                        ; preds = %bb.q
  %i.bf = icmp eq i32 %i.bc, 0
  br i1 %i.bf, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %.critedge
  %.val = load ptr, ptr %0, align 8, !tbaa !37
  %.val27 = load i32, ptr %i.c, align 8, !tbaa !57
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val27)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %.critedge, %bb.r, %Abc_NodeSetTravIdPrevious.exit, %bb.p, %bb.b, %bb.a
  %.020 = phi i32 [ 0, %Abc_NodeSetTravIdPrevious.exit ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.p ], [ 1, %bb.r ], [ 0, %.critedge ], [ 0, %.preheader ]
  ret i32 %.020
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Abc_NodeIsTravIdPrevious(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %.val2 = load ptr, ptr %0, align 8, !tbaa !37   ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i32, ptr %i.a, align 8, !tbaa !57 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 224 ; 2 uses
  %i.c = add nsw i32 %.val3, 1                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 228 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55   ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %.val3, %i.e
  br i1 %.not.i.not.i.i, label %Abc_NodeTravId.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !52   ; 4 uses
  %i.g = shl nsw i32 %i.f, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %.val3, %i.g
  %.not.i.i.not.i.i = icmp sgt i32 %i.f, %.val3   ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 232 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = sext i32 %i.c to i64
  %i.k = shl nsw i64 %i.j, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  store ptr %i.n, ptr %i.h, align 8, !tbaa !53
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp slt i32 %i.f, 1073741823
  %spec.select.i.i.i = select i1 %i.o, i32 %i.g, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.f, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 232 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %spec.select.i.i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = phi ptr [ %i.t, %bb.k ], [ %i.u, %bb.l ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !53
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.c, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.b, align 8, !tbaa !52
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !55
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.w = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.c ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.w, %.val3
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.z = sext i32 %i.w to i64
  %i.aa = shl nsw i64 %i.z, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ab = sub i32 %.val3, %i.w
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ae, i1 false), !tbaa !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.c, ptr %i.d, align 4, !tbaa !55
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %Abc_NodeTravId.exit

Abc_NodeTravId.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i
  %.val = phi ptr [ %.val2, %bb.a ], [ %.val.pre, %._crit_edge.i.i.i ]
  %i.af = getelementptr i8, ptr %.val2, i64 232
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ag = sext i32 %.val3 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !56
  %i.al = add nsw i32 %i.ak, -1
  %i.am = icmp eq i32 %i.ai, %i.al
  %i.an = zext i1 %i.am to i32
  ret i32 %i.an
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Res_WinMarkPaths(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %Abc_NtkIncrementTravId.exit.thread

Abc_NtkIncrementTravId.exit.thread:               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !56
  br label %Abc_NtkIncrementTravId.exit29

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.i = getelementptr i8, ptr %i.b, i64 32
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.j, align 4, !tbaa !18 ; 3 uses
  %i.k = add nsw i32 %.val.val.i, 500             ; 8 uses
  %i.l = load i32, ptr %i.h, align 8, !tbaa !52
  %.not.i.i.i = icmp slt i32 %i.l, %i.k
  br i1 %.not.i.i.i, label %Vec_IntGrow.exit.i.i, label %Vec_IntGrow.exit.i.i.thread

Vec_IntGrow.exit.i.i:                             ; preds = %bb.b
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #12 ; 3 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !53
  store i32 %i.k, ptr %i.h, align 8, !tbaa !52
  %i.p = icmp sgt i32 %.val.val.i, -500
  br i1 %i.p, label %Abc_NtkIncrementTravId.exit, label %Abc_NtkIncrementTravId.exit.thread42

Vec_IntGrow.exit.i.i.thread:                      ; preds = %bb.b
  %i.q = icmp sgt i32 %.val.val.i, -500
  br i1 %i.q, label %Abc_NtkIncrementTravId.exit, label %Abc_NtkIncrementTravId.exit.thread42.thread

Abc_NtkIncrementTravId.exit.thread42.thread:      ; preds = %Vec_IntGrow.exit.i.i.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !56
  br label %Vec_IntFill.exit.i27

Abc_NtkIncrementTravId.exit:                      ; preds = %Vec_IntGrow.exit.i.i.thread, %Vec_IntGrow.exit.i.i
  %.pr45 = phi ptr [ null, %Vec_IntGrow.exit.i.i.thread ], [ %i.o, %Vec_IntGrow.exit.i.i ] ; 2 uses
  %i.v = zext nneg i32 %i.k to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pr45, i8 0, i64 %i.w, i1 false), !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 228 ; 2 uses
  store i32 %i.k, ptr %i.x, align 4, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %i.aa = add nsw i32 %i.z, 1                     ; 3 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !56
  %.not.i22 = icmp eq ptr %.pr45, null
  br i1 %.not.i22, label %.lr.ph.i.i28, label %Abc_NtkIncrementTravId.exit29

Abc_NtkIncrementTravId.exit.thread42:             ; preds = %Vec_IntGrow.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 228 ; 2 uses
  store i32 %i.k, ptr %i.ab, align 4, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !56
  %.not.i2243 = icmp eq ptr %i.o, null
  br i1 %.not.i2243, label %Vec_IntFill.exit.i27, label %Abc_NtkIncrementTravId.exit29

.lr.ph.i.i28:                                     ; preds = %Abc_NtkIncrementTravId.exit
  %1 = icmp eq i32 %i.k, 0
  tail call void @llvm.assume(i1 %1)
  br label %Vec_IntFill.exit.i27

Vec_IntFill.exit.i27:                             ; preds = %Abc_NtkIncrementTravId.exit.thread42, %Abc_NtkIncrementTravId.exit.thread42.thread, %.lr.ph.i.i28
  %2 = phi ptr [ %i.ab, %Abc_NtkIncrementTravId.exit.thread42 ], [ %i.x, %.lr.ph.i.i28 ], [ %i.r, %Abc_NtkIncrementTravId.exit.thread42.thread ]
  %3 = phi ptr [ %i.ac, %Abc_NtkIncrementTravId.exit.thread42 ], [ %i.y, %.lr.ph.i.i28 ], [ %i.s, %Abc_NtkIncrementTravId.exit.thread42.thread ]
  %4 = phi i32 [ %i.ae, %Abc_NtkIncrementTravId.exit.thread42 ], [ %i.aa, %.lr.ph.i.i28 ], [ %i.u, %Abc_NtkIncrementTravId.exit.thread42.thread ]
  store i32 %i.k, ptr %2, align 4, !tbaa !55
  br label %Abc_NtkIncrementTravId.exit29

Abc_NtkIncrementTravId.exit29:                    ; preds = %Abc_NtkIncrementTravId.exit.thread42, %Abc_NtkIncrementTravId.exit.thread, %Abc_NtkIncrementTravId.exit, %Vec_IntFill.exit.i27
  %i.af = phi i32 [ %i.g, %Abc_NtkIncrementTravId.exit.thread ], [ %i.aa, %Abc_NtkIncrementTravId.exit ], [ %4, %Vec_IntFill.exit.i27 ], [ %i.ae, %Abc_NtkIncrementTravId.exit.thread42 ]
  %i.ag = phi ptr [ %i.e, %Abc_NtkIncrementTravId.exit.thread ], [ %i.y, %Abc_NtkIncrementTravId.exit ], [ %3, %Vec_IntFill.exit.i27 ], [ %i.ac, %Abc_NtkIncrementTravId.exit.thread42 ]
  %i.ah = add nsw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val1731 = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.al = icmp sgt i32 %.val1731, 0
  br i1 %i.al, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %Abc_NtkIncrementTravId.exit29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %.val33 = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.ap = icmp sgt i32 %.val33, 0
  br i1 %i.ap, label %.lr.ph35, label %.critedge2

.lr.ph35:                                         ; preds = %.critedge.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.critedge

.lr.ph:                                           ; preds = %Abc_NtkIncrementTravId.exit29, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_NtkIncrementTravId.exit29 ] ; 2 uses
  %i.ar = phi ptr [ %i.aw, %.lr.ph ], [ %i.aj, %Abc_NtkIncrementTravId.exit29 ]
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val21 = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %.val18 = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val19 = load i32, ptr %i.av, align 8, !tbaa !57
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val18, i32 %.val19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val17 = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.ay = sext i32 %.val17 to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph, label %.critedge.preheader, !llvm.loop !81

.critedge:                                        ; preds = %.lr.ph35, %.critedge
  %indvars.iv37 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next38, %.critedge ] ; 2 uses
  %i.ba = phi ptr [ %i.an, %.lr.ph35 ], [ %i.bh, %.critedge ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val20 = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %indvars.iv37
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.be = load ptr, ptr %0, align 8, !tbaa !32
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !61
  %i.bg = tail call i32 @Res_WinMarkPaths_rec(ptr noundef %i.bd, ptr noundef %i.be, i32 noundef %i.bf) ; 0 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %.val = load i32, ptr %i.bi, align 4, !tbaa !18
  %i.bj = sext i32 %.val to i64
  %i.bk = icmp slt i64 %indvars.iv.next38, %i.bj
  br i1 %i.bk, label %.critedge, label %.critedge2, !llvm.loop !82

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Res_WinFinalizeRoots_rec(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %.val1925 = load i32, ptr %i.a, align 4, !tbaa !62
  %i.b = icmp sgt i32 %.val1925, 0
  br i1 %i.b, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.val22 = load ptr, ptr %0, align 8, !tbaa !37
  %.val23 = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr i8, ptr %.val22, i64 32
  %.val22.val = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr i8, ptr %.val22.val, i64 8
  %.val22.val.val = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val22.val.val, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef %i.j)
  %.not = icmp eq i32 %i.k, 0
  %.val18.pre.pre = load i32, ptr %i.a, align 4, !tbaa !62 ; 3 uses
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.l = sext i32 %.val18.pre.pre to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %bb.b, %bb.c
  %.0.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next, %bb.c ]
  %.0.lcssa.ph = trunc i64 %.0.lcssa.ph.in to i32
  %i.n = icmp sgt i32 %.val18.pre.pre, %.0.lcssa.ph
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.o = icmp sgt i32 %.val18.pre.pre, 0
  br i1 %i.o, label %.lr.ph31, label %.critedge2

.lr.ph31:                                         ; preds = %.preheader
  %i.p = getelementptr i8, ptr %0, i64 48
  br label %bb.p

bb.d:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18   ; 9 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !84

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %.critedge2, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.y = load i32, ptr %1, align 8, !tbaa !19
  %i.z = icmp eq i32 %i.r, %i.y
  br i1 %i.z, label %bb.g, label %Vec_PtrPush.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.aa = icmp slt i32 %i.r, 16
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 128) #14
  br label %Vec_PtrGrow.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.j, %bb.i
  %i.af = phi ptr [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !20
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.k:                                             ; preds = %bb.g
  %i.ag = icmp samesign ult i32 %i.r, 1073741823
  %i.ah = shl nuw nsw i32 %i.r, 1
  %spec.select.i.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.r, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.l, label %Vec_PtrPush.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %.not9.i11.i.i = icmp eq ptr %i.aj, null
  %i.ak = zext nneg i32 %spec.select.i.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #14
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = phi ptr [ %i.am, %bb.m ], [ %i.an, %bb.n ]
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !20
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.o, %Vec_PtrGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.o ], [ 16, %Vec_PtrGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %1, align 8, !tbaa !19
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !18
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i, %bb.k, %._crit_edge.i
  %i.ap = phi i32 [ %i.r, %._crit_edge.i ], [ %i.r, %bb.k ], [ %.pre.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
end_hunk_0
