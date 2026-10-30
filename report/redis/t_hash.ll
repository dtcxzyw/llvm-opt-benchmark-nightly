Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_hash?download=true
inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@hincrbyCommand:bb.a
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 4
  %i.ao = and i32 %i.an, 15
  switch i32 %i.ao, label %bb.l [
    i32 11, label %bb.i
    i32 12, label %bb.j
    i32 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = call i64 @lpLength(ptr noundef %i.aq) #13
  %i.as = lshr i64 %i.ar, 1
  br label %hashTypeLength.exit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = call i64 @lpLength(ptr noundef %i.aw) #13
  %i.ay = udiv i64 %i.ax, 3
  br label %hashTypeLength.exit

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i64 %i.be, %i.bc
  br label %hashTypeLength.exit

bb.l:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.i, %bb.k, %bb.j
  %.120.i = phi i64 [ %i.as, %bb.i ], [ %i.bf, %bb.k ], [ %i.ay, %bb.j ] ; 2 uses
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = call i32 @getKeySlot(ptr noundef %i.bl) #13
  %i.bn = add i64 %.120.i, 1
  call void @updateKeysizesHist(ptr noundef %i.bg, i32 noundef %i.bm, i32 noundef 4, i64 noundef %.120.i, i64 noundef %i.bn) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bo = call ptr @createHashObject() #13
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !70
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = call ptr @dbAdd(ptr noundef %i.bp, ptr noundef %i.bs, ptr noundef nonnull %i.e) #13 ; 0 uses
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17
  %i.ca = call i32 @getKeySlot(ptr noundef %i.bz) #13
  call void @updateKeysizesHist(ptr noundef %i.bu, i32 noundef %i.ca, i32 noundef 4, i64 noundef 0, i64 noundef 1) #13
  br label %bb.n

bb.n:                                             ; preds = %hashTypeLength.exit, %bb.m, %bb.e, %bb.f
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !27  ; 5 uses
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !27  ; 5 uses
  %i.cd = icmp slt i64 %i.cc, 0
  %i.ce = icmp slt i64 %i.cb, 0
  %or.cond3 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = sub nsw i64 -9223372036854775808, %i.cb
  %i.cg = icmp slt i64 %i.cc, %i.cf
  %or.cond = select i1 %or.cond3, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp sgt i64 %i.cc, 0
  %i.ci = icmp sgt i64 %i.cb, 0
  %or.cond5 = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = sub nuw nsw i64 9223372036854775807, %i.cb
  %i.ck = icmp sgt i64 %i.cc, %i.cj
  %or.cond50 = select i1 %or.cond5, i1 %i.ck, i1 false
  br i1 %or.cond50, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #13
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cl = add nsw i64 %i.cc, %i.cb                ; 2 uses
  store i64 %i.cl, ptr %i.c, align 8, !tbaa !27
  %i.cm = call ptr @sdsfromlonglong(i64 noundef %i.cl) #13
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not46 = icmp eq i32 %i.cn, 0
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cp = call i64 @kvobjAllocSize(ptr noundef %i.co) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i64 [ %i.cp, %bb.r ], [ 0, %bb.q ]
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.cx = call i32 @hashTypeSet(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cw, ptr noundef %i.cm, i32 noundef 6) ; 0 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not47 = icmp eq i32 %i.cy, 0
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17
  %i.df = call i32 @getKeySlot(ptr noundef %i.de) #13
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.dh = call i64 @kvobjAllocSize(ptr noundef %i.dg) #13
  call void @updateSlotAllocSize(ptr noundef %i.cz, i32 noundef %i.df, ptr noundef %i.dg, i64 noundef %.0, i64 noundef %i.dh) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.di = load i64, ptr %i.c, align 8, !tbaa !27
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.di) #13
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !70
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !70
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dj, ptr noundef %i.dm, ptr noundef %i.dn, i32 noundef 1) #13
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !70
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !75
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %i.dq, i32 noundef %i.dt) #13
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  br label %bb.v

bb.v:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread, %bb.g, %bb.p, %bb.u, %hashTypeLookupWriteOrCreate.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hincrbyfloatCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca x86_fp80, align 16                ; 5 uses
  %i.d = alloca x86_fp80, align 16                ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 10 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [5120 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = call i32 @getLongDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %i.d, ptr noundef null) #13
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = load x86_fp80, ptr %i.d, align 16, !tbaa !164
  %i.p = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.o) #17
  %or.cond = fcmp ueq x86_fp80 %i.p, +inf
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #13
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.v = call ptr @lookupKeyWriteWithLink(ptr noundef %i.u, ptr noundef %i.s, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.w = call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef 4) #13
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %hashTypeLookupWriteOrCreate.exit.thread

hashTypeLookupWriteOrCreate.exit.thread:          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %hashTypeLookupWriteOrCreate.exit, label %hashTypeLookupWriteOrCreate.exit.thread51

