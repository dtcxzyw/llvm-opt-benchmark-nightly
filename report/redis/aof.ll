inline.NumInlined: 96
inline.NumDeleted: 8
begin_hunk_0_@loadAppendOnlyFiles:bb.a
.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %i.bl = phi ptr [ %i.bk, %bb.ad ], [ %i.bj, %bb.ac ]
  %.189137 = phi i32 [ %i.bs, %bb.ad ], [ %.088, %bb.ac ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !20
  %i.bq = icmp eq i32 %i.bp, 105
  br i1 %i.bq, label %bb.af, label %bb.ae, !prof !80

bb.ae:                                            ; preds = %.lr.ph
  call void @_serverAssert(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 1856) #17
  call void @abort() #18
  unreachable

bb.af:                                            ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !14 ; 3 uses
  call void @updateLoadingFileName(ptr noundef %i.br) #17
  %i.bs = add nuw nsw i32 %.189137, 1             ; 2 uses
  %i.bt = icmp eq i32 %i.bs, %.1.i                ; 2 uses
  %i.bu = call i64 @ustime() #17
  %i.bv = call i32 @loadSingleAppendOnlyFile(ptr noundef %i.br) ; 5 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = add nsw i32 %i.bv, -5
  %or.cond11 = icmp ult i32 %i.bx, 2
  %or.cond13 = select i1 %or.cond11, i1 %i.bt, i1 false
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.bz = icmp slt i32 %i.by, 3
  %or.cond24.not = select i1 %or.cond13, i1 %i.bz, i1 false
  br i1 %or.cond24.not, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.old22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !73
  %.old23 = icmp sgt i32 %.old22, 2
  br i1 %.old23, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ca = call i64 @ustime() #17
  %i.cb = sub nsw i64 %i.ca, %i.bu
  %i.cc = sitofp i64 %i.cb to float
  %i.cd = fdiv float %i.cc, 1.000000e+06
  %i.ce = fpext float %i.cd to double
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.117, ptr noundef %i.br, double noundef %i.ce) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cf = icmp eq i32 %i.bv, 2
  %spec.store.select = select i1 %i.cf, i32 0, i32 %i.bv ; 3 uses
  %or.cond15 = icmp samesign ult i32 %spec.store.select, 5
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.bt
  br i1 %or.cond17, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !73
  %i.ch = icmp sgt i32 %i.cg, 3
  br i1 %i.ch, label %.thread129, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.116) #17
  br label %.thread129

.thread129:                                       ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.thread115

bb.am:                                            ; preds = %bb.aj
  %i.ci = add nsw i32 %spec.store.select, -5
  %or.cond19 = icmp ult i32 %i.ci, -2
  br i1 %or.cond19, label %bb.ad, label %bb.an, !llvm.loop !173

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.thread115

bb.ao:                                            ; preds = %.thread126, %.thread118
  %.5 = phi i32 [ %.2.lcssa, %.thread126 ], [ %.1, %.thread118 ]
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6720), align 8, !tbaa !174
  store i64 %.090, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6712), align 8, !tbaa !175
  br label %.thread115

