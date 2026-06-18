inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@lookupKeyByPattern:bb.a
  %sext70 = shl i64 %i.ap, 32
  %i.ce = ashr exact i64 %sext70, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.d, i64 %i.ce, i1 false)
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce ; 2 uses
  %sext71 = shl i64 %.0.i79, 32
  %i.cg = ashr exact i64 %sext71, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %i.l, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  %sext72 = shl i64 %i.bx, 32
  %i.ci = ashr exact i64 %sext72, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr nonnull align 1 %i.n, i64 %i.ci, i1 false)
  tail call void @decrRefCount(ptr noundef nonnull %i.j) #12
  %i.cj = tail call ptr @lookupKeyRead(ptr noundef %0, ptr noundef %i.cb) #12 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %sdslen.exit83
  %.not74 = icmp eq ptr %.062, null
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = and i64 %i.cl, 15                       ; 2 uses
  br i1 %.not74, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not76 = icmp eq i64 %i.cm, 4
  br i1 %.not76, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !18
  %i.cp = call i32 @hashTypeGetValueObject(ptr noundef %0, ptr noundef nonnull %i.cj, ptr noundef %i.co, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !9
  %.not77 = icmp eq i32 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not77, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %.not75 = icmp eq i64 %i.cm, 0
  br i1 %.not75, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ab
  tail call void @incrRefCount(ptr noundef nonnull %i.cj) #12
  tail call void @decrRefCount(ptr noundef nonnull %i.cb) #12
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  call void @decrRefCount(ptr noundef nonnull %i.cb) #12
  call void @decrRefCount(ptr noundef nonnull %.062) #12
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %sdslen.exit83
  call void @decrRefCount(ptr noundef nonnull %i.cb) #12
  br i1 %.not68, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @decrRefCount(ptr noundef %.062) #12
  br label %bb.af

bb.af:                                            ; preds = %.thread, %bb.ad, %bb.ae, %bb.ac, %bb.e, %bb.c
  %.060 = phi ptr [ %2, %bb.c ], [ %i.cj, %.thread ], [ null, %bb.ad ], [ null, %bb.e ], [ %i.cq, %bb.ac ], [ null, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.060
}

declare void @incrRefCount(ptr noundef) local_unnamed_addr #3

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @decrRefCount(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hashTypeGetValueObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @sortCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7924), align 4, !tbaa !26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %i.f = fcmp ogt double %i.c, %i.e
  br i1 %i.f, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp olt double %i.c, %i.e
  br i1 %i.g, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !58
  %i.i = load ptr, ptr %1, align 8, !tbaa !58
  %i.j = tail call i32 @compareStringObjects(ptr noundef %i.h, ptr noundef %i.i) #12
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7928), align 8, !tbaa !60
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 4 uses
  %.not29 = icmp eq ptr %i.m, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  br i1 %.not29, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %i.n = icmp ne ptr %i.m, %.pre
  %i.o = sext i1 %i.n to i32
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %.not30 = icmp eq ptr %.pre, null
  br i1 %.not30, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7932), align 4, !tbaa !61
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @compareStringObjects(ptr noundef nonnull %i.m, ptr noundef nonnull %.pre) #12
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = tail call i32 @strcoll(ptr noundef %i.s, ptr noundef %i.u) #13
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7932), align 4, !tbaa !61
  %.not28 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  br i1 %.not28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @compareStringObjects(ptr noundef %i.x, ptr noundef %i.y) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call i32 @collateStringObjects(ptr noundef %i.x, ptr noundef %i.y) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %._crit_edge, %bb.c, %bb.b, %bb.i, %bb.j, %bb.m, %bb.l, %bb.d
  %.0 = phi i32 [ %i.q, %bb.i ], [ %i.v, %bb.j ], [ -1, %bb.c ], [ 1, %bb.b ], [ %i.j, %bb.d ], [ %i.z, %bb.l ], [ %i.aa, %bb.m ], [ 1, %bb.g ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7920), align 8, !tbaa !62
  %.not32 = icmp eq i32 %i.ab, 0
  %i.ac = sub nsw i32 0, %.0
  %i.ad = select i1 %.not32, i32 %.0, i32 %i.ac
  ret i32 %i.ad
}

declare i32 @compareStringObjects(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @collateStringObjects(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @sortCommandGeneric(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.listTypeIterator, align 8   ; 5 uses
  %3 = alloca %struct.listTypeEntry, align 8      ; 4 uses
  %4 = alloca %struct.listTypeIterator, align 8   ; 6 uses
  %5 = alloca %struct.listTypeEntry, align 8      ; 5 uses
  %6 = alloca %struct.setTypeIterator, align 8    ; 6 uses
  %7 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.listIter, align 8           ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %struct.listIter, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 -1, ptr %i.b, align 8, !tbaa !23
  %i.e = tail call ptr @listCreate() #12          ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @zfree, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 14 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81
  %i.o = tail call i32 @ACLUserCheckCmdWithUnrestrictedKeyAccess(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.n, i32 noundef 16) #12
  %i.p = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 2
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = icmp eq i32 %1, 0
  %.not480 = icmp eq i32 %i.o, 0                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bs
  %i.s = phi i32 [ %i.p, %.lr.ph ], [ %i.km, %bb.bs ]
  %.0392674 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bs ] ; 6 uses
  %.0393673 = phi i32 [ 0, %.lr.ph ], [ %.1394, %bb.bs ] ; 7 uses
  %.0403672 = phi i32 [ 2, %.lr.ph ], [ %i.kl, %bb.bs ] ; 10 uses
  %.0408671 = phi i32 [ 0, %.lr.ph ], [ %.2410, %bb.bs ] ; 7 uses
  %.0416670 = phi i32 [ 0, %.lr.ph ], [ %.1417, %bb.bs ] ; 8 uses
  %.0433669 = phi ptr [ null, %.lr.ph ], [ %.1434, %bb.bs ] ; 6 uses
  %.0439668 = phi ptr [ null, %.lr.ph ], [ %.1440, %bb.bs ] ; 7 uses
  %i.t = xor i32 %.0403672, -1
  %i.u = add i32 %i.s, %i.t                       ; 3 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !80   ; 3 uses
  %i.w = sext i32 %.0403672 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 7 uses
  %i.ab = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.1) #13
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.bs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.2) #13
  %.not473 = icmp eq i32 %i.ac, 0
  br i1 %.not473, label %bb.bs, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.3) #13
  %.not474 = icmp eq i32 %i.ad, 0
  br i1 %.not474, label %bb.bs, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.4) #13
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp sgt i32 %i.u, 1
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.x, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef null) #12
  %.not485 = icmp eq i32 %i.aj, 0
  br i1 %.not485, label %bb.g, label %.loopexit625

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.al = add nsw i32 %.0403672, 2                ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef nonnull %i.b, ptr noundef null) #12
  %.not486 = icmp eq i32 %i.ap, 0
  br i1 %.not486, label %bb.bs, label %.loopexit625

