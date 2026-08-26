Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/evict?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@overMaxmemoryAfterAlloc:bb.a
  %i.aa = add nuw nsw i64 %i.z, 6
  br label %sdsAllocSize.exit.i

bb.j:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 10
  br label %sdsAllocSize.exit.i

bb.k:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !63
  %i.ah = add i64 %i.ag, 18
  br label %sdsAllocSize.exit.i

sdsAllocSize.exit.i:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ah, %bb.k ], [ %i.s, %bb.g ], [ %i.w, %bb.h ], [ %i.aa, %bb.i ], [ %i.ae, %bb.j ], [ 0, %bb.f ]
  %i.ai = add i64 %.0.i.i, %i.m
  br label %freeMemoryGetNotCountedMemory.exit

freeMemoryGetNotCountedMemory.exit:               ; preds = %bb.e, %sdsAllocSize.exit.i
  %.2.i = phi i64 [ %i.ai, %sdsAllocSize.exit.i ], [ %i.m, %bb.e ]
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %.2.i)
  %i.ak = add i64 %i.aj, %0
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75
  %i.am = icmp ugt i64 %i.ak, %i.al
  %i.an = zext i1 %i.am to i32
  br label %bb.l

bb.l:                                             ; preds = %freeMemoryGetNotCountedMemory.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.an, %freeMemoryGetNotCountedMemory.exit ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @startEvictionTimeProc() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @isEvictionProcRunning, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.b = tail call i64 @aeCreateTimeEvent(ptr noundef %i.a, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @aeCreateTimeEvent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @evictionTimeProc(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @performEvictions()
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @isEvictionProcRunning, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @performEvictions() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = tail call i32 @isInsideYieldingLongCommand() #12
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %isSafeToPerformEvictions.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !79
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %bb.c, label %isSafeToPerformEvictions.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !80
  %i.g = icmp ne ptr %i.f, null
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7576), align 8
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %isSafeToPerformEvictions.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !81 ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %isSafeToPerformEvictions.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  %i.m = and i64 %i.l, 18014398509481986
  %or.cond8.not.i = icmp eq i64 %i.m, 18014398509481986
  br i1 %or.cond8.not.i, label %isSafeToPerformEvictions.exit.thread, label %isSafeToPerformEvictions.exit

isSafeToPerformEvictions.exit:                    ; preds = %bb.d, %bb.e
  %i.n = tail call i32 @isPausedActionsWithUpdate(i32 noundef 8) #12
  %.not7.i.not = icmp eq i32 %i.n, 0
  br i1 %.not7.i.not, label %bb.f, label %isSafeToPerformEvictions.exit.thread

bb.f:                                             ; preds = %isSafeToPerformEvictions.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97
  %i.r = call i32 @getMaxmemoryState(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread223, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.u = icmp eq i32 %i.t, 1792
  br i1 %i.u, label %.thread218, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7776), align 8, !tbaa !99 ; 6 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 492) #12
  call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i32 %i.v, 101
  br i1 %i.x, label %bb.l, label %bb.k, !prof !100

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 493) #12
  call void @abort() #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = icmp samesign ult i32 %i.v, 11
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %narrow.i = mul nuw nsw i32 %i.v, 50
  %i.z = zext nneg i32 %narrow.i to i64
  br label %evictionTimeLimitUs.exit

bb.n:                                             ; preds = %bb.l
  %.not.i179 = icmp eq i32 %i.v, 100
  br i1 %.not.i179, label %evictionTimeLimitUs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = uitofp nneg i32 %i.v to double
  %i.ab = fadd double %i.aa, -1.000000e+01
  %i.ac = call double @pow(double noundef 1.150000e+00, double noundef %i.ab) #12, !tbaa !9
  %i.ad = fmul double %i.ac, 5.000000e+02
  %i.ae = fptoui double %i.ad to i64
  br label %evictionTimeLimitUs.exit

evictionTimeLimitUs.exit:                         ; preds = %bb.m, %bb.n, %bb.o
  %.0.i180 = phi i64 [ %i.z, %bb.m ], [ %i.ae, %bb.o ], [ -1, %bb.n ] ; 3 uses
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not153 = icmp eq i64 %i.af, 0
  br i1 %.not153, label %bb.q, label %bb.p

