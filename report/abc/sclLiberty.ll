Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclLiberty?download=true
inline.NumInlined: 558
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Scl_LibertyReadPinTimingAll:bb.a

Scl_LibertyItem.exit30:                           ; preds = %Scl_LibertyCompare.exit.thread
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.dg, i64 %i.de
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !124

._crit_edge:                                      ; preds = %Scl_LibertyCompare.exit.thread, %Scl_LibertyItem.exit30, %bb.a, %Scl_LibertyItem.exit
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_PtrPush(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !117  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !120
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_PtrGrow.exit12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 128) #31
  br label %Vec_PtrGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #32
  br label %Vec_PtrGrow.exit

Vec_PtrGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !121
  br label %Vec_PtrGrow.exit12.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i10 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i10, label %bb.g, label %Vec_PtrGrow.exit12

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not9.i11 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !121
  br label %Vec_PtrGrow.exit12.sink.split

Vec_PtrGrow.exit12.sink.split:                    ; preds = %Vec_PtrGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_PtrGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !120
  br label %Vec_PtrGrow.exit12

Vec_PtrGrow.exit12:                               ; preds = %Vec_PtrGrow.exit12.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  %i.v = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !117
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  store ptr %1, ptr %i.y, align 8, !tbaa !122
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 1, 4) i32 @Scl_LibertyReadTimingSense(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.thread, label %Scl_LibertyItem.exit

Scl_LibertyItem.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %Scl_LibertyItem.exit
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Scl_LibertyItem.exit20
  %.01327 = phi ptr [ %i.f, %.lr.ph ], [ %i.aa, %Scl_LibertyItem.exit20 ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01327, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01327, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.j
  %i.n = sub nsw i64 %i.l, %i.j                   ; 2 uses
  %i.o = tail call i32 @strncmp(ptr noundef readonly %i.m, ptr noundef nonnull @.str.83, i64 noundef %i.n) #34
  %.not.i = icmp eq i32 %i.o, 0
  %.not24 = icmp eq i64 %i.n, 12
  %or.cond = and i1 %.not24, %.not.i
  br i1 %or.cond, label %bb.c, label %Scl_LibertyCompare.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.01327, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01327, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call ptr @Scl_LibertyReadString(ptr noundef nonnull %0, i64 %i.q, i64 %i.s) ; 2 uses
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(15) @.str.84) #34
  %.not16 = icmp eq i32 %i.u, 0
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(15) @.str.85) #34
  %.not17 = icmp eq i32 %i.v, 0
  %spec.select = select i1 %.not17, i32 2, i32 3
  br label %.thread

Scl_LibertyCompare.exit.thread:                   ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.01327, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.thread, label %Scl_LibertyItem.exit20

Scl_LibertyItem.exit20:                           ; preds = %Scl_LibertyCompare.exit.thread
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.z, i64 %i.x
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !125