bb.h:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.5) #13
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp sgt i32 %i.u, 0
  %or.cond3 = and i1 %i.as, %i.ar
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %.0403672, 1                ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25
  br label %bb.bs

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ax = call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.6) #13
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = icmp sgt i32 %i.u, 0                    ; 2 uses
  %or.cond5 = and i1 %i.az, %i.ay
  br i1 %or.cond5, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %bb.k
  %i.ba = add nsw i32 %.0403672, 1                ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18 ; 7 uses
  %i.bg = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bf, i32 noundef 42) #13
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.bs, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !82
  %.not481 = icmp eq i32 %i.bi, 0
  br i1 %.not481, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %i.bf, i64 -1
  %.val.i = load i8, ptr %i.bj, align 1, !tbaa !20 ; 2 uses
  %i.bk = and i8 %.val.i, 7
  switch i8 %i.bk, label %sdslen.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.bl = lshr i8 %.val.i, 3
  %i.bm = zext nneg i8 %i.bl to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds i8, ptr %i.bf, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !20
  %i.bp = zext i8 %i.bo to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds i8, ptr %i.bf, i64 -5
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !21
  %i.bs = zext i16 %i.br to i64
  br label %sdslen.exit

bb.r:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds i8, ptr %i.bf, i64 -9
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i32 %i.bu to i64
  br label %sdslen.exit

bb.s:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds i8, ptr %i.bf, i64 -17
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !23
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i = phi i64 [ %i.bx, %bb.s ], [ %i.bm, %bb.o ], [ %i.bp, %bb.p ], [ %i.bs, %bb.q ], [ %i.bv, %bb.r ], [ 0, %bb.n ]
  %i.by = trunc i64 %.0.i to i32
  %i.bz = call i32 @patternHashSlot(ptr noundef nonnull %i.bf, i32 noundef %i.by) #12
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.cf = call i32 @getKeySlot(ptr noundef %i.ce) #12
  %.not482 = icmp eq i32 %i.bz, %i.cf
  br i1 %.not482, label %sdslen.exit._crit_edge, label %bb.t

sdslen.exit._crit_edge:                           ; preds = %sdslen.exit
  %.pre798 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.cg = icmp ne i32 %.pre798, 0
  br label %bb.u

bb.t:                                             ; preds = %sdslen.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  br label %.loopexit625

bb.u:                                             ; preds = %sdslen.exit._crit_edge, %bb.m
  %i.ch = phi i1 [ %i.cg, %sdslen.exit._crit_edge ], [ false, %bb.m ]
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6656), align 8, !tbaa !83 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %or.cond7 = select i1 %i.cj, i1 true, i1 %i.ch
  br i1 %or.cond7, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i32 %i.ci, 100
  br i1 %i.ck, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = call i32 @rand() #12
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fdiv nnan double %i.cm, f0x41DFFFFFFFC00000
  %i.co = fmul nnan double %i.cn, 1.000000e+02
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6656), align 8, !tbaa !83
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fcmp olt double %i.co, %i.cq
  br i1 %i.cr, label %bb.x, label %bb.an

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !18 ; 6 uses
end_hunk_0
begin_hunk_1_@sortCommandGeneric:bb.a
  %i.io = load i8, ptr %i.in, align 1, !tbaa !20
  %i.ip = zext i8 %i.io to i64
  br label %sdslen.exit556

bb.bh:                                            ; preds = %sdslen.exit553
  %i.iq = getelementptr inbounds i8, ptr %i.ii, i64 -5
  %i.ir = load i16, ptr %i.iq, align 1, !tbaa !21
  %i.is = zext i16 %i.ir to i64
  br label %sdslen.exit556

bb.bi:                                            ; preds = %sdslen.exit553
  %i.it = getelementptr inbounds i8, ptr %i.ii, i64 -9
  %i.iu = load i32, ptr %i.it, align 1, !tbaa !9
  %i.iv = zext i32 %i.iu to i64
  br label %sdslen.exit556

bb.bj:                                            ; preds = %sdslen.exit553
  %i.iw = getelementptr inbounds i8, ptr %i.ii, i64 -17
  %i.ix = load i64, ptr %i.iw, align 1, !tbaa !23
  br label %sdslen.exit556

sdslen.exit556:                                   ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.0.i555 = phi i64 [ %i.ix, %bb.bj ], [ %i.im, %bb.bf ], [ %i.ip, %bb.bg ], [ %i.is, %bb.bh ], [ %i.iv, %bb.bi ] ; 2 uses
  %i.iy = trunc i64 %.0.i555 to i32               ; 8 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.preheader.i570, label %._crit_edge.i557

.lr.ph.preheader.i570:                            ; preds = %sdslen.exit556
  %wide.trip.count.i571 = and i64 %.0.i555, 2147483647
  br label %.lr.ph.i572

