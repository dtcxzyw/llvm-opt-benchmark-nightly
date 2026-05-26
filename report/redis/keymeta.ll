inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaSpecCleanup:bb.a
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadSkipMetaIfAllowed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !53
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9
  store ptr %0, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9 ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9
  %i.e = icmp slt i32 %i.c, 1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.g = icmp sgt i32 %i.f, 2
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call ptr @rdbLoadCheckModuleValue(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef %1) #16
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  tail call void @decrRefCount(ptr noundef nonnull %i.h) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.h
  %.1 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.k ]
  ret i32 %.1
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @decrRefCount(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadKeyMetadata(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 15 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.RedisModuleIO, align 8      ; 12 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = icmp sgt i32 %2, 7
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph, label %keyMetaSpecCleanup.exit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %keyMetaSpecCleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef 7) #16
  br label %keyMetaSpecCleanup.exit

bb.d:                                             ; preds = %.lr.ph, %.thread71
  %.03396 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %.thread71 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = load i64, ptr %i.g, align 8, !tbaa !84
  %i.aa = and i64 %i.z, 1
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %bb.g
  %.02537.i = phi i64 [ %i.al, %bb.g ], [ 4, %bb.d ] ; 3 uses
  %.02736.i = phi ptr [ %i.ak, %bb.g ], [ %i.a, %bb.d ] ; 3 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %.not32.not.i = icmp eq i64 %i.ab, 0
  %i.ac = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.02537.i)
  %i.ad = select i1 %.not32.not.i, i64 %.02537.i, i64 %i.ac ; 5 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !87
  %i.af = call i64 %i.ae(ptr noundef nonnull %0, ptr noundef %.02736.i, i64 noundef %i.ad) #16, !inline_history !88
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.preheader.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !84
  %i.ai = or i64 %i.ah, 1
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !84
  br label %.thread

bb.e:                                             ; preds = %.preheader.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  %.not33.i = icmp eq ptr %i.aj, null
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.aj(ptr noundef nonnull %0, ptr noundef %.02736.i, i64 noundef %i.ad) #16, !inline_history !88
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02736.i, i64 %i.ad
  %i.al = sub i64 %.02537.i, %i.ad                ; 2 uses
  %i.am = load i64, ptr %i.j, align 8, !tbaa !90
  %i.an = add i64 %i.am, %i.ad
  store i64 %i.an, ptr %i.j, align 8, !tbaa !90
  %.not31.i = icmp eq i64 %i.al, 0
  br i1 %.not31.i, label %rioRead.exit, label %.preheader.i

rioRead.exit:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !9   ; 7 uses
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = and i32 %i.ap, 31
  %i.ar = lshr i32 %i.ao, 8
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  store i8 %i.av, ptr %i.k, align 1, !tbaa !13
  %i.aw = lshr i32 %i.ao, 14
  %i.ax = and i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  store i8 %i.ba, ptr %i.l, align 1, !tbaa !13
  %i.bb = lshr i32 %i.ao, 20
  %i.bc = and i32 %i.bb, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  store i8 %i.bf, ptr %i.m, align 1, !tbaa !13
  %i.bg = lshr i32 %i.ao, 26
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  store i8 %i.bj, ptr %i.b, align 1, !tbaa !13
  store i8 0, ptr %i.n, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.bk = call fastcc i32 @keyMetaClassLookupByName(ptr noundef nonnull %i.b, ptr noundef %i.c) ; 6 uses
  %i.bl = icmp eq i32 %i.bk, -1
  %i.bm = load i32, ptr %i.c, align 4
  %i.bn = icmp ne i32 %i.bm, 0
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rioRead.exit
  %i.bo = and i32 %i.ao, 7
  %i.bp = call i32 @rdbLoadSkipMetaIfAllowed(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.bo)
  %.fr79 = freeze i32 %i.bp
  %i.bq = icmp eq i32 %.fr79, -1
  br i1 %i.bq, label %.thread68, label %.thread71

