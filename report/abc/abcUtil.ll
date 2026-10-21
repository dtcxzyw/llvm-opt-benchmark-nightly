Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcUtil?download=true
inline.NumInlined: 908
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Gia_ManAppendCo:bb.a
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !278
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !59
  %i.w = and i32 %.val, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = and i64 %i.s, -2305843004918726657
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !278 ; 6 uses
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.ac = ptrtoint ptr %.val19 to i64
  %i.ad = sub i64 %i.e, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59 ; 7 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !64
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #36
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ab, align 8, !tbaa !64
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !59
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !59
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.af, ptr %i.be, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !279
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.bh = load i64, ptr %i.a, align 4
  %i.bi = and i64 %i.bh, 536870911
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  ret void
}

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Abc_SopSynthesizeOne(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @Gia_ManStart(i32 noundef 1) #35 ; 3 uses
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 2 uses
  store i32 7368564, ptr %i.d, align 1
  store ptr %i.d, ptr %i.c, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !56
  %i.g = icmp eq i8 %i.f, 49
  %i.h = zext i1 %i.g to i32
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.c, i32 noundef %i.h)
  br label %bb.f

Vec_PtrPush.exit:                                 ; preds = %bb.a
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #37 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 8, ptr %i.i, align 8, !tbaa !45
  %i.k = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #37 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !37
  store i32 1, ptr %i.j, align 4, !tbaa !41
  store ptr %0, ptr %i.k, align 8, !tbaa !38
  %i.m = tail call ptr @Abc_NtkCreateFromSops(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.i) #35
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.c

bb.c:                                             ; preds = %Vec_PtrPush.exit
  tail call void @free(ptr noundef nonnull %i.n) #35
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_PtrPush.exit, %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #35
  %i.o = tail call ptr (...) @Abc_FrameReadGlobalFrame() #35
  tail call void @Abc_FrameReplaceCurrentNetwork(ptr noundef %i.o, ptr noundef %i.m) #35
  tail call void @Abc_FrameSetBatchMode(i32 noundef 1) #35
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Vec_PtrFree.exit
  %i.p = tail call ptr (...) @Abc_FrameGetGlobalFrame() #35
  %i.q = tail call i32 @Cmd_CommandExecute(ptr noundef %i.p, ptr noundef nonnull @.str.48) #35 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Vec_PtrFree.exit
  %i.r = tail call ptr (...) @Abc_FrameGetGlobalFrame() #35
  %i.s = tail call i32 @Cmd_CommandExecute(ptr noundef %i.r, ptr noundef nonnull @.str.49) #35 ; 0 uses
  tail call void @Abc_FrameSetBatchMode(i32 noundef 0) #35
  %i.t = tail call ptr (...) @Abc_FrameReadGlobalFrame() #35
  %i.u = tail call ptr @Abc_FrameReadNtk(ptr noundef %i.t) #35
  %i.v = tail call ptr @Abc_NtkStrashToGia(ptr noundef %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.v, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @Abc_NtkHasConstNode() local_unnamed_addr #22 {
.lr.ph.preheader:
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 9, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 145
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkFromArray() local_unnamed_addr #0 {
.split:
  %i.a = tail call noalias dereferenceable_or_null(1160) ptr @malloc(i64 noundef 1160) #37 ; 10 uses
  %i.b = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 1, i32 noundef 1) #35 ; 19 uses
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.c = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !38
  %i.e = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !38
  %i.g = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !38
  %i.i = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !38
  %i.k = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !38
  %i.m = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !38
  %i.o = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !38
  %i.q = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 2) #35
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.split, %Vec_PtrGrow.exit12.sink.split.i101
  %i.t = phi i32 [ 145, %.split ], [ %i.ba, %Vec_PtrGrow.exit12.sink.split.i101 ] ; 3 uses
  %i.u = phi ptr [ %i.a, %.split ], [ %i.bb, %Vec_PtrGrow.exit12.sink.split.i101 ] ; 8 uses
  %i.v = phi i32 [ 145, %.split ], [ %i.bc, %Vec_PtrGrow.exit12.sink.split.i101 ] ; 7 uses
  %i.w = phi i32 [ 9, %.split ], [ %i.bd, %Vec_PtrGrow.exit12.sink.split.i101 ] ; 4 uses
  %indvars.iv135.a = phi i64 [ 9, %.split ], [ %indvars.iv.next136.a, %Vec_PtrGrow.exit12.sink.split.i101 ] ; 6 uses
  %.idx = shl nuw nsw i64 %indvars.iv135.a, 3
  %i.x = getelementptr inbounds nuw i8, ptr @s_ArrayData, i64 %.idx ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !54   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54  ; 4 uses
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ad = tail call ptr @Abc_SopCreateXor(ptr noundef %i.ac, i32 noundef 2) #35
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ae = icmp slt i32 %i.y, %i.aa
  br i1 %i.ae, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ag = tail call ptr @Abc_SopCreateAnd(ptr noundef %i.af, i32 noundef 2, ptr noundef null) #35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.064 = phi ptr [ %i.ad, %bb.b ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ah = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.b, i32 noundef 7) #35 ; 4 uses
  %i.ai = ashr i32 %i.y, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ah, ptr noundef %i.al) #35
  %i.am = ashr i32 %i.aa, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ah, ptr noundef %i.ap) #35
  %i.aq = and i32 %i.y, 1
  %.not75 = icmp eq i32 %i.aq, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @Abc_SopComplementVar(ptr noundef %.064, i32 noundef 0) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = and i32 %i.aa, 1
  %.not76 = icmp eq i32 %i.ar, 0
  br i1 %.not76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @Abc_SopComplementVar(ptr noundef %.064, i32 noundef 1) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %.064, ptr %i.as, align 8, !tbaa !56
  %i.at = icmp eq i32 %i.w, %i.v
  br i1 %i.at, label %bb.j, label %Vec_PtrGrow.exit12.sink.split.i101