.thread:                                          ; preds = %Scl_LibertyCompare.exit.thread, %Scl_LibertyItem.exit20, %bb.a, %Scl_LibertyItem.exit, %bb.d, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ %spec.select, %bb.d ], [ 3, %Scl_LibertyItem.exit ], [ 3, %bb.a ], [ 3, %Scl_LibertyItem.exit20 ], [ 3, %Scl_LibertyCompare.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Scl_LibertyReadFloatVec(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !126
  store i32 100, ptr %i.a, align 8, !tbaa !129
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !130
  %i.e = tail call ptr @strtok(ptr noundef %0, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.j, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %Vec_FltPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_FltPush.exit ], [ 0, %bb.a ] ; 7 uses
  %storemerge11 = phi ptr [ %storemerge12, %Vec_FltPush.exit ], [ %i.c, %bb.a ] ; 6 uses
  %spec.select.sink.i9 = phi i32 [ %spec.select.sink.i8, %Vec_FltPush.exit ], [ 100, %bb.a ] ; 3 uses
  %.06 = phi ptr [ %i.u, %Vec_FltPush.exit ], [ %i.e, %bb.a ]
  %i.f = tail call double @strtod(ptr noundef nonnull captures(none) %.06, ptr noundef null) #33, !inline_history !96
  %i.g = fptrunc double %i.f to float
  %i.h = trunc nsw i64 %indvars.iv to i32
  %i.i = icmp eq i32 %spec.select.sink.i9, %i.h
  br i1 %i.i, label %bb.b, label %Vec_FltPush.exit

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %storemerge11, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge11, i64 noundef 64) #31
  br label %Vec_FltPush.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltPush.exit

bb.f:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.m, i32 %i.n, i32 2147483647 ; 4 uses
  %i.o = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.o
  br i1 %.not.i10.i, label %bb.g, label %Vec_FltPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i11.i = icmp eq ptr %storemerge11, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @realloc(ptr noundef nonnull %storemerge11, i64 noundef %i.q) #31
  br label %Vec_FltPush.exit

bb.i:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #32
  br label %Vec_FltPush.exit

Vec_FltPush.exit:                                 ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %.lr.ph, %bb.f
  %storemerge12 = phi ptr [ %storemerge11, %.lr.ph ], [ %storemerge11, %bb.f ], [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 3 uses
  %spec.select.sink.i8 = phi i32 [ %spec.select.sink.i9, %.lr.ph ], [ %spec.select.sink.i9, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %storemerge12, i64 %indvars.iv
  store float %i.g, ptr %i.t, align 4, !tbaa !131
  %i.u = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %Vec_FltPush.exit
  %i.v = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.v, ptr %i.b, align 4, !tbaa !126
  store i32 %spec.select.sink.i8, ptr %i.a, align 8
  store ptr %storemerge12, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_FltAlloc(i32 noundef %0) unnamed_addr #20 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 4 uses
  %i.b = add i32 %0, -1
  %or.cond = icmp ult i32 %i.b, 15
  %spec.store.select = select i1 %or.cond, i32 16, i32 %0 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !126
  store i32 %spec.store.select, ptr %i.a, align 8, !tbaa !129
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !130
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_FltPush(ptr nofree noundef captures(none) %0, float noundef nofpclass(nan inf nzero sub norm) %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !126  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !129
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_FltGrow.exit12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #31
  br label %Vec_FltGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltGrow.exit

Vec_FltGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !130
  br label %Vec_FltGrow.exit12.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i10 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i10, label %bb.g, label %Vec_FltGrow.exit12

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %.not9.i11 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !130
  br label %Vec_FltGrow.exit12.sink.split

Vec_FltGrow.exit12.sink.split:                    ; preds = %Vec_FltGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_FltGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !129
  br label %Vec_FltGrow.exit12

Vec_FltGrow.exit12:                               ; preds = %Vec_FltGrow.exit12.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.v = load i32, ptr %i.a, align 4, !tbaa !126  ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !126
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  store float %1, ptr %i.y, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Scl_LibertyDumpTables(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val52 = load i32, ptr %i.a, align 4, !tbaa !126
  tail call fastcc void @Vec_StrPutI_(ptr noundef %0, i32 noundef %.val52)
  %.val5157 = load i32, ptr %i.a, align 4, !tbaa !126
  %i.b = icmp sgt i32 %.val5157, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val55 = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  %i.e = load float, ptr %i.d, align 4, !tbaa !131
  tail call fastcc void @Vec_StrPutF_(ptr noundef %0, float noundef %i.e)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val51 = load i32, ptr %i.a, align 4, !tbaa !126
  %i.f = sext i32 %.val51 to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !134

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val50 = load i32, ptr %i.h, align 4, !tbaa !126
  tail call fastcc void @Vec_StrPutI_(ptr noundef %0, i32 noundef %.val50)
  %.val4959 = load i32, ptr %i.h, align 4, !tbaa !126
  %i.i = icmp sgt i32 %.val4959, 0
  br i1 %i.i, label %.lr.ph61, label %.critedge2.preheader

.lr.ph61:                                         ; preds = %.critedge
  %i.j = getelementptr i8, ptr %2, i64 8
  br label %bb.c

.critedge2.preheader:                             ; preds = %bb.c, %.critedge
  %i.k = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %.val4862 = load i32, ptr %i.k, align 4, !tbaa !126
  %i.l = icmp sgt i32 %.val4862, 0
  br i1 %i.l, label %.lr.ph64, label %.critedge4.preheader

.lr.ph64:                                         ; preds = %.critedge2.preheader
  %i.m = getelementptr i8, ptr %3, i64 8
  br label %.critedge2

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %indvars.iv69 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next70, %bb.c ] ; 2 uses
  %.val54 = load ptr, ptr %i.j, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv69
  %i.o = load float, ptr %i.n, align 4, !tbaa !131
  tail call fastcc void @Vec_StrPutF_(ptr noundef %0, float noundef %i.o)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %.val49 = load i32, ptr %i.h, align 4, !tbaa !126
  %i.p = sext i32 %.val49 to i64
end_hunk_0
begin_hunk_1_@Scl_LibertyReadTemplates:Scl_LibertyItem.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %.not238242 = icmp eq ptr %.val, null
  %.not238 = or i1 %i.h, %.not238242
  br i1 %.not238, label %._crit_edge241.thread, label %.lr.ph240

.lr.ph240:                                        ; preds = %Scl_LibertyItem.exit
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.g
  %i.j = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph240, %Scl_LibertyItem.exit185
  %.067239 = phi ptr [ %i.i, %.lr.ph240 ], [ %i.la, %Scl_LibertyItem.exit185 ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.067239, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.067239, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %.val90 = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = getelementptr inbounds i8, ptr %.val90, i64 %i.m ; 2 uses
  %i.q = sub nsw i64 %i.o, %i.m                   ; 4 uses
  %i.r = tail call i32 @strncmp(ptr noundef readonly %i.p, ptr noundef nonnull @.str.99, i64 noundef %i.q) #34
  %.not.i = icmp eq i32 %i.r, 0
  %.not214 = icmp eq i64 %i.q, 17
  %or.cond223 = and i1 %.not214, %.not.i
  br i1 %or.cond223, label %bb.b, label %Scl_LibertyCompare.exit.thread

Scl_LibertyCompare.exit.thread:                   ; preds = %bb.a
  %i.s = tail call i32 @strncmp(ptr noundef readonly %i.p, ptr noundef nonnull @.str.100, i64 noundef %i.q) #34
  %.not.i92 = icmp eq i32 %i.s, 0
  %.not215 = icmp eq i64 %i.q, 18
  %or.cond224 = and i1 %.not215, %.not.i92
  br i1 %or.cond224, label %bb.b, label %Vec_FltFreeP.exit152

bb.b:                                             ; preds = %Scl_LibertyCompare.exit.thread, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.067239, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %Vec_FltFreeP.exit152, label %Scl_LibertyItem.exit94

Scl_LibertyItem.exit94:                           ; preds = %bb.b
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not70229 = icmp eq ptr %i.w, null
  br i1 %.not70229, label %Vec_FltFreeP.exit152, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Scl_LibertyItem.exit94
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Scl_LibertyItem.exit148
  %.0234 = phi ptr [ %.1, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.064233 = phi ptr [ %.165, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 7 uses
  %.066232 = phi ptr [ %i.gz, %Scl_LibertyItem.exit148 ], [ %i.x, %.lr.ph.preheader ] ; 11 uses
  %.0197231 = phi ptr [ %.1198, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.0199230 = phi ptr [ %.1200, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.066232, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.066232, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %.val88 = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.ac = getelementptr inbounds i8, ptr %.val88, i64 %i.z ; 4 uses
  %i.ad = sub nsw i64 %i.ab, %i.z                 ; 6 uses
  %i.ae = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.87, i64 noundef %i.ad) #34
  %.not.i95 = icmp eq i32 %i.ae, 0
  %.not216 = icmp eq i64 %i.ad, 7                 ; 2 uses
  %or.cond225 = and i1 %.not216, %.not.i95
  br i1 %or.cond225, label %bb.c, label %Scl_LibertyCompare.exit96.thread

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = sub nsw i64 %i.ai, %i.ag                ; 5 uses
  %i.ak = add nsw i64 %i.aj, 2
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.am, align 4, !tbaa !39
  %i.an = sext i32 %.val.i to i64
  %i.ao = icmp sgt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.d, label %Vec_StrFill.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ap = trunc i64 %i.aj to i32
  %i.aq = add i32 %i.ap, 100                      ; 5 uses
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !41
  %.not.i.i.i = icmp slt i32 %i.ar, %i.aq
  br i1 %.not.i.i.i, label %bb.e, label %Vec_StrGrow.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.at, null
  %i.au = sext i32 %i.aq to i64                   ; 2 uses
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.au) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi ptr [ %i.av, %bb.f ], [ %i.aw, %bb.g ]
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !42
  store i32 %i.aq, ptr %i.al, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i

Vec_StrGrow.exit.i.i:                             ; preds = %bb.h, %bb.d
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !39
  %i.ay = icmp sgt i32 %i.aq, 0
  br i1 %i.ay, label %.lr.ph.i.i, label %Vec_StrFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_StrGrow.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i
  store i8 0, ptr %i.bb, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bc = load i32, ptr %i.am, align 4, !tbaa !39
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i.i, %i.bd
  br i1 %i.be, label %bb.i, label %Vec_StrFill.exit.i, !llvm.loop !43

Vec_StrFill.exit.i:                               ; preds = %bb.i, %Vec_StrGrow.exit.i.i, %bb.c
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val22.i = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 6 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ag
  %i.bj = tail call ptr @strncpy(ptr noundef %.val22.i, ptr noundef %i.bi, i64 noundef %i.aj) #33 ; 0 uses
  %i.bk = icmp slt i64 %i.ag, %i.ai
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %Vec_StrFill.exit.i
  %i.bl = load i8, ptr %.val22.i, align 1, !tbaa !20
  %i.bm = icmp eq i8 %i.bl, 34
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %.val22.i, i64 %i.aj
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  store i8 0, ptr %i.bo, align 1, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22.i, i64 1
  br label %Scl_LibertyReadString.exit

bb.l:                                             ; preds = %bb.j, %Vec_StrFill.exit.i
  %i.bq = getelementptr inbounds i8, ptr %.val22.i, i64 %i.aj
  store i8 0, ptr %i.bq, align 1, !tbaa !20
  br label %Scl_LibertyReadString.exit

Scl_LibertyReadString.exit:                       ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.bp, %bb.k ], [ %.val22.i, %bb.l ]
  %i.br = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !126
  store i32 100, ptr %i.br, align 8, !tbaa !129
  %i.bt = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !130
  %i.bv = tail call ptr @strtok(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not5.i = icmp eq ptr %i.bv, null
  br i1 %.not5.i, label %Scl_LibertyReadFloatVec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Scl_LibertyReadString.exit, %Vec_FltPush.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Vec_FltPush.exit.i ], [ 0, %Scl_LibertyReadString.exit ] ; 6 uses
  %storemerge11.i = phi ptr [ %storemerge12.i, %Vec_FltPush.exit.i ], [ %i.bt, %Scl_LibertyReadString.exit ] ; 6 uses
  %spec.select.sink.i9.i = phi i32 [ %spec.select.sink.i8.i, %Vec_FltPush.exit.i ], [ 100, %Scl_LibertyReadString.exit ] ; 4 uses
  %.06.i = phi ptr [ %i.ck, %Vec_FltPush.exit.i ], [ %i.bv, %Scl_LibertyReadString.exit ]
  %i.bw = tail call double @strtod(ptr noundef nonnull captures(none) %.06.i, ptr noundef null) #33, !inline_history !96
  %i.bx = fptrunc double %i.bw to float
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  %i.bz = icmp eq i32 %spec.select.sink.i9.i, %i.by
  br i1 %i.bz, label %bb.m, label %Vec_FltPush.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ca = icmp samesign ult i64 %indvars.iv.i, 16
  br i1 %i.ca, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i98 = icmp eq ptr %storemerge11.i, null
  br i1 %.not9.i.i.i98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge11.i, i64 noundef 64) #31
  br label %Vec_FltPush.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltPush.exit.i

bb.q:                                             ; preds = %bb.m
  %i.cd = icmp samesign ult i64 %indvars.iv.i, 1073741823
  %i.ce = shl i32 %spec.select.sink.i9.i, 1
  %spec.select.i.i = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 4 uses
  %1 = sext i32 %spec.select.i.i to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv.i, %1
  br i1 %.not.i10.i.i, label %bb.r, label %Vec_FltPush.exit.i

bb.r:                                             ; preds = %bb.q
  %.not9.i11.i.i = icmp eq ptr %storemerge11.i, null
  %i.cf = zext nneg i32 %spec.select.i.i to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %storemerge11.i, i64 noundef %i.cg) #31
  br label %Vec_FltPush.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.cg) #32
  br label %Vec_FltPush.exit.i

Vec_FltPush.exit.i:                               ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %.lr.ph.i
  %storemerge12.i = phi ptr [ %storemerge11.i, %.lr.ph.i ], [ %storemerge11.i, %bb.q ], [ %i.cc, %bb.p ], [ %i.cb, %bb.o ], [ %i.ch, %bb.s ], [ %i.ci, %bb.t ] ; 3 uses
  %spec.select.sink.i8.i = phi i32 [ %spec.select.sink.i9.i, %.lr.ph.i ], [ %spec.select.sink.i9.i, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i.i, %bb.s ], [ %spec.select.i.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %storemerge12.i, i64 %indvars.iv.i
  store float %i.bx, ptr %i.cj, align 4, !tbaa !131
  %i.ck = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not.i97 = icmp eq ptr %i.ck, null
  br i1 %.not.i97, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %Vec_FltPush.exit.i
  %i.cl = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.cl, ptr %i.bs, align 4, !tbaa !126
  store i32 %spec.select.sink.i8.i, ptr %i.br, align 8
  store ptr %storemerge12.i, ptr %i.bu, align 8
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit96.thread:                 ; preds = %.lr.ph
  %i.cm = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.88, i64 noundef %i.ad) #34
  %.not.i99 = icmp eq i32 %i.cm, 0
  %or.cond226 = and i1 %.not216, %.not.i99
  br i1 %or.cond226, label %bb.u, label %Scl_LibertyCompare.exit100.thread

bb.u:                                             ; preds = %Scl_LibertyCompare.exit96.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = sub nsw i64 %i.cq, %i.co                ; 5 uses
  %i.cs = add nsw i64 %i.cr, 2
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 4      ; 3 uses
  %.val.i101 = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.cv = sext i32 %.val.i101 to i64
  %i.cw = icmp sgt i64 %i.cs, %i.cv
  br i1 %i.cw, label %bb.v, label %Vec_StrFill.exit.i102

bb.v:                                             ; preds = %bb.u
  %i.cx = trunc i64 %i.cr to i32
  %i.cy = add i32 %i.cx, 100                      ; 5 uses
  %i.cz = load i32, ptr %i.ct, align 8, !tbaa !41
  %.not.i.i.i105 = icmp slt i32 %i.cz, %i.cy
  br i1 %.not.i.i.i105, label %bb.w, label %Vec_StrGrow.exit.i.i106

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i110 = icmp eq ptr %i.db, null
  %i.dc = sext i32 %i.cy to i64                   ; 2 uses
  br i1 %.not9.i.i.i110, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call ptr @realloc(ptr noundef nonnull %i.db, i64 noundef %i.dc) #31
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dc) #32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.df = phi ptr [ %i.dd, %bb.x ], [ %i.de, %bb.y ]
  store ptr %i.df, ptr %i.da, align 8, !tbaa !42
  store i32 %i.cy, ptr %i.ct, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i106

Vec_StrGrow.exit.i.i106:                          ; preds = %bb.z, %bb.v
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !39
  %i.dg = icmp sgt i32 %i.cy, 0
  br i1 %i.dg, label %.lr.ph.i.i107, label %Vec_StrFill.exit.i102

.lr.ph.i.i107:                                    ; preds = %Vec_StrGrow.exit.i.i106
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i107
  %indvars.iv.i.i108 = phi i64 [ 0, %.lr.ph.i.i107 ], [ %indvars.iv.next.i.i109, %bb.aa ] ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i.i108
  store i8 0, ptr %i.dj, align 1, !tbaa !20
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next.i.i109, %i.dl
  br i1 %i.dm, label %bb.aa, label %Vec_StrFill.exit.i102, !llvm.loop !43

Vec_StrFill.exit.i102:                            ; preds = %bb.aa, %Vec_StrGrow.exit.i.i106, %bb.u
  %i.dn = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %.val22.i103 = load ptr, ptr %i.do, align 8, !tbaa !42 ; 6 uses
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.co
  %i.dr = tail call ptr @strncpy(ptr noundef %.val22.i103, ptr noundef %i.dq, i64 noundef %i.cr) #33 ; 0 uses
  %i.ds = icmp slt i64 %i.co, %i.cq
  br i1 %i.ds, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %Vec_StrFill.exit.i102
  %i.dt = load i8, ptr %.val22.i103, align 1, !tbaa !20
  %i.du = icmp eq i8 %i.dt, 34
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr i8, ptr %.val22.i103, i64 %i.cr
  %i.dw = getelementptr i8, ptr %i.dv, i64 -1
  store i8 0, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.val22.i103, i64 1
  br label %Scl_LibertyReadString.exit111

bb.ad:                                            ; preds = %bb.ab, %Vec_StrFill.exit.i102
  %i.dy = getelementptr inbounds i8, ptr %.val22.i103, i64 %i.cr
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  br label %Scl_LibertyReadString.exit111

Scl_LibertyReadString.exit111:                    ; preds = %bb.ac, %bb.ad
  %.0.i104 = phi ptr [ %i.dx, %bb.ac ], [ %.val22.i103, %bb.ad ]
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  store i32 0, ptr %i.ea, align 4, !tbaa !126
  store i32 100, ptr %i.dz, align 8, !tbaa !129
  %i.eb = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !130
  %i.ed = tail call ptr @strtok(ptr noundef nonnull %.0.i104, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not5.i112 = icmp eq ptr %i.ed, null
  br i1 %.not5.i112, label %Scl_LibertyReadFloatVec.exit, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %Scl_LibertyReadString.exit111, %Vec_FltPush.exit.i118
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i121, %Vec_FltPush.exit.i118 ], [ 0, %Scl_LibertyReadString.exit111 ] ; 6 uses
  %storemerge11.i115 = phi ptr [ %storemerge12.i119, %Vec_FltPush.exit.i118 ], [ %i.eb, %Scl_LibertyReadString.exit111 ] ; 6 uses
  %spec.select.sink.i9.i116 = phi i32 [ %spec.select.sink.i8.i120, %Vec_FltPush.exit.i118 ], [ 100, %Scl_LibertyReadString.exit111 ] ; 4 uses
  %.06.i117 = phi ptr [ %i.es, %Vec_FltPush.exit.i118 ], [ %i.ed, %Scl_LibertyReadString.exit111 ]
  %i.ee = tail call double @strtod(ptr noundef nonnull captures(none) %.06.i117, ptr noundef null) #33, !inline_history !96
  %i.ef = fptrunc double %i.ee to float
  %i.eg = trunc nsw i64 %indvars.iv.i114 to i32
  %i.eh = icmp eq i32 %spec.select.sink.i9.i116, %i.eg
  br i1 %i.eh, label %bb.ae, label %Vec_FltPush.exit.i118

bb.ae:                                            ; preds = %.lr.ph.i113
  %i.ei = icmp samesign ult i64 %indvars.iv.i114, 16
  br i1 %i.ei, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i128 = icmp eq ptr %storemerge11.i115, null
  br i1 %.not9.i.i.i128, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge11.i115, i64 noundef 64) #31
  br label %Vec_FltPush.exit.i118

bb.ah:                                            ; preds = %bb.af
  %i.ek = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltPush.exit.i118

bb.ai:                                            ; preds = %bb.ae
  %i.el = icmp samesign ult i64 %indvars.iv.i114, 1073741823
  %i.em = shl i32 %spec.select.sink.i9.i116, 1
  %spec.select.i.i125 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %2 = sext i32 %spec.select.i.i125 to i64
  %.not.i10.i.i126 = icmp samesign ult i64 %indvars.iv.i114, %2
  br i1 %.not.i10.i.i126, label %bb.aj, label %Vec_FltPush.exit.i118

bb.aj:                                            ; preds = %bb.ai
  %.not9.i11.i.i127 = icmp eq ptr %storemerge11.i115, null
  %i.en = zext nneg i32 %spec.select.i.i125 to i64
  %i.eo = shl nuw nsw i64 %i.en, 2                ; 2 uses
  br i1 %.not9.i11.i.i127, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = tail call ptr @realloc(ptr noundef nonnull %storemerge11.i115, i64 noundef %i.eo) #31
  br label %Vec_FltPush.exit.i118

bb.al:                                            ; preds = %bb.aj
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.eo) #32
  br label %Vec_FltPush.exit.i118