bb.i:                                             ; preds = %rioRead.exit
  %i.br = zext nneg i32 %i.bk to i64
  %i.bs = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !91 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = and i32 %i.ao, 7
  %i.bx = call i32 @rdbLoadSkipMetaIfAllowed(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.bw)
  %.fr = freeze i32 %i.bx
  %i.by = icmp eq i32 %.fr, -1
  br i1 %i.by, label %.thread68, label %.thread71

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %0, ptr %i.o, align 8, !tbaa !92
  store ptr %i.bz, ptr %i.p, align 8, !tbaa !96
  store i64 0, ptr %4, align 8, !tbaa !97
  store i32 0, ptr %i.q, align 8, !tbaa !98
  store ptr null, ptr %i.r, align 8, !tbaa !99
  store i32 %1, ptr %i.s, align 8, !tbaa !100
  store ptr null, ptr %i.t, align 8, !tbaa !101
  store ptr null, ptr %i.u, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 0, ptr %i.d, align 8, !tbaa !22
  %i.ca = call i32 %i.bu(ptr noundef nonnull %4, ptr noundef nonnull %i.d, i32 noundef %i.aq) #16 ; 3 uses
  %i.cb = call i64 @rdbLoadLen(ptr noundef nonnull %0, ptr noundef null) #16 ; 2 uses
  %.not = icmp eq i64 %i.cb, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.cd = icmp sgt i32 %i.cc, 3
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, i64 noundef %i.cb) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  store i32 1, ptr %i.q, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !101 ; 2 uses
  %.not41 = icmp eq ptr %i.ce, null
  br i1 %.not41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @moduleFreeContext(ptr noundef nonnull %i.ce) #16
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !101
  call void @zfree(ptr noundef %i.cf) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = load i32, ptr %i.q, align 8, !tbaa !98
  %.not42 = icmp eq i32 %i.cg, 0
  br i1 %.not42, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i32 %i.ca, 1
  br i1 %i.ch, label %bb.s, label %.thread74

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !22
  %i.cj = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = sub nsw i32 8, %i.ck                    ; 3 uses
  %i.cm = load i16, ptr %i.v, align 2, !tbaa !23  ; 3 uses
  %.not27.i = icmp eq i16 %i.cm, 0
  br i1 %.not27.i, label %keyMetaSpecAddUnordered.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.cn = sext i32 %i.cl to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.02029.i = phi i16 [ %i.cm, %.lr.ph.i ], [ %i.cy, %bb.u ] ; 2 uses
  %.02128.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cz, %bb.u ]
  %i.co = zext i16 %.02029.i to i32
  %i.cp = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = xor i32 %i.cp, 31
  %i.cr = icmp slt i32 %i.cq, %i.bk
  br i1 %i.cr, label %.thread.loopexit.split.loop.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !22
  %i.cv = lshr exact i32 -2147483648, %i.cp
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = xor i16 %i.cw, -1
  %i.cy = and i16 %.02029.i, %i.cx                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.cz = add nsw i32 %.02128.i, 1                ; 2 uses
  %.not.i44 = icmp eq i16 %i.cy, 0
  br i1 %.not.i44, label %keyMetaSpecAddUnordered.exit, label %bb.t

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.t
  %i.da = trunc nsw i64 %indvars.iv.i to i32
  br label %keyMetaSpecAddUnordered.exit

keyMetaSpecAddUnordered.exit:                     ; preds = %bb.u, %bb.s, %.thread.loopexit.split.loop.exit.i
  %.021.lcssa.i = phi i32 [ %i.cl, %bb.s ], [ %i.da, %.thread.loopexit.split.loop.exit.i ], [ %i.cz, %bb.u ]
  %i.db = sext i32 %.021.lcssa.i to i64
  %i.dc = getelementptr [8 x i8], ptr %3, i64 %i.db
  store i64 %i.ci, ptr %i.dc, align 8, !tbaa !22
  %i.dd = shl nuw nsw i32 1, %i.bk
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = or i16 %i.cm, %i.de
  store i16 %i.df, ptr %i.v, align 2, !tbaa !23
  %i.dg = add i16 %i.cj, 1
  store i16 %i.dg, ptr %3, align 8, !tbaa !26
  br label %.thread74

