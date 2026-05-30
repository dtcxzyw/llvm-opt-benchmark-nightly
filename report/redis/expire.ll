inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@activeExpireCycle:bb.a
  store i32 %i.bk, ptr @activeSubexpiresCycle.currentDb, align 4, !tbaa !9
  br label %activeSubexpiresCycle.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = load i32, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bo = call i32 @estoreGetFirstNonEmptyBucket(ptr noundef %i.bn) #9 ; 2 uses
  store i32 %i.bo, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = phi i32 [ %i.bo, %bb.l ], [ %i.bl, %bb.k ]
  %i.bq = call i32 @clusterCanAccessKeysInSlot(i32 noundef %i.bp) #9
  %.not14.i = icmp eq i32 %i.bq, 0
  br i1 %.not14.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bs = load i32, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9
  %i.bt = call i32 @estoreGetNextNonEmptyBucket(ptr noundef %i.br, i32 noundef %i.bs) #9 ; 2 uses
  store i32 %i.bt, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.o, label %activeSubexpiresCycle.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr @activeSubexpiresCycle.currentDb, align 4, !tbaa !9
  %i.bw = add i32 %i.bv, 1
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !77
  %i.by = urem i32 %i.bw, %i.bx
  store i32 %i.by, ptr @activeSubexpiresCycle.currentDb, align 4, !tbaa !9
  br label %activeSubexpiresCycle.exit

bb.p:                                             ; preds = %bb.m
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !78
  %i.ca = sdiv i32 10000, %i.bz                   ; 2 uses
  %i.cb = load i64, ptr @activeSubexpiresCycle.activeExpirySequence, align 8, !tbaa !16 ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, 1000000
  %or.cond.i = and i1 %i.ah, %i.cc
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = udiv i64 %i.cb, 1000000
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cd, i64 32)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = mul nsw i32 %i.ca, %i.cf
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i32 [ %i.cg, %bb.q ], [ %i.ca, %bb.p ] ; 2 uses
  %i.ch = load i32, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 %.0.i, ptr %1, align 8, !tbaa !58
  store i32 0, ptr %i.ai, align 4
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !60
  store i32 %i.ch, ptr %i.ak, align 8, !tbaa !61
  store i32 0, ptr %i.al, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr @activeSubexpiresCb, ptr %2, align 8, !tbaa !62
  store i64 -1, ptr %i.am, align 8, !tbaa !64
  store ptr %1, ptr %i.an, align 8, !tbaa !65
  %i.ci = call i64 @commandTimeSnapshot() #9
  store i64 %i.ci, ptr %i.ao, align 8, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !67
  call void @estoreActiveExpire(ptr noundef %i.cj, i32 noundef %i.ch, ptr noundef nonnull %2) #9
  %i.ck = load i32, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = zext i32 %.0.i to i64
  %i.cn = load i64, ptr @activeSubexpiresCycle.activeExpirySequence, align 8, !tbaa !16
  %i.co = add i64 %i.cn, %i.cm
  store i64 %i.co, ptr @activeSubexpiresCycle.activeExpirySequence, align 8, !tbaa !16
  br label %activeSubexpiresCycle.exit

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr @activeSubexpiresCycle.activeExpirySequence, align 8, !tbaa !16
  %i.cp = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.cq = load i32, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9
  %i.cr = call i32 @estoreGetNextNonEmptyBucket(ptr noundef %i.cp, i32 noundef %i.cq) #9 ; 2 uses
  store i32 %i.cr, ptr @activeSubexpiresCycle.currentSlot, align 4, !tbaa !9
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.u, label %activeSubexpiresCycle.exit

bb.u:                                             ; preds = %bb.t
  %i.ct = load i32, ptr @activeSubexpiresCycle.currentDb, align 4, !tbaa !9
  %i.cu = add i32 %i.ct, 1
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !77
  %i.cw = urem i32 %i.cu, %i.cv
  store i32 %i.cw, ptr @activeSubexpiresCycle.currentDb, align 4, !tbaa !9
  br label %activeSubexpiresCycle.exit