Vec_FltPush.exit.i118:                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %.lr.ph.i113
  %storemerge12.i119 = phi ptr [ %storemerge11.i115, %.lr.ph.i113 ], [ %storemerge11.i115, %bb.ai ], [ %i.ek, %bb.ah ], [ %i.ej, %bb.ag ], [ %i.ep, %bb.ak ], [ %i.eq, %bb.al ] ; 3 uses
  %spec.select.sink.i8.i120 = phi i32 [ %spec.select.sink.i9.i116, %.lr.ph.i113 ], [ %spec.select.sink.i9.i116, %bb.ai ], [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i125, %bb.ak ], [ %spec.select.i.i125, %bb.al ] ; 2 uses
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %storemerge12.i119, i64 %indvars.iv.i114
  store float %i.ef, ptr %i.er, align 4, !tbaa !131
  %i.es = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not.i122 = icmp eq ptr %i.es, null
  br i1 %.not.i122, label %._crit_edge.i123, label %.lr.ph.i113, !llvm.loop !133

._crit_edge.i123:                                 ; preds = %Vec_FltPush.exit.i118
  %i.et = trunc nsw i64 %indvars.iv.next.i121 to i32
  store i32 %i.et, ptr %i.ea, align 4, !tbaa !126
  store i32 %spec.select.sink.i8.i120, ptr %i.dz, align 8
  store ptr %storemerge12.i119, ptr %i.ec, align 8
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit100.thread:                ; preds = %Scl_LibertyCompare.exit96.thread
  %i.eu = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.101, i64 noundef %i.ad) #34
  %.not.i130 = icmp eq i32 %i.eu, 0
  %.not218 = icmp eq i64 %i.ad, 10                ; 2 uses
  %or.cond227 = and i1 %.not218, %.not.i130
  br i1 %or.cond227, label %bb.am, label %Scl_LibertyCompare.exit131.thread

