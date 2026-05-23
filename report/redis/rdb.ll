inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbSaveRawString:bb.a
  br label %bb.z

bb.z:                                             ; preds = %rdbWriteRaw.exit49.thread, %rdbWriteRaw.exit49, %.thread, %bb.s, %.thread66, %bb.r, %rdbSaveLzfStringObject.exit
  %.1 = phi i64 [ %.027.ph, %.thread ], [ -1, %rdbSaveLzfStringObject.exit ], [ %i.ar, %bb.r ], [ -1, %.thread66 ], [ %i.av, %bb.s ], [ -1, %rdbWriteRaw.exit49.thread ], [ %i.bs, %rdbWriteRaw.exit49 ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483649, 41) i64 @rdbSaveLongLongAsStringObject(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = add i64 %1, 128
  %or.cond.i = icmp ult i64 %i.b, 256
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 -64, ptr %i.a, align 16, !tbaa !72
  %i.c = trunc nsw i64 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !72
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, 32768
  %or.cond3.i = icmp ult i64 %i.e, 65536
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 -63, ptr %i.a, align 16, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = trunc nsw i64 %1 to i16
  store i16 %i.g, ptr %i.f, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = add i64 %1, 2147483648
  %or.cond5.i = icmp ult i64 %i.h, 4294967296
  br i1 %or.cond5.i, label %bb.f, label %rdbEncodeInteger.exit

bb.f:                                             ; preds = %bb.e
  store i8 -62, ptr %i.a, align 16, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.j = trunc nsw i64 %1 to i32
  store i32 %i.j, ptr %i.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.f
  %.0.i.ph = phi i64 [ 5, %bb.f ], [ 3, %bb.d ], [ 2, %bb.b ] ; 3 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rdbWriteRaw.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02538.i.i = phi i64 [ %.0.i.ph, %.lr.ph.i.i ], [ %i.ab, %bb.l ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ %i.aa, %bb.l ] ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.r, 0
  %i.s = call i64 @llvm.umin.i64(i64 %i.r, i64 %.02538.i.i)
  %i.t = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.s ; 5 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.u, null
  br i1 %.not33.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.u(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.t) #20, !inline_history !73
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.w = call i64 %i.v(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.t) #20, !inline_history !73
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %bb.k
  %i.y = load i64, ptr %i.k, align 8, !tbaa !65
  %i.z = or i64 %i.y, 2
  store i64 %i.z, ptr %i.k, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.t
  %i.ab = sub i64 %.02538.i.i, %i.t               ; 2 uses
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !71
  %i.ad = add i64 %i.ac, %i.t
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not31.i.i, label %rdbWriteRaw.exit, label %bb.i

rdbEncodeInteger.exit:                            ; preds = %bb.e
  %i.ae = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %1) #20 ; 4 uses
  %i.af = icmp slt i32 %i.ae, 32
  br i1 %i.af, label %bb.n, label %bb.m, !prof !81

bb.m:                                             ; preds = %rdbEncodeInteger.exit
  call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 482) #20
  call void @abort() #23
  unreachable

bb.n:                                             ; preds = %rdbEncodeInteger.exit
  %i.ag = sext i32 %i.ae to i64                   ; 3 uses
  %i.ah = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.ag) ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp eq i32 %i.ah, -1
  br i1 %i.aj, label %rdbWriteRaw.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i20 = icmp eq ptr %0, null
  br i1 %.not.i20, label %rdbWriteRaw.exit32, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.am = and i64 %i.al, 2
  %.not.i.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i21, label %.preheader.i.i23, label %rdbWriteRaw.exit32.thread

.preheader.i.i23:                                 ; preds = %bb.p
  %.not3136.i.i24 = icmp eq i32 %i.ae, 0
  br i1 %.not3136.i.i24, label %rdbWriteRaw.exit, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.preheader.i.i23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i.i25
  %.02538.i.i26 = phi i64 [ %i.ag, %.lr.ph.i.i25 ], [ %i.bb, %bb.t ] ; 3 uses
  %.02737.i.i27 = phi ptr [ %i.a, %.lr.ph.i.i25 ], [ %i.ba, %bb.t ] ; 3 uses
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i28 = icmp eq i64 %i.ar, 0
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 %.02538.i.i26)
  %i.at = select i1 %.not32.not.i.i28, i64 %.02538.i.i26, i64 %i.as ; 5 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i29 = icmp eq ptr %i.au, null
  br i1 %.not33.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.au(ptr noundef nonnull %0, ptr noundef %.02737.i.i27, i64 noundef %i.at) #20, !inline_history !73
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.aw = call i64 %i.av(ptr noundef nonnull %0, ptr noundef %.02737.i.i27, i64 noundef %i.at) #20, !inline_history !73
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.thread.i.i31, label %bb.t

.thread.i.i31:                                    ; preds = %bb.s
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.az = or i64 %i.ay, 2
  store i64 %i.az, ptr %i.ak, align 8, !tbaa !65
  br label %rdbWriteRaw.exit32.thread

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %.02737.i.i27, i64 %i.at
  %i.bb = sub i64 %.02538.i.i26, %i.at            ; 2 uses
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !71
  %i.bd = add i64 %i.bc, %i.at
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !71
  %.not31.i.i30 = icmp eq i64 %i.bb, 0
  br i1 %.not31.i.i30, label %rdbWriteRaw.exit32, label %bb.q

rdbWriteRaw.exit32:                               ; preds = %bb.t, %bb.o
  %i.be = icmp eq i32 %i.ae, -1
  %i.bf = add nsw i64 %i.ai, %i.ag
  br i1 %i.be, label %rdbWriteRaw.exit32.thread, label %rdbWriteRaw.exit

rdbWriteRaw.exit32.thread:                        ; preds = %bb.p, %.thread.i.i31, %rdbWriteRaw.exit32
  br label %rdbWriteRaw.exit

rdbWriteRaw.exit:                                 ; preds = %bb.l, %.preheader.i.i23, %rdbWriteRaw.exit32.thread, %rdbWriteRaw.exit32, %.thread.i.i, %bb.h, %bb.g, %bb.n
  %.0 = phi i64 [ -1, %bb.n ], [ -1, %bb.h ], [ %.0.i.ph, %bb.g ], [ -1, %.thread.i.i ], [ %i.ai, %.preheader.i.i23 ], [ -1, %rdbWriteRaw.exit32.thread ], [ %i.bf, %rdbWriteRaw.exit32 ], [ %.0.i.ph, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.0
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i64 @rdbSaveStringObject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.c [
    i32 1, label %bb.b
    i32 0, label %.critedge
    i32 8, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = tail call i64 @rdbSaveLongLongAsStringObject(ptr noundef %0, i64 noundef %i.d)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 498) #20
  tail call void @abort() #23
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !72 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %.critedge
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !72
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !77
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !76
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.critedge, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.v, %bb.h ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.g ], [ 0, %.critedge ]
  %i.w = tail call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %.0.i)
  br label %bb.i