activeSubexpiresCycle.exit:                       ; preds = %bb.j, %bb.n, %bb.o, %bb.s, %bb.t, %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.cz = call i64 @kvstoreSize(ptr noundef %i.cy) #9
  %.not108 = icmp ne i64 %i.cz, 0
  %i.da = zext i1 %.not108 to i32
  %spec.select114 = add nuw nsw i32 %.083149, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.aj, %activeSubexpiresCycle.exit
  %.189 = phi i64 [ %.088147, %activeSubexpiresCycle.exit ], [ %i.dz, %bb.aj ] ; 2 uses
  %.186 = phi i64 [ %.085148, %activeSubexpiresCycle.exit ], [ %i.dy, %bb.aj ] ; 2 uses
  %.080 = phi i32 [ 0, %activeSubexpiresCycle.exit ], [ %.181, %bb.aj ] ; 2 uses
  %.078 = phi i32 [ 0, %activeSubexpiresCycle.exit ], [ %.5, %bb.aj ]
  %.1 = phi i32 [ %.072150, %activeSubexpiresCycle.exit ], [ %i.dd, %bb.aj ]
  %i.dd = add nsw i32 %.1, 1                      ; 4 uses
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.df = call i64 @kvstoreSize(ptr noundef %i.de) #9 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.dc, align 8, !tbaa !82
  br label %.thread119

bb.x:                                             ; preds = %bb.v
  %i.dh = call i64 @mstime() #9
  store i64 %i.dh, ptr %i.aq, align 8, !tbaa !51
  %spec.select115 = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.e) ; 2 uses
  %i.di = mul i64 %spec.select115, 20             ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.dj = load i32, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.dk = icmp sgt i64 %i.di, 0
  %i.dl = select i1 %i.at, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.x
  %.pre = load i64, ptr %i.db, align 8, !tbaa !83
  br label %.lr.ph

bb.y:                                             ; preds = %.lr.ph
  %i.dm = add nuw nsw i64 %.073143, 1             ; 2 uses
  %i.dn = load i64, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %spec.select115
  %i.dp = icmp slt i64 %i.dm, %i.di
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph, label %.loopexitthread-pre-split, !llvm.loop !84

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %i.dr = phi i64 [ %i.dt, %bb.y ], [ %.pre, %.lr.ph.preheader ]
  %.073143 = phi i64 [ %i.dm, %bb.y ], [ 0, %.lr.ph.preheader ]
  %i.ds = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.dt = call i64 @kvstoreScan(ptr noundef %i.ds, i64 noundef %i.dr, i32 noundef -1, ptr noundef nonnull @expireScanCallback, ptr noundef nonnull @expirySamplingShouldSkipDict, ptr noundef nonnull %3) #9 ; 3 uses
  store i64 %i.dt, ptr %i.db, align 8, !tbaa !83
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %thread-pre-split, label %bb.y

thread-pre-split:                                 ; preds = %.lr.ph
  %.pr = load i64, ptr %i.ar, align 8, !tbaa !57
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %bb.y, %thread-pre-split
  %.ph = phi i64 [ %.pr, %thread-pre-split ], [ %i.dn, %bb.y ]
  %.181.ph = phi i32 [ 1, %thread-pre-split ], [ %.080, %bb.y ]
  %.pr181 = load i32, ptr %i.ag, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.x
  %i.dv = phi i32 [ %.pr181, %.loopexitthread-pre-split ], [ %i.dj, %bb.x ] ; 3 uses
  %i.dw = phi i64 [ %.ph, %.loopexitthread-pre-split ], [ 0, %bb.x ] ; 3 uses
  %.181 = phi i32 [ %.181.ph, %.loopexitthread-pre-split ], [ %.080, %bb.x ] ; 2 uses
  %i.dx = load i64, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.dy = add i64 %i.dx, %.186                    ; 3 uses
  %i.dz = add i64 %i.dw, %.189                    ; 3 uses
  %i.ea = icmp sgt i32 %i.dv, %i.dj
  %i.eb = zext i1 %i.ea to i32
  %spec.select116 = add nsw i32 %.078, %i.eb      ; 3 uses
  %.not109 = icmp eq i32 %.181, 0
  br i1 %.not109, label %bb.z, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.ec = and i32 %i.dd, 15
  br label %bb.ac

