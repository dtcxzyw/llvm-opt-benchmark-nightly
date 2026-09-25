Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ziplist?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0_@ziplistRandomPairs:bb.a
  br i1 %exitcond118.not, label %.critedge, label %.lr.ph92.split.us, !llvm.loop !50

.loopexit89:                                      ; preds = %bb.m, %ziplistNext.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  tail call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1628) #18
  tail call void @abort() #19
  unreachable

.lr.ph92.split:                                   ; preds = %.lr.ph92, %bb.r
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.r ], [ %i.bz, %.lr.ph92 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv111 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !53
  %i.cl = icmp eq i32 %.039101137, %i.ck
  br i1 %i.cl, label %bb.r, label %.critedge.loopexit127.split.loop.exit129

bb.r:                                             ; preds = %.lr.ph92.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !54
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %2, i64 %i.co ; 3 uses
  store ptr %.176, ptr %i.cp, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.172, ptr %i.cq, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.168, ptr %i.cr, align 8, !tbaa !37
  %i.cs = getelementptr inbounds [24 x i8], ptr %3, i64 %i.co ; 3 uses
  store ptr %.174, ptr %i.cs, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.170, ptr %i.ct, align 8, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %.166, ptr %i.cu, align 8, !tbaa !37
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, %i.a
  br i1 %exitcond114.not, label %.critedge, label %.lr.ph92.split, !llvm.loop !50

.critedge.loopexit.split.loop.exit131:            ; preds = %.lr.ph92.split.us
  %i.cv = trunc nuw i64 %indvars.iv115 to i32
  br label %.critedge

.critedge.loopexit127.split.loop.exit129:         ; preds = %.lr.ph92.split
  %i.cw = trunc nuw i64 %indvars.iv111 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %.critedge.loopexit127.split.loop.exit129, %.critedge.loopexit.split.loop.exit131
  %.1.lcssa = phi i32 [ %1, %bb.q ], [ %i.cv, %.critedge.loopexit.split.loop.exit131 ], [ %i.cw, %.critedge.loopexit127.split.loop.exit129 ], [ %1, %bb.r ]
  %i.cx = add i32 %.039101137, 2
  %i.cy = load i32, ptr %0, align 4, !tbaa !13
  %i.cz = zext i32 %i.cy to i64
  %i.da = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %ziplistNext.exit60.thread, label %bb.s

bb.s:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call fastcc void @zipEntry(ptr noundef nonnull %i.bk, ptr noundef %5)
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !23
  %i.dd = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.de = add i32 %i.dd, %i.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.df ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  %i.di = icmp eq i8 %i.dh, -1
  br i1 %i.di, label %ziplistNext.exit60.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.dj = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.cz, ptr noundef nonnull %i.dg, ptr noundef %4, i32 noundef 1)
  %.not.i.i57 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i57, label %bb.u, label %ziplistNext.exit60, !prof !25

bb.u:                                             ; preds = %bb.t
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

ziplistNext.exit60.thread:                        ; preds = %.critedge, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %ziplistGet.exit.thread

ziplistNext.exit60:                               ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !14
  %i.dl = icmp eq i8 %i.dk, -1
  br i1 %i.dl, label %ziplistGet.exit.thread, label %.lr.ph143, !llvm.loop !51

.loopexit:                                        ; preds = %ziplistGet.exit, %ziplistGet.exit.thread
  tail call void @zfree(ptr noundef nonnull %i.c) #18
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ziplistRandomPairsUnique(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.zlentry, align 8            ; 3 uses
  %5 = alloca %struct.zlentry, align 8            ; 5 uses
  %6 = alloca %struct.zlentry, align 8            ; 3 uses
  %7 = alloca %struct.zlentry, align 8            ; 5 uses
  %8 = alloca %struct.zlentry, align 8            ; 7 uses
  %9 = alloca %struct.zlentry, align 8            ; 3 uses
  %10 = alloca %struct.zlentry, align 8           ; 5 uses
  %11 = alloca %struct.zlentry, align 8           ; 7 uses
  %12 = alloca %struct.zlentry, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !18   ; 2 uses
  %.not.i = icmp eq i16 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32
  br label %ziplistLen.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !13
  %i.f = zext i32 %i.e to i64
  %i.g = load i8, ptr %i.d, align 2, !tbaa !14
  %.not1517.i = icmp eq i8 %i.g, -1
  br i1 %.not1517.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 12
  br label %bb.d

bb.d:                                             ; preds = %zipRawEntryLengthSafe.exit.i, %.lr.ph.i
  %.019.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.o, %zipRawEntryLengthSafe.exit.i ] ; 2 uses
  %.01318.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %zipRawEntryLengthSafe.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.j = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.f, ptr noundef nonnull %.019.i, ptr noundef %12, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %zipRawEntryLengthSafe.exit.i, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit.i:                     ; preds = %bb.d
  %i.k = load i32, ptr %i.h, align 8, !tbaa !23
  %i.l = load i32, ptr %i.i, align 4, !tbaa !24
  %i.m = add i32 %i.l, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i, i64 %i.n ; 2 uses
  %i.p = add i32 %.01318.i, 1                     ; 4 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !14
  %.not15.i = icmp eq i8 %i.q, -1
  br i1 %.not15.i, label %._crit_edge.i, label %bb.d, !llvm.loop !0