hashTypeLookupWriteOrCreate.exit.thread51:        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.v, ptr %i.f, align 8, !tbaa !70
  br label %bb.f

hashTypeLookupWriteOrCreate.exit:                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.y = call ptr @createHashObject() #13
  store ptr %i.y, ptr %i.b, align 8, !tbaa !70
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.aa = call ptr @dbAddByLink(ptr noundef %i.z, ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !70
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.x, label %bb.f

bb.f:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread51, %hashTypeLookupWriteOrCreate.exit
  %i.ac = phi ptr [ %i.v, %hashTypeLookupWriteOrCreate.exit.thread51 ], [ %i.aa, %hashTypeLookupWriteOrCreate.exit ] ; 5 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.aj = call i32 @hashTypeGetValue(ptr noundef %i.ad, ptr noundef nonnull %i.ac, ptr noundef %i.ai, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
  switch i32 %i.aj, label %bb.k [
    i32 0, label %bb.g
    i32 3, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.h, align 4, !tbaa !12
  %i.am = zext i32 %i.al to i64
  %i.an = call i32 @string2ld(ptr noundef nonnull %i.ak, i64 noundef %i.am, ptr noundef nonnull %i.c) #13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load x86_fp80, ptr %i.c, align 16, !tbaa !164
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #13
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !27
  %i.aq = sitofp i64 %i.ap to x86_fp80
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.ac, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %i.as, 4
  %i.au = and i32 %i.at, 15
  switch i32 %i.au, label %bb.o [
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = call i64 @lpLength(ptr noundef %i.aw) #13
  %i.ay = lshr i64 %i.ax, 1
  br label %hashTypeLength.exit

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = call i64 @lpLength(ptr noundef %i.bc) #13
  %i.be = udiv i64 %i.bd, 3
  br label %hashTypeLength.exit

bb.n:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !14
  %i.bl = add i64 %i.bk, %i.bi
  br label %hashTypeLength.exit

bb.o:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.l, %bb.n, %bb.m
  %.120.i = phi i64 [ %i.ay, %bb.l ], [ %i.bl, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.bs = call i32 @getKeySlot(ptr noundef %i.br) #13
  %i.bt = add i64 %.120.i, 1
  call void @updateKeysizesHist(ptr noundef %i.bm, i32 noundef %i.bs, i32 noundef 4, i64 noundef %.120.i, i64 noundef %i.bt) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bu = call ptr @createHashObject() #13
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !70
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = call ptr @dbAdd(ptr noundef %i.bv, ptr noundef %i.by, ptr noundef nonnull %i.f) #13 ; 0 uses
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cg = call i32 @getKeySlot(ptr noundef %i.cf) #13
  call void @updateKeysizesHist(ptr noundef %i.ca, i32 noundef %i.cg, i32 noundef 4, i64 noundef 0, i64 noundef 1) #13
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %hashTypeLength.exit, %bb.p, %bb.j
  %i.ch = phi x86_fp80 [ %.pre, %._crit_edge ], [ 0.000000e+00, %hashTypeLength.exit ], [ 0.000000e+00, %bb.p ], [ %i.aq, %bb.j ]
  %i.ci = load x86_fp80, ptr %i.d, align 16, !tbaa !164
  %i.cj = fadd x86_fp80 %i.ci, %i.ch              ; 3 uses
  store x86_fp80 %i.cj, ptr %i.c, align 16, !tbaa !164
  %i.ck = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.cj) #17
  %or.cond48 = fcmp ueq x86_fp80 %i.ck, +inf
  br i1 %or.cond48, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #13
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.cl = call i32 @ld2string(ptr noundef nonnull %i.i, i64 noundef 5120, x86_fp80 noundef %i.cj, i32 noundef 1) #13
  %i.cm = sext i32 %i.cl to i64                   ; 3 uses
  %i.cn = call ptr @sdsnewlen(ptr noundef nonnull %i.i, i64 noundef %i.cm) #13
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not44 = icmp eq i32 %i.co, 0
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.cq = call i64 @kvobjAllocSize(ptr noundef %i.cp) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i64 [ %i.cq, %bb.t ], [ 0, %bb.s ]
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !17
  %i.cy = call i32 @hashTypeSet(ptr noundef %i.cr, ptr noundef %i.cs, ptr noundef %i.cx, ptr noundef %i.cn, i32 noundef 6) ; 0 uses
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not45 = icmp eq i32 %i.cz, 0
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !17
  %i.dg = call i32 @getKeySlot(ptr noundef %i.df) #13
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.di = call i64 @kvobjAllocSize(ptr noundef %i.dh) #13
  call void @updateSlotAllocSize(ptr noundef %i.da, i32 noundef %i.dg, ptr noundef %i.dh, i64 noundef %.0, i64 noundef %i.di) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %i.cm) #13
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !70
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !70
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dj, ptr noundef %i.dm, ptr noundef %i.dn, i32 noundef 1) #13
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !70
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !129
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !75
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.42, ptr noundef %i.dq, i32 noundef %i.dt) #13
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  %i.dw = call ptr @createRawStringObject(ptr noundef nonnull %i.i, i64 noundef %i.cm) #13 ; 2 uses
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 632), align 8, !tbaa !165
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !128 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 720), align 8, !tbaa !166
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 744), align 8, !tbaa !133
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 904), align 8, !tbaa !70
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !70
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 7, ptr noundef %i.dx, ptr noundef %i.ea, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ed, ptr noundef %i.ef, ptr noundef %i.dw) #13
  call void @decrRefCount(ptr noundef %i.dw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.x

bb.x:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread, %bb.i, %bb.r, %bb.w, %hashTypeLookupWriteOrCreate.exit, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

declare i32 @getLongDoubleFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #9

declare i32 @string2ld(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ld2string(ptr noundef, i64 noundef, x86_fp80 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @createRawStringObject(ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hgetCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !134
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.l) #13 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 4) #13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.w = call i32 @hashTypeGetValue(ptr noundef %i.v, ptr noundef nonnull %i.m, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.b, align 4, !tbaa !12
  %i.aa = zext i32 %i.z to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i64 noundef %i.aa) #13
  br label %addHashFieldToReply.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !27
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.ab) #13
  br label %addHashFieldToReply.exit

bb.g:                                             ; preds = %bb.c
  call void @addReplyNull(ptr noundef nonnull %0) #13
  br label %addHashFieldToReply.exit

addHashFieldToReply.exit:                         ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %addHashFieldToReply.exit
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @addHashFieldToReply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 111) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyNull(ptr noundef %0) #13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
end_hunk_0
begin_hunk_1_@hpersistCommand:bb.a