bb.p:                                             ; preds = %evictionTimeLimitUs.exit
  %i.ag = call i64 @mstime() #12
  br label %bb.q

bb.q:                                             ; preds = %evictionTimeLimitUs.exit, %bb.p
  %.0137 = phi i64 [ %i.ag, %bb.p ], [ 0, %evictionTimeLimitUs.exit ]
  %i.ah = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.ai = call i64 %i.ah() #12, !inline_history !103 ; 2 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7080), align 8, !tbaa !104
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.preheader230, label %bb.r, !prof !100

.preheader230:                                    ; preds = %bb.q
  %i.al = load i64, ptr %i.b, align 8, !tbaa !63
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph251, label %.loopexit231

.lr.ph251:                                        ; preds = %.preheader230
  %i.an = and i64 %i.q, 4294967295
  %.not161.a = icmp eq i64 %i.an, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 564) #12
  call void @abort() #14
  unreachable

bb.s:                                             ; preds = %.lr.ph251, %bb.ar
  %.0131250 = phi i32 [ 0, %.lr.ph251 ], [ %i.dz, %bb.ar ]
  %.0139249 = phi i64 [ 0, %.lr.ph251 ], [ %i.dy, %bb.ar ]
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55 ; 3 uses
  %i.ap = and i32 %i.ao, 11
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = icmp eq i32 %i.ao, 512
  %or.cond = or i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr @EvictionPoolLRU, align 8, !tbaa !50 ; 2 uses
  br label %.preheader228

.preheader228:                                    ; preds = %bb.t, %.loopexit227
  %.0114248 = phi i32 [ undef, %bb.t ], [ %.4118, %.loopexit227 ]
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph244, label %.thread216

.lr.ph244:                                        ; preds = %.preheader228, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader228 ] ; 2 uses
  %.0108243 = phi i64 [ %.3111, %.loopexit ], [ 0, %.preheader228 ] ; 3 uses
  %.0112242 = phi i64 [ %.1113, %.loopexit ], [ 0, %.preheader228 ] ; 2 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.ay = and i32 %i.ax, 4
  %.not171.a = icmp eq i32 %i.ay, 0
  %.0107.in.idx = select i1 %.not171.a, i64 8, i64 0
  %.0107.in = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0107.in.idx
  %.0107 = load ptr, ptr %.0107.in, align 8, !tbaa !107 ; 3 uses
  %i.az = call i64 @kvstoreSize(ptr noundef %.0107) #12 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph244
  %i.bb = add i64 %i.az, %.0112242                ; 3 uses
  %i.bc = call i32 @kvstoreNumNonEmptyDicts(ptr noundef %.0107) #12 ; 2 uses
  %.not172319 = icmp eq i32 %i.bc, 0
  br i1 %.not172319, label %.loopexit, label %.lr.ph324

bb.v:                                             ; preds = %.lr.ph324
  %i.bd = add nsw i32 %.0103322, -1               ; 2 uses
  %.not172 = icmp eq i32 %i.bd, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph324, !llvm.loop !108