._crit_edge.i:                                    ; preds = %zipRawEntryLengthSafe.exit.i
  %i.r = icmp ult i32 %i.p, 65535
  br i1 %i.r, label %._crit_edge.thread.i, label %ziplistLen.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.013.lcssa21.i = phi i32 [ %i.p, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.s = trunc nuw i32 %.013.lcssa21.i to i16
  store i16 %i.s, ptr %i.a, align 4, !tbaa !18
  br label %ziplistLen.exit

ziplistLen.exit:                                  ; preds = %bb.b, %._crit_edge.i, %._crit_edge.thread.i
  %.1.i = phi i32 [ %i.c, %bb.b ], [ %.013.lcssa21.i, %._crit_edge.thread.i ], [ %i.p, %._crit_edge.i ]
  %i.t = lshr i32 %.1.i, 1                        ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.t) ; 3 uses
  %i.u = tail call ptr @ziplistIndex(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %i.v = icmp ne i32 %spec.select, 0
  %i.w = icmp ne ptr %i.u, null
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ziplistLen.exit
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.not45 = icmp eq ptr %3, null
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %ziplistNext.exit64
  %.0113 = phi i32 [ %spec.select, %.lr.ph ], [ %.1, %ziplistNext.exit64 ] ; 3 uses
  %.032112 = phi i32 [ 0, %.lr.ph ], [ %.133, %ziplistNext.exit64 ] ; 3 uses
  %.034111 = phi i32 [ 0, %.lr.ph ], [ %i.dj, %ziplistNext.exit64 ] ; 2 uses
  %.035110 = phi ptr [ %i.u, %.lr.ph ], [ %i.df, %ziplistNext.exit64 ] ; 10 uses
  %.069109 = phi i64 [ 0, %.lr.ph ], [ %.2, %ziplistNext.exit64 ] ; 2 uses
  %.071108 = phi i32 [ 0, %.lr.ph ], [ %.273, %ziplistNext.exit64 ] ; 2 uses
  %i.ak = tail call i32 @rand() #18
  %i.al = sub i32 %i.t, %.034111
  %i.am = uitofp i32 %i.al to double
  %13 = uitofp i32 %.0113 to double
  %14 = sitofp i32 %i.ak to double
  %i.an = insertelement <2 x double> poison, double %14, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %13, i64 1
  %i.ap = insertelement <2 x double> <double f0x41DFFFFFFFC00000, double poison>, double %i.am, i64 1
  %i.aq = fdiv <2 x double> %i.ao, %i.ap          ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = extractelement <2 x double> %i.aq, i64 1
  %i.at = fcmp ugt double %i.ar, %i.as
  br i1 %i.at, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.au = load i8, ptr %.035110, align 1, !tbaa !14
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @zipEntry(ptr noundef nonnull %.035110, ptr noundef %11)
  %i.aw = load i8, ptr %i.y, align 4, !tbaa !29   ; 2 uses
  %.not1517.i48 = icmp ugt i8 %i.aw, -65
  br i1 %.not1517.i48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ay = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.az
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.bc
  %i.be = tail call i64 @zipLoadInteger(ptr noundef nonnull %i.bd, i8 noundef zeroext %i.aw)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  tail call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1668) #18
  tail call void @abort() #19
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.379.ph = phi ptr [ null, %bb.j ], [ %i.ba, %bb.i ]
  %.374.ph = phi i32 [ %.071108, %bb.j ], [ %i.ax, %bb.i ] ; 3 uses
  %.3.ph = phi i64 [ %i.be, %bb.j ], [ %.069109, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.bf = zext nneg i32 %.032112 to i64           ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bf ; 3 uses
  store ptr %.379.ph, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %.374.ph, ptr %i.bh, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.3.ph, ptr %i.bi, align 8, !tbaa !37
  %i.bj = load i32, ptr %0, align 4, !tbaa !13
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load i8, ptr %.035110, align 1, !tbaa !14
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.035110, ptr noundef %10)
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.bo = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.bp = add i32 %i.bo, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.bq ; 7 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bu = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.bk, ptr noundef nonnull %i.br, ptr noundef %9, i32 noundef 1)
  %.not.i.i50 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i50, label %bb.o, label %bb.q, !prof !25