bb.z:                                             ; preds = %.loopexit
  %i.ed = icmp eq i64 %i.dw, 0
  br i1 %i.ed, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = mul i64 %i.dx, 100
  %i.ef = udiv i64 %i.ee, %i.dw
  %i.eg = icmp ugt i64 %i.ef, %i.h
  %i.eh = zext i1 %i.eg to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ei = phi i32 [ %i.eh, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %i.ej = and i32 %i.dd, 15                       ; 2 uses
  %i.ek = icmp ne i32 %i.ej, 0
  %4 = trunc nuw i32 %i.ei to i1
  %or.cond5 = select i1 %i.ek, i1 %4, i1 false
  br i1 %or.cond5, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %i.el = phi i32 [ %i.ec, %.thread ], [ %i.ej, %bb.ab ]
  %i.em = phi i32 [ 0, %.thread ], [ %i.ei, %bb.ab ] ; 2 uses
  %.not110 = icmp eq i32 %i.dv, 0
  br i1 %.not110, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load i64, ptr %i.af, align 8, !tbaa !55
  %i.eo = sext i32 %i.dv to i64
  %i.ep = sdiv i64 %i.en, %i.eo                   ; 3 uses
  %i.eq = load i64, ptr %i.dc, align 8, !tbaa !82 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = sitofp i64 %i.ep to double
  %i.et = sub nsw i64 %i.eq, %i.ep
  %i.eu = sitofp i64 %i.et to double
  %i.ev = sext i32 %spec.select116 to i64
  %i.ew = getelementptr [8 x i8], ptr @avg_ttl_factor, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !86
  %i.ez = call double @llvm.fmuladd.f64(double %i.eu, double %i.ey, double %i.es)
  %i.fa = fptosi double %i.ez to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %storemerge = phi i64 [ %i.fa, %bb.ae ], [ %i.ep, %bb.ad ]
  store i64 %storemerge, ptr %i.dc, align 8, !tbaa !82
  store i64 0, ptr %i.af, align 8, !tbaa !55
  store i32 0, ptr %i.ag, align 8, !tbaa !56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.2 = phi i32 [ 0, %bb.af ], [ %spec.select116, %bb.ac ] ; 2 uses
  %i.fb = icmp eq i32 %i.el, 0
  br i1 %i.fb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fc = call i64 @ustime() #9
  %i.fd = sub nsw i64 %i.fc, %i.i
  %i.fe = icmp sgt i64 %i.fd, %.093
  br i1 %i.fe, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i1 true, ptr @activeExpireCycle.timelimit_exit, align 4
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2592), align 8, !tbaa !87
  %i.fg = add nsw i64 %i.ff, 1
  store i64 %i.fg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2592), align 8, !tbaa !87
  br label %.thread119

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ab
  %.5 = phi i32 [ %.2, %bb.ag ], [ %spec.select116, %bb.ab ], [ %.2, %bb.ah ]
  %.177 = phi i32 [ %i.em, %bb.ag ], [ 1, %bb.ab ], [ %i.em, %bb.ah ]
  %.not111 = icmp eq i32 %.177, 0
  br i1 %.not111, label %.thread119, label %bb.v, !llvm.loop !88