bb.v:                                             ; preds = %bb.q
  switch i32 %i.ca, label %bb.ab [
    i32 1, label %bb.w
    i32 0, label %bb.ad
    i32 -1, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !22
  %i.di = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 8, %i.dj                    ; 3 uses
  %i.dl = load i16, ptr %i.v, align 2, !tbaa !23  ; 3 uses
  %.not27.i46 = icmp eq i16 %i.dl, 0
  br i1 %.not27.i46, label %keyMetaSpecAddUnordered.exit57, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.w
  %i.dm = sext i32 %i.dk to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i47
  %indvars.iv.i49 = phi i64 [ %i.dm, %.lr.ph.i47 ], [ %indvars.iv.next.i52, %bb.y ] ; 3 uses
  %.02029.i50 = phi i16 [ %i.dl, %.lr.ph.i47 ], [ %i.dx, %bb.y ] ; 2 uses
  %.02128.i51 = phi i32 [ %i.dk, %.lr.ph.i47 ], [ %i.dy, %bb.y ]
  %i.dn = zext i16 %.02029.i50 to i32
  %i.do = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.dn, i1 true) ; 2 uses
  %i.dp = xor i32 %i.do, 31
  %i.dq = icmp slt i32 %i.dp, %i.bk
  br i1 %i.dq, label %.thread.loopexit.split.loop.exit.i56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i49 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22
  %i.dt = getelementptr i8, ptr %i.dr, i64 -8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !22
  %i.du = lshr exact i32 -2147483648, %i.do
  %i.dv = trunc nuw i32 %i.du to i16
  %i.dw = xor i16 %i.dv, -1
  %i.dx = and i16 %.02029.i50, %i.dw              ; 2 uses
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i49, 1
  %i.dy = add nsw i32 %.02128.i51, 1              ; 2 uses
  %.not.i53 = icmp eq i16 %i.dx, 0
  br i1 %.not.i53, label %keyMetaSpecAddUnordered.exit57, label %bb.x

.thread.loopexit.split.loop.exit.i56:             ; preds = %bb.x
  %i.dz = trunc nsw i64 %indvars.iv.i49 to i32
  br label %keyMetaSpecAddUnordered.exit57

keyMetaSpecAddUnordered.exit57:                   ; preds = %bb.y, %bb.w, %.thread.loopexit.split.loop.exit.i56
  %.021.lcssa.i55 = phi i32 [ %i.dk, %bb.w ], [ %i.dz, %.thread.loopexit.split.loop.exit.i56 ], [ %i.dy, %bb.y ]
  %i.ea = sext i32 %.021.lcssa.i55 to i64
  %i.eb = getelementptr [8 x i8], ptr %3, i64 %i.ea
  store i64 %i.dh, ptr %i.eb, align 8, !tbaa !22
  %i.ec = shl nuw nsw i32 1, %i.bk
  %i.ed = trunc nuw nsw i32 %i.ec to i16
  %i.ee = or i16 %i.dl, %i.ed
  store i16 %i.ee, ptr %i.v, align 2, !tbaa !23
  %i.ef = add i16 %i.di, 1
  store i16 %i.ef, ptr %3, align 8, !tbaa !26
  br label %bb.ad

bb.z:                                             ; preds = %bb.v
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.eh = icmp sgt i32 %i.eg, 3
  br i1 %i.eh, label %.thread74, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b) #16
  br label %.thread74

bb.ab:                                            ; preds = %bb.v
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ej = icmp sgt i32 %i.ei, 3
  br i1 %i.ej, label %.thread74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, i32 noundef %i.ca) #16
  br label %.thread74

.thread68:                                        ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

.thread74:                                        ; preds = %bb.aa, %bb.ac, %bb.r, %keyMetaSpecAddUnordered.exit, %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

bb.ad:                                            ; preds = %bb.v, %keyMetaSpecAddUnordered.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
end_hunk_0
begin_hunk_1_@keyMetaClassLookupByName:bb.a