.lr.ph.i572:                                      ; preds = %bb.bk, %.lr.ph.preheader.i570
  %indvars.iv.i573 = phi i64 [ 0, %.lr.ph.preheader.i570 ], [ %indvars.iv.next.i574, %bb.bk ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.i573
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !20
  %i.jc = icmp eq i8 %i.jb, 123
  br i1 %i.jc, label %._crit_edge.loopexit.i576, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i572
  %indvars.iv.next.i574 = add nuw nsw i64 %indvars.iv.i573, 1 ; 2 uses
  %exitcond.not.i575 = icmp eq i64 %indvars.iv.next.i574, %wide.trip.count.i571
  br i1 %exitcond.not.i575, label %._crit_edge.thread.i569, label %.lr.ph.i572, !llvm.loop !84

._crit_edge.loopexit.i576:                        ; preds = %.lr.ph.i572
  %i.jd = trunc nuw nsw i64 %indvars.iv.i573 to i32
  br label %._crit_edge.i557

._crit_edge.i557:                                 ; preds = %._crit_edge.loopexit.i576, %sdslen.exit556
  %.025.lcssa.i558 = phi i32 [ 0, %sdslen.exit556 ], [ %i.jd, %._crit_edge.loopexit.i576 ] ; 4 uses
  %i.je = icmp eq i32 %.025.lcssa.i558, %i.iy
  br i1 %i.je, label %._crit_edge.thread.i569, label %bb.bl, !prof !89

._crit_edge.thread.i569:                          ; preds = %bb.bk, %sdslen.exit553, %._crit_edge.i557
  %i.jf = phi i32 [ %i.iy, %._crit_edge.i557 ], [ 0, %sdslen.exit553 ], [ %i.iy, %bb.bk ]
  %i.jg = call zeroext i16 @crc16(ptr noundef nonnull %i.ii, i32 noundef %i.jf) #12
  br label %keyHashSlot.exit577

bb.bl:                                            ; preds = %._crit_edge.i557
  %i.jh = add nuw nsw i32 %.025.lcssa.i558, 1     ; 3 uses
  %i.ji = icmp slt i32 %i.jh, %i.iy
  br i1 %i.ji, label %.lr.ph33.preheader.i563, label %._crit_edge34.thread.i559

.lr.ph33.preheader.i563:                          ; preds = %bb.bl
  %i.jj = zext i32 %i.jh to i64
  br label %.lr.ph33.i564

.lr.ph33.i564:                                    ; preds = %bb.bm, %.lr.ph33.preheader.i563
  %indvars.iv39.i565 = phi i64 [ %i.jj, %.lr.ph33.preheader.i563 ], [ %indvars.iv.next40.i566, %bb.bm ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv39.i565
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !20
  %i.jm = icmp eq i8 %i.jl, 125
  br i1 %i.jm, label %._crit_edge34.i567, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph33.i564
  %indvars.iv.next40.i566 = add nuw nsw i64 %indvars.iv39.i565, 1 ; 2 uses
  %i.jn = trunc nuw i64 %indvars.iv.next40.i566 to i32
  %i.jo = icmp sgt i32 %i.iy, %i.jn
  br i1 %i.jo, label %.lr.ph33.i564, label %._crit_edge34.thread.i559, !llvm.loop !87

._crit_edge34.i567:                               ; preds = %.lr.ph33.i564
  %i.jp = trunc nuw i64 %indvars.iv39.i565 to i32 ; 3 uses
  %i.jq = icmp eq i32 %i.iy, %i.jp
  %i.jr = icmp eq i32 %i.jh, %i.jp
  %or.cond.i568 = or i1 %i.jq, %i.jr
  br i1 %or.cond.i568, label %._crit_edge34.thread.i559, label %bb.bn

._crit_edge34.thread.i559:                        ; preds = %bb.bm, %._crit_edge34.i567, %bb.bl
  %i.js = call zeroext i16 @crc16(ptr noundef nonnull %i.ii, i32 noundef %i.iy) #12
  br label %keyHashSlot.exit577

bb.bn:                                            ; preds = %._crit_edge34.i567
  %i.jt = zext nneg i32 %.025.lcssa.i558 to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = xor i32 %.025.lcssa.i558, -1
  %i.jx = add nsw i32 %i.jp, %i.jw
  %i.jy = call zeroext i16 @crc16(ptr noundef nonnull %i.jv, i32 noundef %i.jx) #12
  br label %keyHashSlot.exit577

keyHashSlot.exit577:                              ; preds = %._crit_edge.thread.i569, %._crit_edge34.thread.i559, %bb.bn
  %.026.in.in.i560 = phi i16 [ %i.jg, %._crit_edge.thread.i569 ], [ %i.js, %._crit_edge34.thread.i559 ], [ %i.jy, %bb.bn ]
  %.026.in.i561 = and i16 %.026.in.in.i560, 16383
  %.026.i562 = zext nneg i16 %.026.in.i561 to i32
  %.not479 = icmp eq i32 %i.id, %.026.i562
  br i1 %.not479, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %keyHashSlot.exit577
  %i.jz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !88
  %i.ka = add nsw i64 %i.jz, 1
  store i64 %i.ka, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %.tail, %keyHashSlot.exit577, %bb.bo, %bb.ay, %.tail620, %bb.ax
  br i1 %.not480, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.thread
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %.loopexit625

bb.bq:                                            ; preds = %.thread
  %i.kb = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.kc = add nsw i32 %.0403672, 1                ; 2 uses
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !25
  %i.kg = call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #11 ; 3 uses
  store i32 0, ptr %i.kg, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kf, ptr %i.kh, align 8, !tbaa !17
  %i.ki = call ptr @listAddNodeTail(ptr noundef %i.e, ptr noundef nonnull %i.kg) #12 ; 0 uses
  %i.kj = add nsw i32 %.0416670, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.ap
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !90
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.kk) #12
  br label %.loopexit625

bb.bs:                                            ; preds = %bb.j, %bb.bq, %bb.b, %bb.c, %bb.d, %bb.g, %bb.l, %bb.an
  %.1440 = phi ptr [ %.0439668, %bb.d ], [ %i.aw, %bb.j ], [ %.0439668, %bb.g ], [ %.0439668, %bb.bq ], [ %.0439668, %bb.c ], [ %.0439668, %bb.b ], [ %.0439668, %bb.l ], [ %.0439668, %bb.an ] ; 2 uses
  %.1434 = phi ptr [ %.0433669, %bb.d ], [ %.0433669, %bb.j ], [ %.0433669, %bb.g ], [ %.0433669, %bb.bq ], [ %.0433669, %bb.c ], [ %.0433669, %bb.b ], [ %i.bd, %bb.l ], [ %i.bd, %bb.an ] ; 2 uses
  %.1417 = phi i32 [ %.0416670, %bb.d ], [ %.0416670, %bb.j ], [ %.0416670, %bb.g ], [ %i.kj, %bb.bq ], [ %.0416670, %bb.c ], [ %.0416670, %bb.b ], [ %.0416670, %bb.l ], [ %.0416670, %bb.an ] ; 2 uses
  %.2410 = phi i32 [ %.0408671, %bb.d ], [ %.0408671, %bb.j ], [ %.0408671, %bb.g ], [ %.0408671, %bb.bq ], [ %.0408671, %bb.c ], [ %.0408671, %bb.b ], [ 1, %bb.l ], [ %.0408671, %bb.an ] ; 2 uses
  %.1404 = phi i32 [ %.0403672, %bb.d ], [ %i.at, %bb.j ], [ %i.al, %bb.g ], [ %i.kc, %bb.bq ], [ %.0403672, %bb.c ], [ %.0403672, %bb.b ], [ %i.ba, %bb.l ], [ %i.ba, %bb.an ]
  %.1394 = phi i32 [ 1, %bb.d ], [ %.0393673, %bb.j ], [ %.0393673, %bb.g ], [ %.0393673, %bb.bq ], [ %.0393673, %bb.c ], [ %.0393673, %bb.b ], [ %.0393673, %bb.l ], [ %.0393673, %bb.an ] ; 2 uses
  %.1 = phi i32 [ %.0392674, %bb.d ], [ %.0392674, %bb.j ], [ %.0392674, %bb.g ], [ %.0392674, %bb.bq ], [ 1, %bb.c ], [ 0, %bb.b ], [ %.0392674, %bb.l ], [ %.0392674, %bb.an ] ; 2 uses
  %i.kl = add nsw i32 %.1404, 1                   ; 2 uses
  %i.km = load i32, ptr %i.m, align 8, !tbaa !81  ; 2 uses
  %i.kn = icmp slt i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.b, label %._crit_edge.loopexit

.loopexit625:                                     ; preds = %bb.f, %bb.g, %bb.br, %bb.bp, %bb.aw, %bb.ao, %bb.t
  call void @listRelease(ptr noundef %i.e) #12
  br label %bb.fx

._crit_edge.loopexit:                             ; preds = %bb.bs
  %i.ko = icmp eq i32 %.2410, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0439.lcssa = phi ptr [ null, %bb.a ], [ %.1440, %._crit_edge.loopexit ] ; 8 uses
  %.0433.lcssa = phi ptr [ null, %bb.a ], [ %.1434, %._crit_edge.loopexit ] ; 4 uses
  %.0416.lcssa = phi i32 [ 0, %bb.a ], [ %.1417, %._crit_edge.loopexit ] ; 2 uses
  %.0408.lcssa = phi i1 [ true, %bb.a ], [ %i.ko, %._crit_edge.loopexit ] ; 5 uses
  %.0393.lcssa = phi i32 [ 0, %bb.a ], [ %.1394, %._crit_edge.loopexit ] ; 4 uses
  %.0392.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge.loopexit ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.ku = call ptr @lookupKeyRead(ptr noundef %i.kq, ptr noundef %i.kt) #12 ; 4 uses
  %.not488 = icmp eq ptr %i.ku, null
  br i1 %.not488, label %.critedge540, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 15
  %.off = add nsw i32 %i.kx, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @listRelease(ptr noundef %i.e) #12
  %i.ky = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 200), align 8, !tbaa !93
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ky) #12
  br label %bb.fx