bb.an:                                            ; preds = %.lr.ph
  %i.ec = call ptr @dictGetKey(ptr noundef nonnull %i.ea) #13 ; 3 uses
  %i.ed = call i64 @entryGetExpiry(ptr noundef %i.ec) #13 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 281474976710656
  br i1 %i.ee, label %hfieldPersist.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = call i64 @commandTimeSnapshot() #13
  %i.eg = icmp slt i64 %i.ed, %i.ef
  br i1 %i.eg, label %hfieldPersist.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = call i64 @entryGetExpiry(ptr noundef %i.ec) #13
  %i.ei = icmp eq i64 %i.eh, 281474976710656
  br i1 %i.ei, label %hfieldPersist.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !17 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 70
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = and i16 %i.el, 256
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.as, label %bb.ar, !prof !22

bb.ar:                                            ; preds = %bb.aq
  call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 3451) #13
  call void @abort() #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.ep = call i32 @ebRemove(ptr noundef nonnull %i.eo, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %i.ec) #13 ; 0 uses
  br label %hfieldPersist.exit

hfieldPersist.exit:                               ; preds = %bb.as, %bb.ap, %bb.ao, %bb.an, %.lr.ph
  %.sink194 = phi i64 [ -2, %.lr.ph ], [ -1, %bb.an ], [ -2, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.as ]
  %.4 = phi i32 [ %.2114157, %.lr.ph ], [ %.2114157, %bb.an ], [ %.2114157, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.as ] ; 2 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.sink194) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !14
  %i.er = icmp sgt i64 %i.eq, %indvars.iv.next
  br i1 %i.er, label %.lr.ph, label %._crit_edge, !llvm.loop !207

bb.at:                                            ; preds = %._crit_edge
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !70
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.ey = call i32 @getKeySlot(ptr noundef %i.ex) #13
  %i.ez = call i64 @kvobjAllocSize(ptr noundef nonnull %i.i) #13
  call void @updateSlotAllocSize(ptr noundef %i.es, i32 noundef %i.ey, ptr noundef nonnull %i.i, i64 noundef %.0105, i64 noundef %i.ez) #13
  br label %bb.av

bb.au:                                            ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 4066, ptr noundef nonnull @.str.5, i32 noundef %i.af) #13
  call void @abort() #14
  unreachable