bb.am:                                            ; preds = %Scl_LibertyCompare.exit100.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.ew = load i64, ptr %i.ev, align 8            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ez = sub nsw i64 %i.ey, %i.ew                ; 5 uses
  %i.fa = add nsw i64 %i.ez, 2
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4      ; 3 uses
  %.val.i132 = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.fd = sext i32 %.val.i132 to i64
  %i.fe = icmp sgt i64 %i.fa, %i.fd
  br i1 %i.fe, label %bb.an, label %Vec_StrFill.exit.i133

bb.an:                                            ; preds = %bb.am
  %i.ff = trunc i64 %i.ez to i32
  %i.fg = add i32 %i.ff, 100                      ; 5 uses
  %i.fh = load i32, ptr %i.fb, align 8, !tbaa !41
  %.not.i.i.i136 = icmp slt i32 %i.fh, %i.fg
  br i1 %.not.i.i.i136, label %bb.ao, label %Vec_StrGrow.exit.i.i137

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i141 = icmp eq ptr %i.fj, null
  %i.fk = sext i32 %i.fg to i64                   ; 2 uses
  br i1 %.not9.i.i.i141, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef %i.fk) #31
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fk) #32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fn = phi ptr [ %i.fl, %bb.ap ], [ %i.fm, %bb.aq ]
  store ptr %i.fn, ptr %i.fi, align 8, !tbaa !42
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i137