.thread115:                                       ; preds = %bb.an, %bb.aa, %bb.z, %.thread129, %bb.ab, %bb.ao
  %.6 = phi i32 [ %i.at, %bb.ab ], [ %.5, %bb.ao ], [ %i.bv, %bb.an ], [ 4, %.thread129 ], [ 4, %bb.z ], [ 4, %bb.aa ] ; 3 uses
  %i.cj = icmp eq i32 %.6, 0
  %i.ck = icmp eq i32 %.6, 5
  %i.cl = or i1 %i.cj, %i.ck
  %i.cm = zext i1 %i.cl to i32
  call void @stopLoading(i32 noundef %i.cm) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.p, %bb.o, %bb.q, %bb.k, %.thread115
  %.0 = phi i32 [ 2, %bb.q ], [ %.6, %.thread115 ], [ 1, %bb.k ], [ %i.aj, %bb.o ], [ 4, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @getBaseAndIncrAppendOnlyFilesNum(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not = icmp ne ptr %i.a, null
  %spec.select = zext i1 %.not to i32             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @getBaseAndIncrAppendOnlyFilesSize(ptr noundef readonly captures(none) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq i32 %i.c, 98
  br i1 %i.d, label %bb.d, label %bb.c, !prof !80

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 2735) #17
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.f = tail call i64 @getAppendOnlyFileSize(ptr noundef %i.e, ptr noundef %1)
  %i.g = load i32, ptr %1, align 4, !tbaa !9
  %.not20 = icmp eq i32 %i.g, 0
  br i1 %.not20, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.a
  %.016 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @listRewind(ptr noundef %i.i, ptr noundef nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.117 = phi i64 [ %.016, %bb.e ], [ %i.r, %bb.i ] ; 2 uses
  %i.j = call ptr @listNext(ptr noundef nonnull %2) #17 ; 2 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq i32 %i.n, 105
  br i1 %i.o, label %bb.i, label %bb.h, !prof !80

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 2744) #17
  call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.q = call i64 @getAppendOnlyFileSize(ptr noundef %i.p, ptr noundef %1)
  %i.r = add nsw i64 %i.q, %.117
  %i.s = load i32, ptr %1, align 4, !tbaa !9
  %.not22 = icmp eq i32 %i.s, 0
  br i1 %.not22, label %bb.f, label %.loopexit, !llvm.loop !176

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.d
  %.2 = phi i64 [ 0, %bb.d ], [ %.117, %bb.f ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %.2
}

declare void @startLoading(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @updateLoadingFileName(ptr noundef) local_unnamed_addr #3

declare i64 @ustime() local_unnamed_addr #3

declare void @stopLoading(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %2 = trunc i64 %i.a to i8
  %trunc = and i8 %2, -16
  switch i8 %trunc, label %bb.i [
    i8 16, label %bb.b
    i8 0, label %bb.c
    i8 -128, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = tail call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.d) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !22 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !23
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !25
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.v, %bb.h ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.g ], [ 0, %bb.c ]
  %i.w = tail call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %.0.i) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1914, ptr noundef nonnull @.str.118) #17
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %sdslen.exit, %bb.b
  %.0.in = phi i64 [ %i.e, %bb.b ], [ %i.w, %sdslen.exit ]
  %.0 = trunc i64 %.0.in to i32
  ret i32 %.0
}

