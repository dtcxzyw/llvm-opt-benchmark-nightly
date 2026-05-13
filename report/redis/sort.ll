inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@lookupKeyByPattern:bb.a
  %i.bz = add i64 %i.by, %i.bx
  %sext = shl i64 %i.bz, 32
  %i.ca = ashr exact i64 %sext, 32
  %i.cb = tail call ptr @createStringObject(ptr noundef null, i64 noundef %i.ca) #12 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @decrRefCount(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hashTypeGetValueObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @sortCompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
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
  %i.e = tail call ptr @listCreate() #12          ; 8 uses
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
end_hunk_0
begin_hunk_1_@sortCommandGeneric:bb.a
    i32 0, label %bb.ej
    i32 8, label %bb.ej
    i32 1, label %bb.en
  ]

bb.ej:                                            ; preds = %bb.ei, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.sm = getelementptr inbounds nuw i8, ptr %.0402607, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !18
  %i.so = call double @fast_float_strtod(ptr noundef %i.sn, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv769
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store double %i.so, ptr %i.sq, align 8, !tbaa !20
  %i.sr = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !20
  %.not526 = icmp eq i8 %i.ss, 0
  br i1 %.not526, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.st = tail call ptr @__errno_location() #15
  %i.su = load i32, ptr %i.st, align 4, !tbaa !9
  %i.sv = icmp eq i32 %i.su, 34
  %i.sw = fcmp uno double %i.so, 0.000000e+00
  %or.cond541 = select i1 %i.sv, i1 true, i1 %i.sw
  br i1 %or.cond541, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.el
  %.1422 = phi i32 [ 1, %bb.el ], [ %.0421711, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ep

bb.en:                                            ; preds = %bb.ei
  %i.sx = getelementptr inbounds nuw i8, ptr %.0402607, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = sitofp i64 %i.sz to double
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv769
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store double %i.ta, ptr %i.tc, align 8, !tbaa !20
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ei
  call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef nonnull %.0432, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 535) #12
  call void @abort() #14
  unreachable

bb.ep:                                            ; preds = %bb.em, %bb.en
  %.2423 = phi i32 [ %.1422, %bb.em ], [ %.0421711, %bb.en ] ; 2 uses
  br i1 %.not523, label %.thread611, label %bb.eq

bb.eq:                                            ; preds = %.thread614, %bb.ep
  %.2423618 = phi i32 [ %.0421711, %.thread614 ], [ %.2423, %bb.ep ]
  %.0402606617 = phi ptr [ %i.sd, %.thread614 ], [ %.0402607, %bb.ep ]
  call void @decrRefCount(ptr noundef nonnull %.0402606617) #12
  br label %.thread611

.thread611:                                       ; preds = %bb.eh, %bb.ep, %bb.eq, %bb.eg
  %.3424 = phi i32 [ %.0421711, %bb.eg ], [ %.2423618, %bb.eq ], [ %.2423, %bb.ep ], [ %.0421711, %bb.eh ] ; 2 uses
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count772
  br i1 %exitcond773.not, label %._crit_edge716, label %bb.ef, !llvm.loop !117

._crit_edge716:                                   ; preds = %.thread611, %.preheader
  %.0421.lcssa = phi i32 [ 0, %.preheader ], [ %.3424, %.thread611 ] ; 2 uses
  store i32 %.0392.lcssa, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7920), align 8, !tbaa !62
  store i32 %.4846, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7924), align 4, !tbaa !26
  %i.td = insertelement <2 x ptr> poison, ptr %.4437844, i64 0
  %i.te = insertelement <2 x ptr> %i.td, ptr %.0439.lcssa, i64 1
  %i.tf = icmp ne <2 x ptr> %i.te, splat (ptr null)
  %.not519.not = icmp eq ptr %.4437844, null
  %i.tg = zext <2 x i1> %i.tf to <2 x i32>
  store <2 x i32> %i.tg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7928), align 8, !tbaa !9
  br i1 %.not519.not, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %._crit_edge716
  %.not521 = icmp eq i64 %.1398, 0
  br i1 %.not521, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.th = add nsw i32 %.1415, -1
  %i.ti = sext i32 %i.th to i64
  %.not522 = icmp eq i64 %.2401, %i.ti
  br i1 %.not522, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @pqsort(ptr noundef %i.ne, i64 noundef %i.nc, i64 noundef 16, ptr noundef nonnull @sortCompare, i64 noundef %.1398, i64 noundef %.2401) #12
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es, %._crit_edge716
  call void @qsort(ptr noundef %i.ne, i64 noundef %i.nc, i64 noundef 16, ptr noundef nonnull @sortCompare) #12
  br label %bb.ev

bb.ev:                                            ; preds = %bb.et, %bb.eu, %bb.ee
  %.4425 = phi i32 [ 0, %bb.ee ], [ %.0421.lcssa, %bb.et ], [ %.0421.lcssa, %bb.eu ]
  %.not527 = icmp eq i32 %.0416.lcssa, 0          ; 3 uses
  br i1 %.not527, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.tj = zext i32 %.0416.lcssa to i64
  %i.tk = add nsw i64 %.2401, 1
  %i.tl = sub i64 %i.tk, %.1398
  %i.tm = mul i64 %i.tl, %i.tj
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.tn = add nsw i64 %.2401, 1
  %i.to = sub i64 %i.tn, %.1398
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.tp = phi i64 [ %i.tm, %bb.ew ], [ %i.to, %bb.ex ] ; 2 uses
  %.not528 = icmp eq i32 %.4425, 0
  br i1 %.not528, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %.loopexit

bb.fa:                                            ; preds = %bb.ey
  %i.tq = icmp eq ptr %.0439.lcssa, null
  br i1 %i.tq, label %bb.fb, label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.tr = and i64 %i.tp, 4294967295
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.tr) #12
  %sext746 = shl i64 %.1398, 32
  %i.ts = ashr exact i64 %sext746, 32             ; 2 uses
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
  %sext745 = shl i64 %.1398, 32
  %i.ul = ashr exact i64 %sext745, 32             ; 3 uses
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
  br i1 %i.vs, label %.lr.ph736.preheader, label %._crit_edge741.critedge

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

._crit_edge737:                                   ; preds = %.lr.ph736
  call void @decrRefCount(ptr noundef nonnull %.0432) #12
  call void @listRelease(ptr noundef %i.e) #12
  %.not537 = icmp eq i32 %.4846, 0
  br i1 %.not537, label %._crit_edge741, label %.lr.ph740.split.preheader

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
  br i1 %exitcond792.not, label %._crit_edge741, label %.lr.ph740.split, !llvm.loop !128

._crit_edge741.critedge:                          ; preds = %.loopexit
  call void @decrRefCount(ptr noundef nonnull %.0432) #12
  call void @listRelease(ptr noundef %i.e) #12
  br label %._crit_edge741

._crit_edge741:                                   ; preds = %bb.fw, %._crit_edge741.critedge, %._crit_edge737
  call void @zfree(ptr noundef %i.ne) #12
  br label %bb.fx

bb.fx:                                            ; preds = %._crit_edge741, %bb.bu, %.loopexit625
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

end_hunk_1