bb.i:                                             ; preds = %.preheader.3
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 608), align 1
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not17.3 = icmp eq i32 %i.x, 0
  br i1 %.not17.3, label %bb.j, label %.preheader.4

bb.j:                                             ; preds = %bb.i
  switch i32 %i.s, label %.preheader.4 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.4:                                     ; preds = %bb.j, %bb.i, %.preheader.3
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !14 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.preheader.5, label %bb.k

bb.k:                                             ; preds = %.preheader.4
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 760), align 1
  %i.ab = load i32, ptr %0, align 1
  %i.ac = icmp ne i32 %i.aa, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %.not17.4 = icmp eq i32 %i.ad, 0
  br i1 %.not17.4, label %bb.l, label %.preheader.5

bb.l:                                             ; preds = %bb.k
  switch i32 %i.y, label %.preheader.5 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.5:                                     ; preds = %bb.l, %bb.k, %.preheader.4
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !14 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader.6, label %bb.m

bb.m:                                             ; preds = %.preheader.5
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 912), align 1
  %i.ah = load i32, ptr %0, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not17.5 = icmp eq i32 %i.aj, 0
  br i1 %.not17.5, label %bb.n, label %.preheader.6

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ae, label %.preheader.6 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.6:                                     ; preds = %bb.n, %bb.m, %.preheader.5
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !14 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.6
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1064), align 1
  %i.an = load i32, ptr %0, align 1
  %i.ao = icmp ne i32 %i.am, %i.an
  %i.ap = zext i1 %i.ao to i32
  %.not17.6 = icmp eq i32 %i.ap, 0
  br i1 %.not17.6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  switch i32 %i.ak, label %bb.q [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.d, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.01320.lcssa21.wide, %bb.d ], [ -1, %bb.q ], [ %i.a, %bb.c ], [ 2, %bb.f ], [ 7, %bb.p ], [ 3, %bb.h ], [ 5, %bb.l ], [ 4, %bb.j ], [ 6, %bb.n ]
  ret i32 %.1
}

declare i64 @rdbLoadLen(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @moduleFreeContext(ptr noundef) local_unnamed_addr #6

declare void @zfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbSaveKeyMetadata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct._rio, align 8               ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.RedisModuleIO, align 8      ; 12 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 127                        ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.v, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.d, 1
  %.not = icmp eq i32 %i.h, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = tail call ptr @sdsempty() #16
  call void @rioInitWithBuffer(ptr noundef nonnull %4, ptr noundef %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 1, %bb.b ] ; 2 uses
  %.043 = phi i32 [ %.7, %bb.p ], [ 0, %bb.b ]    ; 5 uses
  %.041 = phi i32 [ %i.at, %bb.p ], [ %i.f, %bb.b ] ; 2 uses
  %.138 = phi ptr [ %.340, %bb.p ], [ %spec.select, %bb.b ] ; 4 uses
  %i.s = and i32 %.041, 1
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !14
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 584) #16
  call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = load i64, ptr %.138, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %.not52 = icmp eq i64 %i.x, %i.z
  br i1 %.not52, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105
  %.not53 = icmp eq ptr %i.ab, null
  br i1 %.not53, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !9
  %i.ae = call i64 @rdbWriteRaw(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef 4) #16
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %.thread68.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ah = call fastcc i64 @sdslen(ptr noundef %i.ag) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %4, ptr %i.k, align 8, !tbaa !92
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !96
  store i64 0, ptr %5, align 8, !tbaa !97
  store i32 0, ptr %i.m, align 8, !tbaa !98
  store ptr %1, ptr %i.n, align 8, !tbaa !99
  store i32 %3, ptr %i.o, align 8, !tbaa !100
  store ptr null, ptr %i.p, align 8, !tbaa !101
  store ptr null, ptr %i.q, align 8, !tbaa !102
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !105
  call void %i.aj(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %.138) #16
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !101 ; 2 uses
  %.not54 = icmp eq ptr %i.ak, null
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @moduleFreeContext(ptr noundef nonnull %i.ak) #16
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !101
  call void @zfree(ptr noundef %i.al) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load i32, ptr %i.m, align 8, !tbaa !98
  %.not55 = icmp eq i32 %i.am, 0
  br i1 %.not55, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %i.ao = call fastcc i64 @sdslen(ptr noundef %i.an)
  %i.ap = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = call i32 @rdbSaveLen(ptr noundef nonnull %4, i64 noundef 0) #16
  %.fr = freeze i32 %i.aq
  %6 = icmp ne i32 %.fr, -1                       ; 2 uses
  %7 = zext i1 %6 to i32
  %spec.select58 = add nsw i32 %.043, %7
  br i1 %6, label %.thread63, label %select.unfold