bb.i:                                             ; preds = %sdslen.exit, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.w, %sdslen.exit ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !72   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !72
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !77
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rdbGenericLoadStringObjectUsable(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = and i32 %1, 2
  %.not59 = icmp eq i32 %i.c, 0                   ; 2 uses
  %i.d = and i32 %1, 6
  %.not = icmp eq i32 %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = call i32 @rdbLoadLenByRef(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i64, ptr %i.a, align 8              ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.h = icmp eq i64 %i.g, -1
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %rioRead.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 4, !tbaa !9
  %.not60 = icmp eq i32 %i.j, 0
  br i1 %.not60, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i64 %i.g, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.k = trunc nuw nsw i64 %i.g to i32
  %i.l = call ptr @rdbLoadIntegerObject(ptr noundef %0, i32 noundef %i.k, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %rioRead.exit

bb.e:                                             ; preds = %bb.c
  %i.m = call ptr @rdbLoadLzfStringObject(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %rioRead.exit

bb.f:                                             ; preds = %bb.c
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 537, ptr noundef nonnull @.str.14, i64 noundef %i.g)
  br label %rioRead.exit

bb.g:                                             ; preds = %bb.b
  br i1 %.not, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %.not70 = icmp eq ptr %3, null
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %3, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !64
  %i.o = call ptr @tryCreateStringObject(ptr noundef %i.n, i64 noundef %i.g) #20 ; 5 uses
  %.not71 = icmp eq ptr %i.o, null
  br i1 %.not71, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !47 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %rioRead.exit, label %bb.m

.thread:                                          ; preds = %bb.k
  %i.t = load i64, ptr %i.p, align 8, !tbaa !48
  %.not74 = icmp eq i64 %i.t, -1
  %i.u = select i1 %.not74, i32 3, i32 1          ; 2 uses
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %rioRead.exit, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %not.75 = phi i32 [ 3, %bb.l ], [ %i.u, %.thread ]
  call void (i32, ptr, ...) @_serverLog(i32 noundef %not.75, ptr noundef nonnull @.str.15, i64 noundef %i.g) #20
  br label %rioRead.exit

end_hunk_0
begin_hunk_1_@rdbSaveBinaryDoubleValue:bb.a
  store i64 %i.u, ptr %i.h, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.s, 0
  br i1 %.not31.i.i, label %rdbWriteRaw.exit, label %bb.c

rdbWriteRaw.exit:                                 ; preds = %bb.f, %bb.a, %bb.b, %.thread.i.i
  %.0.i = phi i32 [ 8, %bb.a ], [ -1, %.thread.i.i ], [ -1, %bb.b ], [ 8, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadBinaryDoubleValue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.preheader.i, label %rioRead.exit

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader.i
  %.02538.i = phi i64 [ 8, %.preheader.i ], [ %i.q, %bb.e ] ; 3 uses
  %.02737.i = phi ptr [ %1, %.preheader.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i = icmp eq i64 %i.g, 0
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.02538.i)
  %i.i = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.h ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !74
  %i.k = tail call i64 %i.j(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.i) #20, !inline_history !75
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !tbaa !65
  %i.n = or i64 %i.m, 1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !65
  br label %rioRead.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.o(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.i) #20, !inline_history !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.i
  %i.q = sub i64 %.02538.i, %i.i                  ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !71
  %i.s = add i64 %i.r, %i.i
  store i64 %i.s, ptr %i.f, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.q, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.b

rioRead.exit:                                     ; preds = %bb.e, %.thread.i, %bb.a
  %i.t = phi i32 [ -1, %.thread.i ], [ -1, %bb.a ], [ 0, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 5) i32 @rdbSaveBinaryFloatValue(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !85
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %rdbWriteRaw.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.preheader.i.i
  %.02538.i.i = phi i64 [ 4, %.preheader.i.i ], [ %i.s, %bb.f ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.a, %.preheader.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.i, 0
  %i.j = call i64 @llvm.umin.i64(i64 %i.i, i64 %.02538.i.i)
  %i.k = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.j ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.l, null
  br i1 %.not33.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.l(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.k) #20, !inline_history !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.n = call i64 %i.m(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.k) #20, !inline_history !73
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !65
  %i.q = or i64 %i.p, 2
  store i64 %i.q, ptr %i.b, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.k
  %i.s = sub i64 %.02538.i.i, %i.k                ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !71
  %i.u = add i64 %i.t, %i.k
  store i64 %i.u, ptr %i.h, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.s, 0
  br i1 %.not31.i.i, label %rdbWriteRaw.exit, label %bb.c

rdbWriteRaw.exit:                                 ; preds = %bb.f, %bb.a, %bb.b, %.thread.i.i
  %.0.i = phi i32 [ 4, %bb.a ], [ -1, %.thread.i.i ], [ -1, %bb.b ], [ 4, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadBinaryFloatValue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.preheader.i, label %rioRead.exit

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader.i
  %.02538.i = phi i64 [ 4, %.preheader.i ], [ %i.q, %bb.e ] ; 3 uses
  %.02737.i = phi ptr [ %1, %.preheader.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i = icmp eq i64 %i.g, 0
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.02538.i)
  %i.i = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.h ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !74
  %i.k = tail call i64 %i.j(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.i) #20, !inline_history !75
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !tbaa !65
  %i.n = or i64 %i.m, 1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !65
  br label %rioRead.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.o(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.i) #20, !inline_history !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.i
  %i.q = sub i64 %.02538.i, %i.i                  ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !71
  %i.s = add i64 %i.r, %i.i
  store i64 %i.s, ptr %i.f, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.q, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.b

rioRead.exit:                                     ; preds = %bb.e, %.thread.i, %bb.a
  %i.t = phi i32 [ -1, %.thread.i ], [ -1, %bb.a ], [ 0, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @rdbSaveObjectType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = load i64, ptr %1, align 8
  %i.o = trunc i64 %i.n to i32                    ; 5 uses
  %i.p = and i32 %i.o, 15
  switch i32 %i.p, label %bb.bx [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.n
    i32 3, label %bb.ae
    i32 4, label %bb.aq
    i32 6, label %bb.bn
    i32 5, label %bb.bs
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.m, align 1, !tbaa !72
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %rdbSaveType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %i.s = and i64 %i.r, 2
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.d, label %rdbSaveType.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not33.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef 1) #20, !inline_history !87
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.y = call i64 %i.x(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef 1) #20, !inline_history !87
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread.i.i.i, label %rdbWriteRaw.exit.loopexit.i

.thread.i.i.i:                                    ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !65
  %i.ab = or i64 %i.aa, 2
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !65
  br label %rdbSaveType.exit

rdbWriteRaw.exit.loopexit.i:                      ; preds = %bb.f
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !71
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !71
  br label %rdbSaveType.exit

rdbSaveType.exit:                                 ; preds = %bb.b, %bb.c, %.thread.i.i.i, %rdbWriteRaw.exit.loopexit.i
  %.0.i.i = phi i32 [ 1, %bb.b ], [ -1, %.thread.i.i.i ], [ -1, %bb.c ], [ 1, %rdbWriteRaw.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.by

bb.g:                                             ; preds = %bb.a
  %2 = lshr i32 %i.o, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.m [
    i32 9, label %bb.h
    i32 11, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 18, ptr %i.l, align 1, !tbaa !72
  %.not.i.i29 = icmp eq ptr %0, null
  br i1 %.not.i.i29, label %rdbSaveType.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ag = and i64 %i.af, 2
  %.not.i.i.i30 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i30, label %bb.j, label %rdbSaveType.exit35

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i32 = icmp eq ptr %i.ak, null
  br i1 %.not33.i.i.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.ak(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef 1) #20, !inline_history !87
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.am = call i64 %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef 1) #20, !inline_history !87
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread.i.i.i34, label %rdbWriteRaw.exit.loopexit.i33

.thread.i.i.i34:                                  ; preds = %bb.l
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ap = or i64 %i.ao, 2
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !65
  br label %rdbSaveType.exit35

rdbWriteRaw.exit.loopexit.i33:                    ; preds = %bb.l
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !71
  br label %rdbSaveType.exit35

rdbSaveType.exit35:                               ; preds = %bb.h, %bb.i, %.thread.i.i.i34, %rdbWriteRaw.exit.loopexit.i33
  %.0.i.i31 = phi i32 [ 1, %bb.h ], [ -1, %.thread.i.i.i34 ], [ -1, %bb.i ], [ 1, %rdbWriteRaw.exit.loopexit.i33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.by

bb.m:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 685, ptr noundef nonnull @.str.17) #20
  tail call void @abort() #23
  unreachable

bb.n:                                             ; preds = %bb.a
  %4 = lshr i32 %i.o, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.ad [
    i32 6, label %bb.o
    i32 2, label %bb.t
    i32 11, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 11, ptr %i.k, align 1, !tbaa !72
  %.not.i.i36 = icmp eq ptr %0, null
  br i1 %.not.i.i36, label %rdbSaveType.exit42, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !65
  %i.au = and i64 %i.at, 2
  %.not.i.i.i37 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i37, label %bb.q, label %rdbSaveType.exit42

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i39 = icmp eq ptr %i.ay, null
  br i1 %.not33.i.i.i39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef 1) #20, !inline_history !87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ba = call i64 %i.az(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef 1) #20, !inline_history !87
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.thread.i.i.i41, label %rdbWriteRaw.exit.loopexit.i40

.thread.i.i.i41:                                  ; preds = %bb.s
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !65
  %i.bd = or i64 %i.bc, 2
  store i64 %i.bd, ptr %i.as, align 8, !tbaa !65
  br label %rdbSaveType.exit42

rdbWriteRaw.exit.loopexit.i40:                    ; preds = %bb.s
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !71
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !71
  br label %rdbSaveType.exit42

rdbSaveType.exit42:                               ; preds = %bb.o, %bb.p, %.thread.i.i.i41, %rdbWriteRaw.exit.loopexit.i40
  %.0.i.i38 = phi i32 [ 1, %bb.o ], [ -1, %.thread.i.i.i41 ], [ -1, %bb.p ], [ 1, %rdbWriteRaw.exit.loopexit.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.by

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 2, ptr %i.j, align 1, !tbaa !72
  %.not.i.i43 = icmp eq ptr %0, null
  br i1 %.not.i.i43, label %rdbSaveType.exit49, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !65
  %i.bi = and i64 %i.bh, 2
  %.not.i.i.i44 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i44, label %bb.v, label %rdbSaveType.exit49

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i46 = icmp eq ptr %i.bm, null
  br i1 %.not33.i.i.i46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void %i.bm(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef 1) #20, !inline_history !87
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !70
  %i.bo = call i64 %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef 1) #20, !inline_history !87
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.thread.i.i.i48, label %rdbWriteRaw.exit.loopexit.i47

.thread.i.i.i48:                                  ; preds = %bb.x
  %i.bq = load i64, ptr %i.bg, align 8, !tbaa !65
  %i.br = or i64 %i.bq, 2
  store i64 %i.br, ptr %i.bg, align 8, !tbaa !65
  br label %rdbSaveType.exit49

rdbWriteRaw.exit.loopexit.i47:                    ; preds = %bb.x
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !71
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !71
  br label %rdbSaveType.exit49

rdbSaveType.exit49:                               ; preds = %bb.t, %bb.u, %.thread.i.i.i48, %rdbWriteRaw.exit.loopexit.i47
  %.0.i.i45 = phi i32 [ 1, %bb.t ], [ -1, %.thread.i.i.i48 ], [ -1, %bb.u ], [ 1, %rdbWriteRaw.exit.loopexit.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.by

bb.y:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 20, ptr %i.i, align 1, !tbaa !72
  %.not.i.i50 = icmp eq ptr %0, null
  br i1 %.not.i.i50, label %rdbSaveType.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.bw = and i64 %i.bv, 2
  %.not.i.i.i51 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i51, label %bb.aa, label %rdbSaveType.exit56

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i53 = icmp eq ptr %i.ca, null
  br i1 %.not33.i.i.i53, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void %i.ca(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef 1) #20, !inline_history !87
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !70
  %i.cc = call i64 %i.cb(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef 1) #20, !inline_history !87
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.thread.i.i.i55, label %rdbWriteRaw.exit.loopexit.i54

.thread.i.i.i55:                                  ; preds = %bb.ac
  %i.ce = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.cf = or i64 %i.ce, 2
  store i64 %i.cf, ptr %i.bu, align 8, !tbaa !65
  br label %rdbSaveType.exit56

rdbWriteRaw.exit.loopexit.i54:                    ; preds = %bb.ac
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !71
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !71
  br label %rdbSaveType.exit56

rdbSaveType.exit56:                               ; preds = %bb.y, %bb.z, %.thread.i.i.i55, %rdbWriteRaw.exit.loopexit.i54
  %.0.i.i52 = phi i32 [ 1, %bb.y ], [ -1, %.thread.i.i.i55 ], [ -1, %bb.z ], [ 1, %rdbWriteRaw.exit.loopexit.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.by

bb.ad:                                            ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 694, ptr noundef nonnull @.str.18) #20
  tail call void @abort() #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  %6 = lshr i32 %i.o, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.ap [
    i32 11, label %bb.af
    i32 7, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 17, ptr %i.h, align 1, !tbaa !72
  %.not.i.i57 = icmp eq ptr %0, null
  br i1 %.not.i.i57, label %rdbSaveType.exit63, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !65
  %i.ck = and i64 %i.cj, 2
  %.not.i.i.i58 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i58, label %bb.ah, label %rdbSaveType.exit63

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i60 = icmp eq ptr %i.co, null
  br i1 %.not33.i.i.i60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void %i.co(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 1) #20, !inline_history !87
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !70
  %i.cq = call i64 %i.cp(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 1) #20, !inline_history !87
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread.i.i.i62, label %rdbWriteRaw.exit.loopexit.i61

.thread.i.i.i62:                                  ; preds = %bb.aj
  %i.cs = load i64, ptr %i.ci, align 8, !tbaa !65
  %i.ct = or i64 %i.cs, 2
  store i64 %i.ct, ptr %i.ci, align 8, !tbaa !65
  br label %rdbSaveType.exit63

rdbWriteRaw.exit.loopexit.i61:                    ; preds = %bb.aj
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !71
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !71
  br label %rdbSaveType.exit63

rdbSaveType.exit63:                               ; preds = %bb.af, %bb.ag, %.thread.i.i.i62, %rdbWriteRaw.exit.loopexit.i61
  %.0.i.i59 = phi i32 [ 1, %bb.af ], [ -1, %.thread.i.i.i62 ], [ -1, %bb.ag ], [ 1, %rdbWriteRaw.exit.loopexit.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.by

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 5, ptr %i.g, align 1, !tbaa !72
  %.not.i.i64 = icmp eq ptr %0, null
  br i1 %.not.i.i64, label %rdbSaveType.exit70, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !65
  %i.cy = and i64 %i.cx, 2
  %.not.i.i.i65 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i65, label %bb.am, label %rdbSaveType.exit70

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i67 = icmp eq ptr %i.dc, null
  br i1 %.not33.i.i.i67, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void %i.dc(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1) #20, !inline_history !87
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !70
  %i.de = call i64 %i.dd(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1) #20, !inline_history !87
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.thread.i.i.i69, label %rdbWriteRaw.exit.loopexit.i68

.thread.i.i.i69:                                  ; preds = %bb.ao
  %i.dg = load i64, ptr %i.cw, align 8, !tbaa !65
  %i.dh = or i64 %i.dg, 2
  store i64 %i.dh, ptr %i.cw, align 8, !tbaa !65
  br label %rdbSaveType.exit70

rdbWriteRaw.exit.loopexit.i68:                    ; preds = %bb.ao
  %i.di = load i64, ptr %i.db, align 8, !tbaa !71
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.db, align 8, !tbaa !71
  br label %rdbSaveType.exit70

rdbSaveType.exit70:                               ; preds = %bb.ak, %bb.al, %.thread.i.i.i69, %rdbWriteRaw.exit.loopexit.i68
  %.0.i.i66 = phi i32 [ 1, %bb.ak ], [ -1, %.thread.i.i.i69 ], [ -1, %bb.al ], [ 1, %rdbWriteRaw.exit.loopexit.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.by

bb.ap:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 701, ptr noundef nonnull @.str.19) #20
  tail call void @abort() #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  %8 = lshr i32 %i.o, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.bm [
    i32 11, label %bb.ar
    i32 12, label %bb.aw
    i32 2, label %bb.bb
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 16, ptr %i.f, align 1, !tbaa !72
  %.not.i.i71 = icmp eq ptr %0, null
  br i1 %.not.i.i71, label %rdbSaveType.exit77, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !65
  %i.dm = and i64 %i.dl, 2
  %.not.i.i.i72 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i72, label %bb.at, label %rdbSaveType.exit77

bb.at:                                            ; preds = %bb.as
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i74 = icmp eq ptr %i.dq, null
  br i1 %.not33.i.i.i74, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void %i.dq(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1) #20, !inline_history !87
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.ds = call i64 %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1) #20, !inline_history !87
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.thread.i.i.i76, label %rdbWriteRaw.exit.loopexit.i75

.thread.i.i.i76:                                  ; preds = %bb.av
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !65
  %i.dv = or i64 %i.du, 2
  store i64 %i.dv, ptr %i.dk, align 8, !tbaa !65
  br label %rdbSaveType.exit77

rdbWriteRaw.exit.loopexit.i75:                    ; preds = %bb.av
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !71
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !71
  br label %rdbSaveType.exit77

rdbSaveType.exit77:                               ; preds = %bb.ar, %bb.as, %.thread.i.i.i76, %rdbWriteRaw.exit.loopexit.i75
  %.0.i.i73 = phi i32 [ 1, %bb.ar ], [ -1, %.thread.i.i.i76 ], [ -1, %bb.as ], [ 1, %rdbWriteRaw.exit.loopexit.i75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.by

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 25, ptr %i.e, align 1, !tbaa !72
  %.not.i.i78 = icmp eq ptr %0, null
  br i1 %.not.i.i78, label %rdbSaveType.exit84, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !65
  %i.ea = and i64 %i.dz, 2
  %.not.i.i.i79 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i79, label %bb.ay, label %rdbSaveType.exit84

bb.ay:                                            ; preds = %bb.ax
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i81 = icmp eq ptr %i.ee, null
  br i1 %.not33.i.i.i81, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void %i.ee(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #20, !inline_history !87
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !70
  %i.eg = call i64 %i.ef(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #20, !inline_history !87
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.thread.i.i.i83, label %rdbWriteRaw.exit.loopexit.i82

.thread.i.i.i83:                                  ; preds = %bb.ba
  %i.ei = load i64, ptr %i.dy, align 8, !tbaa !65
  %i.ej = or i64 %i.ei, 2
  store i64 %i.ej, ptr %i.dy, align 8, !tbaa !65
  br label %rdbSaveType.exit84

rdbWriteRaw.exit.loopexit.i82:                    ; preds = %bb.ba
  %i.ek = load i64, ptr %i.ed, align 8, !tbaa !71
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ed, align 8, !tbaa !71
  br label %rdbSaveType.exit84

rdbSaveType.exit84:                               ; preds = %bb.aw, %bb.ax, %.thread.i.i.i83, %rdbWriteRaw.exit.loopexit.i82
  %.0.i.i80 = phi i32 [ 1, %bb.aw ], [ -1, %.thread.i.i.i83 ], [ -1, %bb.ax ], [ 1, %rdbWriteRaw.exit.loopexit.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.by

bb.bb:                                            ; preds = %bb.aq
  %i.em = tail call i64 @hashTypeGetMinExpire(ptr noundef nonnull %1, i32 noundef 1) #20
  %i.en = icmp eq i64 %i.em, 281474976710656
  %.not.i.i85 = icmp eq ptr %0, null              ; 2 uses
  br i1 %i.en, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 4, ptr %i.d, align 1, !tbaa !72
  br i1 %.not.i.i85, label %rdbSaveType.exit91, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.eq = and i64 %i.ep, 2
  %.not.i.i.i86 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i86, label %bb.be, label %rdbSaveType.exit91

bb.be:                                            ; preds = %bb.bd
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i88 = icmp eq ptr %i.eu, null
  br i1 %.not33.i.i.i88, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void %i.eu(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1) #20, !inline_history !87
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !70
  %i.ew = call i64 %i.ev(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1) #20, !inline_history !87
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.thread.i.i.i90, label %rdbWriteRaw.exit.loopexit.i89

.thread.i.i.i90:                                  ; preds = %bb.bg
  %i.ey = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.ez = or i64 %i.ey, 2
  store i64 %i.ez, ptr %i.eo, align 8, !tbaa !65
  br label %rdbSaveType.exit91

rdbWriteRaw.exit.loopexit.i89:                    ; preds = %bb.bg
  %i.fa = load i64, ptr %i.et, align 8, !tbaa !71
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !71
  br label %rdbSaveType.exit91

rdbSaveType.exit91:                               ; preds = %bb.bc, %bb.bd, %.thread.i.i.i90, %rdbWriteRaw.exit.loopexit.i89
  %.0.i.i87 = phi i32 [ 1, %bb.bc ], [ -1, %.thread.i.i.i90 ], [ -1, %bb.bd ], [ 1, %rdbWriteRaw.exit.loopexit.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.by

bb.bh:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 24, ptr %i.c, align 1, !tbaa !72
  br i1 %.not.i.i85, label %rdbSaveType.exit98, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !65
  %i.fe = and i64 %i.fd, 2
  %.not.i.i.i93 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i93, label %bb.bj, label %rdbSaveType.exit98

bb.bj:                                            ; preds = %bb.bi
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i95 = icmp eq ptr %i.fi, null
  br i1 %.not33.i.i.i95, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void %i.fi(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #20, !inline_history !87
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !70
  %i.fk = call i64 %i.fj(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #20, !inline_history !87
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.thread.i.i.i97, label %rdbWriteRaw.exit.loopexit.i96

.thread.i.i.i97:                                  ; preds = %bb.bl
  %i.fm = load i64, ptr %i.fc, align 8, !tbaa !65
  %i.fn = or i64 %i.fm, 2
  store i64 %i.fn, ptr %i.fc, align 8, !tbaa !65
  br label %rdbSaveType.exit98

rdbWriteRaw.exit.loopexit.i96:                    ; preds = %bb.bl
  %i.fo = load i64, ptr %i.fh, align 8, !tbaa !71
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fh, align 8, !tbaa !71
  br label %rdbSaveType.exit98

rdbSaveType.exit98:                               ; preds = %bb.bh, %bb.bi, %.thread.i.i.i97, %rdbWriteRaw.exit.loopexit.i96
  %.0.i.i94 = phi i32 [ 1, %bb.bh ], [ -1, %.thread.i.i.i97 ], [ -1, %bb.bi ], [ 1, %rdbWriteRaw.exit.loopexit.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.by

bb.bm:                                            ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 713, ptr noundef nonnull @.str.20) #20
end_hunk_1
begin_hunk_2_@rdbSaveStreamConsumers:bb.a
  %i.f = tail call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.e) ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !118
  call void @raxStart(ptr noundef nonnull %2, ptr noundef %i.i) #20
  %i.j = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.22, ptr noundef null, i64 noundef 0) #20 ; 0 uses
  %i.k = call i32 @raxNext(ptr noundef nonnull %2) #20
  %.not57 = icmp eq i32 %i.k, 0
  br i1 %.not57, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %0, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02358.us = phi i64 [ %i.ae, %bb.c ], [ %i.h, %.lr.ph ]
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.v = load i64, ptr %i.n, align 8, !tbaa !106
  %i.w = call i64 @rdbSaveRawString(ptr noundef null, ptr noundef %i.u, i64 noundef %i.v) ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %.critedge, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120
  %i.aa = call i64 @rdbSaveStreamPEL(ptr noundef null, ptr noundef %i.z, i32 noundef 0) ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.thread.us
  %i.ac = add i64 %.02358.us, 16
  %i.ad = add i64 %i.ac, %i.w
  %i.ae = add nsw i64 %i.ad, %i.aa                ; 2 uses
  %i.af = call i32 @raxNext(ptr noundef nonnull %2) #20
  %.not.us = icmp eq i32 %i.af, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !122

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.02358 = phi i64 [ %i.by, %bb.l ], [ %i.h, %.lr.ph ]
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !91  ; 3 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !106
  %i.aj = call i64 @rdbSaveRawString(ptr noundef nonnull %0, ptr noundef %i.ah, i64 noundef %i.ai) ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.al, ptr %i.b, align 8, !tbaa !76
  %i.am = load i64, ptr %i.o, align 8, !tbaa !65
  %i.an = and i64 %i.am, 2
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.loopexit44

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.02538.i.i.i = phi i64 [ %i.ay, %bb.g ], [ 8, %bb.d ] ; 3 uses
  %.02737.i.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.b, %bb.d ] ; 3 uses
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !67  ; 2 uses
  %.not32.not.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = call i64 @llvm.umin.i64(i64 %i.ao, i64 %.02538.i.i.i)
  %i.aq = select i1 %.not32.not.i.i.i, i64 %.02538.i.i.i, i64 %i.ap ; 5 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not33.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  call void %i.ar(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i, i64 noundef %i.aq) #20, !inline_history !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i.i.i
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.at = call i64 %i.as(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i, i64 noundef %i.aq) #20, !inline_history !102
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.thread.i.i.i, label %bb.g

.thread.i.i.i:                                    ; preds = %bb.f
  %i.av = load i64, ptr %i.o, align 8, !tbaa !65
  %i.aw = or i64 %i.av, 2
  store i64 %i.aw, ptr %i.o, align 8, !tbaa !65
  br label %.loopexit44

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.02737.i.i.i, i64 %i.aq
  %i.ay = sub i64 %.02538.i.i.i, %i.aq            ; 2 uses
  %i.az = load i64, ptr %i.s, align 8, !tbaa !71
  %i.ba = add i64 %i.az, %i.aq
  store i64 %i.ba, ptr %i.s, align 8, !tbaa !71
  %.not31.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not31.i.i.i, label %bb.h, label %.preheader.i.i.i

.loopexit44:                                      ; preds = %bb.d, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !76
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !65
  %i.be = and i64 %i.bd, 2
  %.not.i.i.i31 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i31, label %.preheader.i.i.i33, label %.loopexit45

.preheader.i.i.i33:                               ; preds = %bb.h, %bb.k
  %.02538.i.i.i34 = phi i64 [ %i.bp, %bb.k ], [ 8, %bb.h ] ; 3 uses
  %.02737.i.i.i35 = phi ptr [ %i.bo, %bb.k ], [ %i.a, %bb.h ] ; 3 uses
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !67  ; 2 uses
  %.not32.not.i.i.i36 = icmp eq i64 %i.bf, 0
  %i.bg = call i64 @llvm.umin.i64(i64 %i.bf, i64 %.02538.i.i.i34)
  %i.bh = select i1 %.not32.not.i.i.i36, i64 %.02538.i.i.i34, i64 %i.bg ; 5 uses
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i.i37 = icmp eq ptr %i.bi, null
  br i1 %.not33.i.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i33
  call void %i.bi(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i35, i64 noundef %i.bh) #20, !inline_history !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.i.i.i33
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.bk = call i64 %i.bj(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i35, i64 noundef %i.bh) #20, !inline_history !102
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread.i.i.i39, label %bb.k

.thread.i.i.i39:                                  ; preds = %bb.j
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !65
  %i.bn = or i64 %i.bm, 2
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !65
  br label %.loopexit45

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.02737.i.i.i35, i64 %i.bh
  %i.bp = sub i64 %.02538.i.i.i34, %i.bh          ; 2 uses
  %i.bq = load i64, ptr %i.s, align 8, !tbaa !71
  %i.br = add i64 %i.bq, %i.bh
  store i64 %i.br, ptr %i.s, align 8, !tbaa !71
  %.not31.i.i.i38 = icmp eq i64 %i.bp, 0
  br i1 %.not31.i.i.i38, label %.loopexit, label %.preheader.i.i.i33

.loopexit45:                                      ; preds = %bb.h, %.thread.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.critedge

.loopexit:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.bu = call i64 @rdbSaveStreamPEL(ptr noundef nonnull %0, ptr noundef %i.bt, i32 noundef 0) ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bw = add i64 %.02358, 16
  %i.bx = add i64 %i.bw, %i.aj
  %i.by = add nsw i64 %i.bx, %i.bu                ; 2 uses
  %i.bz = call i32 @raxNext(ptr noundef nonnull %2) #20
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !122

.critedge:                                        ; preds = %bb.l, %.loopexit, %.lr.ph.split, %bb.c, %.thread.us, %.lr.ph.split.us, %bb.b, %.loopexit44, %.loopexit45
  %.2 = phi i64 [ %i.h, %bb.b ], [ -1, %.thread.us ], [ -1, %.loopexit45 ], [ -1, %.loopexit44 ], [ -1, %.lr.ph.split.us ], [ %i.ae, %bb.c ], [ %i.by, %bb.l ], [ -1, %.lr.ph.split ], [ -1, %.loopexit ]
  call void @raxStop(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.critedge
  %.3 = phi i64 [ %.2, %.critedge ], [ -1, %bb.a ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rdbSaveObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 7 uses
  %i.f = alloca [2 x i8], align 1                 ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.dictIterator, align 8       ; 8 uses
  %5 = alloca %struct.dictIterator, align 8       ; 10 uses
  %6 = alloca %struct.raxIterator, align 8        ; 20 uses
  %7 = alloca %struct.RedisModuleIO, align 8      ; 14 uses
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 5 uses
  %i.j = and i32 %i.i, 15
  switch i32 %i.j, label %bb.dw [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.u
    i32 3, label %bb.ag
    i32 4, label %bb.aw
    i32 6, label %bb.cg
    i32 5, label %bb.dk
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @rdbSaveStringObject(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.thread, label %.loopexit

bb.c:                                             ; preds = %bb.a
  %8 = lshr i32 %i.i, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.t [
    i32 9, label %bb.d
    i32 11, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = tail call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.q) ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %.not429589 = icmp eq ptr %i.o, null
  br i1 %.not429589, label %.loopexit, label %.lr.ph593

.lr.ph593:                                        ; preds = %bb.e, %bb.i
  %.0301591 = phi i64 [ %.2303, %bb.i ], [ %i.t, %bb.e ]
  %.0352590 = phi ptr [ %i.as, %bb.i ], [ %i.o, %bb.e ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0352590, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = lshr i32 %i.v, 18
  %i.x = and i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.y) ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph593
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = add nsw i64 %.0301591, %i.ab
  %i.ad = load i32, ptr %i.u, align 8
  %i.ae = and i32 %i.ad, 196608
  %i.af = icmp eq i32 %i.ae, 131072
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.ag = call i64 @quicklistGetLzf(ptr noundef nonnull %.0352590, ptr noundef nonnull %i.g) #20
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %.0352590, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !128
  %i.ak = call i64 @rdbSaveLzfBlob(ptr noundef %0, ptr noundef %i.ah, i64 noundef %i.ag, i64 noundef %i.aj) ; 2 uses
  %.not430 = icmp eq i64 %i.ak, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br i1 %.not430, label %.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.0352590, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !130
  %i.an = getelementptr inbounds nuw i8, ptr %.0352590, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !128
  %i.ap = call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.am, i64 noundef %i.ao) ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn540 = phi i64 [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  %.2303 = add nsw i64 %i.ac, %.pn540             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0352590, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !131 ; 2 uses
  %.not429 = icmp eq ptr %i.as, null
  br i1 %.not429, label %.loopexit, label %.lr.ph593, !llvm.loop !132

bb.j:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i8 1, ptr %i.f, align 1, !tbaa !72
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %.thread486, label %bb.k

.thread486:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !65
  %i.ax = and i64 %i.aw, 2
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.l, label %rdbSaveLen.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not33.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void %i.bb(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1) #20, !inline_history !133
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bd = call i64 %i.bc(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1) #20, !inline_history !133
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.thread.i.i.i, label %bb.o

.thread.i.i.i:                                    ; preds = %bb.n
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !65
  %i.bg = or i64 %i.bf, 2
  store i64 %i.bg, ptr %i.av, align 8, !tbaa !65
  br label %rdbSaveLen.exit.thread

rdbSaveLen.exit.thread:                           ; preds = %.thread.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !71
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i8 2, ptr %i.e, align 1, !tbaa !72
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !65
  %i.bk = and i64 %i.bj, 2
  %.not.i.i.i436 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i436, label %bb.p, label %rdbSaveLen.exit441.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i438 = icmp eq ptr %i.bl, null
  br i1 %.not33.i.i.i438, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %i.bl(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #20, !inline_history !133
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bn = call i64 %i.bm(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #20, !inline_history !133
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.thread.i.i.i440, label %rdbWriteRaw.exit.loopexit.i439

.thread.i.i.i440:                                 ; preds = %bb.r
  %i.bp = load i64, ptr %i.av, align 8, !tbaa !65
  %i.bq = or i64 %i.bp, 2
  store i64 %i.bq, ptr %i.av, align 8, !tbaa !65
  br label %rdbSaveLen.exit441.thread

rdbWriteRaw.exit.loopexit.i439:                   ; preds = %bb.r
  %i.br = load i64, ptr %i.ba, align 8, !tbaa !71
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.ba, align 8, !tbaa !71
  br label %bb.s

rdbSaveLen.exit441.thread:                        ; preds = %.thread.i.i.i440, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread

bb.s:                                             ; preds = %.thread486, %rdbWriteRaw.exit.loopexit.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.bt = call i64 @lpBytes(ptr noundef %i.au) #20
  %i.bu = call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.au, i64 noundef %i.bt) ; 2 uses
  %.not539 = icmp eq i64 %i.bu, -1
  %i.bv = add nsw i64 %i.bu, 2
  br i1 %.not539, label %.thread, label %.loopexit

bb.t:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 1038, ptr noundef nonnull @.str.17) #20
  tail call void @abort() #23
  unreachable

bb.u:                                             ; preds = %bb.a
  %10 = lshr i32 %i.i, 4
  %11 = and i32 %10, 15
  switch i32 %11, label %bb.af [
    i32 2, label %bb.v
    i32 6, label %bb.ad
    i32 11, label %bb.ae
  ]

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cc = add i64 %i.cb, %i.bz
  %i.cd = tail call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.cc) ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.thread497, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = zext nneg i32 %i.cd to i64              ; 2 uses
  call void @dictInitIterator(ptr noundef nonnull %4, ptr noundef nonnull %i.bx) #20
  %i.cg = call ptr @dictNext(ptr noundef nonnull %4) #20 ; 2 uses
  %.not427583 = icmp eq ptr %i.cg, null
  br i1 %.not427583, label %._crit_edge587, label %.lr.ph586

bb.x:                                             ; preds = %sdslen.exit
  %i.ch = add nsw i64 %i.da, %.5306584            ; 2 uses
  %i.ci = call ptr @dictNext(ptr noundef nonnull %4) #20 ; 2 uses
  %.not427 = icmp eq ptr %i.ci, null
  br i1 %.not427, label %._crit_edge587, label %.lr.ph586, !llvm.loop !134

.lr.ph586:                                        ; preds = %bb.w, %bb.x
  %i.cj = phi ptr [ %i.ci, %bb.x ], [ %i.cg, %bb.w ]
  %.5306584 = phi i64 [ %i.ch, %bb.x ], [ %i.cf, %bb.w ]
  %i.ck = call ptr @dictGetKey(ptr noundef nonnull %i.cj) #20 ; 6 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  %.val.i = load i8, ptr %i.cl, align 1, !tbaa !72 ; 2 uses
  %i.cm = and i8 %.val.i, 7
  switch i8 %i.cm, label %sdslen.exit [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.lr.ph586
  %i.cn = lshr i8 %.val.i, 3
  %i.co = zext nneg i8 %i.cn to i64
  br label %sdslen.exit

bb.z:                                             ; preds = %.lr.ph586
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !72
  %i.cr = zext i8 %i.cq to i64
  br label %sdslen.exit

bb.aa:                                            ; preds = %.lr.ph586
  %i.cs = getelementptr inbounds i8, ptr %i.ck, i64 -5
  %i.ct = load i16, ptr %i.cs, align 1, !tbaa !77
  %i.cu = zext i16 %i.ct to i64
  br label %sdslen.exit

bb.ab:                                            ; preds = %.lr.ph586
  %i.cv = getelementptr inbounds i8, ptr %i.ck, i64 -9
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !9
  %i.cx = zext i32 %i.cw to i64
  br label %sdslen.exit

bb.ac:                                            ; preds = %.lr.ph586
  %i.cy = getelementptr inbounds i8, ptr %i.ck, i64 -17
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !76
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph586, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i = phi i64 [ %i.cz, %bb.ac ], [ %i.co, %bb.y ], [ %i.cr, %bb.z ], [ %i.cu, %bb.aa ], [ %i.cx, %bb.ab ], [ 0, %.lr.ph586 ]
  %i.da = call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef nonnull %i.ck, i64 noundef %.0.i) ; 2 uses
  %.not428 = icmp eq i64 %i.da, -1
  br i1 %.not428, label %.thread494, label %bb.x

.thread494:                                       ; preds = %sdslen.exit
  call void @dictResetIterator(ptr noundef nonnull %4) #20
  br label %.thread497

.thread497:                                       ; preds = %.thread494, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread

._crit_edge587:                                   ; preds = %bb.x, %bb.w
  %.5306.lcssa = phi i64 [ %i.cf, %bb.w ], [ %i.ch, %bb.x ]
  call void @dictResetIterator(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.loopexit

bb.ad:                                            ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !82
  %i.dd = tail call i64 @intsetBlobLen(ptr noundef %i.dc) #20
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !82
  %i.df = tail call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.de, i64 noundef %i.dd) ; 2 uses
  %.not426 = icmp eq i64 %i.df, -1
  br i1 %.not426, label %.thread, label %.loopexit

bb.ae:                                            ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !82
  %i.di = tail call i64 @lpBytes(ptr noundef %i.dh) #20
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !82
  %i.dk = tail call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.dj, i64 noundef %i.di) ; 2 uses
  %.not425 = icmp eq i64 %i.dk, -1
  br i1 %.not425, label %.thread, label %.loopexit

bb.af:                                            ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 1074, ptr noundef nonnull @.str.18) #20
  tail call void @abort() #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  %12 = lshr i32 %i.i, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %bb.av [
    i32 11, label %bb.ah
    i32 7, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !82
  %i.dn = tail call i64 @lpBytes(ptr noundef %i.dm) #20
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !82
  %i.dp = tail call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.do, i64 noundef %i.dn) ; 2 uses
  %.not424 = icmp eq i64 %i.dp, -1
  br i1 %.not424, label %.thread, label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !82
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !135 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !138
  %i.dw = tail call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.dv) ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = zext nneg i32 %i.dw to i64              ; 2 uses
  %.0353.in575 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.0353576 = load ptr, ptr %.0353.in575, align 8, !tbaa !141 ; 2 uses
  %.not423577 = icmp eq ptr %.0353576, null
  br i1 %.not423577, label %.loopexit, label %.lr.ph581

.lr.ph581:                                        ; preds = %bb.aj
  %.not.i.i445 = icmp eq ptr %0, null
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph581, %.loopexit541
  %.0353579 = phi ptr [ %.0353576, %.lr.ph581 ], [ %.0353, %.loopexit541 ] ; 3 uses
  %.11312578 = phi i64 [ %i.dy, %.lr.ph581 ], [ %i.fn, %.loopexit541 ]
  %i.ee = call ptr @zslGetNodeElement(ptr noundef nonnull %.0353579) #20 ; 6 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %.val.i442 = load i8, ptr %i.ef, align 1, !tbaa !72 ; 2 uses
  %i.eg = and i8 %.val.i442, 7
  switch i8 %i.eg, label %sdslen.exit444 [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ao
    i8 4, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.eh = lshr i8 %.val.i442, 3
  %i.ei = zext nneg i8 %i.eh to i64
  br label %sdslen.exit444

bb.am:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 -3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !72
  %i.el = zext i8 %i.ek to i64
  br label %sdslen.exit444

bb.an:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds i8, ptr %i.ee, i64 -5
  %i.en = load i16, ptr %i.em, align 1, !tbaa !77
  %i.eo = zext i16 %i.en to i64
  br label %sdslen.exit444

bb.ao:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds i8, ptr %i.ee, i64 -9
  %i.eq = load i32, ptr %i.ep, align 1, !tbaa !9
  %i.er = zext i32 %i.eq to i64
  br label %sdslen.exit444

bb.ap:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds i8, ptr %i.ee, i64 -17
  %i.et = load i64, ptr %i.es, align 1, !tbaa !76
  br label %sdslen.exit444

sdslen.exit444:                                   ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  %.0.i443 = phi i64 [ %i.et, %bb.ap ], [ %i.ei, %bb.al ], [ %i.el, %bb.am ], [ %i.eo, %bb.an ], [ %i.er, %bb.ao ], [ 0, %bb.ak ]
  %i.eu = call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef nonnull %i.ee, i64 noundef %.0.i443) ; 2 uses
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %sdslen.exit444
  %i.ew = load double, ptr %.0353579, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.ew, ptr %i.d, align 8, !tbaa !84
  br i1 %.not.i.i445, label %.loopexit541, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = load i64, ptr %i.dz, align 8, !tbaa !65
  %i.ey = and i64 %i.ex, 2
  %.not.i.i.i446 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i446, label %.preheader.i.i.i, label %rdbSaveBinaryDoubleValue.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.ar, %bb.au
  %.02538.i.i.i = phi i64 [ %i.fj, %bb.au ], [ 8, %bb.ar ] ; 3 uses
  %.02737.i.i.i = phi ptr [ %i.fi, %bb.au ], [ %i.d, %bb.ar ] ; 3 uses
  %i.ez = load i64, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i.i = icmp eq i64 %i.ez, 0
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ez, i64 %.02538.i.i.i)
  %i.fb = select i1 %.not32.not.i.i.i, i64 %.02538.i.i.i, i64 %i.fa ; 5 uses
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i447 = icmp eq ptr %i.fc, null
  br i1 %.not33.i.i.i447, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.preheader.i.i.i
  call void %i.fc(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i, i64 noundef %i.fb) #20, !inline_history !142
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i.i.i
  %i.fd = load ptr, ptr %i.ec, align 8, !tbaa !70
  %i.fe = call i64 %i.fd(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i, i64 noundef %i.fb) #20, !inline_history !142
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.thread.i.i.i448, label %bb.au

.thread.i.i.i448:                                 ; preds = %bb.at
  %i.fg = load i64, ptr %i.dz, align 8, !tbaa !65
  %i.fh = or i64 %i.fg, 2
  store i64 %i.fh, ptr %i.dz, align 8, !tbaa !65
  br label %rdbSaveBinaryDoubleValue.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %.02737.i.i.i, i64 %i.fb
  %i.fj = sub i64 %.02538.i.i.i, %i.fb            ; 2 uses
  %i.fk = load i64, ptr %i.ed, align 8, !tbaa !71
  %i.fl = add i64 %i.fk, %i.fb
  store i64 %i.fl, ptr %i.ed, align 8, !tbaa !71
  %.not31.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not31.i.i.i, label %.loopexit541, label %.preheader.i.i.i

rdbSaveBinaryDoubleValue.exit.thread:             ; preds = %bb.ar, %.thread.i.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

.loopexit541:                                     ; preds = %bb.au, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fm = add i64 %.11312578, 8
  %i.fn = add i64 %i.fm, %i.eu                    ; 2 uses
  %.0353.in = getelementptr inbounds nuw i8, ptr %.0353579, i64 8
  %.0353 = load ptr, ptr %.0353.in, align 8, !tbaa !141 ; 2 uses
  %.not423 = icmp eq ptr %.0353, null
  br i1 %.not423, label %.loopexit, label %bb.ak, !llvm.loop !143

bb.av:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 1111, ptr noundef nonnull @.str.19) #20
  tail call void @abort() #23
  unreachable

bb.aw:                                            ; preds = %bb.a
  %14 = lshr i32 %i.i, 4
  %15 = and i32 %14, 15
  switch i32 %15, label %bb.cf [
    i32 11, label %bb.ax
    i32 12, label %bb.ax
    i32 2, label %bb.bf
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.fo = and i64 %i.h, 240
  %i.fp = icmp eq i64 %i.fo, 192
  br i1 %i.fp, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.fq = tail call i64 @hashTypeGetMinExpire(ptr noundef nonnull %1, i32 noundef 0) #20 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 281474976710656
  %spec.store.select = select i1 %i.fr, i64 0, i64 %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %spec.store.select, ptr %i.c, align 8, !tbaa !76
  %.not.i.i449 = icmp eq ptr %0, null
  br i1 %.not.i.i449, label %rdbSaveMillisecondTime.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !65
  %i.fu = and i64 %i.ft, 2
  %.not.i.i.i450 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i450, label %.preheader.i.i.i452, label %rdbSaveMillisecondTime.exit.thread

.preheader.i.i.i452:                              ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %.preheader.i.i.i452
  %.02538.i.i.i453 = phi i64 [ 8, %.preheader.i.i.i452 ], [ %i.gj, %bb.bd ] ; 3 uses
  %.02737.i.i.i454 = phi ptr [ %i.c, %.preheader.i.i.i452 ], [ %i.gi, %bb.bd ] ; 3 uses
  %i.fz = load i64, ptr %i.fv, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i.i455 = icmp eq i64 %i.fz, 0
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fz, i64 %.02538.i.i.i453)
  %i.gb = select i1 %.not32.not.i.i.i455, i64 %.02538.i.i.i453, i64 %i.ga ; 5 uses
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i456 = icmp eq ptr %i.gc, null
  br i1 %.not33.i.i.i456, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void %i.gc(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i454, i64 noundef %i.gb) #20, !inline_history !102
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !70
  %i.ge = call i64 %i.gd(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i454, i64 noundef %i.gb) #20, !inline_history !102
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.thread.i.i.i458, label %bb.bd

.thread.i.i.i458:                                 ; preds = %bb.bc
  %i.gg = load i64, ptr %i.fs, align 8, !tbaa !65
  %i.gh = or i64 %i.gg, 2
  store i64 %i.gh, ptr %i.fs, align 8, !tbaa !65
  br label %rdbSaveMillisecondTime.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.gi = getelementptr inbounds nuw i8, ptr %.02737.i.i.i454, i64 %i.gb
  %i.gj = sub i64 %.02538.i.i.i453, %i.gb         ; 2 uses
  %i.gk = load i64, ptr %i.fy, align 8, !tbaa !71
  %i.gl = add i64 %i.gk, %i.gb
  store i64 %i.gl, ptr %i.fy, align 8, !tbaa !71
  %.not31.i.i.i457 = icmp eq i64 %i.gj, 0
  br i1 %.not31.i.i.i457, label %rdbSaveMillisecondTime.exit, label %bb.ba

rdbSaveMillisecondTime.exit.thread:               ; preds = %.thread.i.i.i458, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.thread

rdbSaveMillisecondTime.exit:                      ; preds = %bb.bd, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.be

bb.be:                                            ; preds = %rdbSaveMillisecondTime.exit, %bb.ax
  %i.gm = call ptr @hashTypeListpackGetLp(ptr noundef nonnull %1) #20 ; 2 uses
  %i.gn = call i64 @lpBytes(ptr noundef %i.gm) #20
  %i.go = call i64 @rdbSaveRawString(ptr noundef %0, ptr noundef %i.gm, i64 noundef %i.gn) ; 2 uses
  %.not422 = icmp eq i64 %i.go, -1
  br i1 %.not422, label %.thread, label %.loopexit

bb.bf:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.gp = tail call i64 @hashTypeGetMinExpire(ptr noundef nonnull %1, i32 noundef 1) #20 ; 3 uses
  %.not417 = icmp eq i64 %i.gp, 281474976710656   ; 2 uses
  br i1 %.not417, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.gp, ptr %i.b, align 8, !tbaa !76
  %.not.i.i459 = icmp eq ptr %0, null
  br i1 %.not.i.i459, label %rdbSaveMillisecondTime.exit469, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !65
  %i.gs = and i64 %i.gr, 2
  %.not.i.i.i460 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i460, label %.preheader.i.i.i462, label %rdbSaveMillisecondTime.exit469.thread

.preheader.i.i.i462:                              ; preds = %bb.bh
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bl, %.preheader.i.i.i462
  %.02538.i.i.i463 = phi i64 [ 8, %.preheader.i.i.i462 ], [ %i.hh, %bb.bl ] ; 3 uses
  %.02737.i.i.i464 = phi ptr [ %i.b, %.preheader.i.i.i462 ], [ %i.hg, %bb.bl ] ; 3 uses
  %i.gx = load i64, ptr %i.gt, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i.i465 = icmp eq i64 %i.gx, 0
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gx, i64 %.02538.i.i.i463)
  %i.gz = select i1 %.not32.not.i.i.i465, i64 %.02538.i.i.i463, i64 %i.gy ; 5 uses
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i466 = icmp eq ptr %i.ha, null
  br i1 %.not33.i.i.i466, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void %i.ha(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i464, i64 noundef %i.gz) #20, !inline_history !102
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !70
  %i.hc = call i64 %i.hb(ptr noundef nonnull %0, ptr noundef %.02737.i.i.i464, i64 noundef %i.gz) #20, !inline_history !102
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %.thread.i.i.i468, label %bb.bl

.thread.i.i.i468:                                 ; preds = %bb.bk
  %i.he = load i64, ptr %i.gq, align 8, !tbaa !65
  %i.hf = or i64 %i.he, 2
  store i64 %i.hf, ptr %i.gq, align 8, !tbaa !65
  br label %rdbSaveMillisecondTime.exit469.thread

bb.bl:                                            ; preds = %bb.bk
  %i.hg = getelementptr inbounds nuw i8, ptr %.02737.i.i.i464, i64 %i.gz
  %i.hh = sub i64 %.02538.i.i.i463, %i.gz         ; 2 uses
  %i.hi = load i64, ptr %i.gw, align 8, !tbaa !71
  %i.hj = add i64 %i.hi, %i.gz
  store i64 %i.hj, ptr %i.gw, align 8, !tbaa !71
  %.not31.i.i.i467 = icmp eq i64 %i.hh, 0
  br i1 %.not31.i.i.i467, label %rdbSaveMillisecondTime.exit469, label %bb.bi

rdbSaveMillisecondTime.exit469.thread:            ; preds = %.thread.i.i.i468, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread520

rdbSaveMillisecondTime.exit469:                   ; preds = %bb.bl, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bm

bb.bm:                                            ; preds = %rdbSaveMillisecondTime.exit469, %bb.bf
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !82 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !76
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !76
  %i.hq = add i64 %i.hp, %i.hn
  %i.hr = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.hq) ; 2 uses
  %i.hs = icmp eq i32 %i.hr, -1
  br i1 %i.hs, label %.thread520, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.hu = load ptr, ptr %i.hk, align 8, !tbaa !82
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.hu) #20
  %i.hv = call ptr @dictNext(ptr noundef nonnull %5) #20 ; 2 uses
  %.not418569 = icmp eq ptr %i.hv, null
  br i1 %.not418569, label %._crit_edge573, label %.lr.ph572.preheader

.lr.ph572.preheader:                              ; preds = %bb.bn
  %invariant.op = sub i64 1, %i.gp
  br label %.lr.ph572

bb.bo:                                            ; preds = %sdslen.exit475
  %i.hw = add nsw i64 %i.iy, %i.jo                ; 2 uses
  %i.hx = call ptr @dictNext(ptr noundef nonnull %5) #20 ; 2 uses
  %.not418 = icmp eq ptr %i.hx, null
  br i1 %.not418, label %._crit_edge573, label %.lr.ph572, !llvm.loop !144

.lr.ph572:                                        ; preds = %.lr.ph572.preheader, %bb.bo
  %i.hy = phi ptr [ %i.hx, %bb.bo ], [ %i.hv, %.lr.ph572.preheader ]
  %.16317570 = phi i64 [ %i.hw, %bb.bo ], [ %i.ht, %.lr.ph572.preheader ] ; 2 uses
  %i.hz = call ptr @dictGetKey(ptr noundef nonnull %i.hy) #20 ; 8 uses
  %i.ia = call ptr @entryGetValue(ptr noundef %i.hz) #20 ; 6 uses
  br i1 %.not417, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph572
  %i.ib = call i64 @entryGetExpiry(ptr noundef %i.hz) #20 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 281474976710656
  %.reass.reass = add i64 %i.ib, %invariant.op
  %i.id = select i1 %i.ic, i64 0, i64 %.reass.reass
  %i.ie = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.id) ; 2 uses
  %.not420 = icmp eq i32 %i.ie, -1
  br i1 %.not420, label %.thread513, label %bb.bq

.thread513:                                       ; preds = %bb.bp
  call void @dictResetIterator(ptr noundef nonnull %5) #20
  br label %.thread520
end_hunk_2