bb.bv:                                            ; preds = %bb.bt
  call void @incrRefCount(ptr noundef nonnull %i.ku) #12
  br label %bb.bw

.critedge540:                                     ; preds = %._crit_edge
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !94
  %i.la = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !95
  %i.lb = call ptr @createQuicklistObject(i32 noundef %i.kz, i32 noundef %i.la) #12
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge540, %bb.bv
  %.0432 = phi ptr [ %i.ku, %bb.bv ], [ %i.lb, %.critedge540 ] ; 29 uses
  %.pre799 = load i64, ptr %.0432, align 8
  %.pre801 = and i64 %.pre799, 15                 ; 2 uses
  %i.lc = icmp ne i64 %.pre801, 2
  %or.cond860.not = select i1 %.0408.lcssa, i1 true, i1 %i.lc
  br i1 %or.cond860.not, label %._crit_edge800, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not493 = icmp eq ptr %.0439.lcssa, null
  br i1 %.not493, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !96
  %i.lf = and i64 %i.le, 256
  %.not494 = icmp eq i64 %i.lf, 0
  br i1 %.not494, label %.thread839, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br label %.thread839

._crit_edge800:                                   ; preds = %bb.bw
  %i.lg = xor i1 %.0408.lcssa, true               ; 3 uses
  %i.lh = icmp eq i64 %.pre801, 3
  br i1 %i.lh, label %bb.ca, label %.thread839

bb.ca:                                            ; preds = %._crit_edge800
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !97
  %.not495 = icmp eq i32 %i.li, 0
  br i1 %.not495, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lj = call i64 @kvobjAllocSize(ptr noundef nonnull %.0432) #12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0443 = phi i64 [ %i.lj, %bb.cb ], [ 0, %bb.ca ] ; 3 uses
  call void @zsetConvert(ptr noundef nonnull %.0432, i32 noundef 7) #12
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !97
  %.not496 = icmp eq i32 %i.lk, 0
  br i1 %.not496, label %.thread839, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.lm = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !18
  %i.lr = call i32 @getKeySlot(ptr noundef %i.lq) #12
  %i.ls = call i64 @kvobjAllocSize(ptr noundef nonnull %.0432) #12
  call void @updateSlotAllocSize(ptr noundef %i.ll, i32 noundef %i.lr, ptr noundef nonnull %.0432, i64 noundef %.0443, i64 noundef %i.ls) #12
  br label %.thread839

.thread839:                                       ; preds = %bb.by, %bb.bz, %bb.cc, %bb.cd, %._crit_edge800
  %.4846 = phi i32 [ %.0393.lcssa, %bb.cd ], [ %.0393.lcssa, %bb.cc ], [ %.0393.lcssa, %._crit_edge800 ], [ %.0393.lcssa, %bb.by ], [ 1, %bb.bz ] ; 3 uses
  %.old12.not845 = phi i1 [ %.0408.lcssa, %bb.cd ], [ %.0408.lcssa, %bb.cc ], [ %.0408.lcssa, %._crit_edge800 ], [ false, %bb.by ], [ true, %bb.bz ]
  %i.lt = phi i1 [ %i.lg, %bb.cd ], [ %i.lg, %bb.cc ], [ %i.lg, %._crit_edge800 ], [ true, %bb.by ], [ false, %bb.bz ] ; 4 uses
  %.4437844 = phi ptr [ %.0433.lcssa, %bb.cd ], [ %.0433.lcssa, %bb.cc ], [ %.0433.lcssa, %._crit_edge800 ], [ %.0433.lcssa, %bb.by ], [ null, %bb.bz ] ; 4 uses
  %.1444 = phi i64 [ %.0443, %bb.cd ], [ %.0443, %bb.cc ], [ 0, %._crit_edge800 ], [ 0, %bb.by ], [ 0, %bb.bz ] ; 2 uses
  %i.lu = load i64, ptr %.0432, align 8
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = and i32 %i.lv, 15
  switch i32 %i.lw, label %bb.ch [
    i32 1, label %bb.ce
    i32 2, label %bb.cf
    i32 3, label %bb.cg
  ]

bb.ce:                                            ; preds = %.thread839
  %i.lx = call i64 @listTypeLength(ptr noundef nonnull %.0432) #12
  br label %bb.ci

bb.cf:                                            ; preds = %.thread839
  %i.ly = call i64 @setTypeSize(ptr noundef nonnull %.0432) #12
  br label %bb.ci

bb.cg:                                            ; preds = %.thread839
  %i.lz = getelementptr inbounds nuw i8, ptr %.0432, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !18
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !98 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !23
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !23
  %i.mg = add i64 %i.mf, %i.md
  br label %bb.ci