bb.j:                                             ; preds = %bb.i
  %i.au = icmp slt i32 %i.v, 16
  br i1 %i.au, label %Vec_PtrGrow.exit12.sink.split.i101.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp samesign ult i32 %i.v, 1073741823
  %i.aw = shl nuw nsw i32 %i.v, 1
  %spec.select.i98 = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i10.i99 = icmp samesign ult i32 %i.v, %spec.select.i98
  br i1 %.not.i10.i99, label %bb.l, label %Vec_PtrGrow.exit12.sink.split.i101

bb.l:                                             ; preds = %bb.k
  %i.ax = zext nneg i32 %spec.select.i98 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  br label %Vec_PtrGrow.exit12.sink.split.i101.sink.split

Vec_PtrGrow.exit12.sink.split.i101.sink.split:    ; preds = %bb.j, %bb.l
  %.sink189 = phi i64 [ %i.ay, %bb.l ], [ 128, %bb.j ]
  %.ph186 = phi i32 [ %spec.select.i98, %bb.l ], [ 16, %bb.j ] ; 2 uses
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %.sink189) #36
  br label %Vec_PtrGrow.exit12.sink.split.i101

Vec_PtrGrow.exit12.sink.split.i101:               ; preds = %Vec_PtrGrow.exit12.sink.split.i101.sink.split, %bb.k, %bb.i
  %i.ba = phi i32 [ %i.t, %bb.i ], [ %i.t, %bb.k ], [ %.ph186, %Vec_PtrGrow.exit12.sink.split.i101.sink.split ]
  %i.bb = phi ptr [ %i.u, %bb.i ], [ %i.u, %bb.k ], [ %i.az, %Vec_PtrGrow.exit12.sink.split.i101.sink.split ] ; 3 uses
  %i.bc = phi i32 [ %i.v, %bb.i ], [ %i.v, %bb.k ], [ %.ph186, %Vec_PtrGrow.exit12.sink.split.i101.sink.split ]
  %i.bd = add nuw nsw i32 %i.w, 1
  %i.be = zext nneg i32 %i.w to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !38
  %indvars.iv.next136.a = add nuw nsw i64 %indvars.iv135.a, 1 ; 2 uses
  %exitcond138.not.a = icmp eq i64 %indvars.iv.next136.a, 145
  br i1 %exitcond138.not.a, label %._crit_edge132.thread169, label %bb.a, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.c
  %i.bg = icmp samesign ult i64 %indvars.iv135.a, 145
  br i1 %i.bg, label %.lr.ph128, label %._crit_edge132

.lr.ph128:                                        ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  br label %bb.m

.lr.ph131:                                        ; preds = %Vec_PtrPush.exit113
  %i.bi = sub nsw i64 145, %indvars.iv135.a
  %i.bj = and i64 %i.bi, 4294967295
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph128, %Vec_PtrPush.exit113
  %i.bk = phi ptr [ %i.u, %.lr.ph128 ], [ %i.cg, %Vec_PtrPush.exit113 ] ; 4 uses
  %i.bl = phi i32 [ %i.t, %.lr.ph128 ], [ %i.ch, %Vec_PtrPush.exit113 ] ; 7 uses
  %i.bm = phi i32 [ %i.w, %.lr.ph128 ], [ %i.ci, %Vec_PtrPush.exit113 ] ; 3 uses
  %indvars.iv139.a = phi i64 [ %indvars.iv135.a, %.lr.ph128 ], [ %indvars.iv.next140.a, %Vec_PtrPush.exit113 ] ; 2 uses
  %i.bn = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.b, i32 noundef 7) #35 ; 3 uses
  %.idx163 = shl nuw nsw i64 %indvars.iv139.a, 3
  %i.bo = getelementptr inbounds nuw i8, ptr @s_ArrayData, i64 %.idx163
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = ashr i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.bn, ptr noundef %i.bt) #35
  %i.bu = and i32 %i.bp, 1
  %.not78 = icmp eq i32 %i.bu, 0
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  br i1 %.not78, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @Abc_SopCreateInv(ptr noundef %i.bv) #35
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bx = tail call ptr @Abc_SopCreateBuf(ptr noundef %i.bv) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.bw, %bb.n ], [ %i.bx, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %.0, ptr %i.by, align 8, !tbaa !56
  %i.bz = icmp eq i32 %i.bm, %i.bl
  br i1 %i.bz, label %bb.q, label %Vec_PtrPush.exit113

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp slt i32 %i.bl, 16
  br i1 %i.ca, label %Vec_PtrPush.exit113.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp samesign ult i32 %i.bl, 1073741823
  %i.cc = shl nuw nsw i32 %i.bl, 1
  %spec.select.i106 = select i1 %i.cb, i32 %i.cc, i32 2147483647 ; 3 uses
  %.not.i10.i107 = icmp samesign ult i32 %i.bl, %spec.select.i106
  br i1 %.not.i10.i107, label %bb.s, label %Vec_PtrPush.exit113

bb.s:                                             ; preds = %bb.r
  %i.cd = zext nneg i32 %spec.select.i106 to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  br label %Vec_PtrPush.exit113.sink.split
end_hunk_0
