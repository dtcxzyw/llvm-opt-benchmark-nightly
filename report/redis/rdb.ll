inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbSaveDb:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ag = and i64 %i.af, 2
  %.not.i.i.i107 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i107, label %bb.j, label %rdbSaveType.exit112.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i109 = icmp eq ptr %i.ak, null
  br i1 %.not33.i.i.i109, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.ak(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !87
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.am = call i64 %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !87
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread.i.i.i111, label %rdbWriteRaw.exit.loopexit.i110

.thread.i.i.i111:                                 ; preds = %bb.l
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ap = or i64 %i.ao, 2
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !65
  br label %rdbSaveType.exit112.thread

rdbWriteRaw.exit.loopexit.i110:                   ; preds = %bb.l
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !71
  br label %bb.m

rdbSaveType.exit112.thread:                       ; preds = %.thread.i.i.i111, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.m:                                             ; preds = %rdbWriteRaw.exit.loopexit.i110, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.j) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.an, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.ad) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.an, label %bb.o

bb.o:                                             ; preds = %bb.n
  %narrow = add nuw nsw i32 %i.z, 2
  %narrow131 = add nuw nsw i32 %narrow, %i.as
  %narrow158 = add nuw nsw i32 %i.au, %narrow131
  %i.aw = zext nneg i32 %narrow158 to i64         ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !200
  call void @kvstoreIteratorInit(ptr noundef nonnull %5, ptr noundef %i.ax) #20
  %i.ay = call ptr @kvstoreIteratorNext(ptr noundef nonnull %5) #20 ; 2 uses
  %.not97137 = icmp eq ptr %i.ay, null
  br i1 %.not97137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.am
  %i.be = phi ptr [ %i.ay, %.lr.ph ], [ %i.dn, %bb.am ]
  %.074140 = phi i64 [ %i.aw, %.lr.ph ], [ %.2, %bb.am ] ; 2 uses
  %.075139 = phi i64 [ 0, %.lr.ph ], [ %.277, %bb.am ] ; 2 uses
  %.081138 = phi i32 [ -1, %.lr.ph ], [ %.182, %bb.am ] ; 2 uses
  %i.bf = call i32 @kvstoreIteratorGetCurrentDictIndex(ptr noundef nonnull %5) #20 ; 7 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !193
  %.not98 = icmp eq i32 %i.bg, 0
  %.not99 = icmp eq i32 %i.bf, %.081138
  %or.cond = select i1 %.not98, i1 true, i1 %.not99
  br i1 %or.cond, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -12, ptr %i.a, align 1, !tbaa !72
  br i1 %.not.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !65
  %i.bi = and i64 %i.bh, 2
  %.not.i.i.i114 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i114, label %bb.s, label %rdbSaveType.exit119.thread

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i.i116 = icmp eq ptr %i.bj, null
  br i1 %.not33.i.i.i116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.bj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !87
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !70
  %i.bl = call i64 %i.bk(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !87
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.thread.i.i.i118, label %rdbWriteRaw.exit.loopexit.i117

.thread.i.i.i118:                                 ; preds = %bb.u
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !65
  %i.bo = or i64 %i.bn, 2
  store i64 %i.bo, ptr %i.az, align 8, !tbaa !65
  br label %rdbSaveType.exit119.thread

rdbWriteRaw.exit.loopexit.i117:                   ; preds = %bb.u
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bc, align 8, !tbaa !71
  br label %bb.v

rdbSaveType.exit119.thread:                       ; preds = %bb.r, %.thread.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.v:                                             ; preds = %rdbWriteRaw.exit.loopexit.i117, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.br = sext i32 %i.bf to i64
  %i.bs = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.br) ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.bv = call i64 @kvstoreDictSize(ptr noundef %i.bu, i32 noundef %i.bf) #20
  %i.bw = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.bv) ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !203
  %i.bz = call i64 @kvstoreDictSize(ptr noundef %i.by, i32 noundef %i.bf) #20
  %i.ca = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.bz) ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = add nsw i64 %.074140, 1
  %i.cd = zext nneg i32 %i.bs to i64
  %i.ce = add nsw i64 %i.cc, %i.cd
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = add nsw i64 %i.ce, %i.cf
  %i.ch = zext nneg i32 %i.ca to i64
  %i.ci = add nsw i64 %i.cg, %i.ch
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.182 = phi i32 [ %i.bf, %bb.y ], [ %.081138, %bb.p ]
  %.1 = phi i64 [ %i.ci, %bb.y ], [ %.074140, %bb.p ] ; 2 uses
  %i.cj = call ptr @dictGetKey(ptr noundef nonnull %i.be) #20 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ck = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !193
  %.not100 = icmp eq i32 %i.cl, 0
  br i1 %.not100, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = call i32 @isSlotInTrimJob(i32 noundef %i.bf) #20
  %.not101 = icmp eq i32 %i.cm, 0
  br i1 %.not101, label %._crit_edge141, label %bb.ab