bb.ch:                                            ; preds = %.thread839
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.13, i32 noundef 355, ptr noundef nonnull @.str.14) #12
  call void @abort() #14
  unreachable

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.0414.in = phi i64 [ %i.lx, %bb.ce ], [ %i.ly, %bb.cf ], [ %i.mg, %bb.cg ] ; 2 uses
  %.0414 = trunc i64 %.0414.in to i32             ; 3 uses
  %i.mh = load i64, ptr %i.a, align 8, !tbaa !23
  %i.mi = call i64 @llvm.smax.i64(i64 %i.mh, i64 0) ; 3 uses
  %sext = shl i64 %.0414.in, 32                   ; 3 uses
  %i.mj = ashr exact i64 %sext, 32                ; 4 uses
  %i.mk = icmp slt i64 %i.mi, %i.mj               ; 2 uses
  %. = call i64 @llvm.smin.i64(i64 %i.mi, i64 %i.mj)
  %i.ml = load i64, ptr %i.b, align 8, !tbaa !23
  %i.mm = call i64 @llvm.smax.i64(i64 %i.ml, i64 -1)
  %i.mn = call i64 @llvm.smin.i64(i64 %i.mm, i64 %i.mj) ; 3 uses
  store i64 %i.mn, ptr %i.b, align 8, !tbaa !23
  %i.mo = icmp slt i64 %i.mn, 0
  %sext497 = add i64 %sext, -4294967296
  %i.mp = ashr exact i64 %sext497, 32             ; 4 uses
  %i.mq = add nsw i64 %., -1
  %i.mr = add nsw i64 %i.mq, %i.mn
  %i.ms = select i1 %i.mo, i64 %i.mp, i64 %i.mr
  %sext500 = add i64 %sext, -8589934592
  %i.mt = ashr exact i64 %sext500, 32
  %.0399 = select i1 %i.mk, i64 %i.ms, i64 %i.mt  ; 2 uses
  %.0397 = select i1 %i.mk, i64 %i.mi, i64 %i.mp  ; 15 uses
  %.not501 = icmp slt i64 %.0399, %i.mj
  %.1400 = select i1 %.not501, i64 %.0399, i64 %i.mp ; 9 uses
  %i.mu = load i64, ptr %.0432, align 8
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = and i32 %i.mv, 15                       ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 3
  br i1 %i.mx, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.my = icmp eq i32 %i.mw, 1
  %or.cond13 = and i1 %i.lt, %i.my
  br i1 %or.cond13, label %bb.cl, label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  br i1 %.old12.not845, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.not503 = icmp eq i64 %.0397, 0
  %.not505 = icmp eq i64 %.1400, %i.mp
  %or.cond619 = select i1 %.not503, i1 %.not505, i1 false
  br i1 %or.cond619, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mz = sub nsw i64 %.1400, %.0397
  %i.na = trunc i64 %i.mz to i32
  %i.nb = add i32 %i.na, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %bb.ck, %bb.cj
  %.1415 = phi i32 [ %i.nb, %bb.cm ], [ %.0414, %bb.cl ], [ %.0414, %bb.ck ], [ %.0414, %bb.cj ] ; 14 uses
  %i.nc = sext i32 %.1415 to i64                  ; 3 uses
  %i.nd = shl nsw i64 %i.nc, 4
  %i.ne = call noalias ptr @zmalloc(i64 noundef %i.nd) #11 ; 18 uses
  %i.nf = load i64, ptr %.0432, align 8
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = and i32 %i.ng, 15                       ; 3 uses
  %i.ni = icmp eq i32 %i.nh, 1                    ; 2 uses
  %or.cond16 = and i1 %i.lt, %i.ni
  br i1 %or.cond16, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %.not516 = icmp slt i64 %.1400, %.0397
  br i1 %.not516, label %bb.ec, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.not517 = icmp eq i32 %.0392.lcssa, 0          ; 2 uses
  br i1 %.not517, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nj = call i64 @listTypeLength(ptr noundef nonnull %.0432) #12
  %i.nk = xor i64 %.0397, -1
  %i.nl = add i64 %i.nj, %i.nk
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.nm = phi i64 [ %i.nl, %bb.cq ], [ %.0397, %bb.cp ]
  %i.nn = zext i1 %.not517 to i8
  call void @listTypeInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %.0432, i64 noundef %i.nm, i8 noundef zeroext %i.nn) #12
  %i.no = icmp sgt i32 %.1415, 0
  br i1 %i.no, label %.lr.ph707.preheader, label %.critedge

.lr.ph707.preheader:                              ; preds = %bb.cr
  %wide.trip.count = zext nneg i32 %.1415 to i64
  br label %.lr.ph707

.lr.ph707:                                        ; preds = %.lr.ph707.preheader, %bb.cs
  %indvars.iv766 = phi i64 [ 0, %.lr.ph707.preheader ], [ %indvars.iv.next767, %bb.cs ] ; 3 uses
  %i.np = call i32 @listTypeNext(ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %.not518 = icmp eq i32 %i.np, 0
  br i1 %.not518, label %.critedge.loopexit.split.loop.exit852, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph707
  %i.nq = call ptr @listTypeGet(ptr noundef nonnull %3) #12
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv766 ; 2 uses
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !58
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr null, ptr %i.ns, align 8, !tbaa !20
  %indvars.iv.next767 = add nuw nsw i64 %indvars.iv766, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next767, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph707, !llvm.loop !101

.critedge.loopexit.split.loop.exit852:            ; preds = %.lr.ph707
  %i.nt = trunc nuw nsw i64 %indvars.iv766 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.cs, %.critedge.loopexit.split.loop.exit852, %bb.cr
  %.3406.lcssa = phi i32 [ 0, %bb.cr ], [ %i.nt, %.critedge.loopexit.split.loop.exit852 ], [ %.1415, %bb.cs ]
  call void @listTypeResetIterator(ptr noundef nonnull %2) #12
  %i.nu = sub nsw i64 %.1400, %.0397
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ec

bb.ct:                                            ; preds = %bb.cn
  br i1 %i.ni, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @listTypeInitIterator(ptr noundef nonnull %4, ptr noundef nonnull %.0432, i64 noundef 0, i8 noundef zeroext 1) #12
  %i.nv = call i32 @listTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %.not515699 = icmp eq i32 %i.nv, 0
  br i1 %.not515699, label %._crit_edge703, label %.lr.ph702

.lr.ph702:                                        ; preds = %bb.cu, %.lr.ph702
  %indvars.iv763 = phi i64 [ %indvars.iv.next764, %.lr.ph702 ], [ 0, %bb.cu ] ; 2 uses
  %i.nw = call ptr @listTypeGet(ptr noundef nonnull %5) #12
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv763 ; 2 uses
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !58
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store ptr null, ptr %i.ny, align 8, !tbaa !20
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 1 ; 2 uses
  %i.nz = call i32 @listTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %.not515 = icmp eq i32 %i.nz, 0
  br i1 %.not515, label %._crit_edge703.loopexit, label %.lr.ph702, !llvm.loop !102

._crit_edge703.loopexit:                          ; preds = %.lr.ph702
  %i.oa = trunc nuw i64 %indvars.iv.next764 to i32
  br label %._crit_edge703

._crit_edge703:                                   ; preds = %._crit_edge703.loopexit, %bb.cu
  %.4407.lcssa = phi i32 [ 0, %bb.cu ], [ %i.oa, %._crit_edge703.loopexit ]
  call void @listTypeResetIterator(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ec

bb.cv:                                            ; preds = %bb.ct
  %i.ob = icmp eq i32 %i.nh, 2
  br i1 %i.ob, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.oc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !97
  %.not512 = icmp eq i32 %i.oc, 0
  br i1 %.not512, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.od = call i64 @kvobjAllocSize(ptr noundef nonnull %.0432) #12
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.2445 = phi i64 [ %i.od, %bb.cx ], [ %.1444, %bb.cw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @setTypeInitIterator(ptr noundef nonnull %6, ptr noundef nonnull %.0432) #12
  %i.oe = call ptr @setTypeNextObject(ptr noundef nonnull %6) #12 ; 2 uses
  %.not513693 = icmp eq ptr %i.oe, null
  br i1 %.not513693, label %._crit_edge697, label %.lr.ph696

.lr.ph696:                                        ; preds = %bb.cy, %.lr.ph696
  %indvars.iv760 = phi i64 [ %indvars.iv.next761, %.lr.ph696 ], [ 0, %bb.cy ] ; 2 uses
  %i.of = phi ptr [ %i.oj, %.lr.ph696 ], [ %i.oe, %bb.cy ]
  %i.og = call ptr @createObject(i32 noundef 0, ptr noundef nonnull %i.of) #12
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv760 ; 2 uses
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !58
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store ptr null, ptr %i.oi, align 8, !tbaa !20
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %i.oj = call ptr @setTypeNextObject(ptr noundef nonnull %6) #12 ; 2 uses
  %.not513 = icmp eq ptr %i.oj, null
  br i1 %.not513, label %._crit_edge697.loopexit, label %.lr.ph696, !llvm.loop !103

._crit_edge697.loopexit:                          ; preds = %.lr.ph696
  %i.ok = trunc nuw i64 %indvars.iv.next761 to i32
  br label %._crit_edge697

._crit_edge697:                                   ; preds = %._crit_edge697.loopexit, %bb.cy
  %.5.lcssa = phi i32 [ 0, %bb.cy ], [ %i.ok, %._crit_edge697.loopexit ]
  call void @setTypeResetIterator(ptr noundef nonnull %6) #12
  %i.ol = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !97
  %.not514 = icmp eq i32 %i.ol, 0
  br i1 %.not514, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge697
  %i.om = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !18
  %i.os = call i32 @getKeySlot(ptr noundef %i.or) #12
  %i.ot = call i64 @kvobjAllocSize(ptr noundef nonnull %.0432) #12
  call void @updateSlotAllocSize(ptr noundef %i.om, i32 noundef %i.os, ptr noundef nonnull %.0432, i64 noundef %.2445, i64 noundef %i.ot) #12
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge697
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ec

bb.db:                                            ; preds = %bb.cv
  %i.ou = icmp eq i32 %i.nh, 3                    ; 2 uses
  %or.cond19 = and i1 %i.lt, %i.ou
  br i1 %or.cond19, label %bb.dc, label %bb.dq

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr inbounds nuw i8, ptr %.0432, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !18 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !104 ; 3 uses
  %.not509 = icmp eq i32 %.0392.lcssa, 0          ; 2 uses
  br i1 %.not509, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !105
  %i.pb = icmp sgt i64 %.0397, 0
  br i1 %i.pb, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.pc = load ptr, ptr %i.ow, align 8, !tbaa !98 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !23
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !23
  %i.ph = sub i64 %i.pe, %.0397
  %i.pi = add i64 %i.ph, %i.pg
  br label %.sink.split

bb.df:                                            ; preds = %bb.dc
  %i.pj = load ptr, ptr %i.oy, align 8, !tbaa !108
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !109
  %i.pm = icmp sgt i64 %.0397, 0
  br i1 %i.pm, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.pn = add nuw nsw i64 %.0397, 1
  br label %.sink.split

end_hunk_1
begin_hunk_2_@sortCommandGeneric:bb.a
  %i.tq = icmp eq ptr %.0439.lcssa, null
  br i1 %i.tq, label %bb.fb, label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.tr = and i64 %i.tp, 4294967295
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.tr) #12
  %sext747 = shl i64 %.1398, 32
  %i.ts = ashr exact i64 %sext747, 32             ; 2 uses
  %.not534730 = icmp slt i64 %.2401, %i.ts
  br i1 %.not534730, label %.loopexit, label %.lr.ph733

.lr.ph733:                                        ; preds = %bb.fb, %._crit_edge729
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %._crit_edge729 ], [ %i.ts, %bb.fb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  br i1 %.not527, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph733
  %i.tt = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv780
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !58
  call void @addReplyBulk(ptr noundef %0, ptr noundef %i.tu) #12
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph733
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %8) #12
  %i.tv = call ptr @listNext(ptr noundef nonnull %8) #12 ; 2 uses
  %.not535726 = icmp eq ptr %i.tv, null
  br i1 %.not535726, label %._crit_edge729, label %.lr.ph728

.lr.ph728:                                        ; preds = %bb.fd
  %i.tw = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv780
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph728, %bb.fj
  %i.tx = phi ptr [ %i.tv, %.lr.ph728 ], [ %i.uh, %bb.fj ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !118 ; 2 uses
  %i.ua = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !17
  %i.ud = load ptr, ptr %i.tw, align 8, !tbaa !58
  %i.ue = call ptr @lookupKeyByPattern(ptr noundef %i.ua, ptr noundef %i.uc, ptr noundef %i.ud) ; 3 uses
  %i.uf = load i32, ptr %i.tz, align 8, !tbaa !13
  %i.ug = icmp eq i32 %i.uf, 0
  br i1 %i.ug, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %.not536 = icmp eq ptr %i.ue, null
  br i1 %.not536, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @addReplyNull(ptr noundef nonnull %0) #12
  br label %bb.fj

bb.fh:                                            ; preds = %bb.ff
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.ue) #12
  call void @decrRefCount(ptr noundef nonnull %i.ue) #12
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %.0432, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef 584) #12
  call void @abort() #14
  unreachable