Vec_StrGrow.exit.i.i137:                          ; preds = %bb.ar, %bb.an
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !39
  %i.fo = icmp sgt i32 %i.fg, 0
  br i1 %i.fo, label %.lr.ph.i.i138, label %Vec_StrFill.exit.i133

.lr.ph.i.i138:                                    ; preds = %Vec_StrGrow.exit.i.i137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ 0, %.lr.ph.i.i138 ], [ %indvars.iv.next.i.i140, %bb.as ] ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !42
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i.i139
  store i8 0, ptr %i.fr, align 1, !tbaa !20
  %indvars.iv.next.i.i140 = add nuw nsw i64 %indvars.iv.i.i139, 1 ; 2 uses
  %i.fs = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp slt i64 %indvars.iv.next.i.i140, %i.ft
  br i1 %i.fu, label %bb.as, label %Vec_StrFill.exit.i133, !llvm.loop !43

Vec_StrFill.exit.i133:                            ; preds = %bb.as, %Vec_StrGrow.exit.i.i137, %bb.am
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %.val22.i134 = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 6 uses
  %i.fx = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.ew
  %i.fz = tail call ptr @strncpy(ptr noundef %.val22.i134, ptr noundef %i.fy, i64 noundef %i.ez) #33 ; 0 uses
  %i.ga = icmp slt i64 %i.ew, %i.ey
  br i1 %i.ga, label %bb.at, label %bb.av