._crit_edge141:                                   ; preds = %bb.aa
  %.pre = load i64, ptr %6, align 8
  %i.cn = and i64 %.pre, -1099511627776
  %i.co = or disjoint i64 %i.cn, 2147483136
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %4, align 8, !tbaa !79
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %4, align 8, !tbaa !79
  br label %bb.am, !llvm.loop !204

bb.ac:                                            ; preds = %._crit_edge141, %bb.z
  %i.cr = phi i64 [ %i.co, %._crit_edge141 ], [ 2147483136, %bb.z ]
  store i64 %i.cr, ptr %6, align 8
  %i.cs = call ptr @kvobjGetKey(ptr noundef %i.cj) #20
  store ptr %i.cs, ptr %i.bd, align 8, !tbaa !82
  %i.ct = call i64 @kvobjGetExpire(ptr noundef %i.cj) #20
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !205
  %.not102 = icmp eq i32 %i.cu, 0
  br i1 %.not102, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = call i64 @kvobjAllocSize(ptr noundef %i.cj) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.176 = phi i64 [ %i.cv, %bb.ad ], [ %.075139, %bb.ac ] ; 4 uses
  %i.cw = call i32 @rdbSaveKeyValuePair(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %i.cj, i64 noundef %i.ct, i32 noundef %1) ; 2 uses
  %7 = zext nneg i32 %i.cw to i64
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !205
  %.not103 = icmp eq i32 %i.cx, 0
  br i1 %.not103, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = call i64 @kvobjAllocSize(ptr noundef %i.cj) #20
  call void @updateSlotAllocSize(ptr noundef nonnull %i.h, i32 noundef %i.bf, ptr noundef %i.cj, i64 noundef %.176, i64 noundef %i.cy) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cz = icmp slt i32 %i.cw, 0
  br i1 %i.cz, label %.thread127, label %bb.ah