bb.fj:                                            ; preds = %bb.fg, %bb.fh
  %i.uh = call ptr @listNext(ptr noundef nonnull %8) #12 ; 2 uses
  %.not535 = icmp eq ptr %i.uh, null
  br i1 %.not535, label %._crit_edge729, label %bb.fe, !llvm.loop !119

._crit_edge729:                                   ; preds = %bb.fj, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %indvars.iv.next781 = add nsw i64 %indvars.iv780, 1
  %.not534.not = icmp sgt i64 %.2401, %indvars.iv780
  br i1 %.not534.not, label %.lr.ph733, label %.loopexit, !llvm.loop !120

bb.fk:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ui = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !94
  %i.uj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !95
  %i.uk = call ptr @createQuicklistObject(i32 noundef %i.ui, i32 noundef %i.uj) #12 ; 4 uses
  store ptr %i.uk, ptr %i.d, align 8, !tbaa !25
  %sext746 = shl i64 %.1398, 32
  %i.ul = ashr exact i64 %sext746, 32             ; 3 uses
  %.not529721 = icmp slt i64 %.2401, %i.ul
  br i1 %.not529721, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.fk
  br i1 %.not527, label %.lr.ph724.split.us, label %.lr.ph724.split

.lr.ph724.split.us:                               ; preds = %.lr.ph724, %.lr.ph724.split.us
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %.lr.ph724.split.us ], [ %i.ul, %.lr.ph724 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.um = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv777
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !58
  call void @listTypePush(ptr noundef %i.uk, ptr noundef %i.un, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, 1
  %.not529.us.not = icmp sgt i64 %.2401, %indvars.iv777
  br i1 %.not529.us.not, label %.lr.ph724.split.us, label %._crit_edge725, !llvm.loop !121

.lr.ph724.split:                                  ; preds = %.lr.ph724, %.loopexit624
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %.loopexit624 ], [ %i.ul, %.lr.ph724 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %9) #12
  %i.uo = call ptr @listNext(ptr noundef nonnull %9) #12 ; 2 uses
  %.not532718 = icmp eq ptr %i.uo, null
  br i1 %.not532718, label %.loopexit624, label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph724.split
  %i.up = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv774
  br label %bb.fl

bb.fl:                                            ; preds = %.lr.ph720, %bb.fo
  %i.uq = phi ptr [ %i.uo, %.lr.ph720 ], [ %i.vb, %bb.fo ]
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !118 ; 2 uses
  %i.ut = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !17
  %i.uw = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.ux = call ptr @lookupKeyByPattern(ptr noundef %i.ut, ptr noundef %i.uv, ptr noundef %i.uw) ; 2 uses
  %i.uy = load i32, ptr %i.us, align 8, !tbaa !13
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %.not533 = icmp eq ptr %i.ux, null
  br i1 %.not533, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.va = call ptr @createStringObject(ptr noundef nonnull @.str.21, i64 noundef 0) #12
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.0 = phi ptr [ %i.ux, %bb.fm ], [ %i.va, %bb.fn ] ; 2 uses
  call void @listTypePush(ptr noundef %i.uk, ptr noundef %.0, i32 noundef 1) #12
  call void @decrRefCount(ptr noundef %.0) #12
  %i.vb = call ptr @listNext(ptr noundef nonnull %9) #12 ; 2 uses
  %.not532 = icmp eq ptr %i.vb, null
  br i1 %.not532, label %.loopexit624, label %bb.fl, !llvm.loop !122

bb.fp:                                            ; preds = %bb.fl
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %.0432, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef 617) #12
  call void @abort() #14
  unreachable

