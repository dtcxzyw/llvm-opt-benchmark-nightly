Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_string?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@incrDecrCommand:bb.a
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.v = add nsw i64 %i.m, %1                     ; 4 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !14
  %.not45 = icmp eq ptr %i.j, null
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.j, align 8
  %i.x = and i64 %i.w, 2147483632
  %or.cond51 = icmp eq i64 %i.x, 272
  br i1 %or.cond51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.j, ptr %i.b, align 8, !tbaa !40
  %i.y = inttoptr i64 %i.v to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !46
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = call i32 @getKeySlot(ptr noundef %i.af) #10
  %i.ah = call i32 @sdigits10(i64 noundef %i.m) #10
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ak = call i32 @sdigits10(i64 noundef %i.aj) #10
  %i.al = zext i32 %i.ak to i64
  call void @updateKeysizesHist(ptr noundef %i.aa, i32 noundef %i.ag, i32 noundef 0, i64 noundef %i.ai, i64 noundef %i.al) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.am = call ptr @createStringObjectFromLongLongForValue(i64 noundef %i.v) #10
  store ptr %i.am, ptr %i.b, align 8, !tbaa !40
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @dbReplaceValueWithLink(ptr noundef %i.an, ptr noundef %i.aq, ptr noundef nonnull %i.b, ptr noundef %i.ar) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.as = call ptr @createStringObjectFromLongLongForValue(i64 noundef %i.v) #10
  store ptr %i.as, ptr %i.b, align 8, !tbaa !40
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = call ptr @dbAddByLink(ptr noundef %i.at, ptr noundef %i.aw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @addReplyLongLongFromStr(ptr noundef nonnull %0, ptr noundef %i.ay) #10
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.az, ptr noundef %i.bc, ptr noundef %i.bd, i32 noundef 1) #10
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.17, ptr noundef %i.bg, i32 noundef %i.bj) #10
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !69
  %i.bl = add nsw i64 %i.bk, 1
  store i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @sdigits10(i64 noundef) local_unnamed_addr #2

declare ptr @createStringObjectFromLongLongForValue(i64 noundef) local_unnamed_addr #2

declare void @dbReplaceValueWithLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLongFromStr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @incrCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @incrDecrCommand(ptr noundef %0, i64 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @decrCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @incrDecrCommand(ptr noundef %0, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @incrbyCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  call void @incrDecrCommand(ptr noundef nonnull %0, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @decrbyCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i64 0, %i.g
  call void @incrDecrCommand(ptr noundef nonnull %0, i64 noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @incrbyfloatCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = call ptr @lookupKeyWriteWithLink(ptr noundef %i.f, ptr noundef %i.j, ptr noundef nonnull %i.c) #10 ; 3 uses
  %i.l = call i32 @checkType(ptr noundef %0, ptr noundef %i.k, i32 noundef 0) #10
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @getLongDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef nonnull %i.b, ptr noundef null) #10
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = call i32 @getLongDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null) #10
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = load x86_fp80, ptr %i.a, align 16, !tbaa !116
  %i.s = load x86_fp80, ptr %i.b, align 16, !tbaa !116
  %i.t = fadd x86_fp80 %i.r, %i.s                 ; 3 uses
  store x86_fp80 %i.t, ptr %i.b, align 16, !tbaa !116
  %i.u = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.t) #14
  %or.cond = fcmp ueq x86_fp80 %i.u, +inf
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.v = call ptr @createStringObjectFromLongDouble(x86_fp80 noundef %i.t, i32 noundef 1) #10
  store ptr %i.v, ptr %i.d, align 8, !tbaa !40
  %.not25 = icmp eq ptr %i.k, null
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 2 uses
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @dbReplaceValueWithLink(ptr noundef %i.w, ptr noundef %i.z, ptr noundef nonnull %i.d, ptr noundef %i.aa) #10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = call ptr @dbAddByLink(ptr noundef %i.w, ptr noundef %i.z, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !40
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef %i.af, ptr noundef %i.ag, i32 noundef 1) #10
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.20, ptr noundef %i.aj, i32 noundef %i.am) #10
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !69
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !69
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !40
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.ap) #10
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 584), align 8, !tbaa !76
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.aq) #10
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !40
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.ar) #10
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 720), align 8, !tbaa !117
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.as) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @getLongDoubleFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #8