.thread119:                                       ; preds = %bb.aj, %bb.ai, %bb.w
  %.287129 = phi i64 [ %.186, %bb.w ], [ %i.dy, %bb.ai ], [ %i.dy, %bb.aj ] ; 2 uses
  %.290128 = phi i64 [ %.189, %bb.w ], [ %i.dz, %bb.ai ], [ %i.dz, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.fh = add nuw nsw i32 %.071151, 1             ; 2 uses
  %i.fi = icmp sge i32 %spec.select114, %spec.select
  %.b = load i1, ptr @activeExpireCycle.timelimit_exit, align 4
  %or.cond3.not = select i1 %i.fi, i1 true, i1 %.b
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4 ; 2 uses
  %i.fk = icmp sge i32 %i.fh, %i.fj
  %or.cond113.not = select i1 %or.cond3.not, i1 true, i1 %i.fk
  br i1 %or.cond113.not, label %.critedge.loopexit, label %bb.i, !llvm.loop !89

.critedge.loopexit:                               ; preds = %.thread119
  %i.fl = sitofp i64 %.287129 to double
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.088.lcssa = phi i64 [ 0, %.preheader ], [ %.290128, %.critedge.loopexit ] ; 2 uses
  %.085.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.fl, %.critedge.loopexit ]
  %i.fm = call i64 @ustime() #9
  %i.fn = sub nsw i64 %i.fm, %i.i                 ; 2 uses
  %i.fo = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2600), align 8, !tbaa !90
  %i.fp = add nsw i64 %i.fo, %i.fn
  store i64 %i.fp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2600), align 8, !tbaa !90
  %i.fq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !91 ; 2 uses
  %.not105 = icmp eq i64 %i.fq, 0
  br i1 %.not105, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %i.fr = sdiv i64 %i.fn, 1000                    ; 2 uses
  %.not106 = icmp slt i64 %i.fr, %i.fq
  br i1 %.not106, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @latencyAddSample(ptr noundef nonnull @.str.2, i64 noundef %i.fr) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.critedge
  %.not107 = icmp eq i64 %.088.lcssa, 0
  %i.fs = sitofp i64 %.088.lcssa to double
  %i.ft = fdiv double %.085.lcssa, %i.fs
  %.0 = select i1 %.not107, double 0.000000e+00, double %i.ft
  %i.fu = load double, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2584), align 8, !tbaa !75
  %i.fv = fmul double %i.fu, f0x3FEE666666666666
  %i.fw = call double @llvm.fmuladd.f64(double %.0, double 5.000000e-02, double %i.fv)
  store double %i.fw, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2584), align 8, !tbaa !75
  br label %bb.an

bb.an:                                            ; preds = %bb.e, %bb.d, %bb.a, %bb.am
  ret void
}

declare i64 @ustime() local_unnamed_addr #1

declare i32 @isPausedActionsWithUpdate(i32 noundef) local_unnamed_addr #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #1

declare i64 @mstime() local_unnamed_addr #1