bb.at:                                            ; preds = %Vec_StrFill.exit.i133
  %i.gb = load i8, ptr %.val22.i134, align 1, !tbaa !20
  %i.gc = icmp eq i8 %i.gb, 34
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr i8, ptr %.val22.i134, i64 %i.ez
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  store i8 0, ptr %i.ge, align 1, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %.val22.i134, i64 1
  br label %Abc_UtilStrsav.exit

bb.av:                                            ; preds = %bb.at, %Vec_StrFill.exit.i133
  %i.gg = getelementptr inbounds i8, ptr %.val22.i134, i64 %i.ez
  store i8 0, ptr %i.gg, align 1, !tbaa !20
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.au, %bb.av
  %.0.i135 = phi ptr [ %i.gf, %bb.au ], [ %.val22.i134, %bb.av ] ; 2 uses
  %i.gh = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i135) #34
  %i.gi = add i64 %i.gh, 1
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gi) #32 ; 2 uses
  %i.gk = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gj, ptr noundef nonnull readonly dereferenceable(1) %.0.i135) #33 ; 0 uses
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit131.thread:                ; preds = %Scl_LibertyCompare.exit100.thread
  %i.gl = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.102, i64 noundef %i.ad) #34
  %.not.i144 = icmp eq i32 %i.gl, 0
  %or.cond228 = and i1 %.not218, %.not.i144
  br i1 %or.cond228, label %bb.aw, label %Scl_LibertyReadFloatVec.exit