declare ptr @createStringObjectFromLongDouble(x86_fp80 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @appendCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = call ptr @lookupKeyWriteWithLink(ptr noundef %i.c, ptr noundef %i.g, ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = call ptr @tryObjectEncoding(ptr noundef %i.l) #10
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !40
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = call ptr @dbAddByLink(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #10
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  call void @incrRefCount(ptr noundef %i.v) #10
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.z = call i64 @stringObjectLen(ptr noundef %i.y) #10
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.aa = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef 0) #10
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %.val.i = load i8, ptr %i.ag, align 1, !tbaa !77 ; 2 uses
  %i.ah = and i8 %.val.i, 7
  switch i8 %i.ah, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr i8 %.val.i, 3
  %i.aj = zext nneg i8 %i.ai to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !77
  %i.am = zext i8 %i.al to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !80
  %i.ap = zext i16 %i.ao to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !12
  %i.as = zext i32 %i.ar to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.au = load i64, ptr %i.at, align 1, !tbaa !81
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.au, %bb.i ], [ %i.aj, %bb.e ], [ %i.am, %bb.f ], [ %i.ap, %bb.g ], [ %i.as, %bb.h ], [ 0, %bb.d ] ; 4 uses
  %i.av = call i64 @stringObjectLen(ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.aw = call i32 @mustObeyClient(ptr noundef nonnull %0) #10
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %sdslen.exit
  %i.ax = add i64 %i.av, %.0.i                    ; 3 uses
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7792), align 8, !tbaa !91
  %i.az = icmp sgt i64 %i.ax, %i.ay
  %i.ba = icmp slt i64 %i.ax, %i.av
  %or.cond.i = or i1 %i.ba, %i.az
  %i.bb = icmp slt i64 %i.ax, %.0.i
  %or.cond10.i = or i1 %i.bb, %or.cond.i
  br i1 %or.cond10.i, label %checkStringLength.exit, label %bb.k

checkStringLength.exit:                           ; preds = %bb.j
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #10
  br label %.critedge

bb.k:                                             ; preds = %sdslen.exit, %bb.j
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bh = call ptr @dbUnshareStringValueByLink(ptr noundef %i.bc, ptr noundef %i.bf, ptr noundef nonnull %i.h, ptr noundef %i.bg) #10 ; 5 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !92
  %.not51 = icmp eq i32 %i.bi, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = call i64 @kvobjAllocSize(ptr noundef %i.bh) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.046 = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.bn = call ptr @sdscatlen(ptr noundef %i.bl, ptr noundef %i.bm, i64 noundef %.0.i) #10 ; 2 uses
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !46
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !92
end_hunk_0
begin_hunk_1_@lcsCommand:bb.a
  %.2213321 = phi i32 [ %.2213.ph, %.thread302 ], [ %.0211364, %.thread420 ] ; 4 uses
  %.2216319 = phi i32 [ %.2216.ph, %.thread302 ], [ %.0214363, %.thread420 ] ; 4 uses
  %.2219317 = phi i32 [ %.2219.ph, %.thread302 ], [ %.0217362, %.thread420 ] ; 4 uses
  %.2222316 = phi i32 [ %.2222.ph, %.thread302 ], [ %.0220361, %.thread420 ]
  %.1228314 = phi i32 [ %.1228.ph, %.thread302 ], [ %i.fo, %.thread420 ] ; 3 uses
  %.5312 = phi i32 [ %.5.ph, %.thread302 ], [ %i.fj, %.thread420 ] ; 3 uses
  %i.gm = add i32 %.in, 1                         ; 2 uses
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = zext i32 %i.gm to i64
  %i.gq = icmp sle i64 %i.gn, %i.gp
  %or.cond11 = select i1 %i.gq, i1 %i.fc, i1 false
  br i1 %or.cond11, label %bb.bc, label %.thread325

bb.bb:                                            ; preds = %bb.az
  br i1 %i.fc, label %bb.bc, label %.thread325

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.fe) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gr = zext i32 %.2222316 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gr) #10
  %i.gs = zext i32 %.2219317 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gs) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gt = zext i32 %.2216319 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gt) #10
  %i.gu = zext i32 %.2213321 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gu) #10
  br i1 %.not264, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = zext i32 %i.gm to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gv) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gw = add i32 %.0205366, 1
  br label %.thread325