bb.n:                                             ; preds = %bb.l
  %i.ar = add i64 %i.ah, -4                       ; 2 uses
  call void @sdssubstr(ptr noundef %i.an, i64 noundef 0, i64 noundef %i.ar) #16
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !13
  br label %.thread63

.thread63:                                        ; preds = %bb.m, %bb.n
  %.346.ph = phi i32 [ %.043, %bb.n ], [ %spec.select58, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

select.unfold:                                    ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread68.sink.split

bb.o:                                             ; preds = %bb.f, %bb.g, %.thread63
  %.5 = phi i32 [ %.346.ph, %.thread63 ], [ %.043, %bb.g ], [ %.043, %bb.f ]
  %i.as = getelementptr inbounds i8, ptr %.138, i64 -8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.7 = phi i32 [ %.5, %bb.o ], [ %.043, %bb.c ]  ; 3 uses
  %.340 = phi ptr [ %i.as, %bb.o ], [ %.138, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.at = lshr i32 %.041, 1                       ; 2 uses
  %.not56 = icmp eq i32 %i.at, 0
  br i1 %.not56, label %bb.q, label %bb.c, !llvm.loop !107

bb.q:                                             ; preds = %bb.p
  %i.au = icmp eq i32 %.7, 0
  br i1 %i.au, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = call i32 @rdbSaveType(ptr noundef %0, i8 noundef zeroext -13) #16
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %.thread68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = sext i32 %.7 to i64
  %i.ay = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.ax) #16
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %.thread68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %i.bb = call fastcc i64 @sdslen(ptr noundef %i.ba)
  %i.bc = call i64 @rdbWriteRaw(ptr noundef %0, ptr noundef %i.ba, i64 noundef %i.bb) #16
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %.thread68, label %bb.u

.thread68.sink.split:                             ; preds = %bb.h, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread68

.thread68:                                        ; preds = %.thread68.sink.split, %bb.r, %bb.s, %bb.t
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %.thread68
  %.0 = phi i32 [ 0, %bb.q ], [ -1, %.thread68 ], [ 0, %bb.t ]
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !13
  call void @sdsfree(ptr noundef %i.be) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.1 = phi i32 [ %.0, %bb.u ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @rioInitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sdsempty() local_unnamed_addr #6

declare i64 @rdbWriteRaw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 2 uses
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !108
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @rdbSaveLen(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @sdssubstr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @sdsfree(ptr noundef) local_unnamed_addr #6

declare i32 @rdbSaveType(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaOnAof(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader, !prof !27

.preheader:                                       ; preds = %bb.a
  %i.e = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.e, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.130 = phi ptr [ %spec.select, %.preheader ], [ %.332, %bb.k ] ; 3 uses
  %.028 = phi i32 [ %i.c, %.preheader ], [ %i.ab, %bb.k ] ; 2 uses
  %i.m = and i32 %.028, 1
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 663) #16
  call void @abort() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.130, align 8, !tbaa !22  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34
  %.not38 = icmp eq i64 %i.r, %i.t
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !109  ; 2 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !92
  store ptr %i.w, ptr %i.g, align 8, !tbaa !96
  store i64 0, ptr %4, align 8, !tbaa !97
  store i32 0, ptr %i.h, align 8, !tbaa !98
  store ptr %1, ptr %i.i, align 8, !tbaa !99
  store i32 %3, ptr %i.j, align 8, !tbaa !100
  store ptr null, ptr %i.k, align 8, !tbaa !101
end_hunk_1
