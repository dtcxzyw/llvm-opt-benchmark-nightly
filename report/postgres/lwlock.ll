Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/lwlock?download=true
inline.NumInlined: 105
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@LWLockUpdateVar:bb.a
  %i.ap = phi i32 [ %i.aj, %bb.e ], [ %.pre, %bb.d ] ; 2 uses
  %i.aq = icmp eq i32 %i.al, -1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ap, ptr %i.t, align 4
  br label %proclist_delete_offset.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr @ProcGlobal, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = sext i32 %i.al to i64
  %i.au = getelementptr inbounds [896 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  store i32 %i.ap, ptr %i.av, align 4
  br label %proclist_delete_offset.exit

proclist_delete_offset.exit:                      ; preds = %bb.g, %bb.h
  store i32 0, ptr %i.ai, align 4
  store i32 0, ptr %i.ah, align 4
  %i.aw = load ptr, ptr @ProcGlobal, align 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds [896 x i8], ptr %i.ax, i64 %i.af ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 364
  %i.ba = icmp eq i32 %.sroa.6.03869, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 368 ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %proclist_delete_offset.exit
  store i32 -1, ptr %i.bb, align 4
  br label %bb.k

bb.j:                                             ; preds = %proclist_delete_offset.exit
  store i32 %.sroa.6.03869, ptr %i.bb, align 4
  %i.bc = load ptr, ptr @ProcGlobal, align 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = sext i32 %.sroa.6.03869 to i64
  %i.bf = getelementptr inbounds [896 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 364
  store i32 %.sroa.0.04067, ptr %i.bg, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.3 = phi i32 [ %.sroa.0.04067, %bb.i ], [ %.sroa.0.0303968, %bb.j ] ; 3 uses
  store i32 -1, ptr %i.az, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  store i8 2, ptr %i.bh, align 8
  %i.bi = icmp eq i32 %.sroa.21.04170, -1
  br i1 %i.bi, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr @ProcGlobal, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = sext i32 %.sroa.21.04170 to i64
  %i.bm = getelementptr inbounds [896 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = sext i32 %.sroa.21.04170 to i64         ; 2 uses
  %i.bo = getelementptr inbounds [896 x i8], ptr %i.bk, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 361
  %i.bq = load i8, ptr %i.bp, align 1
  %.not27 = icmp eq i8 %i.bq, 2
  br i1 %.not27, label %bb.c, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.l, %bb.k, %.lr.ph
  %.sroa.0.030.lcssa = phi i32 [ -1, %.lr.ph ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.3, %bb.l ] ; 2 uses
  %i.br = atomicrmw and ptr %i.b, i32 -536870913 seq_cst, align 4 ; 0 uses
  %i.bs = icmp eq i32 %.sroa.0.030.lcssa, -1
  br i1 %i.bs, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge, %proclist_delete_offset.exit29
  %.sink62 = phi i32 [ %i.by, %proclist_delete_offset.exit29 ], [ %.sroa.0.030.lcssa, %._crit_edge ] ; 2 uses
  %i.bt = load ptr, ptr @ProcGlobal, align 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = sext i32 %.sink62 to i64
  %i.bw = getelementptr inbounds [896 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 364
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = sext i32 %.sink62 to i64
  %i.ca = getelementptr inbounds [896 x i8], ptr %i.bu, i64 %i.bz ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 364 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 368 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %i.ce = icmp eq i32 %i.cd, -1
  %i.cf = load i32, ptr %i.cb, align 4            ; 3 uses
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph48
  %i.cg = sext i32 %i.cd to i64
  %i.ch = getelementptr inbounds [896 x i8], ptr %i.bu, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 364
  store i32 %i.cf, ptr %i.ci, align 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph48, %bb.m
  %i.cj = icmp eq i32 %i.cf, -1
  br i1 %i.cj, label %proclist_delete_offset.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr @ProcGlobal, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = sext i32 %i.cf to i64
  %i.cn = getelementptr inbounds [896 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 368
  store i32 %i.cd, ptr %i.co, align 4
  br label %proclist_delete_offset.exit29

proclist_delete_offset.exit29:                    ; preds = %bb.n, %bb.o
  store i32 0, ptr %i.cc, align 4
  store i32 0, ptr %i.cb, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 360
  store i8 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 344
  %i.cr = load ptr, ptr %i.cq, align 8
  call void @PGSemaphoreUnlock(ptr noundef %i.cr) #9
  %i.cs = icmp eq i32 %i.by, -1
  br i1 %i.cs, label %._crit_edge49, label %.lr.ph48, !llvm.loop !27

._crit_edge49:                                    ; preds = %proclist_delete_offset.exit29, %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LWLockRelease(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SpinDelayStatus, align 8    ; 10 uses
  %i.a = load i32, ptr @num_held_lwlocks, align 4 ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = add i32 %i.a, -1                         ; 4 uses
  %indvars.iv.next62 = add nsw i64 %i.b, -1       ; 2 uses
  %indvars63 = trunc i64 %indvars.iv.next62 to i32 ; 2 uses
  %i.d = icmp sgt i32 %indvars63, -1
  br i1 %i.d, label %.lr.ph68, label %._crit_edge69

bb.b:                                             ; preds = %.lr.ph68
  %indvars.iv.next37 = add i32 %indvars.iv3664, -1
  %indvars.iv.next = add nsw i64 %indvars.iv.next65, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.e = icmp sgt i32 %indvars, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.e, label %.lr.ph68, label %._crit_edge69, !llvm.loop !29

.lr.ph68:                                         ; preds = %bb.a, %bb.b
  %indvar = phi i32 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %indvars66 = phi i32 [ %indvars, %bb.b ], [ %indvars63, %bb.a ]
  %indvars.iv.next65 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next62, %bb.a ] ; 2 uses
  %indvars.iv3664 = phi i32 [ %indvars.iv.next37, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = and i64 %indvars.iv.next65, 2147483647
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.c, label %bb.b, !llvm.loop !29

._crit_edge69:                                    ; preds = %bb.b, %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.k = load i16, ptr %0, align 4
  %i.l = tail call fastcc ptr @GetLWTrancheName(i16 noundef zeroext %i.k)
  %i.m = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, ptr noundef %i.l) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1783, ptr noundef nonnull @__func__.LWLockRelease) #9
  unreachable

bb.c:                                             ; preds = %.lr.ph68
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i32, ptr %i.n, align 8
  store i32 %i.c, ptr @num_held_lwlocks, align 4
  %i.p = icmp sgt i32 %i.c, %indvars66
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = zext i32 %indvars.iv3664 to i64          ; 3 uses
  %xtraiter = and i32 %indvar, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %i.q
  %indvars.iv.next40.prol = add nuw nsw i64 %i.q, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %indvars.iv.next40.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv39.unr = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next40.prol, %.lr.ph.prol ]
  %i.t = icmp eq i32 %indvar, 1
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.1, %.lr.ph ], [ %indvars.iv39.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %indvars.iv39
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %indvars.iv.next40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %indvars.iv.next40
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @held_lwlocks, i64 %indvars.iv.next40.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = trunc nuw i64 %indvars.iv.next40.1 to i32
  %i.z = icmp sgt i32 %i.c, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.c
  %i.aa = icmp eq i32 %i.o, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.56 = select i1 %i.aa, i32 -262144, i32 -1     ; 2 uses
  %2 = atomicrmw add ptr %i.ab, i32 %.56 seq_cst, align 4
  %i.ac = add i32 %2, %.56
  %i.ad = and i32 %i.ac, -1073217537
  %or.cond23 = icmp eq i32 %i.ad, -2147483648
  br i1 %or.cond23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.af = atomicrmw or ptr %i.ae, i32 536870912 seq_cst, align 4 ; 2 uses
  %i.ag = and i32 %i.af, 536870912
  %.not5.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i.i, label %LWLockWaitListLock.exit.i, label %.lr.ph7.i.i, !prof !11

.lr.ph7.i.i:                                      ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph7.i.i
  %i.am = phi i32 [ %i.af, %.lr.ph7.i.i ], [ %i.aq, %._crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 0, ptr %1, align 8
  store i32 0, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 8
  store ptr @.str.1, ptr %i.aj, align 8
  store i32 860, ptr %i.ak, align 8
  store ptr @__func__.LWLockWaitListLock, ptr %i.al, align 8
  %i.an = and i32 %i.am, 536870912
  %.not34.i.i = icmp eq i32 %i.an, 0
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  call void @perform_spin_delay(ptr noundef nonnull %1) #9
  %i.ao = load volatile i32, ptr %i.ae, align 4
  %i.ap = and i32 %i.ao, 536870912
  %.not3.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  call void @finish_spin_delay(ptr noundef nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.aq = atomicrmw or ptr %i.ae, i32 536870912 seq_cst, align 4 ; 2 uses
  %i.ar = and i32 %i.aq, 536870912
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %LWLockWaitListLock.exit.i, label %bb.e, !prof !12

LWLockWaitListLock.exit.i:                        ; preds = %._crit_edge.i.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %proclist_push_tail_offset.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %LWLockWaitListLock.exit.i
  %i.av = load ptr, ptr @ProcGlobal, align 8      ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr inbounds [896 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

bb.f:                                             ; preds = %bb.q, %.lr.ph.i
  %i.ba = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.cn, %bb.q ] ; 2 uses
  %i.bb = phi ptr [ %i.av, %.lr.ph.i ], [ %i.cl, %bb.q ]
  %.067.i = phi i8 [ 0, %.lr.ph.i ], [ %.2.ph.i, %bb.q ] ; 2 uses
  %.sroa.0.066.i = phi i32 [ %i.at, %.lr.ph.i ], [ %.sroa.21.065.i, %bb.q ] ; 4 uses
  %.pn.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.cp, %bb.q ]
  %.03764.i = phi i1 [ false, %.lr.ph.i ], [ %.239.ph.i, %bb.q ] ; 2 uses
  %.sroa.0.04963.i = phi i32 [ -1, %.lr.ph.i ], [ %.sroa.0.150.ph.i, %bb.q ] ; 2 uses
  %.sroa.6.062.i = phi i32 [ -1, %.lr.ph.i ], [ %.sroa.6.1.ph.i, %bb.q ] ; 4 uses
  %.sroa.21.065.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 364
  %.sroa.21.065.i = load i32, ptr %.sroa.21.065.in.i, align 4 ; 3 uses
  %i.bc = sext i32 %.sroa.0.066.i to i64          ; 2 uses
  %i.bd = getelementptr inbounds [896 x i8], ptr %i.ba, i64 %i.bc ; 5 uses
  br i1 %.03764.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 361
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 364 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 368 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 3 uses
  %i.bk = icmp eq i32 %i.bj, -1
  %i.bl = load i32, ptr %i.bh, align 4            ; 4 uses
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bl, ptr %i.as, align 4
  %.pre78.i = load i32, ptr %i.bi, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [896 x i8], ptr %i.ba, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 364
  store i32 %i.bl, ptr %i.bo, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = phi i32 [ %i.bj, %bb.j ], [ %.pre78.i, %bb.i ] ; 2 uses
  %i.bq = icmp eq i32 %i.bl, -1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bp, ptr %i.az, align 4
  br label %proclist_delete_offset.exit.i

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr @ProcGlobal, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = sext i32 %i.bl to i64
  %i.bu = getelementptr inbounds [896 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 368
  store i32 %i.bp, ptr %i.bv, align 4
  br label %proclist_delete_offset.exit.i

proclist_delete_offset.exit.i:                    ; preds = %bb.m, %bb.l
  store i32 0, ptr %i.bi, align 4
  store i32 0, ptr %i.bh, align 4
  %i.bw = load ptr, ptr @ProcGlobal, align 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds [896 x i8], ptr %i.bx, i64 %i.bc ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 364
  %i.ca = icmp eq i32 %.sroa.6.062.i, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 368 ; 2 uses
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %proclist_delete_offset.exit.i
  store i32 -1, ptr %i.cb, align 4
  br label %proclist_push_tail_offset.exit.i

bb.o:                                             ; preds = %proclist_delete_offset.exit.i
  store i32 %.sroa.6.062.i, ptr %i.cb, align 4
  %i.cc = load ptr, ptr @ProcGlobal, align 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = sext i32 %.sroa.6.062.i to i64
  %i.cf = getelementptr inbounds [896 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 364
  store i32 %.sroa.0.066.i, ptr %i.cg, align 4
  br label %proclist_push_tail_offset.exit.i

proclist_push_tail_offset.exit.i:                 ; preds = %bb.o, %bb.n
  %.sroa.0.3.i = phi i32 [ %.sroa.0.066.i, %bb.n ], [ %.sroa.0.04963.i, %bb.o ] ; 2 uses
  store i32 -1, ptr %i.bz, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 361
  %i.ci = load i8, ptr %i.ch, align 1             ; 2 uses
  %.not42.i = icmp ne i8 %i.ci, 2                 ; 2 uses
  %spec.select.i = or i1 %.03764.i, %.not42.i
  %spec.select44.i = select i1 %.not42.i, i8 1, i8 %.067.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 360
  store i8 2, ptr %i.cj, align 8
  %i.ck = icmp eq i8 %i.ci, 0
  %.pre.i = load ptr, ptr @ProcGlobal, align 8
  br i1 %i.ck, label %proclist_push_tail_offset.exit._crit_edge.loopexit.i, label %bb.p

bb.p:                                             ; preds = %proclist_push_tail_offset.exit.i, %bb.g
  %i.cl = phi ptr [ %.pre.i, %proclist_push_tail_offset.exit.i ], [ %i.bb, %bb.g ] ; 2 uses
  %.sroa.6.1.ph.i = phi i32 [ %.sroa.0.066.i, %proclist_push_tail_offset.exit.i ], [ %.sroa.6.062.i, %bb.g ]
  %.sroa.0.150.ph.i = phi i32 [ %.sroa.0.3.i, %proclist_push_tail_offset.exit.i ], [ %.sroa.0.04963.i, %bb.g ] ; 2 uses
  %.239.ph.i = phi i1 [ %spec.select.i, %proclist_push_tail_offset.exit.i ], [ true, %bb.g ]
  %.2.ph.i = phi i8 [ %spec.select44.i, %proclist_push_tail_offset.exit.i ], [ %.067.i, %bb.g ] ; 2 uses
  %i.cm = icmp eq i32 %.sroa.21.065.i, -1
  br i1 %i.cm, label %proclist_push_tail_offset.exit._crit_edge.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.co = sext i32 %.sroa.21.065.i to i64
  %i.cp = getelementptr inbounds [896 x i8], ptr %i.cn, i64 %i.co
  br label %bb.f, !llvm.loop !31

proclist_push_tail_offset.exit._crit_edge.loopexit.i: ; preds = %bb.p, %proclist_push_tail_offset.exit.i
  %.sroa.0.2.ph.i = phi i32 [ %.sroa.0.3.i, %proclist_push_tail_offset.exit.i ], [ %.sroa.0.150.ph.i, %bb.p ]
  %.3.ph.i = phi i8 [ %spec.select44.i, %proclist_push_tail_offset.exit.i ], [ %.2.ph.i, %bb.p ]
  %i.cq = zext nneg i8 %.3.ph.i to i32
  %i.cr = shl nuw nsw i32 %i.cq, 30
  br label %proclist_push_tail_offset.exit._crit_edge.i

proclist_push_tail_offset.exit._crit_edge.i:      ; preds = %proclist_push_tail_offset.exit._crit_edge.loopexit.i, %LWLockWaitListLock.exit.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.2.ph.i, %proclist_push_tail_offset.exit._crit_edge.loopexit.i ], [ -1, %LWLockWaitListLock.exit.i ] ; 2 uses
  %.3.i = phi i32 [ %i.cr, %proclist_push_tail_offset.exit._crit_edge.loopexit.i ], [ 0, %LWLockWaitListLock.exit.i ]
  %i.cs = load volatile i32, ptr %i.ae, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %proclist_push_tail_offset.exit._crit_edge.i
  %.048.i = phi i32 [ %i.cs, %proclist_push_tail_offset.exit._crit_edge.i ], [ %i.cx, %bb.r ] ; 2 uses
  %i.ct = and i32 %.048.i, -1610612737
  %.034.i = or disjoint i32 %i.ct, %.3.i
  %.val.i = load i32, ptr %i.as, align 4
  %i.cu = icmp eq i32 %.val.i, -1
  %.v.i = select i1 %i.cu, i32 1610612735, i32 -1
  %i.cv = and i32 %.v.i, %.034.i
  %i.cw = call { i32, i8 } asm sideeffect "\09lock\09\09\09\09\0A\09cmpxchgl\09$4,$5\09\0A   setz\09\09$2\09\09\0A", "={ax},=*m,=q,{ax},r,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ae, i32 %.048.i, i32 %i.cv, ptr nonnull elementtype(i32) %i.ae) #9, !srcloc !10 ; 2 uses
  %i.cx = extractvalue { i32, i8 } %i.cw, 0
  %i.cy = extractvalue { i32, i8 } %i.cw, 1
  %.not60.i = icmp eq i8 %i.cy, 0
end_hunk_0