.thread325:                                       ; preds = %bb.ax, %bb.ay, %bb.ba, %bb.be, %bb.bb
  %.2210324 = phi i32 [ %.1209, %bb.ay ], [ %.2210323, %bb.bb ], [ %.2210323, %bb.be ], [ %.2210323, %bb.ba ], [ %i.ff, %bb.ax ] ; 2 uses
  %.2213322 = phi i32 [ %.0211364, %bb.ay ], [ %.2213321, %bb.bb ], [ %.2213321, %bb.be ], [ %.2213321, %bb.ba ], [ %.1212, %bb.ax ]
  %.2216320 = phi i32 [ %.0214363, %bb.ay ], [ %.2216319, %bb.bb ], [ %.2216319, %bb.be ], [ %.2216319, %bb.ba ], [ %.1215, %bb.ax ]
  %.2219318 = phi i32 [ %.0217362, %bb.ay ], [ %.2219317, %bb.bb ], [ %.2219317, %bb.be ], [ %.2219317, %bb.ba ], [ %.1218, %bb.ax ]
  %.1228315 = phi i32 [ %.0227360, %bb.ay ], [ %.1228314, %bb.bb ], [ %.1228314, %bb.be ], [ %.1228314, %bb.ba ], [ %i.fo, %bb.ax ]
  %.5313 = phi i32 [ %.4, %bb.ay ], [ %.5312, %bb.bb ], [ %.5312, %bb.be ], [ %.5312, %bb.ba ], [ %i.fj, %bb.ax ] ; 2 uses
  %.3223 = phi i32 [ %i.cg, %bb.ay ], [ %i.cg, %bb.bb ], [ %i.cg, %bb.be ], [ %i.cg, %bb.ba ], [ %i.ff, %bb.ax ]
  %.2207 = phi i32 [ %.0205366, %bb.ay ], [ %.0205366, %bb.bb ], [ %i.gw, %bb.be ], [ %.0205366, %bb.ba ], [ %.0205366, %bb.ax ] ; 2 uses
  %i.gx = icmp ne i32 %.2210324, 0
  %i.gy = icmp ne i32 %.5313, 0
  %i.gz = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %i.gz, label %bb.at, label %._crit_edge368.loopexit, !llvm.loop !121

._crit_edge368.loopexit:                          ; preds = %.thread325
  %i.ha = zext i32 %.2207 to i64
  br label %._crit_edge368

._crit_edge368:                                   ; preds = %._crit_edge368.loopexit, %.thread297
  %.0205.lcssa = phi i64 [ 0, %.thread297 ], [ %i.ha, %._crit_edge368.loopexit ]
  %.not261 = icmp eq ptr %.0224, null
  br i1 %.not261, label %._crit_edge368.thread, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge368
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %i.hb = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hb) #10
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef nonnull %.0224, i64 noundef %.0205.lcssa) #10
  br label %bb.bi

._crit_edge368.thread:                            ; preds = %bb.an, %._crit_edge368
  %.0225299407430 = phi ptr [ %i.ex, %._crit_edge368 ], [ null, %bb.an ] ; 2 uses
  br i1 %.0236.lcssa403, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge368.thread
  %i.hc = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hc) #10
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge368.thread
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %.0225299407430) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.1226 = phi ptr [ %i.ex, %bb.bf ], [ %.0225299407430, %bb.bg ], [ null, %bb.bh ]
  call void @sdsfree(ptr noundef %.1226) #10
  call void @zfree(ptr noundef nonnull %i.df) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.r, %bb.bi, %.thread294, %bb.ak, %bb.y, %bb.t
  %.not270 = icmp eq ptr %i.t, null
  br i1 %.not270, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  call void @decrRefCount(ptr noundef nonnull %i.t) #10
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.loopexit
  %.not271 = icmp eq ptr %i.w, null
  br i1 %.not271, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @decrRefCount(ptr noundef nonnull %i.w) #10
  br label %bb.bm