.loopexit624:                                     ; preds = %bb.fo, %.lr.ph724.split
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, 1
  %.not529.not = icmp sgt i64 %.2401, %indvars.iv774
  br i1 %.not529.not, label %.lr.ph724.split, label %._crit_edge725, !llvm.loop !121

._crit_edge725:                                   ; preds = %.loopexit624, %.lr.ph724.split.us, %bb.fk
  %i.vc = and i64 %i.tp, 4294967295               ; 3 uses
  %.not530 = icmp eq i64 %i.vc, 0
  br i1 %.not530, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge725
  call void @listTypeTryConversion(ptr noundef %i.uk, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %i.vd = load ptr, ptr %i.kp, align 8, !tbaa !92
  call void @setKey(ptr noundef %0, ptr noundef %i.vd, ptr noundef nonnull %.0439.lcssa, ptr noundef nonnull %i.d, i32 noundef 0) #12
  store ptr null, ptr %i.d, align 8, !tbaa !25
  %i.ve = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 72
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !123
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %.0439.lcssa, i32 noundef %i.vg) #12
  %i.vh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !126
  %i.vi = add nsw i64 %i.vh, %i.vc
  store i64 %i.vi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !126
  br label %bb.fu

bb.fr:                                            ; preds = %._crit_edge725
  %i.vj = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.vk = call i32 @dbDelete(ptr noundef %i.vj, ptr noundef nonnull %.0439.lcssa) #12
  %.not531 = icmp eq i32 %i.vk, 0
  br i1 %.not531, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.vl = load ptr, ptr %i.kp, align 8, !tbaa !92
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.vl, ptr noundef nonnull %.0439.lcssa, ptr noundef null, i32 noundef 1) #12
  %i.vm = load ptr, ptr %i.kp, align 8, !tbaa !92
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 72
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !123
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull %.0439.lcssa, i32 noundef %i.vo) #12
  %i.vp = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !126
  %i.vq = add nsw i64 %i.vp, 1
  store i64 %i.vq, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !126
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.vr = load ptr, ptr %i.d, align 8, !tbaa !25
  call void @decrRefCount(ptr noundef %i.vr) #12
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fq
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.vc) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge729, %bb.fb, %bb.fu, %bb.ez
  %i.vs = icmp sgt i32 %.1415, 0
  br i1 %i.vs, label %.lr.ph736.preheader, label %._crit_edge737

.lr.ph736.preheader:                              ; preds = %.loopexit
  %wide.trip.count786 = zext nneg i32 %.1415 to i64
  br label %.lr.ph736

.lr.ph736:                                        ; preds = %.lr.ph736.preheader, %.lr.ph736
  %indvars.iv783 = phi i64 [ 0, %.lr.ph736.preheader ], [ %indvars.iv.next784, %.lr.ph736 ] ; 2 uses
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv783
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !58
  call void @decrRefCount(ptr noundef %i.vu) #12
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %exitcond787.not = icmp eq i64 %indvars.iv.next784, %wide.trip.count786
  br i1 %exitcond787.not, label %._crit_edge737, label %.lr.ph736, !llvm.loop !127

._crit_edge737:                                   ; preds = %.lr.ph736, %.loopexit
  call void @decrRefCount(ptr noundef nonnull %.0432) #12
  call void @listRelease(ptr noundef %i.e) #12
  %10 = icmp slt i32 %.1415, 1
  %.not537 = icmp eq i32 %.4846, 0
  %or.cond742 = select i1 %10, i1 true, i1 %.not537
  br i1 %or.cond742, label %._crit_edge741.split, label %.lr.ph740.split.preheader

.lr.ph740.split.preheader:                        ; preds = %._crit_edge737
  %wide.trip.count791 = zext nneg i32 %.1415 to i64
  br label %.lr.ph740.split