.thread127:                                       ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.da = add nsw i64 %.1, %7                     ; 3 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 56), align 8, !tbaa !206
  %.not104 = icmp eq i32 %i.db, 0
  br i1 %.not104, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.dd = sub i64 %i.dc, %i.ck
  call void @dismissObject(ptr noundef %i.cj, i64 noundef %i.dd) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.de = load i64, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.df = add nsw i64 %i.de, 1
  store i64 %i.df, ptr %3, align 8, !tbaa !76
  %i.dg = and i64 %i.de, 1023
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.di = call i64 @mstime() #20                  ; 2 uses
  %i.dj = load i64, ptr @rdbSaveDb.info_updated_time, align 8, !tbaa !79
  %i.dk = sub nsw i64 %i.di, %i.dj
  %i.dl = icmp sgt i64 %i.dk, 999
  br i1 %i.dl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dm = load i64, ptr %3, align 8, !tbaa !76
  call void @sendChildInfo(i32 noundef 0, i64 noundef %i.dm, ptr noundef nonnull %i.e) #20
  store i64 %i.di, ptr @rdbSaveDb.info_updated_time, align 8, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.ak, %bb.al, %bb.aj
  %.277 = phi i64 [ %.075139, %bb.ab ], [ %.176, %bb.aj ], [ %.176, %bb.ak ], [ %.176, %bb.al ]
  %.2 = phi i64 [ %.1, %bb.ab ], [ %i.da, %bb.aj ], [ %i.da, %bb.ak ], [ %i.da, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dn = call ptr @kvstoreIteratorNext(ptr noundef nonnull %5) #20 ; 2 uses
  %.not97 = icmp eq ptr %i.dn, null
  br i1 %.not97, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.am, %bb.o
  %.074.lcssa = phi i64 [ %i.aw, %bb.o ], [ %.2, %bb.am ]
  call void @kvstoreIteratorReset(ptr noundef nonnull %5) #20
  br label %bb.an

.thread:                                          ; preds = %bb.x, %bb.w, %bb.v, %rdbSaveType.exit119.thread, %.thread127
  call void @kvstoreIteratorReset(ptr noundef nonnull %5) #20
  br label %bb.an

bb.an:                                            ; preds = %rdbSaveType.exit112.thread, %rdbSaveType.exit.thread, %.thread, %bb.g, %bb.m, %bb.n, %bb.a, %._crit_edge
  %.0 = phi i64 [ %.074.lcssa, %._crit_edge ], [ 0, %bb.a ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %rdbSaveType.exit112.thread ], [ -1, %bb.g ], [ -1, %rdbSaveType.exit.thread ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i64 %.0
}

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #4

declare void @kvstoreIteratorInit(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @kvstoreIteratorNext(ptr noundef) local_unnamed_addr #4

declare i32 @kvstoreIteratorGetCurrentDictIndex(ptr noundef) local_unnamed_addr #4

declare i64 @kvstoreDictSize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @isSlotInTrimJob(i32 noundef) local_unnamed_addr #4

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #4

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #4

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #4

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @dismissObject(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @mstime() local_unnamed_addr #4

declare void @sendChildInfo(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @kvstoreIteratorReset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbSaveRio(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 0, ptr %i.e, align 8, !tbaa !79
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6956), align 4, !tbaa !207
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @rioGenericUpdateChecksum, ptr %i.g, align 8, !tbaa !68
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 10, ptr noundef nonnull @.str.37, i32 noundef 13) #20 ; 0 uses
  %.not.i30 = icmp eq ptr %1, null
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 10, ptr noundef nonnull @.str.37, i32 noundef 13) #20 ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.not.i31 = phi i1 [ %.not.i30, %.thread ], [ false, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65
  %i.l = and i64 %i.k, 2
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %rdbWriteRaw.exit.thread

.preheader.i.i:                                   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.preheader.i.i
  %.02538.i.i = phi i64 [ 9, %.preheader.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.q, 0
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 %.02538.i.i)
  %i.s = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.r ; 5 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.t, null
  br i1 %.not33.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.t(ptr noundef nonnull %1, ptr noundef %.02737.i.i, i64 noundef %i.s) #20, !inline_history !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.v = call i64 %i.u(ptr noundef nonnull %1, ptr noundef %.02737.i.i, i64 noundef %i.s) #20, !inline_history !73
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.x = load i64, ptr %i.j, align 8, !tbaa !65
  %i.y = or i64 %i.x, 2
  store i64 %i.y, ptr %i.j, align 8, !tbaa !65
  br label %rdbWriteRaw.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.s
  %i.aa = sub i64 %.02538.i.i, %i.s               ; 2 uses
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !71
  %i.ac = add i64 %i.ab, %i.s
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not31.i.i, label %rdbWriteRaw.exit, label %bb.d

rdbWriteRaw.exit:                                 ; preds = %bb.g, %bb.b
  %.not.i32 = phi i1 [ true, %bb.b ], [ %.not.i31, %bb.g ]
  %i.ad = call i32 @rdbSaveInfoAuxFields(ptr noundef %1, i32 noundef %3, ptr noundef %4)
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %rdbWriteRaw.exit.thread, label %bb.h

bb.h:                                             ; preds = %rdbWriteRaw.exit
  %i.af = and i32 %0, 1
  %.not25 = icmp eq i32 %i.af, 0                  ; 2 uses
  br i1 %.not25, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = call i64 @rdbSaveModulesAux(ptr noundef %1, i32 noundef 1) #20
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %rdbWriteRaw.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = and i32 %0, 2
end_hunk_0