bb.bm:                                            ; preds = %.thread340, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @ztrymalloc(i64 noundef) local_unnamed_addr #4

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zfree(ptr noundef) local_unnamed_addr #2

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH3_64bits(ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @sdsempty() local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @digestCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) #10 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0) #10
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @stringDigest(ptr noundef nonnull %i.j)
  tail call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @addReplyErrorExpireTime(ptr noundef) local_unnamed_addr #2

declare i64 @commandTimeSnapshot() local_unnamed_addr #2

declare i32 @mustObeyClient(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long long", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !10, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 _ZTS10connection", !16, i64 0}
!18 = !{!"p1 _ZTS7redisDb", !16, i64 0}
!19 = !{!"p1 _ZTS11redisObject", !16, i64 0}
!20 = !{!"p1 omnipotent char", !16, i64 0}
!21 = !{!"any p2 pointer", !16, i64 0}
!22 = !{!"p2 _ZTS11redisObject", !21, i64 0}
!23 = !{!"p1 _ZTS14pendingCommand", !16, i64 0}
!24 = !{!"pendingCommandList", !23, i64 0, !23, i64 8, !11, i64 16, !11, i64 20}
!25 = !{!"p1 _ZTS14deferredObject", !16, i64 0}
!26 = !{!"p1 _ZTS12redisCommand", !16, i64 0}
!27 = !{!"p1 _ZTS4list", !16, i64 0}
!28 = !{!"p1 _ZTS9dictEntry", !16, i64 0}
!29 = !{!"p2 _ZTS14pendingCommand", !21, i64 0}
!30 = !{!"multiState", !29, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !11, i64 32}
!31 = !{!"p1 _ZTS4dict", !16, i64 0}
!32 = !{!"blockingState", !11, i64 0, !13, i64 8, !11, i64 16, !31, i64 24, !11, i64 32, !11, i64 36, !13, i64 40, !16, i64 48, !16, i64 56, !15, i64 64}
!33 = !{!"p1 _ZTS8listNode", !16, i64 0}
!34 = !{!"p1 _ZTS3rax", !16, i64 0}
!35 = !{!"listNode", !33, i64 0, !33, i64 8, !16, i64 16}
!36 = !{!"p1 _ZTS13payloadHeader", !16, i64 0}
!37 = !{!"p1 _ZTS7asmTask", !16, i64 0}
!38 = !{!"client", !15, i64 0, !15, i64 8, !17, i64 16, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !11, i64 28, !18, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !20, i64 64, !15, i64 72, !15, i64 80, !11, i64 88, !22, i64 96, !11, i64 104, !11, i64 108, !22, i64 112, !15, i64 120, !24, i64 128, !23, i64 152, !25, i64 160, !11, i64 168, !22, i64 176, !11, i64 184, !11, i64 188, !26, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !16, i64 224, !11, i64 232, !11, i64 236, !15, i64 240, !27, i64 248, !13, i64 256, !27, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !11, i64 296, !11, i64 300, !28, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !13, i64 336, !13, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !15, i64 368, !15, i64 376, !20, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !10, i64 480, !11, i64 524, !20, i64 528, !11, i64 536, !11, i64 540, !15, i64 544, !30, i64 552, !32, i64 592, !13, i64 664, !27, i64 672, !31, i64 680, !31, i64 688, !31, i64 696, !20, i64 704, !20, i64 712, !33, i64 720, !33, i64 728, !33, i64 736, !16, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !15, i64 784, !34, i64 792, !15, i64 800, !11, i64 808, !33, i64 816, !16, i64 824, !33, i64 832, !15, i64 840, !33, i64 848, !15, i64 856, !33, i64 864, !15, i64 872, !35, i64 880, !35, i64 904, !15, i64 928, !15, i64 936, !15, i64 944, !13, i64 952, !15, i64 960, !15, i64 968, !20, i64 976, !10, i64 984, !36, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !37, i64 1024, !20, i64 1032, !10, i64 1040}
!39 = !{!38, !22, i64 96}
!40 = !{!19, !19, i64 0}
!41 = !{!38, !11, i64 28}
!42 = !{!"p2 _ZTS9dictEntry", !21, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!38, !18, i64 32}
!45 = !{!"redisObject", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 3, !11, i64 4, !11, i64 5, !16, i64 8}
!46 = !{!45, !16, i64 8}
!47 = !{!"p2 omnipotent char", !21, i64 0}
!48 = !{!"p1 _ZTS11aeEventLoop", !16, i64 0}
!49 = !{!"p1 _ZTS14ConnectionType", !16, i64 0}
!50 = !{!"connListener", !10, i64 0, !11, i64 64, !47, i64 72, !11, i64 80, !11, i64 84, !49, i64 88, !16, i64 96}
!51 = !{!"p1 _ZTS6client", !16, i64 0}
!52 = !{!"pendingCommandPool", !29, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!53 = !{!"double", !10, i64 0}
!54 = !{!"malloc_stats", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!55 = !{!"p1 _ZTS11hotkeyStats", !16, i64 0}
!56 = !{!"p1 double", !16, i64 0}
!57 = !{!"p1 _ZTS9saveparam", !16, i64 0}
!58 = !{!"p2 _ZTS10connection", !21, i64 0}
!59 = !{!"p1 _ZTS7redisOp", !16, i64 0}
!60 = !{!"redisOpArray", !59, i64 0, !11, i64 8, !11, i64 12}
!61 = !{!"p1 _ZTS11replBacklog", !16, i64 0}
!62 = !{!"replDataBuf", !27, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!63 = !{!"p1 _ZTS8_kvstore", !16, i64 0}
!64 = !{!"p1 _ZTS12clusterState", !16, i64 0}
!65 = !{!"aclInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!66 = !{!"redisTLSContextConfig", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !11, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!67 = !{!"p1 _ZTS14sentinelConfig", !16, i64 0}
!68 = !{!"redisServer", !11, i64 0, !15, i64 8, !20, i64 16, !20, i64 24, !47, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !18, i64 64, !31, i64 72, !31, i64 80, !48, i64 88, !34, i64 96, !11, i64 104, !11, i64 108, !10, i64 112, !10, i64 116, !13, i64 120, !10, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !20, i64 144, !11, i64 152, !11, i64 156, !10, i64 160, !11, i64 204, !15, i64 208, !11, i64 216, !11, i64 220, !11, i64 224, !20, i64 232, !20, i64 240, !11, i64 248, !11, i64 252, !15, i64 256, !10, i64 264, !31, i64 272, !31, i64 280, !31, i64 288, !27, i64 296, !10, i64 304, !11, i64 312, !11, i64 316, !10, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !10, i64 336, !11, i64 464, !20, i64 472, !20, i64 480, !11, i64 488, !10, i64 496, !11, i64 1328, !50, i64 1336, !27, i64 1440, !27, i64 1448, !27, i64 1456, !27, i64 1464, !27, i64 1472, !27, i64 1480, !27, i64 1488, !51, i64 1496, !51, i64 1504, !16, i64 1512, !34, i64 1520, !11, i64 1528, !34, i64 1536, !11, i64 1544, !27, i64 1552, !10, i64 1560, !10, i64 1624, !31, i64 1880, !10, i64 1888, !11, i64 1896, !11, i64 1900, !10, i64 1904, !11, i64 2416, !11, i64 2420, !52, i64 2424, !11, i64 2448, !13, i64 2456, !11, i64 2464, !11, i64 2468, !11, i64 2472, !11, i64 2476, !11, i64 2480, !15, i64 2488, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !13, i64 2536, !13, i64 2544, !13, i64 2552, !13, i64 2560, !13, i64 2568, !13, i64 2576, !53, i64 2584, !13, i64 2592, !13, i64 2600, !13, i64 2608, !13, i64 2616, !13, i64 2624, !13, i64 2632, !15, i64 2640, !13, i64 2648, !13, i64 2656, !13, i64 2664, !13, i64 2672, !13, i64 2680, !13, i64 2688, !13, i64 2696, !13, i64 2704, !15, i64 2712, !15, i64 2720, !15, i64 2728, !13, i64 2736, !13, i64 2744, !13, i64 2752, !13, i64 2760, !13, i64 2768, !53, i64 2776, !13, i64 2784, !13, i64 2792, !13, i64 2800, !13, i64 2808, !13, i64 2816, !27, i64 2824, !13, i64 2832, !13, i64 2840, !15, i64 2848, !54, i64 2856, !10, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !15, i64 2976, !15, i64 2984, !15, i64 2992, !15, i64 3000, !15, i64 3008, !15, i64 3016, !15, i64 3024, !15, i64 3032, !53, i64 3040, !10, i64 3048, !15, i64 3080, !13, i64 3088, !13, i64 3096, !13, i64 3104, !10, i64 3112, !10, i64 4136, !10, i64 5160, !13, i64 5168, !13, i64 5176, !13, i64 5184, !13, i64 5192, !10, i64 5200, !13, i64 6264, !13, i64 6272, !15, i64 6280, !13, i64 6288, !13, i64 6296, !15, i64 6304, !10, i64 6312, !55, i64 6408, !11, i64 6416, !11, i64 6420, !11, i64 6424, !11, i64 6428, !11, i64 6432, !11, i64 6436, !11, i64 6440, !11, i64 6444, !11, i64 6448, !11, i64 6452, !11, i64 6456, !11, i64 6460, !11, i64 6464, !15, i64 6472, !11, i64 6480, !11, i64 6484, !11, i64 6488, !11, i64 6492, !15, i64 6496, !15, i64 6504, !11, i64 6512, !11, i64 6516, !11, i64 6520, !11, i64 6524, !11, i64 6528, !11, i64 6532, !20, i64 6536, !10, i64 6544, !11, i64 6616, !11, i64 6620, !11, i64 6624, !56, i64 6632, !11, i64 6640, !11, i64 6644, !11, i64 6648, !11, i64 6652, !11, i64 6656, !11, i64 6660, !11, i64 6664, !11, i64 6668, !11, i64 6672, !20, i64 6680, !20, i64 6688, !11, i64 6696, !11, i64 6700, !15, i64 6704, !15, i64 6712, !15, i64 6720, !15, i64 6728, !15, i64 6736, !11, i64 6744, !11, i64 6748, !20, i64 6752, !11, i64 6760, !11, i64 6764, !13, i64 6768, !13, i64 6776, !15, i64 6784, !15, i64 6792, !15, i64 6800, !11, i64 6808, !11, i64 6812, !15, i64 6816, !11, i64 6824, !11, i64 6828, !11, i64 6832, !11, i64 6836, !11, i64 6840, !15, i64 6848, !11, i64 6856, !10, i64 6860, !10, i64 6864, !16, i64 6872, !11, i64 6880, !13, i64 6888, !13, i64 6896, !13, i64 6904, !13, i64 6912, !11, i64 6920, !57, i64 6928, !11, i64 6936, !20, i64 6944, !11, i64 6952, !11, i64 6956, !11, i64 6960, !15, i64 6968, !15, i64 6976, !15, i64 6984, !15, i64 6992, !11, i64 7000, !11, i64 7004, !11, i64 7008, !11, i64 7012, !11, i64 7016, !11, i64 7020, !58, i64 7024, !11, i64 7032, !11, i64 7036, !20, i64 7040, !11, i64 7048, !11, i64 7052, !11, i64 7056, !10, i64 7060, !11, i64 7068, !60, i64 7072, !11, i64 7088, !20, i64 7096, !11, i64 7104, !20, i64 7112, !11, i64 7120, !11, i64 7124, !11, i64 7128, !11, i64 7132, !11, i64 7136, !11, i64 7140, !11, i64 7144, !10, i64 7148, !10, i64 7189, !13, i64 7232, !13, i64 7240, !10, i64 7248, !13, i64 7256, !11, i64 7264, !11, i64 7268, !61, i64 7272, !13, i64 7280, !13, i64 7288, !62, i64 7296, !15, i64 7344, !15, i64 7352, !11, i64 7360, !11, i64 7364, !11, i64 7368, !11, i64 7372, !11, i64 7376, !11, i64 7380, !11, i64 7384, !11, i64 7388, !11, i64 7392, !15, i64 7400, !27, i64 7408, !15, i64 7416, !20, i64 7424, !20, i64 7432, !20, i64 7440, !11, i64 7448, !11, i64 7452, !51, i64 7456, !51, i64 7464, !11, i64 7472, !11, i64 7476, !11, i64 7480, !11, i64 7484, !15, i64 7488, !15, i64 7496, !15, i64 7504, !15, i64 7512, !15, i64 7520, !17, i64 7528, !17, i64 7536, !11, i64 7544, !20, i64 7552, !15, i64 7560, !11, i64 7568, !11, i64 7572, !11, i64 7576, !15, i64 7584, !15, i64 7592, !11, i64 7600, !11, i64 7604, !11, i64 7608, !11, i64 7612, !20, i64 7616, !11, i64 7624, !11, i64 7628, !10, i64 7632, !13, i64 7680, !11, i64 7688, !27, i64 7696, !11, i64 7704, !13, i64 7712, !13, i64 7720, !15, i64 7728, !15, i64 7736, !11, i64 7744, !13, i64 7752, !15, i64 7760, !11, i64 7768, !11, i64 7772, !11, i64 7776, !11, i64 7780, !11, i64 7784, !13, i64 7792, !10, i64 7800, !11, i64 7812, !11, i64 7816, !11, i64 7820, !10, i64 7824, !27, i64 7872, !27, i64 7880, !11, i64 7888, !15, i64 7896, !27, i64 7904, !27, i64 7912, !11, i64 7920, !11, i64 7924, !11, i64 7928, !11, i64 7932, !15, i64 7936, !15, i64 7944, !15, i64 7952, !15, i64 7960, !15, i64 7968, !15, i64 7976, !15, i64 7984, !15, i64 7992, !15, i64 8000, !13, i64 8008, !13, i64 8016, !13, i64 8024, !11, i64 8032, !11, i64 8036, !10, i64 8040, !15, i64 8048, !10, i64 8056, !13, i64 8064, !13, i64 8072, !11, i64 8080, !15, i64 8088, !13, i64 8096, !15, i64 8104, !13, i64 8112, !63, i64 8120, !31, i64 8128, !11, i64 8136, !63, i64 8144, !11, i64 8152, !11, i64 8156, !11, i64 8160, !11, i64 8164, !13, i64 8168, !13, i64 8176, !20, i64 8184, !13, i64 8192, !13, i64 8200, !13, i64 8208, !11, i64 8216, !64, i64 8224, !11, i64 8232, !11, i64 8236, !11, i64 8240, !11, i64 8244, !11, i64 8248, !20, i64 8256, !20, i64 8264, !20, i64 8272, !11, i64 8280, !11, i64 8284, !11, i64 8288, !11, i64 8292, !11, i64 8296, !11, i64 8300, !11, i64 8304, !11, i64 8308, !13, i64 8312, !11, i64 8320, !11, i64 8324, !11, i64 8328, !13, i64 8336, !11, i64 8344, !11, i64 8348, !11, i64 8352, !11, i64 8356, !11, i64 8360, !11, i64 8364, !11, i64 8368, !11, i64 8372, !11, i64 8376, !13, i64 8384, !31, i64 8392, !20, i64 8400, !15, i64 8408, !20, i64 8416, !11, i64 8424, !65, i64 8432, !11, i64 8472, !15, i64 8480, !11, i64 8488, !11, i64 8492, !11, i64 8496, !66, i64 8504, !20, i64 8624, !20, i64 8632, !20, i64 8640, !20, i64 8648, !67, i64 8656, !13, i64 8664, !11, i64 8672, !20, i64 8680, !11, i64 8688, !11, i64 8692, !11, i64 8696, !15, i64 8704, !11, i64 8712, !11, i64 8716, !20, i64 8720, !11, i64 8728, !11, i64 8732}
!69 = !{!68, !13, i64 6888}
!70 = !{!"p1 _ZTS7_estore", !16, i64 0}
!71 = !{!"redisDb", !63, i64 0, !63, i64 8, !70, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !11, i64 72, !13, i64 80, !15, i64 88}
!72 = !{!71, !11, i64 72}
!73 = !{!38, !11, i64 88}
!74 = !{!"sharedObjectsStruct", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !10, i64 64, !10, i64 96, !10, i64 128, !10, i64 160, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !19, i64 384, !19, i64 392, !19, i64 400, !19, i64 408, !19, i64 416, !19, i64 424, !19, i64 432, !19, i64 440, !19, i64 448, !19, i64 456, !19, i64 464, !19, i64 472, !19, i64 480, !19, i64 488, !19, i64 496, !19, i64 504, !19, i64 512, !19, i64 520, !19, i64 528, !19, i64 536, !19, i64 544, !19, i64 552, !19, i64 560, !19, i64 568, !19, i64 576, !19, i64 584, !19, i64 592, !19, i64 600, !19, i64 608, !19, i64 616, !19, i64 624, !19, i64 632, !19, i64 640, !19, i64 648, !19, i64 656, !19, i64 664, !19, i64 672, !19, i64 680, !19, i64 688, !19, i64 696, !19, i64 704, !19, i64 712, !19, i64 720, !19, i64 728, !19, i64 736, !19, i64 744, !19, i64 752, !19, i64 760, !19, i64 768, !19, i64 776, !19, i64 784, !19, i64 792, !19, i64 800, !19, i64 808, !10, i64 816, !10, i64 896, !10, i64 80896, !10, i64 81152, !10, i64 81408, !10, i64 81664, !20, i64 81920, !20, i64 81928}
!75 = !{!74, !19, i64 648}
!76 = !{!74, !19, i64 584}
!77 = !{!10, !10, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"short", !10, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!15, !15, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !19, i64 16, !19, i64 24}
!84 = !{!83, !11, i64 0}
!85 = !{!83, !19, i64 16}
!86 = !{!83, !11, i64 4}
!87 = !{!83, !19, i64 24}
!88 = !{!74, !19, i64 216}
!89 = !{!74, !19, i64 32}
!90 = !{!74, !19, i64 24}
!91 = !{!68, !13, i64 7792}
!92 = !{!68, !11, i64 6644}
!93 = distinct !{!93, !78, !101}
!94 = !{!38, !26, i64 192}
!95 = !{!"p1 _ZTS15redisCommandArg", !16, i64 0}
!96 = !{!"p1 _ZTS13hdr_histogram", !16, i64 0}
!97 = !{!"", !20, i64 0, !15, i64 8, !11, i64 16, !10, i64 24, !11, i64 40, !10, i64 44}
!98 = !{!"p1 _ZTS18RedisModuleCommand", !16, i64 0}
!99 = !{!"redisCommand", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !11, i64 32, !20, i64 40, !20, i64 48, !11, i64 56, !16, i64 64, !11, i64 72, !47, i64 80, !11, i64 88, !16, i64 96, !11, i64 104, !15, i64 112, !15, i64 120, !16, i64 128, !11, i64 136, !16, i64 144, !11, i64 152, !26, i64 160, !95, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !11, i64 208, !20, i64 216, !96, i64 224, !97, i64 232, !31, i64 288, !26, i64 296, !98, i64 304}
!100 = !{!99, !16, i64 96}
!101 = !{!"llvm.loop.peeled.count", i32 3}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = distinct !{!103, !78}
!104 = !{!83, !11, i64 8}
!105 = !{!68, !11, i64 8364}
!106 = !{!74, !19, i64 592}
!107 = !{!74, !19, i64 576}
!108 = !{!74, !19, i64 400}
!109 = !{!74, !19, i64 16}
!110 = distinct !{!110, !78}
!111 = distinct !{!111, !78}
!112 = distinct !{!112, !78}
!113 = distinct !{!113, !78}
!114 = distinct !{!114, !78}
!115 = !{!"long double", !10, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!74, !19, i64 720}
!118 = distinct !{!118, !78}
!119 = distinct !{!119, !78}
!120 = distinct !{!120, !78, !122}
!121 = distinct !{!121, !78}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{!20, !20, i64 0}
end_hunk_1