bb.av:                                            ; preds = %._crit_edge, %bb.at, %._crit_edge164
  %.5 = phi i32 [ %.0112.lcssa, %._crit_edge164 ], [ %.2114.lcssa, %bb.at ], [ %.2114.lcssa, %._crit_edge ]
  %.not136 = icmp eq i32 %.5, 0
  br i1 %.not136, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !70
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !75
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef %i.fc, i32 noundef %i.ff) #13
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.fh = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !70
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fg, ptr noundef %i.fj, ptr noundef nonnull %i.i, i32 noundef 1) #13
  %i.fk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  %i.fl = add nsw i64 %i.fk, 1
  store i64 %i.fl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !131
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.lr.ph171, %bb.j, %bb.h, %bb.av, %bb.aw, %bb.d, %bb.a, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @ebDestroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @lpFindCb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbFindInListpack(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address_is_null) %3, i64 noundef %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !208
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !208
  %i.d = load i64, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = srem i32 %i.c, 3
  switch i32 %i.f, label %bb.j [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.g, align 8, !tbaa !209
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.1, i32 noundef 308) #13
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %.not17 = icmp ult i64 %4, %i.j
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !85
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !112
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !112
  %i.q = add i64 %i.d, -1
  store i64 %i.q, ptr %2, align 8, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.i ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @lpBatchInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare ptr @lpSeek(ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare void @addReplyErrorExpireTime(ptr noundef) local_unnamed_addr #0

declare ptr @entryGetAllocPtr(ptr noundef) local_unnamed_addr #0

declare void @enterExecutionUnit(i32 noundef, i64 noundef) local_unnamed_addr #0

declare void @alsoPropagate(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @exitExecutionUnit() local_unnamed_addr #0

declare void @postExecutionUnitOperations() local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { memory(none) }

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
!13 = !{!"long", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"redisObject", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 3, !11, i64 4, !11, i64 5, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"short", !10, i64 0}
!19 = !{!"ExpireMeta", !11, i64 0, !18, i64 4, !11, i64 6, !11, i64 6, !11, i64 6, !11, i64 6, !11, i64 7, !11, i64 7, !11, i64 7, !15, i64 8}
!20 = !{!"listpackEx", !19, i64 0, !15, i64 16}
!21 = !{!20, !15, i64 16}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"ExpireInfo", !15, i64 0, !13, i64 8, !15, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!24 = !{!23, !13, i64 32}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"long long", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 omnipotent char", !15, i64 0}
!29 = !{!"any p2 pointer", !15, i64 0}
!30 = !{!"p2 omnipotent char", !29, i64 0}
!31 = !{!"p1 _ZTS7redisDb", !15, i64 0}
!32 = !{!"p1 _ZTS4dict", !15, i64 0}
!33 = !{!"p1 _ZTS11aeEventLoop", !15, i64 0}
!34 = !{!"p1 _ZTS3rax", !15, i64 0}
!35 = !{!"p1 _ZTS4list", !15, i64 0}
!36 = !{!"p1 _ZTS14ConnectionType", !15, i64 0}
!37 = !{!"connListener", !10, i64 0, !11, i64 64, !30, i64 72, !11, i64 80, !11, i64 84, !36, i64 88, !15, i64 96}
!38 = !{!"p1 _ZTS6client", !15, i64 0}
!39 = !{!"p2 _ZTS14pendingCommand", !29, i64 0}
!40 = !{!"pendingCommandPool", !39, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!41 = !{!"double", !10, i64 0}
!42 = !{!"malloc_stats", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!43 = !{!"p1 _ZTS11hotkeyStats", !15, i64 0}
!44 = !{!"p1 double", !15, i64 0}
!45 = !{!"p1 _ZTS9saveparam", !15, i64 0}
!46 = !{!"p2 _ZTS10connection", !29, i64 0}
!47 = !{!"p1 _ZTS7redisOp", !15, i64 0}
!48 = !{!"redisOpArray", !47, i64 0, !11, i64 8, !11, i64 12}
!49 = !{!"p1 _ZTS11replBacklog", !15, i64 0}
!50 = !{!"replDataBuf", !35, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!51 = !{!"p1 _ZTS10connection", !15, i64 0}
!52 = !{!"p1 _ZTS8_kvstore", !15, i64 0}
!53 = !{!"p1 _ZTS12clusterState", !15, i64 0}
!54 = !{!"aclInfo", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!55 = !{!"redisTLSContextConfig", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !11, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!56 = !{!"p1 _ZTS14sentinelConfig", !15, i64 0}
!57 = !{!"redisServer", !11, i64 0, !13, i64 8, !28, i64 16, !28, i64 24, !30, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !31, i64 64, !32, i64 72, !32, i64 80, !33, i64 88, !34, i64 96, !11, i64 104, !11, i64 108, !10, i64 112, !10, i64 116, !26, i64 120, !10, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !28, i64 144, !11, i64 152, !11, i64 156, !10, i64 160, !11, i64 204, !13, i64 208, !11, i64 216, !11, i64 220, !11, i64 224, !28, i64 232, !28, i64 240, !11, i64 248, !11, i64 252, !13, i64 256, !10, i64 264, !32, i64 272, !32, i64 280, !32, i64 288, !35, i64 296, !10, i64 304, !11, i64 312, !11, i64 316, !10, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !10, i64 336, !11, i64 464, !28, i64 472, !28, i64 480, !11, i64 488, !10, i64 496, !11, i64 1328, !37, i64 1336, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !38, i64 1496, !38, i64 1504, !15, i64 1512, !34, i64 1520, !11, i64 1528, !34, i64 1536, !11, i64 1544, !35, i64 1552, !10, i64 1560, !10, i64 1624, !32, i64 1880, !10, i64 1888, !11, i64 1896, !11, i64 1900, !10, i64 1904, !11, i64 2416, !11, i64 2420, !40, i64 2424, !11, i64 2448, !26, i64 2456, !11, i64 2464, !11, i64 2468, !11, i64 2472, !11, i64 2476, !11, i64 2480, !13, i64 2488, !13, i64 2496, !13, i64 2504, !13, i64 2512, !13, i64 2520, !13, i64 2528, !26, i64 2536, !26, i64 2544, !26, i64 2552, !26, i64 2560, !26, i64 2568, !26, i64 2576, !41, i64 2584, !26, i64 2592, !26, i64 2600, !26, i64 2608, !26, i64 2616, !26, i64 2624, !26, i64 2632, !13, i64 2640, !26, i64 2648, !26, i64 2656, !26, i64 2664, !26, i64 2672, !26, i64 2680, !26, i64 2688, !26, i64 2696, !26, i64 2704, !13, i64 2712, !13, i64 2720, !13, i64 2728, !26, i64 2736, !26, i64 2744, !26, i64 2752, !26, i64 2760, !26, i64 2768, !41, i64 2776, !26, i64 2784, !26, i64 2792, !26, i64 2800, !26, i64 2808, !26, i64 2816, !35, i64 2824, !26, i64 2832, !26, i64 2840, !13, i64 2848, !42, i64 2856, !10, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !13, i64 2976, !13, i64 2984, !13, i64 2992, !13, i64 3000, !13, i64 3008, !13, i64 3016, !13, i64 3024, !13, i64 3032, !41, i64 3040, !10, i64 3048, !13, i64 3080, !26, i64 3088, !26, i64 3096, !26, i64 3104, !10, i64 3112, !10, i64 4136, !10, i64 5160, !26, i64 5168, !26, i64 5176, !26, i64 5184, !26, i64 5192, !10, i64 5200, !26, i64 6264, !26, i64 6272, !13, i64 6280, !26, i64 6288, !26, i64 6296, !13, i64 6304, !10, i64 6312, !43, i64 6408, !11, i64 6416, !11, i64 6420, !11, i64 6424, !11, i64 6428, !11, i64 6432, !11, i64 6436, !11, i64 6440, !11, i64 6444, !11, i64 6448, !11, i64 6452, !11, i64 6456, !11, i64 6460, !11, i64 6464, !13, i64 6472, !11, i64 6480, !11, i64 6484, !11, i64 6488, !11, i64 6492, !13, i64 6496, !13, i64 6504, !11, i64 6512, !11, i64 6516, !11, i64 6520, !11, i64 6524, !11, i64 6528, !11, i64 6532, !28, i64 6536, !10, i64 6544, !11, i64 6616, !11, i64 6620, !11, i64 6624, !44, i64 6632, !11, i64 6640, !11, i64 6644, !11, i64 6648, !11, i64 6652, !11, i64 6656, !11, i64 6660, !11, i64 6664, !11, i64 6668, !11, i64 6672, !28, i64 6680, !28, i64 6688, !11, i64 6696, !11, i64 6700, !13, i64 6704, !13, i64 6712, !13, i64 6720, !13, i64 6728, !13, i64 6736, !11, i64 6744, !11, i64 6748, !28, i64 6752, !11, i64 6760, !11, i64 6764, !26, i64 6768, !26, i64 6776, !13, i64 6784, !13, i64 6792, !13, i64 6800, !11, i64 6808, !11, i64 6812, !13, i64 6816, !11, i64 6824, !11, i64 6828, !11, i64 6832, !11, i64 6836, !11, i64 6840, !13, i64 6848, !11, i64 6856, !10, i64 6860, !10, i64 6864, !15, i64 6872, !11, i64 6880, !26, i64 6888, !26, i64 6896, !26, i64 6904, !26, i64 6912, !11, i64 6920, !45, i64 6928, !11, i64 6936, !28, i64 6944, !11, i64 6952, !11, i64 6956, !11, i64 6960, !13, i64 6968, !13, i64 6976, !13, i64 6984, !13, i64 6992, !11, i64 7000, !11, i64 7004, !11, i64 7008, !11, i64 7012, !11, i64 7016, !11, i64 7020, !46, i64 7024, !11, i64 7032, !11, i64 7036, !28, i64 7040, !11, i64 7048, !11, i64 7052, !11, i64 7056, !10, i64 7060, !11, i64 7068, !48, i64 7072, !11, i64 7088, !28, i64 7096, !11, i64 7104, !28, i64 7112, !11, i64 7120, !11, i64 7124, !11, i64 7128, !11, i64 7132, !11, i64 7136, !11, i64 7140, !11, i64 7144, !10, i64 7148, !10, i64 7189, !26, i64 7232, !26, i64 7240, !10, i64 7248, !26, i64 7256, !11, i64 7264, !11, i64 7268, !49, i64 7272, !26, i64 7280, !26, i64 7288, !50, i64 7296, !13, i64 7344, !13, i64 7352, !11, i64 7360, !11, i64 7364, !11, i64 7368, !11, i64 7372, !11, i64 7376, !11, i64 7380, !11, i64 7384, !11, i64 7388, !11, i64 7392, !13, i64 7400, !35, i64 7408, !13, i64 7416, !28, i64 7424, !28, i64 7432, !28, i64 7440, !11, i64 7448, !11, i64 7452, !38, i64 7456, !38, i64 7464, !11, i64 7472, !11, i64 7476, !11, i64 7480, !11, i64 7484, !13, i64 7488, !13, i64 7496, !13, i64 7504, !13, i64 7512, !13, i64 7520, !51, i64 7528, !51, i64 7536, !11, i64 7544, !28, i64 7552, !13, i64 7560, !11, i64 7568, !11, i64 7572, !11, i64 7576, !13, i64 7584, !13, i64 7592, !11, i64 7600, !11, i64 7604, !11, i64 7608, !11, i64 7612, !28, i64 7616, !11, i64 7624, !11, i64 7628, !10, i64 7632, !26, i64 7680, !11, i64 7688, !35, i64 7696, !11, i64 7704, !26, i64 7712, !26, i64 7720, !13, i64 7728, !13, i64 7736, !11, i64 7744, !26, i64 7752, !13, i64 7760, !11, i64 7768, !11, i64 7772, !11, i64 7776, !11, i64 7780, !11, i64 7784, !26, i64 7792, !10, i64 7800, !11, i64 7812, !11, i64 7816, !11, i64 7820, !10, i64 7824, !35, i64 7872, !35, i64 7880, !11, i64 7888, !13, i64 7896, !35, i64 7904, !35, i64 7912, !11, i64 7920, !11, i64 7924, !11, i64 7928, !11, i64 7932, !13, i64 7936, !13, i64 7944, !13, i64 7952, !13, i64 7960, !13, i64 7968, !13, i64 7976, !13, i64 7984, !13, i64 7992, !13, i64 8000, !26, i64 8008, !26, i64 8016, !26, i64 8024, !11, i64 8032, !11, i64 8036, !10, i64 8040, !13, i64 8048, !10, i64 8056, !26, i64 8064, !26, i64 8072, !11, i64 8080, !13, i64 8088, !26, i64 8096, !13, i64 8104, !26, i64 8112, !52, i64 8120, !32, i64 8128, !11, i64 8136, !52, i64 8144, !11, i64 8152, !11, i64 8156, !11, i64 8160, !11, i64 8164, !26, i64 8168, !26, i64 8176, !28, i64 8184, !26, i64 8192, !26, i64 8200, !26, i64 8208, !11, i64 8216, !53, i64 8224, !11, i64 8232, !11, i64 8236, !11, i64 8240, !11, i64 8244, !11, i64 8248, !28, i64 8256, !28, i64 8264, !28, i64 8272, !11, i64 8280, !11, i64 8284, !11, i64 8288, !11, i64 8292, !11, i64 8296, !11, i64 8300, !11, i64 8304, !11, i64 8308, !26, i64 8312, !11, i64 8320, !11, i64 8324, !11, i64 8328, !26, i64 8336, !11, i64 8344, !11, i64 8348, !11, i64 8352, !11, i64 8356, !11, i64 8360, !11, i64 8364, !11, i64 8368, !11, i64 8372, !11, i64 8376, !26, i64 8384, !32, i64 8392, !28, i64 8400, !13, i64 8408, !28, i64 8416, !11, i64 8424, !54, i64 8432, !11, i64 8472, !13, i64 8480, !11, i64 8488, !11, i64 8492, !11, i64 8496, !55, i64 8504, !28, i64 8624, !28, i64 8632, !28, i64 8640, !28, i64 8648, !56, i64 8656, !26, i64 8664, !11, i64 8672, !28, i64 8680, !11, i64 8688, !11, i64 8692, !11, i64 8696, !13, i64 8704, !11, i64 8712, !11, i64 8716, !28, i64 8720, !11, i64 8728, !11, i64 8732}
!58 = !{!57, !26, i64 2568}
!59 = !{!57, !26, i64 2576}
!60 = !{!57, !11, i64 6644}
!61 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!62 = !{!"p1 _ZTS8dictType", !15, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"htMetadataEx", !13, i64 0, !19, i64 8, !15, i64 24}
!65 = !{!64, !15, i64 24}
!66 = !{!23, !13, i64 40}
!67 = !{!"p1 _ZTS11redisObject", !15, i64 0}
!68 = !{!"sharedObjectsStruct", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !10, i64 64, !10, i64 96, !10, i64 128, !10, i64 160, !67, i64 192, !67, i64 200, !67, i64 208, !67, i64 216, !67, i64 224, !67, i64 232, !67, i64 240, !67, i64 248, !67, i64 256, !67, i64 264, !67, i64 272, !67, i64 280, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !67, i64 320, !67, i64 328, !67, i64 336, !67, i64 344, !67, i64 352, !67, i64 360, !67, i64 368, !67, i64 376, !67, i64 384, !67, i64 392, !67, i64 400, !67, i64 408, !67, i64 416, !67, i64 424, !67, i64 432, !67, i64 440, !67, i64 448, !67, i64 456, !67, i64 464, !67, i64 472, !67, i64 480, !67, i64 488, !67, i64 496, !67, i64 504, !67, i64 512, !67, i64 520, !67, i64 528, !67, i64 536, !67, i64 544, !67, i64 552, !67, i64 560, !67, i64 568, !67, i64 576, !67, i64 584, !67, i64 592, !67, i64 600, !67, i64 608, !67, i64 616, !67, i64 624, !67, i64 632, !67, i64 640, !67, i64 648, !67, i64 656, !67, i64 664, !67, i64 672, !67, i64 680, !67, i64 688, !67, i64 696, !67, i64 704, !67, i64 712, !67, i64 720, !67, i64 728, !67, i64 736, !67, i64 744, !67, i64 752, !67, i64 760, !67, i64 768, !67, i64 776, !67, i64 784, !67, i64 792, !67, i64 800, !67, i64 808, !10, i64 816, !10, i64 896, !10, i64 80896, !10, i64 81152, !10, i64 81408, !10, i64 81664, !28, i64 81920, !28, i64 81928}
!69 = !{!68, !67, i64 608}
!70 = !{!67, !67, i64 0}
!71 = !{!10, !10, i64 0}
!72 = !{!18, !18, i64 0}
!73 = !{!"p1 _ZTS7_estore", !15, i64 0}
!74 = !{!"redisDb", !52, i64 0, !52, i64 8, !73, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !11, i64 72, !26, i64 80, !13, i64 88}
!75 = !{!74, !11, i64 72}
!76 = !{!19, !11, i64 0}
!77 = !{!19, !18, i64 4}
!78 = !{!"", !28, i64 0, !11, i64 8, !26, i64 16}
!79 = !{!78, !28, i64 0}
!80 = !{!78, !11, i64 8}
!81 = !{!78, !26, i64 16}
!82 = !{!"lpFingArgs", !13, i64 0, !13, i64 8, !28, i64 16, !11, i64 24, !11, i64 28, !28, i64 32}
!83 = !{!82, !13, i64 0}
!84 = !{!82, !13, i64 8}
!85 = !{!82, !28, i64 16}
!86 = !{!"HashTypeSetEx", !11, i64 0, !13, i64 8, !31, i64 16, !67, i64 24, !67, i64 32, !13, i64 40, !38, i64 48, !28, i64 56}
!87 = !{!86, !67, i64 32}
!88 = !{!86, !11, i64 0}
!89 = !{!86, !13, i64 40}
!90 = !{!86, !31, i64 16}
!91 = !{!86, !67, i64 24}
!92 = !{!28, !28, i64 0}
!93 = !{!57, !11, i64 6440}
!94 = !{!15, !15, i64 0}
!95 = !{!57, !13, i64 7936}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"p2 _ZTS11redisObject", !29, i64 0}
!98 = !{!"p1 _ZTS14pendingCommand", !15, i64 0}
!99 = !{!"pendingCommandList", !98, i64 0, !98, i64 8, !11, i64 16, !11, i64 20}
!100 = !{!"p1 _ZTS14deferredObject", !15, i64 0}
!101 = !{!"p1 _ZTS12redisCommand", !15, i64 0}
!102 = !{!"p1 _ZTS9dictEntry", !15, i64 0}
!103 = !{!"multiState", !39, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !13, i64 24, !11, i64 32}
!104 = !{!"blockingState", !11, i64 0, !26, i64 8, !11, i64 16, !32, i64 24, !11, i64 32, !11, i64 36, !26, i64 40, !15, i64 48, !15, i64 56, !13, i64 64}
!105 = !{!"p1 _ZTS8listNode", !15, i64 0}
!106 = !{!"listNode", !105, i64 0, !105, i64 8, !15, i64 16}
!107 = !{!"p1 _ZTS13payloadHeader", !15, i64 0}
!108 = !{!"p1 _ZTS7asmTask", !15, i64 0}
!109 = !{!"client", !13, i64 0, !13, i64 8, !51, i64 16, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !11, i64 28, !31, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !28, i64 64, !13, i64 72, !13, i64 80, !11, i64 88, !97, i64 96, !11, i64 104, !11, i64 108, !97, i64 112, !13, i64 120, !99, i64 128, !98, i64 152, !100, i64 160, !11, i64 168, !97, i64 176, !11, i64 184, !11, i64 188, !101, i64 192, !101, i64 200, !101, i64 208, !101, i64 216, !15, i64 224, !11, i64 232, !11, i64 236, !13, i64 240, !35, i64 248, !26, i64 256, !35, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !11, i64 296, !11, i64 300, !102, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !26, i64 336, !26, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !13, i64 368, !13, i64 376, !28, i64 384, !26, i64 392, !26, i64 400, !26, i64 408, !26, i64 416, !26, i64 424, !26, i64 432, !26, i64 440, !26, i64 448, !26, i64 456, !26, i64 464, !26, i64 472, !10, i64 480, !11, i64 524, !28, i64 528, !11, i64 536, !11, i64 540, !13, i64 544, !103, i64 552, !104, i64 592, !26, i64 664, !35, i64 672, !32, i64 680, !32, i64 688, !32, i64 696, !28, i64 704, !28, i64 712, !105, i64 720, !105, i64 728, !105, i64 736, !15, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !13, i64 784, !34, i64 792, !13, i64 800, !11, i64 808, !105, i64 816, !15, i64 824, !105, i64 832, !13, i64 840, !105, i64 848, !13, i64 856, !105, i64 864, !13, i64 872, !106, i64 880, !106, i64 904, !13, i64 928, !13, i64 936, !13, i64 944, !26, i64 952, !13, i64 960, !13, i64 968, !28, i64 976, !10, i64 984, !107, i64 992, !26, i64 1000, !26, i64 1008, !26, i64 1016, !108, i64 1024, !28, i64 1032, !10, i64 1040}
!110 = !{!109, !13, i64 8}
!111 = !{!57, !11, i64 2476}
!112 = !{!82, !11, i64 24}
!113 = !{!"p2 _ZTS9dictEntry", !29, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!102, !102, i64 0}
!116 = !{!86, !13, i64 8}
!117 = !{!74, !73, i64 16}
!118 = !{!"dictIterator", !32, i64 0, !13, i64 8, !11, i64 16, !11, i64 20, !102, i64 24, !102, i64 32, !26, i64 40}
!119 = !{!"", !67, i64 0, !11, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !13, i64 40, !118, i64 48, !102, i64 96}
!120 = !{!119, !67, i64 0}
!121 = !{!119, !11, i64 8}
!122 = !{!119, !13, i64 40}
!123 = !{!119, !102, i64 96}
!124 = !{!"OnFieldExpireCtx", !67, i64 0, !31, i64 8, !11, i64 16}
!125 = !{!124, !67, i64 0}
!126 = !{!124, !31, i64 8}
!127 = !{!124, !11, i64 16}
!128 = !{!109, !97, i64 96}
!129 = !{!109, !31, i64 32}
!130 = !{!68, !67, i64 24}
!131 = !{!57, !26, i64 6888}
!132 = !{!109, !11, i64 88}
!133 = !{!68, !67, i64 744}
!134 = !{!109, !11, i64 28}
!135 = !{!68, !67, i64 616}
!136 = !{!23, !13, i64 8}
!137 = !{!23, !13, i64 24}
!138 = !{!57, !11, i64 7088}
!139 = distinct !{!139, !96}
!140 = !{!57, !28, i64 7440}
!141 = !{!57, !38, i64 1496}
!142 = !{!57, !13, i64 7944}
!143 = !{!32, !32, i64 0}
!144 = !{!86, !38, i64 48}
!145 = distinct !{!145, !96}
!146 = distinct !{!146, !96}
!147 = !{!119, !28, i64 16}
!148 = !{!119, !28, i64 24}
!149 = !{!119, !28, i64 32}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = distinct !{!151, !96}
!152 = distinct !{!152, !96}
!153 = distinct !{!153, !96}
!154 = distinct !{!154, !96}
!155 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!156 = !{!68, !67, i64 32}
!157 = distinct !{!157, !96}
!158 = !{!68, !67, i64 0}
!159 = distinct !{!159, !96}
!160 = distinct !{!160, !96}
!161 = !{!68, !67, i64 648}
!162 = distinct !{!162, !96}
!163 = !{!"long double", !10, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!68, !67, i64 632}
!166 = !{!68, !67, i64 720}
!167 = distinct !{!167, !96}
!168 = distinct !{!168, !96}
!169 = distinct !{!169, !96}
!170 = distinct !{!170, !96}
!171 = distinct !{!171, !96}
!172 = !{!68, !67, i64 624}
!173 = distinct !{!173, !96}
!174 = distinct !{!174, !96}
!175 = !{!68, !67, i64 480}
!176 = distinct !{!176, !96}
!177 = distinct !{!177, !96}
!178 = distinct !{!178, !96}
!179 = distinct !{!179, !96}
!180 = distinct !{!180, !96}
!181 = distinct !{!181, !96}
!182 = !{!68, !67, i64 192}
!183 = !{!"FieldValPair", !28, i64 0, !28, i64 8}
!184 = !{!183, !28, i64 0}
!185 = !{i64 0, i64 8, !92, i64 8, i64 8, !92}
!186 = !{!183, !28, i64 8}
!187 = distinct !{!187, !96}
!188 = !{!68, !67, i64 216}
!189 = distinct !{!189, !96}
!190 = distinct !{!190, !96}
!191 = distinct !{!191, !96}
!192 = distinct !{!192, !96}
!193 = !{!109, !101, i64 192}
!194 = !{!"p1 _ZTS15redisCommandArg", !15, i64 0}
end_hunk_1