declare i64 @kvstoreScan(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal range(i32 0, 2) i32 @expirySamplingShouldSkipDict(ptr noundef readonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = add i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i8, ptr %i.f, align 4, !tbaa !13    ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  %i.i = sext i8 %i.g to i64
  %i.j = and i64 %i.i, 4294967295
  %i.k = shl nuw i64 1, %i.j
  %i.l = select i1 %i.h, i64 0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = icmp eq i8 %i.n, -1
  %i.p = sext i8 %i.n to i64
  %i.q = and i64 %i.p, 4294967295
  %i.r = shl nuw i64 1, %i.q
  %i.s = select i1 %i.o, i64 0, i64 %i.r
  %i.t = add i64 %i.s, %i.l                       ; 2 uses
  %i.u = icmp ugt i64 %i.t, 4
  %i.v = mul nsw i64 %i.e, 100
  %i.w = icmp ugt i64 %i.t, %i.v
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @clusterCanAccessKeysInSlot(i32 noundef %1) #9
  %.not = icmp eq i32 %i.x, 0
  %. = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @latencyAddSample(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @expireSlaveKeys() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = sub i64 0, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @mstime() #9               ; 2 uses
  %.pre = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.s, %bb.c
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.bj, %bb.s ]
  %.029 = phi i32 [ 0, %bb.c ], [ %.1.lcssa58, %bb.s ] ; 2 uses
  %.028 = phi i32 [ 0, %bb.c ], [ %i.bc, %bb.s ]
  %i.k = tail call ptr @dictGetRandomKey(ptr noundef %i.j) #9 ; 3 uses
  %i.l = tail call ptr @dictGetKey(ptr noundef %i.k) #9 ; 2 uses
end_hunk_0
begin_hunk_1_@dbFindExpires
declare ptr @dbFindExpires(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dictSetUnsignedIntegerVal(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @rememberSlaveKeyWithExpire(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dictCreate(ptr noundef nonnull @rememberSlaveKeyWithExpire.dt) #9 ; 2 uses
  store ptr %i.c, ptr @slaveKeysWithExpire, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94
  %i.g = icmp sgt i32 %i.f, 63
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dictAddOrFind(ptr noundef %i.d, ptr noundef %1) #9 ; 5 uses
  %i.i = tail call ptr @dictGetKey(ptr noundef %i.h) #9
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92
  %i.l = tail call ptr @sdsdup(ptr noundef %1) #9
  tail call void @dictSetKey(ptr noundef %i.k, ptr noundef %i.h, ptr noundef %i.l) #9
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.h, i64 noundef 0) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = tail call i64 @dictGetUnsignedIntegerVal(ptr noundef %i.h) #9
  %i.n = load i32, ptr %i.e, align 8, !tbaa !94
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = or i64 %i.p, %i.m
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.h, i64 noundef %i.q) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  ret void
}

declare i64 @dictSdsHash(ptr noundef) #1

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #1

declare void @dictSdsDestructor(ptr noundef, ptr noundef) #1

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #1

declare ptr @dictAddOrFind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dictSetKey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @getSlaveKeyWithExpireCount() local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = add i64 %i.f, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @flushSlaveKeysWithExpireList() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @slaveKeysWithExpire, align 8, !tbaa !92 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dictRelease(ptr noundef nonnull %i.a) #9
  store ptr null, ptr @slaveKeysWithExpire, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @dictRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @checkAlreadyExpired(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96
  %i.d = and i64 %i.c, 2
  %.not3 = icmp eq i64 %i.d, 0
  br i1 %.not3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i64 @commandTimeSnapshot() #9
  %.not4 = icmp sgt i64 %0, %i.e
  br i1 %.not4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !111
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !112
  %.not6 = icmp eq ptr %i.g, null
  %i.h = zext i1 %.not6 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.h, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parseExtendedExpireArgumentsOrReply(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %.lr.ph, label %.thread87

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.03658 = phi i32 [ 0, %.lr.ph ], [ %.137, %bb.f ] ; 3 uses
  %.03957 = phi i32 [ 0, %.lr.ph ], [ %.140, %bb.f ] ; 3 uses
  %.04256 = phi i32 [ 0, %.lr.ph ], [ %.143, %bb.f ] ; 3 uses
  %.04555 = phi i32 [ 0, %.lr.ph ], [ %.146, %bb.f ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 5 uses
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.3) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.4) #11
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.5) #11
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.6) #11
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %i.i) #9
  br label %.thread87

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink93 = phi i32 [ 1, %bb.b ], [ 4, %bb.d ], [ 2, %bb.c ], [ 8, %bb.e ]
  %.146 = phi i32 [ 1, %bb.b ], [ %.04555, %bb.d ], [ %.04555, %bb.c ], [ %.04555, %bb.e ] ; 2 uses
  %.143 = phi i32 [ %.04256, %bb.b ], [ %.04256, %bb.d ], [ 1, %bb.c ], [ %.04256, %bb.e ] ; 2 uses
  %.140 = phi i32 [ %.03957, %bb.b ], [ 1, %bb.d ], [ %.03957, %bb.c ], [ %.03957, %bb.e ] ; 2 uses
  %.137 = phi i32 [ %.03658, %bb.b ], [ %.03658, %bb.d ], [ %.03658, %bb.c ], [ 1, %bb.e ] ; 2 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !9
  %i.o = or i32 %i.n, %.sink93
  store i32 %i.o, ptr %1, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !113
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.f
  %2 = trunc nuw i32 %.146 to i1
  %3 = trunc nuw i32 %.143 to i1
  %4 = trunc nuw i32 %.140 to i1                  ; 2 uses
  %5 = trunc nuw i32 %.137 to i1                  ; 2 uses
  %i.s = select i1 %3, i1 true, i1 %4
  %i.t = select i1 %i.s, i1 true, i1 %5
  %or.cond95 = select i1 %2, i1 %i.t, i1 false
  br i1 %or.cond95, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #9
  br label %.thread87

