Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/evict?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@performEvictions:bb.a
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
  %.not161 = icmp eq i64 %i.an, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 564) #12
  call void @abort() #14
  unreachable

bb.s:                                             ; preds = %.lr.ph251, %bb.ar
  %.0131250 = phi i32 [ 0, %.lr.ph251 ], [ %i.dy, %bb.ar ]
  %.0139249 = phi i64 [ 0, %.lr.ph251 ], [ %i.dx, %bb.ar ]
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
  %.not171 = icmp eq i32 %i.ay, 0
  %.0107.in.idx = select i1 %.not171, i64 8, i64 0
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
  %.not288.a = icmp eq i64 %indvars.iv267, 0
  br i1 %.not288.a, label %.loopexit227, label %.preheader, !llvm.loop !110

.loopexit227:                                     ; preds = %.thread, %bb.z
  %.5124 = phi ptr [ %i.ck, %bb.z ], [ null, %.thread ] ; 2 uses
  %.4118 = phi i32 [ %i.bx, %bb.z ], [ %.2116, %.thread ] ; 2 uses
  %i.cl = icmp eq ptr %.5124, null
  br i1 %i.cl, label %.preheader228, label %.thread202

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
  %i.co = phi i32 [ %i.da, %bb.ad ], [ %i.cm, %bb.ab ]
  %.1129239 = phi i32 [ %i.cz, %bb.ad ], [ 0, %bb.ab ]
  %i.cp = load i32, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cr = urem i32 %i.cq, %i.co                   ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %0 = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %i.cs, i64 %0
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.cv = icmp eq i32 %i.cu, 1540
  %.0101.in.idx = select i1 %i.cv, i64 0, i64 8
  %.0101.in = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0101.in.idx
  %.0101 = load ptr, ptr %.0101.in, align 8, !tbaa !107 ; 2 uses
  %i.cw = call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %.0101, ptr noundef nonnull @randomEvictionShouldSkipDictIndex, i32 noundef 16, i32 noundef 0) #12 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, -1
  br i1 %i.cx, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.cy = call ptr @kvstoreDictGetRandomKey(ptr noundef %.0101, i32 noundef %i.cw) #12 ; 2 uses
  %.not154 = icmp eq ptr %i.cy, null
  br i1 %.not154, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.cz = add nuw nsw i32 %.1129239, 1            ; 2 uses
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.thread216, !llvm.loop !111

bb.ae:                                            ; preds = %bb.ac
  %i.dc = call ptr @dictGetKey(ptr noundef nonnull %i.cy) #12
  %i.dd = call ptr @kvobjGetKey(ptr noundef %i.dc) #12 ; 2 uses
  %.not160 = icmp eq ptr %i.dd, null
  br i1 %.not160, label %.thread216, label %.thread202