bb.aw:                                            ; preds = %Scl_LibertyCompare.exit131.thread
  %i.gm = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = tail call ptr @Scl_LibertyReadString(ptr noundef nonnull %0, i64 %i.gn, i64 %i.gp) ; 3 uses
  %.not.i146 = icmp eq ptr %i.gq, null
  br i1 %.not.i146, label %Scl_LibertyReadFloatVec.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gq) #34
  %i.gs = add i64 %i.gr, 1
  %i.gt = tail call noalias ptr @malloc(i64 noundef %i.gs) #32 ; 2 uses
  %i.gu = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull readonly dereferenceable(1) %i.gq) #33 ; 0 uses
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyReadFloatVec.exit:                     ; preds = %Scl_LibertyCompare.exit131.thread, %bb.ax, %bb.aw, %._crit_edge.i123, %Scl_LibertyReadString.exit111, %._crit_edge.i, %Scl_LibertyReadString.exit, %Abc_UtilStrsav.exit
  %.1200 = phi ptr [ %.0199230, %Scl_LibertyCompare.exit131.thread ], [ %i.br, %._crit_edge.i ], [ %.0199230, %Abc_UtilStrsav.exit ], [ %.0199230, %bb.ax ], [ %i.br, %Scl_LibertyReadString.exit ], [ %.0199230, %Scl_LibertyReadString.exit111 ], [ %.0199230, %._crit_edge.i123 ], [ %.0199230, %bb.aw ] ; 9 uses
  %.1198 = phi ptr [ %.0197231, %Scl_LibertyCompare.exit131.thread ], [ %.0197231, %._crit_edge.i ], [ %.0197231, %Abc_UtilStrsav.exit ], [ %.0197231, %bb.ax ], [ %.0197231, %Scl_LibertyReadString.exit ], [ %i.dz, %Scl_LibertyReadString.exit111 ], [ %i.dz, %._crit_edge.i123 ], [ %.0197231, %bb.aw ] ; 9 uses
  %.165 = phi ptr [ %.064233, %Scl_LibertyCompare.exit131.thread ], [ %.064233, %._crit_edge.i ], [ %i.gj, %Abc_UtilStrsav.exit ], [ %.064233, %bb.ax ], [ %.064233, %Scl_LibertyReadString.exit ], [ %.064233, %Scl_LibertyReadString.exit111 ], [ %.064233, %._crit_edge.i123 ], [ %.064233, %bb.aw ] ; 8 uses
  %.1 = phi ptr [ %.0234, %Scl_LibertyCompare.exit131.thread ], [ %.0234, %._crit_edge.i ], [ %.0234, %Abc_UtilStrsav.exit ], [ %i.gt, %bb.ax ], [ %.0234, %Scl_LibertyReadString.exit ], [ %.0234, %Scl_LibertyReadString.exit111 ], [ %.0234, %._crit_edge.i123 ], [ null, %bb.aw ] ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.066232, i64 64
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !24 ; 2 uses
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %._crit_edge, label %Scl_LibertyItem.exit148

Scl_LibertyItem.exit148:                          ; preds = %Scl_LibertyReadFloatVec.exit
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.gz = getelementptr inbounds nuw [80 x i8], ptr %i.gy, i64 %i.gw
  %.not70 = icmp eq ptr %i.gy, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph, !llvm.loop !180

._crit_edge:                                      ; preds = %Scl_LibertyReadFloatVec.exit, %Scl_LibertyItem.exit148
  %i.ha = icmp eq ptr %.165, null
  br i1 %i.ha, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %._crit_edge
  %.not80 = icmp eq ptr %.1, null
  br i1 %.not80, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %.1) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.hb = icmp eq ptr %.1200, null
  br i1 %i.hb, label %Vec_FltFreeP.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %.1200, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !130 ; 2 uses
  %.not.i149 = icmp eq ptr %i.hd, null
  br i1 %.not.i149, label %bb.bc, label %.thread.i

.thread.i:                                        ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hd) #33
end_hunk_1