.lr.ph740.split:                                  ; preds = %.lr.ph740.split.preheader, %bb.fw
  %indvars.iv788 = phi i64 [ 0, %.lr.ph740.split.preheader ], [ %indvars.iv.next789, %bb.fw ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv788
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !20 ; 2 uses
  %.not538 = icmp eq ptr %i.vx, null
  br i1 %.not538, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph740.split
  call void @decrRefCount(ptr noundef nonnull %i.vx) #12
  br label %bb.fw

bb.fw:                                            ; preds = %.lr.ph740.split, %bb.fv
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1 ; 2 uses
  %exitcond792.not = icmp eq i64 %indvars.iv.next789, %wide.trip.count791
  br i1 %exitcond792.not, label %._crit_edge741.split, label %.lr.ph740.split, !llvm.loop !128

._crit_edge741.split:                             ; preds = %bb.fw, %._crit_edge737
  call void @zfree(ptr noundef %i.ne) #12
  br label %bb.fx

bb.fx:                                            ; preds = %._crit_edge741.split, %bb.bu, %.loopexit625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @listCreate() local_unnamed_addr #3

declare void @zfree(ptr noundef) #3

declare i32 @ACLUserCheckCmdWithUnrestrictedKeyAccess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @patternHashSlot(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #3

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listRelease(ptr noundef) local_unnamed_addr #3

declare ptr @createQuicklistObject(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #3

declare void @zsetConvert(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @listTypeLength(ptr noundef) local_unnamed_addr #3

declare i64 @setTypeSize(ptr noundef) local_unnamed_addr #3

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @listTypeInitIterator(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @listTypeNext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listTypeGet(ptr noundef) local_unnamed_addr #3

declare void @listTypeResetIterator(ptr noundef) local_unnamed_addr #3

declare void @setTypeInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @setTypeNextObject(ptr noundef) local_unnamed_addr #3

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @setTypeResetIterator(ptr noundef) local_unnamed_addr #3

declare ptr @zslGetElementByRank(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #3

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictNext(ptr noundef) local_unnamed_addr #3

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #3

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #3

declare double @fast_float_strtod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @pqsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listNext(ptr noundef) local_unnamed_addr #3

declare void @addReplyNull(ptr noundef) local_unnamed_addr #3

declare void @listTypePush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @listTypeTryConversion(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @setKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @sortroCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @sortCommandGeneric(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sortCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @sortCommandGeneric(ptr noundef %0, i32 noundef 0)
  ret void
}

declare zeroext i16 @crc16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !10, i64 0}
!14 = !{!"_redisSortOperation", !10, i64 0, !15, i64 8}
!15 = !{!"p1 _ZTS11redisObject", !16, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!19, !16, i64 8}
!19 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !16, i64 8}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !11, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !11, i64 0}
!25 = !{!15, !15, i64 0}
!26 = !{!27, !10, i64 7924}
!27 = !{!"redisServer", !10, i64 0, !24, i64 8, !28, i64 16, !28, i64 24, !29, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !31, i64 64, !32, i64 72, !32, i64 80, !33, i64 88, !34, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !35, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !28, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !24, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !28, i64 232, !28, i64 240, !10, i64 248, !10, i64 252, !24, i64 256, !11, i64 264, !32, i64 272, !32, i64 280, !32, i64 288, !36, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !28, i64 472, !28, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !37, i64 1336, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !39, i64 1496, !39, i64 1504, !16, i64 1512, !34, i64 1520, !10, i64 1528, !34, i64 1536, !10, i64 1544, !36, i64 1552, !11, i64 1560, !11, i64 1624, !32, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !40, i64 2424, !10, i64 2448, !35, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !24, i64 2488, !24, i64 2496, !24, i64 2504, !24, i64 2512, !24, i64 2520, !24, i64 2528, !35, i64 2536, !35, i64 2544, !35, i64 2552, !35, i64 2560, !35, i64 2568, !35, i64 2576, !42, i64 2584, !35, i64 2592, !35, i64 2600, !35, i64 2608, !35, i64 2616, !35, i64 2624, !35, i64 2632, !24, i64 2640, !35, i64 2648, !35, i64 2656, !35, i64 2664, !35, i64 2672, !35, i64 2680, !35, i64 2688, !35, i64 2696, !35, i64 2704, !24, i64 2712, !24, i64 2720, !24, i64 2728, !35, i64 2736, !35, i64 2744, !35, i64 2752, !35, i64 2760, !35, i64 2768, !42, i64 2776, !35, i64 2784, !35, i64 2792, !35, i64 2800, !35, i64 2808, !35, i64 2816, !36, i64 2824, !35, i64 2832, !35, i64 2840, !24, i64 2848, !43, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !24, i64 2976, !24, i64 2984, !24, i64 2992, !24, i64 3000, !24, i64 3008, !24, i64 3016, !24, i64 3024, !24, i64 3032, !42, i64 3040, !11, i64 3048, !24, i64 3080, !35, i64 3088, !35, i64 3096, !35, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !35, i64 5168, !35, i64 5176, !35, i64 5184, !35, i64 5192, !11, i64 5200, !35, i64 6264, !35, i64 6272, !24, i64 6280, !35, i64 6288, !35, i64 6296, !24, i64 6304, !11, i64 6312, !44, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !24, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !24, i64 6496, !24, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !28, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !45, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !28, i64 6680, !28, i64 6688, !10, i64 6696, !10, i64 6700, !24, i64 6704, !24, i64 6712, !24, i64 6720, !24, i64 6728, !24, i64 6736, !10, i64 6744, !10, i64 6748, !28, i64 6752, !10, i64 6760, !10, i64 6764, !35, i64 6768, !35, i64 6776, !24, i64 6784, !24, i64 6792, !24, i64 6800, !10, i64 6808, !10, i64 6812, !24, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !24, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !16, i64 6872, !10, i64 6880, !35, i64 6888, !35, i64 6896, !35, i64 6904, !35, i64 6912, !10, i64 6920, !46, i64 6928, !10, i64 6936, !28, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !24, i64 6968, !24, i64 6976, !24, i64 6984, !24, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !47, i64 7024, !10, i64 7032, !10, i64 7036, !28, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !48, i64 7072, !10, i64 7088, !28, i64 7096, !10, i64 7104, !28, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !35, i64 7232, !35, i64 7240, !11, i64 7248, !35, i64 7256, !10, i64 7264, !10, i64 7268, !50, i64 7272, !35, i64 7280, !35, i64 7288, !51, i64 7296, !24, i64 7344, !24, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !24, i64 7400, !36, i64 7408, !24, i64 7416, !28, i64 7424, !28, i64 7432, !28, i64 7440, !10, i64 7448, !10, i64 7452, !39, i64 7456, !39, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !24, i64 7488, !24, i64 7496, !24, i64 7504, !24, i64 7512, !24, i64 7520, !52, i64 7528, !52, i64 7536, !10, i64 7544, !28, i64 7552, !24, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !24, i64 7584, !24, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !28, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !35, i64 7680, !10, i64 7688, !36, i64 7696, !10, i64 7704, !35, i64 7712, !35, i64 7720, !24, i64 7728, !24, i64 7736, !10, i64 7744, !35, i64 7752, !24, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !35, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !36, i64 7872, !36, i64 7880, !10, i64 7888, !24, i64 7896, !36, i64 7904, !36, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !24, i64 7936, !24, i64 7944, !24, i64 7952, !24, i64 7960, !24, i64 7968, !24, i64 7976, !24, i64 7984, !24, i64 7992, !24, i64 8000, !35, i64 8008, !35, i64 8016, !35, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !24, i64 8048, !11, i64 8056, !35, i64 8064, !35, i64 8072, !10, i64 8080, !24, i64 8088, !35, i64 8096, !24, i64 8104, !35, i64 8112, !53, i64 8120, !32, i64 8128, !10, i64 8136, !53, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !35, i64 8168, !35, i64 8176, !28, i64 8184, !35, i64 8192, !35, i64 8200, !35, i64 8208, !10, i64 8216, !54, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !28, i64 8256, !28, i64 8264, !28, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !35, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !35, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !35, i64 8384, !32, i64 8392, !28, i64 8400, !24, i64 8408, !28, i64 8416, !10, i64 8424, !55, i64 8432, !10, i64 8472, !24, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !56, i64 8504, !28, i64 8624, !28, i64 8632, !28, i64 8640, !28, i64 8648, !57, i64 8656, !35, i64 8664, !10, i64 8672, !28, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !24, i64 8704, !10, i64 8712, !10, i64 8716, !28, i64 8720, !10, i64 8728, !10, i64 8732}
!28 = !{!"p1 omnipotent char", !16, i64 0}
!29 = !{!"p2 omnipotent char", !30, i64 0}
!30 = !{!"any p2 pointer", !16, i64 0}
!31 = !{!"p1 _ZTS7redisDb", !16, i64 0}
!32 = !{!"p1 _ZTS4dict", !16, i64 0}
!33 = !{!"p1 _ZTS11aeEventLoop", !16, i64 0}
!34 = !{!"p1 _ZTS3rax", !16, i64 0}
!35 = !{!"long long", !11, i64 0}
!36 = !{!"p1 _ZTS4list", !16, i64 0}
!37 = !{!"connListener", !11, i64 0, !10, i64 64, !29, i64 72, !10, i64 80, !10, i64 84, !38, i64 88, !16, i64 96}
!38 = !{!"p1 _ZTS14ConnectionType", !16, i64 0}
!39 = !{!"p1 _ZTS6client", !16, i64 0}
!40 = !{!"pendingCommandPool", !41, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
end_hunk_2