.thread202:                                       ; preds = %.loopexit227, %bb.ae
  %.8207 = phi i32 [ %i.cr, %bb.ae ], [ %.4118, %.loopexit227 ]
  %.9206 = phi ptr [ %i.dd, %bb.ae ], [ %.5124, %.loopexit227 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %1 = sext i32 %.8207 to i64
  %i.df = getelementptr inbounds [96 x i8], ptr %i.de, i64 %1
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #12
  %i.dg = getelementptr i8, ptr %.9206, i64 -1
  %.val.i = load i8, ptr %i.dg, align 1, !tbaa !60 ; 2 uses
  %i.dh = and i8 %.val.i, 7
  switch i8 %i.dh, label %sdslen.exit [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %.thread202
  %i.di = lshr i8 %.val.i, 3
  %i.dj = zext nneg i8 %i.di to i64
  br label %sdslen.exit

bb.ag:                                            ; preds = %.thread202
  %i.dk = getelementptr inbounds i8, ptr %.9206, i64 -3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !60
  %i.dm = zext i8 %i.dl to i64
  br label %sdslen.exit

bb.ah:                                            ; preds = %.thread202
  %i.dn = getelementptr inbounds i8, ptr %.9206, i64 -5
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !61
  %i.dp = zext i16 %i.do to i64
  br label %sdslen.exit

bb.ai:                                            ; preds = %.thread202
  %i.dq = getelementptr inbounds i8, ptr %.9206, i64 -9
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !9
  %i.ds = zext i32 %i.dr to i64
  br label %sdslen.exit

bb.aj:                                            ; preds = %.thread202
  %i.dt = getelementptr inbounds i8, ptr %.9206, i64 -17
  %i.du = load i64, ptr %i.dt, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.thread202, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i181 = phi i64 [ %i.du, %bb.aj ], [ %i.dj, %bb.af ], [ %i.dm, %bb.ag ], [ %i.dp, %bb.ah ], [ %i.ds, %bb.ai ], [ 0, %.thread202 ]
  %i.dv = call ptr @createStringObject(ptr noundef nonnull %.9206, i64 noundef %.0.i181) #12 ; 2 uses
  call void @deleteEvictedKeyAndPropagate(ptr noundef %i.df, ptr noundef %i.dv, ptr noundef nonnull %i.c) #12
  call void @decrRefCount(ptr noundef %i.dv) #12
  call void @exitExecutionUnit() #12
  call void @postExecutionUnitOperations() #12
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !112
  %i.dx = add nsw i64 %i.dw, %.0139249            ; 2 uses
  %i.dy = add nuw nsw i32 %.0131250, 1            ; 2 uses
  %i.dz = and i32 %i.dy, 15
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %sdslen.exit
  br i1 %.not161, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @flushSlavesOutputBuffers() #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8360), align 8, !tbaa !113
  %.not162 = icmp eq i32 %i.eb, 0
  br i1 %.not162, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.thread214, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ee = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.ef = call i64 %i.ee() #12, !inline_history !114
  %i.eg = sub i64 %i.ef, %i.ai
  %i.eh = icmp ugt i64 %i.eg, %.0.i180
  br i1 %i.eh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.b.i = load i1, ptr @isEvictionProcRunning, align 4
  br i1 %.b.i, label %.thread214, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.ej = call i64 @aeCreateTimeEvent(ptr noundef %i.ei, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #12, !inline_history !115 ; 0 uses
  br label %.thread214

.thread214:                                       ; preds = %bb.an, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit231

bb.ar:                                            ; preds = %bb.ao, %sdslen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !63
  %i.el = icmp slt i64 %i.dx, %i.ek
  br i1 %i.el, label %bb.s, label %.loopexit231

.loopexit231:                                     ; preds = %bb.ar, %.preheader230, %.thread214
  %.b = load i1, ptr @isEvictionProcRunning, align 4
  %i.em = zext i1 %.b to i32
  br label %thread-pre-split

.thread216:                                       ; preds = %bb.ae, %bb.aa, %bb.ab, %bb.ad, %.preheader228, %._crit_edge
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not163 = icmp eq i64 %i.en, 0
  br i1 %.not163, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread216
  %i.eo = call i64 @mstime() #12
  br label %bb.at

bb.at:                                            ; preds = %.thread216, %bb.as
  %.0 = phi i64 [ %i.eo, %bb.as ], [ 0, %.thread216 ]
  %i.ep = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not164252 = icmp eq i64 %i.ep, 0
  br i1 %.not164252, label %.critedge, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.at
  %i.eq = call i64 @llvm.umin.i64(i64 %.0.i180, i64 1000)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph254, %bb.aw
  %i.es = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.et = call i64 %i.es() #12, !inline_history !114
  %i.eu = sub i64 %i.et, %i.ai
  %i.ev = icmp ult i64 %i.eu, %.0.i180
  br i1 %i.ev, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.ew = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = call i32 @usleep(i32 noundef %i.er) #12 ; 0 uses
  %i.ez = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not164 = icmp eq i64 %i.ez, 0
  br i1 %.not164, label %.critedge, label %bb.au, !llvm.loop !116

.critedge:                                        ; preds = %bb.au, %bb.aw, %bb.av, %bb.at
  %.1134 = phi i32 [ 2, %bb.at ], [ 0, %bb.av ], [ 2, %bb.aw ], [ 2, %bb.au ] ; 3 uses
  %i.fa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not165 = icmp eq i64 %i.fa, 0
  br i1 %.not165, label %.thread300, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.fb = call i64 @mstime() #12
  %i.fc = sub nsw i64 %i.fb, %.0                  ; 2 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 3 uses
  %.not166 = icmp eq i64 %.pre, 0
  %.not167 = icmp slt i64 %i.fc, %.pre
  %or.cond176 = select i1 %.not166, i1 true, i1 %.not167
  br i1 %or.cond176, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @latencyAddSample(ptr noundef nonnull @.str.3, i64 noundef %i.fc) #12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit231, %bb.ay
  %.2135.ph = phi i32 [ %.1134, %bb.ay ], [ %i.em, %.loopexit231 ]
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %bb.ax
  %i.fd = phi i64 [ %.pr, %thread-pre-split ], [ %.pre, %bb.ax ]
  %.2135 = phi i32 [ %.2135.ph, %thread-pre-split ], [ %.1134, %bb.ax ] ; 3 uses
  %.not168 = icmp eq i64 %i.fd, 0
  br i1 %.not168, label %.thread300, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fe = call i64 @mstime() #12
  %i.ff = sub nsw i64 %i.fe, %.0137               ; 2 uses
  %.pre270 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 2 uses
  %.not169 = icmp eq i64 %.pre270, 0
  %.not170 = icmp slt i64 %i.ff, %.pre270
  %or.cond177 = select i1 %.not169, i1 true, i1 %.not170
  br i1 %or.cond177, label %.thread300, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @latencyAddSample(ptr noundef nonnull @.str.4, i64 noundef %i.ff) #12
  br label %.thread300

.thread300:                                       ; preds = %.critedge, %bb.az, %bb.ba, %bb.bb
  %.2135299306 = phi i32 [ %.2135, %bb.bb ], [ %.2135, %bb.ba ], [ %.2135, %bb.az ], [ %.1134, %.critedge ] ; 2 uses
  %.not289 = icmp eq i32 %.2135299306, 0
  br i1 %.not289, label %.thread223, label %.thread218

.thread218:                                       ; preds = %bb.g, %.thread300
  %.3136222 = phi i32 [ %.2135299306, %.thread300 ], [ 2, %bb.g ] ; 2 uses
  %i.fg = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8, !tbaa !117
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.thread218
  %i.fi = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.fj = call i64 %i.fi() #12, !inline_history !103
  br label %.sink.split

end_hunk_0