bb.h:                                             ; preds = %._crit_edge
  %or.cond7 = select i1 %4, i1 %5, i1 false
  br i1 %or.cond7, label %bb.i, label %.thread87

bb.i:                                             ; preds = %bb.h
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #9
  br label %.thread87

.thread87:                                        ; preds = %bb.a, %bb.h, %.critedge, %bb.i, %bb.g
  %.2 = phi i32 [ -1, %.critedge ], [ -1, %bb.g ], [ -1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @expireGenericCommand(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.i = call i32 @parseExtendedExpireArgumentsOrReply(ptr noundef %0, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef null) #9
  %.not69 = icmp eq i32 %i.j, 0
  br i1 %.not69, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0                        ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %.pre, -9223372036854776
  %or.cond = icmp ult i64 %i.l, -18446744073709551
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @addReplyErrorExpireTime(ptr noundef nonnull %0) #9
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.m = mul nsw i64 %.pre, 1000                  ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.n = phi i64 [ %i.m, %bb.f ], [ %.pre, %bb.c ] ; 2 uses
  %i.o = sub nsw i64 9223372036854775807, %1
  %i.p = icmp sgt i64 %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @addReplyErrorExpireTime(ptr noundef nonnull %0) #9
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.q = add nsw i64 %i.n, %1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = call ptr @lookupKeyWrite(ptr noundef %i.s, ptr noundef %i.f) #9 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !120
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.v) #9
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.b, align 4, !tbaa !9    ; 5 uses
  %.not70 = icmp eq i32 %i.w, 0
  br i1 %.not70, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.pre79 = load i64, ptr %i.a, align 8, !tbaa !76
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.x = call i64 @kvobjGetExpire(ptr noundef nonnull %i.t) #9 ; 4 uses
  %i.y = trunc i32 %i.w to i1
  %i.z = icmp ne i64 %i.x, -1                     ; 2 uses
  %or.cond7 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !120
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.aa) #9
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.ab = and i32 %i.w, 2
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp eq i64 %i.x, -1                    ; 2 uses
  %or.cond9 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !120
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ae) #9
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.af = and i32 %i.w, 4
  %.not71 = icmp ne i32 %i.af, 0
  %.pre78 = load i64, ptr %i.a, align 8           ; 3 uses
  %i.ag = icmp sle i64 %.pre78, %i.x
  %or.cond3 = or i1 %i.ad, %i.ag
  %or.cond82 = select i1 %.not71, i1 %or.cond3, i1 false
  br i1 %or.cond82, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !120
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ah) #9
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.ai = and i32 %i.w, 8
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond11 = select i1 %i.aj, i1 %i.z, i1 false
  %.not72 = icmp sge i64 %.pre78, %i.x
  %or.cond77.not = select i1 %or.cond11, i1 %.not72, i1 false
  br i1 %or.cond77.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !120
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ak) #9
  br label %bb.ac

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %i.al = phi i64 [ %.pre79, %._crit_edge ], [ %.pre78, %bb.r ]
  %i.am = call i32 @checkAlreadyExpired(i64 noundef %i.al)
  %.not73 = icmp eq i32 %i.am, 0
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  br i1 %.not73, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8364), align 4, !tbaa !122
  %i.ap = call i32 @dbGenericDelete(ptr noundef %i.an, ptr noundef %i.f, i32 noundef %i.ao, i32 noundef 2) #9
  %.not75 = icmp eq i32 %i.ap, 0
  br i1 %.not75, label %bb.v, label %bb.w, !prof !123

bb.v:                                             ; preds = %bb.u
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 811) #9
  call void @abort() #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8364), align 4, !tbaa !122
  %.not76 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 408), align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 400), align 8
  %i.av = select i1 %.not76, ptr %i.au, ptr %i.at
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.av, ptr noundef %i.f) #9
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !119
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.aw, ptr noundef %i.f, ptr noundef null, i32 noundef 1) #9
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !94
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.f, i32 noundef %i.az) #9
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8, !tbaa !125
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ba) #9
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !76
  %i.bc = call ptr @setExpire(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.f, i64 noundef %i.bb) #9
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8, !tbaa !125
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bd) #9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126
end_hunk_1