declare i64 @rioWriteBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rioWriteBulkString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteListObject(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.listTypeIterator, align 8   ; 8 uses
  %4 = alloca %struct.listTypeEntry, align 8      ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call i64 @listTypeLength(ptr noundef %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @listTypeInitIterator(ptr noundef nonnull %3, ptr noundef %2, i64 noundef 0, i8 noundef zeroext 1) #17
  %i.d = call i32 @listTypeNext(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.02136 = phi i64 [ %spec.store.select, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.02335 = phi i64 [ %i.s, %bb.h ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = icmp eq i64 %.02136, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = call i64 @llvm.smin.i64(i64 %.02335, i64 64)
  %i.g = shl i64 %i.f, 32
  %sext = add i64 %i.g, 8589934592
  %i.h = ashr exact i64 %sext, 32
  %i.i = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.h) #17
  %.not26 = icmp eq i64 %i.i, 0
  br i1 %.not26, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.119, i64 noundef 5) #17
  %.not27 = icmp eq i64 %i.j, 0
  br i1 %.not27, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  call void @listTypeResetIterator(ptr noundef nonnull %3) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.l = call ptr @listTypeGetValue(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17 ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8, !tbaa !25
  %i.n = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %i.m) #17
  %.not31 = icmp eq i64 %i.n, 0
  br i1 %.not31, label %.critedge33, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.b, align 8, !tbaa !21
  %i.p = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.o) #17
  %.not30 = icmp eq i64 %i.p, 0
  br i1 %.not30, label %.critedge33, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = add nsw i64 %.02136, 1                   ; 2 uses
  %i.r = icmp eq i64 %i.q, 64
  %spec.store.select = select i1 %i.r, i64 0, i64 %i.q
  %i.s = add nsw i64 %.02335, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.t = call i32 @listTypeNext(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @listTypeResetIterator(ptr noundef nonnull %3) #17
  br label %bb.i

.critedge33:                                      ; preds = %bb.g, %bb.f
  call void @listTypeResetIterator(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.i:                                             ; preds = %.critedge33, %.critedge, %._crit_edge
  %.4 = phi i32 [ 0, %.critedge33 ], [ 0, %.critedge ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.4
}

declare i64 @listTypeLength(ptr noundef) local_unnamed_addr #3

declare void @listTypeInitIterator(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @listTypeNext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rioWriteBulkCount(ptr noundef, i8 noundef signext, i64 noundef) local_unnamed_addr #3

declare void @listTypeResetIterator(ptr noundef) local_unnamed_addr #3

declare ptr @listTypeGetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteSetObject(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.setTypeIterator, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = tail call i64 @setTypeSize(ptr noundef %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @setTypeInitIterator(ptr noundef nonnull %3, ptr noundef %2) #17
  %i.e = call i32 @setTypeNext(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17
  %.not32 = icmp eq i32 %i.e, -1
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.02034 = phi i64 [ %spec.store.select, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %.02233 = phi i64 [ %i.u, %bb.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.02034, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.g = call i64 @llvm.smin.i64(i64 %.02233, i64 64)
  %i.h = shl i64 %i.g, 32
  %sext = add i64 %i.h, 8589934592
  %i.i = ashr exact i64 %sext, 32
  %i.j = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.i) #17
  %.not25 = icmp eq i64 %i.j, 0
  br i1 %.not25, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.120, i64 noundef 4) #17
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.b, align 8, !tbaa !25
  %i.o = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.c, align 8, !tbaa !25
  %i.q = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.p) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i64 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %.not29.not = icmp eq i64 %i.r, 0
  br i1 %.not29.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i64 %.02034, 1                   ; 2 uses
  %i.t = icmp eq i64 %i.s, 64
  %spec.store.select = select i1 %i.t, i64 0, i64 %i.s
  %i.u = add nsw i64 %.02233, -1
  %i.v = call i32 @setTypeNext(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !178

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.b, %bb.c, %bb.d, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.i ]
  call void @setTypeResetIterator(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.4
}

declare i64 @setTypeSize(ptr noundef) local_unnamed_addr #3

declare void @setTypeInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @setTypeNext(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @setTypeResetIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteSortedSetObject(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.dictIterator, align 8       ; 8 uses
  %i.e = tail call i64 @zsetLength(ptr noundef %2) #17 ; 2 uses
  %i.f = load i64, ptr %2, align 8
  %4 = trunc i64 %i.f to i8
  %trunc = and i8 %4, -16
  switch i8 %trunc, label %bb.z [
    i8 -80, label %bb.b
    i8 112, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.i = tail call ptr @lpSeek(ptr noundef %i.h, i64 noundef 0) #17 ; 4 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !74
  %.not74 = icmp eq ptr %i.i, null
  br i1 %.not74, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef 2009) #17
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @lpNext(ptr noundef %i.h, ptr noundef nonnull %i.i) #17 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !74
  %.not75 = icmp eq ptr %i.j, null
  br i1 %.not75, label %bb.e, label %.lr.ph96, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef 2011) #17
  tail call void @abort() #18
  unreachable

.lr.ph96:                                         ; preds = %bb.d, %bb.l
  %i.k = phi ptr [ %i.ag, %bb.l ], [ %i.i, %bb.d ]
  %.05395 = phi i64 [ %spec.store.select, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.05694 = phi i64 [ %i.af, %bb.l ], [ %i.e, %bb.d ] ; 2 uses
  %i.l = call ptr @lpGetValue(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #17 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.n = call double @zzlGetScore(ptr noundef %i.m) #17
  %i.o = icmp eq i64 %.05395, 0
  br i1 %i.o, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph96
  %i.p = call i64 @llvm.smin.i64(i64 %.05694, i64 64)
  %i.q = trunc i64 %i.p to i32
  %i.r = shl nsw i32 %i.q, 1
  %i.s = add nsw i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.t) #17
  %.not77 = icmp eq i64 %i.u, 0
  br i1 %.not77, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.123, i64 noundef 4) #17
  %.not78 = icmp eq i64 %i.v, 0
  br i1 %.not78, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not79 = icmp eq i32 %i.w, 0
  br i1 %.not79, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph96
  %i.x = call i64 @rioWriteBulkDouble(ptr noundef %0, double noundef %i.n) #17
  %.not80 = icmp eq i64 %i.x, 0
  br i1 %.not80, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.critedge
  %.not81 = icmp eq ptr %i.l, null
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %i.c, align 4, !tbaa !9
  %i.z = zext i32 %i.y to i64
  %i.aa = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %i.z) #17
  %.not83 = icmp eq i64 %i.aa, 0
  br i1 %.not83, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ac = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.ab) #17
  %.not82 = icmp eq i64 %i.ac, 0
  br i1 %.not82, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @zzlNext(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.ad = add nsw i64 %.05395, 1                  ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 64
  %spec.store.select = select i1 %i.ae, i64 0, i64 %i.ad
  %i.af = add nsw i64 %.05694, -1
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %.not76 = icmp eq ptr %i.ag, null
  br i1 %.not76, label %.critedge85, label %.lr.ph96, !llvm.loop !179

bb.m:                                             ; preds = %bb.k, %bb.j, %.critedge, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.n:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !180
  call void @dictInitIterator(ptr noundef nonnull %3, ptr noundef %i.aj) #17
  %i.ak = call ptr @dictNext(ptr noundef nonnull %3) #17 ; 2 uses
  %.not90 = icmp eq ptr %i.ak, null
  br i1 %.not90, label %.critedge89, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.y
  %i.al = phi ptr [ %i.bs, %bb.y ], [ %i.ak, %bb.n ]
  %.15492 = phi i64 [ %spec.store.select5, %bb.y ], [ 0, %bb.n ] ; 2 uses
  %.15791 = phi i64 [ %i.br, %bb.y ], [ %i.e, %bb.n ] ; 2 uses
  %i.am = call ptr @dictGetKey(ptr noundef nonnull %i.al) #17 ; 2 uses
  %i.an = call ptr @zslGetNodeElement(ptr noundef %i.am) #17 ; 6 uses
  %i.ao = load double, ptr %i.am, align 8, !tbaa !183
  %i.ap = icmp eq i64 %.15492, 0
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph
  %i.aq = call i64 @llvm.smin.i64(i64 %.15791, i64 64)
  %i.ar = trunc i64 %i.aq to i32
  %i.as = shl nsw i32 %i.ar, 1
  %i.at = add nsw i32 %i.as, 2
  %i.au = sext i32 %i.at to i64
  %i.av = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.au) #17
  %.not69 = icmp eq i64 %i.av, 0
  br i1 %.not69, label %.critedge89.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.123, i64 noundef 4) #17
  %.not70 = icmp eq i64 %i.aw, 0
  br i1 %.not70, label %.critedge89.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not71 = icmp eq i32 %i.ax, 0
  br i1 %.not71, label %.critedge89.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %i.ay = call i64 @rioWriteBulkDouble(ptr noundef %0, double noundef %i.ao) #17
  %.not72 = icmp eq i64 %i.ay, 0
  br i1 %.not72, label %.critedge89.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr i8, ptr %i.an, i64 -1
  %.val.i = load i8, ptr %i.az, align 1, !tbaa !22 ; 2 uses
  %i.ba = and i8 %.val.i, 7
  switch i8 %i.ba, label %sdslen.exit [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = lshr i8 %.val.i, 3
  %i.bc = zext nneg i8 %i.bb to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds i8, ptr %i.an, i64 -3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !22
  %i.bf = zext i8 %i.be to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds i8, ptr %i.an, i64 -5
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !23
  %i.bi = zext i16 %i.bh to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 -9
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !9
  %i.bl = zext i32 %i.bk to i64
  br label %sdslen.exit

bb.x:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds i8, ptr %i.an, i64 -17
  %i.bn = load i64, ptr %i.bm, align 1, !tbaa !25
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %i.bn, %bb.x ], [ %i.bc, %bb.t ], [ %i.bf, %bb.u ], [ %i.bi, %bb.v ], [ %i.bl, %bb.w ], [ 0, %bb.s ]
  %i.bo = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.an, i64 noundef %.0.i) #17
  %.not73 = icmp eq i64 %i.bo, 0
  br i1 %.not73, label %.critedge89.thread, label %bb.y

bb.y:                                             ; preds = %sdslen.exit
  %i.bp = add nsw i64 %.15492, 1                  ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 64
  %spec.store.select5 = select i1 %i.bq, i64 0, i64 %i.bp
  %i.br = add nsw i64 %.15791, -1
  %i.bs = call ptr @dictNext(ptr noundef nonnull %3) #17 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %.critedge89, label %.lr.ph, !llvm.loop !184

.critedge89.thread:                               ; preds = %bb.r, %sdslen.exit, %bb.o, %bb.p, %bb.q
end_hunk_0