.lr.ph324:                                        ; preds = %bb.u, %bb.v
  %.0103322 = phi i32 [ %i.bd, %bb.v ], [ %i.bc, %bb.u ]
  %.0106321 = phi i64 [ %i.bg, %bb.v ], [ 0, %bb.u ]
  %.1109320 = phi i64 [ %i.bh, %bb.v ], [ %.0108243, %bb.u ]
  %i.be = call i32 @evictionPoolPopulate(ptr noundef %i.aw, ptr noundef %.0107, ptr noundef %i.as)
  %i.bf = sext i32 %i.be to i64
  %i.bg = add i64 %.0106321, %i.bf                ; 3 uses
  %i.bh = add i64 %i.bg, %.1109320                ; 3 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7772), align 4, !tbaa !52
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %.not173 = icmp uge i64 %i.bg, %i.bj
  %i.bk = mul nsw i64 %i.bj, 10
  %i.bl = icmp ult i64 %i.az, %i.bk
  %or.cond175 = select i1 %.not173, i1 true, i1 %i.bl
  br i1 %or.cond175, label %..loopexit.loopexit_crit_edge, label %bb.v, !llvm.loop !108

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph324
  br label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.v, %bb.u, %..loopexit.loopexit_crit_edge, %.lr.ph244
  %.1113 = phi i64 [ %.0112242, %.lr.ph244 ], [ %i.bb, %bb.u ], [ %i.bb, %..loopexit.loopexit_crit_edge ], [ %i.bb, %bb.v ] ; 2 uses
  %.3111 = phi i64 [ %.0108243, %.lr.ph244 ], [ %.0108243, %bb.u ], [ %i.bh, %..loopexit.loopexit_crit_edge ], [ %i.bh, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph244, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %.loopexit
  %i.bp = icmp eq i64 %.1113, 0
  %i.bq = icmp eq i64 %.3111, 0
  %i.br = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %i.br, label %.thread216, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.thread
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %.thread ], [ 15, %._crit_edge ] ; 3 uses
  %.1115247 = phi i32 [ %.2116, %.thread ], [ %.0114248, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %indvars.iv267 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.thread, label %bb.w

bb.w:                                             ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49 ; 3 uses
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.bz = and i32 %i.by, 4
  %.not157 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [96 x i8], ptr %i.ca, i64 %i.cb
  %.0102.in.idx = select i1 %.not157, i64 8, i64 0
  %.0102.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0102.in.idx
  %.0102 = load ptr, ptr %.0102.in, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67
  %i.cf = call ptr @kvstoreDictFind(ptr noundef %.0102, i32 noundef %i.ce, ptr noundef nonnull %i.bu) #12 ; 2 uses
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  %.not158 = icmp eq ptr %i.cg, %i.ci
  br i1 %.not158, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @sdsfree(ptr noundef %i.cg) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not159 = icmp eq ptr %i.cf, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  br i1 %.not159, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = call ptr @dictGetKey(ptr noundef nonnull %i.cf) #12
  %i.ck = call ptr @kvobjGetKey(ptr noundef %i.cj) #12
  br label %.loopexit227

.thread:                                          ; preds = %bb.y, %.preheader
  %.2116 = phi i32 [ %.1115247, %.preheader ], [ %i.bx, %bb.y ] ; 2 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, -1
  %.not288 = icmp eq i64 %indvars.iv267, 0
  br i1 %.not288, label %.loopexit227, label %.preheader, !llvm.loop !110

.loopexit227:                                     ; preds = %.thread, %bb.z
  %.5124 = phi ptr [ %i.ck, %bb.z ], [ null, %.thread ] ; 2 uses
  %.4118 = phi i32 [ %i.bx, %bb.z ], [ %.2116, %.thread ] ; 2 uses
  %i.cl = icmp eq ptr %.5124, null
  br i1 %i.cl, label %.preheader228, label %.thread202.loopexit

bb.aa:                                            ; preds = %bb.s
  switch i32 %i.ao, label %.thread216 [
    i32 1540, label %bb.ab
    i32 768, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %.thread216

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %i.co = phi i32 [ %i.db, %bb.ad ], [ %i.cm, %bb.ab ]
  %.1129239 = phi i32 [ %i.da, %bb.ad ], [ 0, %bb.ab ]
  %i.cp = load i32, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cr = urem i32 %i.cq, %i.co
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.cw = icmp eq i32 %i.cv, 1540
  %.0101.in.idx = select i1 %i.cw, i64 0, i64 8
  %.0101.in = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.0101.in.idx
  %.0101 = load ptr, ptr %.0101.in, align 8, !tbaa !107 ; 2 uses
  %i.cx = call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %.0101, ptr noundef nonnull @randomEvictionShouldSkipDictIndex, i32 noundef 16, i32 noundef 0) #12 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.cz = call ptr @kvstoreDictGetRandomKey(ptr noundef %.0101, i32 noundef %i.cx) #12 ; 2 uses
  %.not154 = icmp eq ptr %i.cz, null
  br i1 %.not154, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.da = add nuw nsw i32 %.1129239, 1            ; 2 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %.thread216, !llvm.loop !111

bb.ae:                                            ; preds = %bb.ac
  %i.dd = call ptr @dictGetKey(ptr noundef nonnull %i.cz) #12
  %i.de = call ptr @kvobjGetKey(ptr noundef %i.dd) #12 ; 2 uses
  %.not160 = icmp eq ptr %i.de, null
  br i1 %.not160, label %.thread216, label %.thread202

.thread202.loopexit:                              ; preds = %.loopexit227
  %.pre271 = sext i32 %.4118 to i64
  br label %.thread202

.thread202:                                       ; preds = %.thread202.loopexit, %bb.ae
  %.pre-phi = phi i64 [ %.pre271, %.thread202.loopexit ], [ %i.ct, %bb.ae ]
  %.9206 = phi ptr [ %.5124, %.thread202.loopexit ], [ %i.de, %bb.ae ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.dg = getelementptr inbounds [96 x i8], ptr %i.df, i64 %.pre-phi
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #12
  %i.dh = getelementptr i8, ptr %.9206, i64 -1
  %.val.i = load i8, ptr %i.dh, align 1, !tbaa !60 ; 2 uses
  %i.di = and i8 %.val.i, 7
  switch i8 %i.di, label %sdslen.exit [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %.thread202
  %i.dj = lshr i8 %.val.i, 3
  %i.dk = zext nneg i8 %i.dj to i64
  br label %sdslen.exit

bb.ag:                                            ; preds = %.thread202
  %i.dl = getelementptr inbounds i8, ptr %.9206, i64 -3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !60
  %i.dn = zext i8 %i.dm to i64
  br label %sdslen.exit

bb.ah:                                            ; preds = %.thread202
  %i.do = getelementptr inbounds i8, ptr %.9206, i64 -5
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !61
  %i.dq = zext i16 %i.dp to i64
  br label %sdslen.exit

bb.ai:                                            ; preds = %.thread202
  %i.dr = getelementptr inbounds i8, ptr %.9206, i64 -9
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i32 %i.ds to i64
  br label %sdslen.exit

bb.aj:                                            ; preds = %.thread202
  %i.du = getelementptr inbounds i8, ptr %.9206, i64 -17
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.thread202, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i181 = phi i64 [ %i.dv, %bb.aj ], [ %i.dk, %bb.af ], [ %i.dn, %bb.ag ], [ %i.dq, %bb.ah ], [ %i.dt, %bb.ai ], [ 0, %.thread202 ]
  %i.dw = call ptr @createStringObject(ptr noundef nonnull %.9206, i64 noundef %.0.i181) #12 ; 2 uses
  call void @deleteEvictedKeyAndPropagate(ptr noundef %i.dg, ptr noundef %i.dw, ptr noundef nonnull %i.c) #12
  call void @decrRefCount(ptr noundef %i.dw) #12
  call void @exitExecutionUnit() #12
  call void @postExecutionUnitOperations() #12
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !112
  %i.dy = add nsw i64 %i.dx, %.0139249            ; 2 uses
  %i.dz = add nuw nsw i32 %.0131250, 1            ; 2 uses
  %i.ea = and i32 %i.dz, 15
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %sdslen.exit
  br i1 %.not161.a, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @flushSlavesOutputBuffers() #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8360), align 8, !tbaa !113
  %.not162 = icmp eq i32 %i.ec, 0
  br i1 %.not162, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread214, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eg = call i64 %i.ef() #12, !inline_history !114
  %i.eh = sub i64 %i.eg, %i.ai
  %i.ei = icmp ugt i64 %i.eh, %.0.i180
  br i1 %i.ei, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.b.i = load i1, ptr @isEvictionProcRunning, align 4
  br i1 %.b.i, label %.thread214, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.ek = call i64 @aeCreateTimeEvent(ptr noundef %i.ej, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #12, !inline_history !115 ; 0 uses
  br label %.thread214

.thread214:                                       ; preds = %bb.an, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit231

bb.ar:                                            ; preds = %bb.ao, %sdslen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.el = load i64, ptr %i.b, align 8, !tbaa !63
  %i.em = icmp slt i64 %i.dy, %i.el
  br i1 %i.em, label %bb.s, label %.loopexit231

.loopexit231:                                     ; preds = %bb.ar, %.preheader230, %.thread214
  %.b = load i1, ptr @isEvictionProcRunning, align 4
  %i.en = zext i1 %.b to i32
  br label %thread-pre-split

.thread216:                                       ; preds = %bb.ae, %bb.aa, %bb.ab, %bb.ad, %.preheader228, %._crit_edge
  %i.eo = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not163 = icmp eq i64 %i.eo, 0
  br i1 %.not163, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread216
  %i.ep = call i64 @mstime() #12
  br label %bb.at

bb.at:                                            ; preds = %.thread216, %bb.as
  %.0 = phi i64 [ %i.ep, %bb.as ], [ 0, %.thread216 ]
  %i.eq = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not164252 = icmp eq i64 %i.eq, 0
  br i1 %.not164252, label %.critedge, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.at
  %i.er = call i64 @llvm.umin.i64(i64 %.0.i180, i64 1000)
  %i.es = trunc nuw nsw i64 %i.er to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph254, %bb.aw
  %i.et = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eu = call i64 %i.et() #12, !inline_history !114
  %i.ev = sub i64 %i.eu, %i.ai
  %i.ew = icmp ult i64 %i.ev, %.0.i180
  br i1 %i.ew, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.ex = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ez = call i32 @usleep(i32 noundef %i.es) #12 ; 0 uses
  %i.fa = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not164 = icmp eq i64 %i.fa, 0
  br i1 %.not164, label %.critedge, label %bb.au, !llvm.loop !116

.critedge:                                        ; preds = %bb.au, %bb.aw, %bb.av, %bb.at
  %.1134 = phi i32 [ 2, %bb.at ], [ 0, %bb.av ], [ 2, %bb.aw ], [ 2, %bb.au ] ; 3 uses
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not165 = icmp eq i64 %i.fb, 0
  br i1 %.not165, label %.thread300, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.fc = call i64 @mstime() #12
  %i.fd = sub nsw i64 %i.fc, %.0                  ; 2 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 3 uses
  %.not166 = icmp eq i64 %.pre, 0
  %.not167 = icmp slt i64 %i.fd, %.pre
  %or.cond176 = select i1 %.not166, i1 true, i1 %.not167
  br i1 %or.cond176, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @latencyAddSample(ptr noundef nonnull @.str.3, i64 noundef %i.fd) #12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit231, %bb.ay
  %.2135.ph = phi i32 [ %.1134, %bb.ay ], [ %i.en, %.loopexit231 ]
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %bb.ax
  %i.fe = phi i64 [ %.pr, %thread-pre-split ], [ %.pre, %bb.ax ]
  %.2135 = phi i32 [ %.2135.ph, %thread-pre-split ], [ %.1134, %bb.ax ] ; 3 uses
  %.not168 = icmp eq i64 %i.fe, 0
  br i1 %.not168, label %.thread300, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = call i64 @mstime() #12
  %i.fg = sub nsw i64 %i.ff, %.0137               ; 2 uses
  %.pre270 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 2 uses
  %.not169 = icmp eq i64 %.pre270, 0
  %.not170 = icmp slt i64 %i.fg, %.pre270
  %or.cond177 = select i1 %.not169, i1 true, i1 %.not170
  br i1 %or.cond177, label %.thread300, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @latencyAddSample(ptr noundef nonnull @.str.4, i64 noundef %i.fg) #12
  br label %.thread300

.thread300:                                       ; preds = %.critedge, %bb.az, %bb.ba, %bb.bb
  %.2135299306 = phi i32 [ %.2135, %bb.bb ], [ %.2135, %bb.ba ], [ %.2135, %bb.az ], [ %.1134, %.critedge ] ; 2 uses
  %.not289 = icmp eq i32 %.2135299306, 0
  br i1 %.not289, label %.thread223, label %.thread218

.thread218:                                       ; preds = %bb.g, %.thread300
  %.3136222 = phi i32 [ %.2135299306, %.thread300 ], [ 2, %bb.g ] ; 2 uses
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8, !tbaa !117
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.thread218
end_hunk_0