bb.o:                                             ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1671) #18
  tail call void @abort() #19
  unreachable

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.not45, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bw = icmp eq i8 %i.bv, -1
  br i1 %i.bw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @zipEntry(ptr noundef nonnull %i.br, ptr noundef %8)
  %i.bx = load i8, ptr %i.ad, align 4, !tbaa !29  ; 2 uses
  %.not1517.i53 = icmp ugt i8 %i.bx, -65
  br i1 %.not1517.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.bz = load i32, ptr %i.af, align 8, !tbaa !23
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ca
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cc = load i32, ptr %i.af, align 8, !tbaa !23
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cd
  %i.cf = tail call i64 @zipLoadInteger(ptr noundef nonnull %i.ce, i8 noundef zeroext %i.bx)
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  tail call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1673) #18
  tail call void @abort() #19
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t
  %.480.ph = phi ptr [ null, %bb.u ], [ %i.cb, %bb.t ]
  %.475.ph = phi i32 [ %.374.ph, %bb.u ], [ %i.by, %bb.t ] ; 2 uses
  %.4.ph = phi i64 [ %i.cf, %bb.u ], [ %.3.ph, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.bf ; 3 uses
  store ptr %.480.ph, ptr %i.cg, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %.475.ph, ptr %i.ch, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %.4.ph, ptr %i.ci, align 8, !tbaa !37
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.172 = phi i32 [ %.374.ph, %bb.q ], [ %.475.ph, %bb.w ]
  %.170 = phi i64 [ %.3.ph, %bb.q ], [ %.4.ph, %bb.w ]
  %i.cj = add i32 %.0113, -1
  %i.ck = add nuw nsw i32 %.032112, 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.f
  %i.cl = load i32, ptr %0, align 4, !tbaa !13
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load i8, ptr %.035110, align 1, !tbaa !14
  %i.co = icmp eq i8 %i.cn, -1
  br i1 %i.co, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.035110, ptr noundef %7)
  %i.cp = load i32, ptr %i.ag, align 8, !tbaa !23
  %i.cq = load i32, ptr %i.ah, align 4, !tbaa !24
  %i.cr = add i32 %i.cq, %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.035110, i64 %i.cs ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cw = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.cm, ptr noundef nonnull %i.ct, ptr noundef %6, i32 noundef 1)
  %.not.i.i57 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i57, label %bb.ab, label %ziplistNext.exit60, !prof !25

bb.ab:                                            ; preds = %bb.aa
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 707) #18
  tail call void @abort() #19
  unreachable

ziplistNext.exit60:                               ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.z
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1680) #18
  tail call void @abort() #19
  unreachable

bb.ad:                                            ; preds = %ziplistNext.exit60, %bb.x
  %.273 = phi i32 [ %.071108, %ziplistNext.exit60 ], [ %.172, %bb.x ]
  %.2 = phi i64 [ %.069109, %ziplistNext.exit60 ], [ %.170, %bb.x ]
  %.136 = phi ptr [ %i.ct, %ziplistNext.exit60 ], [ %i.br, %bb.x ] ; 3 uses
  %.133 = phi i32 [ %.032112, %ziplistNext.exit60 ], [ %i.ck, %bb.x ] ; 5 uses
  %.1 = phi i32 [ %.0113, %ziplistNext.exit60 ], [ %i.cj, %bb.x ]
  %i.cx = load i32, ptr %0, align 4, !tbaa !13
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load i8, ptr %.136, align 1, !tbaa !14
  %i.da = icmp eq i8 %i.cz, -1
  br i1 %i.da, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call fastcc void @zipEntry(ptr noundef nonnull %.136, ptr noundef %5)
  %i.db = load i32, ptr %i.ai, align 8, !tbaa !23
  %i.dc = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.dd = add i32 %i.dc, %i.db
end_hunk_0
