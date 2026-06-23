inline.NumInlined: 280
inline.NumDeleted: 31
begin_hunk_0_@zsetConvertToListpackIfNeeded:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.r = tail call i64 @lpLength(ptr noundef %i.q) #17
  %i.s = lshr i64 %i.r, 1
  %i.t = and i64 %i.s, 4294967295
  br label %zsetConvert.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  br label %zsetConvert.exit

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetConvert.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.t, %bb.e ], [ %i.y, %bb.f ]
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 11, i64 noundef %.0.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %zsetConvert.exit, %bb.a
  ret void
}

declare i32 @lpSafeToAdd(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zsetScore(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.e [
    i32 11, label %bb.c
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = tail call fastcc ptr @zzlFind(ptr noundef %i.h, ptr noundef nonnull %1, ptr noundef %2)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = tail call ptr @dictFind(ptr noundef %i.m, ptr noundef nonnull %1) #17 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.d
  %i.p = tail call ptr @dictGetKey(ptr noundef nonnull %i.n) #17
  %i.q = load double, ptr %i.p, align 8, !tbaa !16
  store double %i.q, ptr %2, align 8, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.f:                                             ; preds = %.thread, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.f
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.f ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlFind(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = tail call ptr @lpFirst(ptr noundef %0) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !36 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %1, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !37
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %1, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.b ]
  %i.u = trunc i64 %.0.i to i32
  %i.v = tail call ptr @lpFind(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef %i.u, i32 noundef 1) #17 ; 4 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  %i.w = tail call ptr @lpNext(ptr noundef %0, ptr noundef nonnull %i.v) #17 ; 2 uses
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.i, label %bb.j, !prof !91

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1237) #17
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.x = call ptr @lpGetValue(ptr noundef nonnull %i.w, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.y, i32 127)
  %i.z = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !36
  %i.ab = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ad = sitofp i64 %i.ac to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.l, %bb.m
  %.0.i20 = phi double [ %i.ab, %bb.l ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store double %.0.i20, ptr %2, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %sdslen.exit, %bb.j, %zzlGetScore.exit, %bb.a
  %.0 = phi ptr [ %i.v, %bb.j ], [ null, %bb.a ], [ %i.v, %zzlGetScore.exit ], [ null, %sdslen.exit ]
  ret ptr %.0
}

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetAdd(ptr noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = and i32 %3, 1
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = and i32 %3, 2
  %.not99 = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.g = and i32 %3, 4
  %.not100 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = and i32 %3, 8
  %.not101 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = and i32 %3, 16
  %.not102 = icmp eq i32 %i.i, 0                  ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.j = fcmp uno double %1, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = and i64 %i.k, 240
  %i.m = icmp eq i64 %i.l, 176
  br i1 %i.m, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = call fastcc ptr @zzlFind(ptr noundef %i.o, ptr noundef %2, ptr noundef nonnull %i.c) ; 2 uses
  %.not103 = icmp eq ptr %i.p, null
  br i1 %.not103, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not99, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %4, align 4, !tbaa !9
  %i.r = or i32 %i.q, 1
  store i32 %i.r, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %.pre = load double, ptr %i.c, align 8          ; 4 uses
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = fadd double %1, %.pre                    ; 2 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %4, align 4, !tbaa !9
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %.089 = phi double [ %i.s, %bb.h ], [ %1, %bb.g ] ; 5 uses
  %i.w = fcmp ult double %.089, %.pre
  %or.cond = select i1 %.not102, i1 true, i1 %i.w
  %i.x = fcmp ugt double %.089, %.pre
  %or.cond112 = select i1 %.not101, i1 true, i1 %i.x
  %or.cond126 = select i1 %or.cond, i1 %or.cond112, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %4, align 4, !tbaa !9
  %i.z = or i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store double %.089, ptr %5, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = fcmp une double %.089, %.pre
  br i1 %i.aa, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !78
  %i.ac = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.ab, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !75
  %i.ad = call ptr @zzlInsert(ptr noundef %i.ac, ptr noundef %2, double noundef %.089)
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !75
  %i.ae = load i32, ptr %4, align 4, !tbaa !9
  %i.af = or i32 %i.ae, 8
  store i32 %i.af, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.p:                                             ; preds = %bb.d
  br i1 %.not100, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ah = call i64 @lpLength(ptr noundef %i.ag) #17
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !108
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %2, i64 -1
  %.val.i = load i8, ptr %i.an, align 1, !tbaa !36 ; 3 uses
  %i.ao = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.ao, label %sdslen.exit.thread [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.ap = lshr i8 %.val.i, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit

bb.t:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds i8, ptr %2, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds i8, ptr %2, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds i8, ptr %2, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds i8, ptr %2, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi i64 [ %i.bb, %bb.w ], [ %i.aq, %bb.s ], [ %i.at, %bb.t ], [ %i.aw, %bb.u ], [ %i.az, %bb.v ]
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7984), align 8, !tbaa !138
  %i.bd = icmp ugt i64 %.0.i, %i.bc
  br i1 %i.bd, label %bb.ac, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.r, %sdslen.exit
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !75
  switch i8 %i.ao, label %sdslen.exit119 [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %sdslen.exit.thread
  %i.bf = lshr i8 %.val.i, 3
  %i.bg = zext nneg i8 %i.bf to i64
  br label %sdslen.exit119

bb.y:                                             ; preds = %sdslen.exit.thread
  %i.bh = getelementptr inbounds i8, ptr %2, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bj = zext i8 %i.bi to i64
  br label %sdslen.exit119

bb.z:                                             ; preds = %sdslen.exit.thread
  %i.bk = getelementptr inbounds i8, ptr %2, i64 -5
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !37
  %i.bm = zext i16 %i.bl to i64
  br label %sdslen.exit119

bb.aa:                                            ; preds = %sdslen.exit.thread
  %i.bn = getelementptr inbounds i8, ptr %2, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i32 %i.bo to i64
  br label %sdslen.exit119

bb.ab:                                            ; preds = %sdslen.exit.thread
  %i.bq = getelementptr inbounds i8, ptr %2, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !24
  br label %sdslen.exit119

sdslen.exit119:                                   ; preds = %sdslen.exit.thread, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i118 = phi i64 [ %i.br, %bb.ab ], [ %i.bg, %bb.x ], [ %i.bj, %bb.y ], [ %i.bm, %bb.z ], [ %i.bp, %bb.aa ], [ 0, %sdslen.exit.thread ]
  %i.bs = call i32 @lpSafeToAdd(ptr noundef %i.be, i64 noundef %.0.i118) #17
  %.not104 = icmp eq i32 %i.bs, 0
  br i1 %.not104, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %sdslen.exit119, %sdslen.exit, %bb.q
  %i.bt = load i64, ptr %0, align 8
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 4
  %i.bw = and i32 %i.bv, 15
  switch i32 %i.bw, label %bb.af [
    i32 11, label %bb.ad
    i32 7, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.by = call i64 @lpLength(ptr noundef %i.bx) #17
  %i.bz = lshr i64 %i.by, 1
  %i.ca = and i64 %i.bz, 4294967295
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !23
  br label %bb.ak

bb.af:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.ag:                                            ; preds = %sdslen.exit119
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ch = call ptr @zzlInsert(ptr noundef %i.cg, ptr noundef nonnull %2, double noundef %1)
  store ptr %i.ch, ptr %i.n, align 8, !tbaa !75
  %.not105 = icmp eq ptr %5, null
  br i1 %.not105, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store double %1, ptr %5, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ci = load i32, ptr %4, align 4, !tbaa !9
  %i.cj = or i32 %i.ci, 4
  store i32 %i.cj, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.aj:                                            ; preds = %bb.p
  %i.ck = load i32, ptr %4, align 4, !tbaa !9
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %.0.i120 = phi i64 [ %i.ca, %bb.ad ], [ %i.cf, %bb.ae ]
  %i.cm = add i64 %.0.i120, 1
  call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 7, i64 noundef %i.cm)
  %.pre131 = load i64, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.c
  %i.cn = phi i64 [ %.pre131, %bb.ak ], [ %i.k, %bb.c ]
  %i.co = and i64 %i.cn, 240
  %i.cp = icmp eq i64 %i.co, 112
  br i1 %i.cp, label %bb.am, label %bb.bn

bb.am:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = call ptr @dictFindLink(ptr noundef %i.cs, ptr noundef %2, ptr noundef nonnull %i.d) #17 ; 2 uses
  %.not107 = icmp eq ptr %i.ct, null
  br i1 %.not107, label %bb.bi, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not99, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = load i32, ptr %4, align 4, !tbaa !9
  %i.cv = or i32 %i.cu, 1
  store i32 %i.cv, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.ap:                                            ; preds = %bb.an
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !139
  %i.cx = call ptr @dictGetKey(ptr noundef %i.cw) #17 ; 15 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !16 ; 4 uses
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = fadd double %1, %i.cy                   ; 2 uses
  %i.da = fcmp uno double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i32, ptr %4, align 4, !tbaa !9
  %i.dc = or i32 %i.db, 2
  store i32 %i.dc, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.3 = phi double [ %i.cz, %bb.aq ], [ %1, %bb.ap ] ; 8 uses
  %i.dd = fcmp ult double %.3, %i.cy
  %or.cond114 = select i1 %.not102, i1 true, i1 %i.dd
  %i.de = fcmp ugt double %.3, %i.cy
  %or.cond116 = select i1 %.not101, i1 true, i1 %i.de
  %or.cond127 = select i1 %or.cond114, i1 %or.cond116, i1 false
  br i1 %or.cond127, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.df = load i32, ptr %4, align 4, !tbaa !9
  %i.dg = or i32 %i.df, 1
  store i32 %i.dg, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.au:                                            ; preds = %bb.as
  %.not109 = icmp eq ptr %5, null
  br i1 %.not109, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double %.3, ptr %5, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dh = fcmp une double %.3, %i.cy
  br i1 %i.dh, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !103 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !16
  %i.do = fcmp olt double %i.dn, %.3
  br i1 %i.do, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !16
  %i.dt = fcmp ogt double %i.ds, %.3
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %.3, ptr %i.cx, align 8, !tbaa !16
  br label %zslUpdateScore.exit

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.du = load double, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !13
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dx
  %i.dz = load ptr, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !18 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.bc
  %i.ed = zext nneg i32 %i.eb to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %zslCompareWithNode.exit.thread.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.ed, %.preheader.preheader.i ], [ %indvars.iv.next.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %.046.i = phi ptr [ %i.dz, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ee = getelementptr [16 x i8], ptr %.046.i, i64 %indvars.iv.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %zslCompareWithNode.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !16 ; 2 uses
  %i.ei = fcmp olt double %i.du, %i.eh
  br i1 %i.ei, label %zslCompareWithNode.exit.thread.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %zslCompareWithNode.exit.thread34.i
  %i.ej = load double, ptr %i.ex, align 8, !tbaa !16 ; 2 uses
  %i.ek = fcmp olt double %i.du, %i.ej
  br i1 %i.ek, label %zslCompareWithNode.exit.thread.i, label %.lr.ph, !llvm.loop !141

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.el = phi double [ %i.ej, %.lr.ph.i ], [ %i.eh, %.lr.ph.i.preheader ]
  %.138.i128 = phi ptr [ %i.ev, %.lr.ph.i ], [ %.046.i, %.lr.ph.i.preheader ]
  %i.em = phi ptr [ %i.ew, %.lr.ph.i ], [ %i.ee, %.lr.ph.i.preheader ]
  %i.en = phi ptr [ %i.ex, %.lr.ph.i ], [ %i.ef, %.lr.ph.i.preheader ] ; 3 uses
  %i.eo = fcmp ogt double %i.du, %i.el
  br i1 %i.eo, label %zslCompareWithNode.exit.thread34.i, label %zslCompareWithNode.exit.i

zslCompareWithNode.exit.i:                        ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.er = zext i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.er
  %i.et = call i32 @sdscmp(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.es) #17
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i, label %zslCompareWithNode.exit.thread.i

zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i: ; preds = %zslCompareWithNode.exit.i
  %.pre.i = load ptr, ptr %i.em, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread34.i

zslCompareWithNode.exit.thread34.i:               ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i, %.lr.ph
  %i.ev = phi ptr [ %.pre.i, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i ], [ %i.en, %.lr.ph ] ; 4 uses
  %i.ew = getelementptr [16 x i8], ptr %i.ev, i64 %indvars.iv.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !141

zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge: ; preds = %zslCompareWithNode.exit.thread34.i
  br label %zslCompareWithNode.exit.thread.i, !llvm.loop !141

zslCompareWithNode.exit.thread.i:                 ; preds = %.lr.ph.i, %zslCompareWithNode.exit.i, %.lr.ph.i.preheader, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.046.i, %.preheader.i ], [ %.046.i, %.lr.ph.i.preheader ], [ %i.ev, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.ev, %.lr.ph.i ], [ %.138.i128, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.ez, align 8, !tbaa !29
  %i.fa = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.fa, label %.preheader.i, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.bc
  %.0.lcssa.i = phi ptr [ %i.dz, %bb.bc ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %i.fd = icmp eq ptr %i.fc, %i.cx
  br i1 %i.fd, label %bb.be, label %bb.bd, !prof !34

bb.bd:                                            ; preds = %._crit_edge.i
  call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 423) #17
  call void @abort() #18
  unreachable

bb.be:                                            ; preds = %._crit_edge.i
  %i.fe = load i32, ptr %i.ea, align 8, !tbaa !18 ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fe to i64
  %i.fh = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !31
  %i.fk = icmp eq ptr %i.fj, %i.cx
  br i1 %i.fk, label %zslIncrNodeSpanAtLevel.exit.peel.i.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslIncrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %.lr.ph.i.i
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !31
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslDecrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i.i, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %i.fe, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.thread.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %zslDecrNodeSpanAtLevel.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %zslDecrNodeSpanAtLevel.exit.i.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i.i ] ; 7 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %indvars.iv.i.i ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !31
  %i.fr = icmp eq ptr %i.fq, %i.cx
  br i1 %i.fr, label %zslIncrNodeSpanAtLevel.exit.i.i, label %bb.bf

zslIncrNodeSpanAtLevel.exit.i.i:                  ; preds = %.peel.next.i.i
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = add i64 %i.fu, -1
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !26
  %i.fz = add i64 %i.fv, %i.fy
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !26
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31
  store ptr %i.gb, ptr %i.fp, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@zzlDeleteRangeByScore:bb.a
  %i.l = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.l, i32 127)
  %i.m = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !36
  %i.o = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !92
  %i.q = sitofp i64 %i.p to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.r = load i32, ptr %i.g, align 4, !tbaa !48
  %.not.i22 = icmp eq i32 %i.r, 0
  %i.s = load double, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.t = fcmp uge double %.0.i, %i.s
  %i.u = fcmp ugt double %.0.i, %i.s
  %.in.i = select i1 %.not.i22, i1 %i.u, i1 %i.t
  br i1 %.in.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %zzlGetScore.exit
  %i.v = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01623, ptr noundef nonnull %i.d, i64 noundef 2) #17 ; 2 uses
  %i.w = add i64 %.024, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !175

.critedge:                                        ; preds = %bb.b, %zzlGetScore.exit, %bb.f
  %.016.lcssa = phi ptr [ %.01623, %bb.b ], [ %.01623, %zzlGetScore.exit ], [ %i.v, %bb.f ]
  %.0.lcssa = phi i64 [ %.024, %bb.b ], [ %.024, %zzlGetScore.exit ], [ %i.w, %bb.f ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge
  %.015 = phi ptr [ %.016.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlDeleteRangeByLex(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %2, align 8, !tbaa !24
  %i.b = tail call ptr @zzlFirstInLexRange(ptr noundef %0, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.020 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %.01419 = phi ptr [ %i.h, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.pr, %bb.c ], [ %i.b, %bb.a ]
  %i.e = call ptr @lpNext(ptr noundef %.01419, ptr noundef nonnull %i.d) #17
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.g = call i32 @zzlLexValueLteMax(ptr noundef %i.f, ptr noundef nonnull %1)
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01419, ptr noundef nonnull %i.a, i64 noundef 2) #17 ; 2 uses
  %i.i = add i64 %.020, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !176

.critedge:                                        ; preds = %.preheader, %bb.b, %bb.c
  %.014.lcssa = phi ptr [ %.01419, %.preheader ], [ %.01419, %bb.b ], [ %i.h, %bb.c ]
  %.0.lcssa = phi i64 [ %.020, %.preheader ], [ %.020, %bb.b ], [ %i.i, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.013 = phi ptr [ %.014.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByRank(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 3 uses
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 6 uses
  %.068 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 6 uses
  %.03466 = phi i64 [ 0, %.preheader.lr.ph ], [ %.135.lcssa, %.critedge ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.j = getelementptr [16 x i8], ptr %.068, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not44 = icmp eq i64 %indvars.iv, 1
  br i1 %.not44, label %.lr.ph.split.us, label %zslGetNodeSpanAtLevel.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i.us61 = icmp ne ptr %i.l, null
  %i.m = zext i1 %.not.i.us61 to i64
  %i.n = add i64 %.03466, %i.m
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %.thread.us, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.068, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge.loopexit

zslGetNodeSpanAtLevel.exit.thread.us:             ; preds = %.thread.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not.i.us = icmp ne ptr %i.r, null
  %i.s = zext i1 %.not.i.us to i64
  %i.t = add i64 %i.y, %i.s
  %i.u = icmp ult i64 %i.t, %i.g
  br i1 %i.u, label %.thread.us, label %.critedge, !llvm.loop !177

.thread.us:                                       ; preds = %.lr.ph.split.us, %zslGetNodeSpanAtLevel.exit.thread.us
  %i.v = phi ptr [ %i.r, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.l, %.lr.ph.split.us ]
  %.13546.us62 = phi i64 [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %.03466, %.lr.ph.split.us ]
  %i.w = phi ptr [ %i.aa, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.k, %.lr.ph.split.us ] ; 4 uses
  %.not.i37.us = icmp ne ptr %i.v, null
  %i.x = zext i1 %.not.i37.us to i64
  %i.y = add i64 %.13546.us62, %i.x               ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not.us = icmp eq ptr %i.aa, null
  br i1 %.not.us, label %.critedge, label %zslGetNodeSpanAtLevel.exit.thread.us, !llvm.loop !177

zslGetNodeSpanAtLevel.exit:                       ; preds = %.lr.ph, %zslGetNodeSpanAtLevel.exit39
  %i.ab = phi ptr [ %i.ai, %zslGetNodeSpanAtLevel.exit39 ], [ %i.k, %.lr.ph ] ; 3 uses
  %.147 = phi ptr [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.068, %.lr.ph ] ; 2 uses
  %.13546 = phi i64 [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.03466, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.147, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = add i64 %i.ae, %.13546                  ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.g
  br i1 %i.ag, label %zslGetNodeSpanAtLevel.exit39, label %.critedge

zslGetNodeSpanAtLevel.exit39:                     ; preds = %zslGetNodeSpanAtLevel.exit
  %i.ah = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.critedge, label %zslGetNodeSpanAtLevel.exit, !llvm.loop !177

.critedge:                                        ; preds = %zslGetNodeSpanAtLevel.exit, %zslGetNodeSpanAtLevel.exit39, %.thread.us, %zslGetNodeSpanAtLevel.exit.thread.us, %.preheader
  %.135.lcssa = phi i64 [ %.03466, %.preheader ], [ %i.y, %.thread.us ], [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.13546, %zslGetNodeSpanAtLevel.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.068, %.preheader ], [ %i.w, %.thread.us ], [ %i.w, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.147, %zslGetNodeSpanAtLevel.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %.critedge, %.critedge.thread
  %.1.lcssa96 = phi ptr [ %.068, %.critedge.thread ], [ %.1.lcssa, %.critedge ]
  %.135.lcssa95 = phi i64 [ %.03466, %.critedge.thread ], [ %.135.lcssa, %.critedge ]
  %i.al = add i64 %.135.lcssa95, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi i64 [ 1, %bb.a ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa96, %._crit_edge.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = zext i32 %2 to i64                      ; 2 uses
  %i.ap = icmp ne ptr %i.an, null
  %i.aq = icmp ule i64 %.034.lcssa, %i.ao
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge
  %4 = load ptr, ptr %i.b, align 16
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %zslUnlinkNode.exit
  %.23675 = phi i64 [ %.034.lcssa, %.lr.ph77 ], [ %.236, %zslUnlinkNode.exit ] ; 2 uses
  %.274 = phi ptr [ %i.an, %.lr.ph77 ], [ %i.av, %zslUnlinkNode.exit ] ; 9 uses
  %.03373 = phi i64 [ 0, %.lr.ph77 ], [ %i.cv, %zslUnlinkNode.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.274, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 4 uses
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.ay = load ptr, ptr %5, align 8, !tbaa !31
  %i.az = icmp eq ptr %i.ay, %.274
  br i1 %i.az, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.av, ptr %5, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.aw, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq ptr %i.be, %.274
  br i1 %i.bf, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.c

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.274, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bn = add i64 %i.bj, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  store ptr %i.bp, ptr %i.bd, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.c:                                             ; preds = %.peel.next.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.c, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.b
  %i.bu = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.av, %bb.b ] ; 2 uses
  %.not.i4042 = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  %..i43 = select i1 %.not.i4042, ptr %0, ptr %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %..i43, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not.i40 = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %..i = select i1 %.not.i40, ptr %0, ptr %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !29
  %i.cc = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i
  %i.cd = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.cj, %bb.e ] ; 3 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr [16 x i8], ptr %i.cc, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.e, label %zslUnlinkNode.exit

bb.e:                                             ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !26
  %i.cj = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.d, align 8, !tbaa !18
  %i.ck = icmp sgt i32 %i.cd, 2
  br i1 %i.ck, label %bb.d, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.d, %bb.e, %._crit_edge.i.thread
  %i.cl = load i64, ptr %i.as, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.as, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %.274, i64 24
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !13
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.274, i64 %i.cp
  %i.cr = call i32 @dictDelete(ptr noundef %3, ptr noundef nonnull %i.cq) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.274, ptr noundef nonnull %i.a) #17
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !25
  %i.cu = sub i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.at, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cv = add nuw nsw i64 %.03373, 1              ; 2 uses
  %.236 = add nuw nsw i64 %.23675, 1
  %i.cw = icmp ne ptr %i.av, null
  %i.cx = icmp ult i64 %.23675, %i.ao
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %bb.b, label %._crit_edge78, !llvm.loop !179

._crit_edge78:                                    ; preds = %zslUnlinkNode.exit, %._crit_edge
  %.033.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cv, %zslUnlinkNode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.033.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByScore(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.040 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1, %.critedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.040, %.preheader ] ; 4 uses
  %i.i = getelementptr [16 x i8], ptr %.1, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.j, align 8, !tbaa !16 ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load double, ptr %1, align 8, !tbaa !47  ; 2 uses
  %i.n = fcmp ule double %i.k, %i.m
  %i.o = fcmp ult double %i.k, %i.m
  %.in.i = select i1 %.not.i, i1 %i.o, i1 %i.n
  br i1 %.in.i, label %bb.b, label %.critedge, !llvm.loop !180

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1, ptr %i.p, align 8, !tbaa !29
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.preheader, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1, %.critedge ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load ptr, ptr %i.b, align 16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %zslUnlinkNode.exit
  %.244 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %zslUnlinkNode.exit ] ; 10 uses
  %.02943 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %zslUnlinkNode.exit ] ; 2 uses
  %i.x = load double, ptr %.244, align 8, !tbaa !16 ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !48
  %.not.i34 = icmp eq i32 %i.y, 0
  %i.z = load double, ptr %i.u, align 8, !tbaa !49 ; 2 uses
  %i.aa = fcmp uge double %i.x, %i.z
  %i.ab = fcmp ugt double %i.x, %i.z
  %.in.i35 = select i1 %.not.i34, i1 %i.ab, i1 %i.aa
  br i1 %.in.i35, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.244, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %4, align 8, !tbaa !31
  %i.ah = icmp eq ptr %i.ag, %.244
  br i1 %i.ah, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ae, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = icmp eq ptr %i.am, %.244
  br i1 %i.an, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.f

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.244, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = add i64 %i.ar, %i.au
  store i64 %i.av, ptr %i.at, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.f:                                             ; preds = %.peel.next.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.f, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.e
  %i.bc = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.ad, %bb.e ] ; 2 uses
  %.not.i3637 = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29
  %..i38 = select i1 %.not.i3637, ptr %0, ptr %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %..i38, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bg, null
  %i.bh = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29
  %..i = select i1 %.not.i36, ptr %0, ptr %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !29
  %i.bk = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge.i
  %i.bl = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.br, %bb.h ] ; 3 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr [16 x i8], ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.h, label %zslUnlinkNode.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !26
  %i.br = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.br, ptr %i.d, align 8, !tbaa !18
  %i.bs = icmp sgt i32 %i.bl, 2
  br i1 %i.bs, label %bb.g, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.g, %bb.h, %._crit_edge.i.thread
  %i.bt = load i64, ptr %i.v, align 8, !tbaa !23
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.v, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %.244, i64 24
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !13
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.244, i64 %i.bx
  %i.bz = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.by) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.244, ptr noundef nonnull %i.a) #17
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cb = load i64, ptr %i.w, align 8, !tbaa !25
  %i.cc = sub i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cd = add i64 %.02943, 1                      ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge2, label %bb.d, !llvm.loop !182

.critedge2:                                       ; preds = %bb.d, %zslUnlinkNode.exit, %._crit_edge
  %.029.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cd, %zslUnlinkNode.exit ], [ %.02943, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.029.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByLex(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.066 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %.066, i64 %indvars.iv ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not3251 = icmp eq ptr %i.j, null
  br i1 %.not3251, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %zslLexValueGteMin.exit.thread
  %i.k = phi ptr [ %i.ai, %zslLexValueGteMin.exit.thread ], [ %i.j, %.preheader ] ; 7 uses
  %i.l = phi ptr [ %i.ah, %zslLexValueGteMin.exit.thread ], [ %i.i, %.preheader ]
  %.152 = phi ptr [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.066, %.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i16, ptr %i.m, align 2, !tbaa !13
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 6 uses
  %i.q = load i32, ptr %i.g, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %1, align 8, !tbaa !68     ; 6 uses
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %zslLexValueGteMin.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %zslLexValueGteMin.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.w = icmp eq ptr %i.r, %i.v
  br i1 %i.w, label %zslLexValueGteMin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.p, %i.v
  %i.y = icmp eq ptr %i.r, %i.t
  %or.cond.i.i = or i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %.critedge, label %zslLexValueGteMin.exit

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.aa = icmp eq ptr %i.p, %i.z
  br i1 %i.aa, label %zslLexValueGteMin.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %zslLexValueGteMin.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %i.p, %i.ab
  %i.ae = icmp eq ptr %i.r, %i.z
  %or.cond.i5.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i5.i, label %.critedge, label %zslLexValueGteMin.exit

zslLexValueGteMin.exit:                           ; preds = %bb.e, %bb.i
  %.sink14.i = phi i32 [ 0, %bb.e ], [ -1, %bb.i ]
  %i.af = tail call i32 @sdscmp(ptr noundef nonnull %i.p, ptr noundef %i.r) #17
  %.not50 = icmp sgt i32 %i.af, %.sink14.i
  br i1 %.not50, label %.critedge, label %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge

zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge: ; preds = %zslLexValueGteMin.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !31
  br label %zslLexValueGteMin.exit.thread

zslLexValueGteMin.exit.thread:                    ; preds = %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge, %bb.g, %bb.d, %bb.c, %bb.b, %bb.h
  %i.ag = phi ptr [ %.pre, %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge ], [ %i.k, %bb.g ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.h ] ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not32 = icmp eq ptr %i.ai, null
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !183

.critedge:                                        ; preds = %zslLexValueGteMin.exit, %zslLexValueGteMin.exit.thread, %bb.e, %bb.i, %bb.f, %.preheader
  %.1.lcssa = phi ptr [ %.066, %.preheader ], [ %.152, %bb.f ], [ %.152, %bb.i ], [ %.152, %bb.e ], [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.152, %zslLexValueGteMin.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa, %.critedge ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not69 = icmp eq ptr %i.am, null
  br i1 %.not69, label %.critedge2, label %.lr.ph73

.lr.ph73:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load ptr, ptr %i.b, align 16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph73, %zslUnlinkNode.exit
  %.271 = phi ptr [ %i.am, %.lr.ph73 ], [ %i.bp, %zslUnlinkNode.exit ] ; 10 uses
  %.02970 = phi i64 [ 0, %.lr.ph73 ], [ %i.do, %zslUnlinkNode.exit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.271, i64 24 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !13
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.271, i64 %i.at ; 7 uses
  %i.av = load i32, ptr %i.an, align 4, !tbaa !80
  %.not.i34 = icmp eq i32 %i.av, 0
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !74 ; 7 uses
  %i.ax = icmp eq ptr %i.au, %i.aw                ; 2 uses
  br i1 %.not.i34, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.az = icmp eq ptr %i.au, %i.ay
  br i1 %i.az, label %zslLexValueLteMax.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bb = icmp eq ptr %i.aw, %i.ba
  br i1 %i.bb, label %zslLexValueLteMax.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp eq ptr %i.au, %i.ba
  %i.bd = icmp eq ptr %i.aw, %i.ay
  %or.cond.i.i35 = or i1 %i.bd, %i.bc
  br i1 %or.cond.i.i35, label %.critedge2, label %zslLexValueLteMax.exit

bb.o:                                             ; preds = %bb.j
  br i1 %i.ax, label %zslLexValueLteMax.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.bf = icmp eq ptr %i.au, %i.be
  br i1 %i.bf, label %zslLexValueLteMax.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bh = icmp eq ptr %i.aw, %i.bg
  br i1 %i.bh, label %zslLexValueLteMax.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq ptr %i.au, %i.bg
  %i.bj = icmp eq ptr %i.aw, %i.be
  %or.cond.i5.i36 = or i1 %i.bj, %i.bi
  br i1 %or.cond.i5.i36, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = call i32 @sdscmp(ptr noundef nonnull %i.au, ptr noundef %i.aw) #17
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit:                           ; preds = %bb.n
  %i.bm = call i32 @sdscmp(ptr noundef nonnull %i.au, ptr noundef %i.aw) #17
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit.thread:                    ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %zslLexValueLteMax.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.271, i64 16 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 4 uses
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %zslLexValueLteMax.exit.thread
  %wide.trip.count.i = zext nneg i32 %i.bq to i64
  %i.bs = load ptr, ptr %4, align 8, !tbaa !31
  %i.bt = icmp eq ptr %i.bs, %.271
  br i1 %i.bt, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.bp, ptr %4, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.bq, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre83 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.i ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  %i.bz = icmp eq ptr %i.by, %.271
  br i1 %i.bz, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.t

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.271, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.cd = add i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26
  %i.ch = add i64 %i.cd, %i.cg
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  store ptr %i.cj, ptr %i.bx, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.t:                                             ; preds = %.peel.next.i
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.t, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %zslLexValueLteMax.exit.thread
  %i.co = phi ptr [ %.pre83, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.bp, %zslLexValueLteMax.exit.thread ] ; 2 uses
  %.not.i3748 = icmp eq ptr %i.co, null
  %i.cp = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29
  %..i49 = select i1 %.not.i3748, ptr %0, ptr %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %..i49, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.cs = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29
  %..i = select i1 %.not.i37, ptr %0, ptr %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !29
  %i.cw = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %i.cx = phi i32 [ %i.bq, %._crit_edge.i ], [ %i.dd, %bb.v ] ; 3 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr [16 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.v, label %zslUnlinkNode.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !26
  %i.dd = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.d, align 8, !tbaa !18
  %i.de = icmp sgt i32 %i.cx, 2
  br i1 %i.de, label %bb.u, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.u, %bb.v, %._crit_edge.i.thread
  %i.df = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %i.ap, align 8, !tbaa !23
  %i.dh = load i16, ptr %i.ar, align 8, !tbaa !13
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.271, i64 %i.di
  %i.dk = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.dj) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.271, ptr noundef nonnull %i.a) #17
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !24
  %i.dm = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.dn = sub i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.aq, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.do = add i64 %.02970, 1                      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %.critedge2, label %bb.j, !llvm.loop !185

.critedge2:                                       ; preds = %zslLexValueLteMax.exit, %zslUnlinkNode.exit, %bb.n, %bb.k, %bb.r, %bb.s, %._crit_edge
  %.029.lcssa = phi i64 [ 0, %._crit_edge ], [ %.02970, %bb.s ], [ %.02970, %bb.r ], [ %.02970, %bb.k ], [ %.02970, %bb.n ], [ %i.do, %zslUnlinkNode.exit ], [ %.02970, %zslLexValueLteMax.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.029.lcssa
}

declare i32 @dictShrinkIfNeeded(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebyrankCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebylexCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zuiInitIterator(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186    ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !188
  switch i32 %i.d, label %bb.n [
    i32 2, label %bb.c
    i32 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189
  switch i32 %i.g, label %bb.g [
    i32 6, label %bb.d
    i32 2, label %bb.e
    i32 11, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  store ptr %i.i, ptr %i.e, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.j, align 8, !tbaa !36
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !36
  %i.m = tail call ptr @dictGetIterator(ptr noundef %i.l) #17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !36
  %i.o = tail call ptr @dictNext(ptr noundef %i.m) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !36
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !36
  %i.s = tail call ptr @lpFirst(ptr noundef %i.r) #17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !36
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2379, ptr noundef nonnull @.str.34) #17
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
end_hunk_1
