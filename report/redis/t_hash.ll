inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@hsetexCommand:bb.a
  %.not126 = icmp eq i32 %i.gj, 0
  br i1 %.not126, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gk = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.gl = add nsw i32 %i.gk, -1
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 648), align 8, !tbaa !158
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef %i.gl, ptr noundef %i.gm) #13
  %i.gn = load i64, ptr %i.e, align 8, !tbaa !27
  %i.go = call ptr @createStringObjectFromLongLong(i64 noundef %i.gn) #13 ; 2 uses
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef %i.gk, ptr noundef %i.go) #13
  call void @decrRefCount(ptr noundef %i.go) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %._crit_edge, %.loopexit.thread, %.loopexit
  %.sink = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ 1, %._crit_edge ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.o ]
  %.1108 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ %i.ef, %._crit_edge ], [ %i.en, %bb.p ], [ %i.en, %bb.q ], [ %i.en, %bb.o ] ; 2 uses
  %.3 = phi i32 [ %.1105241, %.loopexit.thread ], [ %.1105, %.loopexit ], [ %.2106, %._crit_edge ], [ %.2106, %bb.p ], [ %.2106, %bb.q ], [ %.2106, %bb.o ]
  %.2102 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ false, %bb.p ], [ false, %bb.q ], [ true, %bb.o ] ; 2 uses
  %.2 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ %.0.lcssa253, %bb.p ], [ %.0.lcssa253, %bb.q ], [ %.0.lcssa253, %bb.o ]
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.sink) #13
  %i.gp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not127 = icmp eq i32 %i.gp, 0
  br i1 %.not127, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15
  %i.gw = call i32 @getKeySlot(ptr noundef %i.gv) #13
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !72  ; 2 uses
  %i.gy = call i64 @kvobjAllocSize(ptr noundef %i.gx) #13
  call void @updateSlotAllocSize(ptr noundef %i.gq, i32 noundef %i.gw, ptr noundef %i.gx, i64 noundef %.0111, i64 noundef %i.gy) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gz = icmp ne i32 %.3, 0                      ; 2 uses
  %or.cond9 = select i1 %.1108, i1 true, i1 %i.gz
  br i1 %or.cond9, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ha = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.hb = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !72
  %i.he = load ptr, ptr %i.g, align 8, !tbaa !72
  call void @keyModified(ptr noundef %0, ptr noundef %i.ha, ptr noundef %i.hd, ptr noundef %i.he, i32 noundef 1) #13
  br i1 %i.gz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hf = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !72
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %i.hh, i32 noundef %i.hk) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.1108, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.hl = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !72
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef %i.hn, i32 noundef %i.hq) #13
  %or.cond11 = select i1 %.2102, i1 true, i1 %.2
  br i1 %or.cond11, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hr = select i1 %.2102, ptr @.str.34, ptr @.str.35
  %i.hs = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !72
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull %i.hr, ptr noundef %i.hu, i32 noundef %i.hx) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y, %bb.t
  %i.hy = load ptr, ptr %i.g, align 8, !tbaa !72  ; 4 uses
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = lshr i32 %i.ia, 4
  %i.ic = and i32 %i.ib, 15
  switch i32 %i.ic, label %bb.ad [
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !15
  %i.if = call i64 @lpLength(ptr noundef %i.ie) #13
  %i.ig = lshr i64 %i.if, 1
  br label %hashTypeLength.exit133

bb.ab:                                            ; preds = %bb.z
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !15
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !18
  %i.il = call i64 @lpLength(ptr noundef %i.ik) #13
  %i.im = udiv i64 %i.il, 3
  br label %hashTypeLength.exit133

bb.ac:                                            ; preds = %bb.z
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !15 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !13
  %i.it = add i64 %i.is, %i.iq
  br label %hashTypeLength.exit133

bb.ad:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  call void @abort() #14
  unreachable

hashTypeLength.exit133:                           ; preds = %bb.aa, %bb.ac, %bb.ab
  %.1.i132 = phi i64 [ %i.ig, %bb.aa ], [ %i.it, %bb.ac ], [ %i.im, %bb.ab ] ; 2 uses
  %i.iu = icmp eq i64 %.1.i132, 0
  br i1 %i.iu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %hashTypeLength.exit133
  %i.iv = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !72
  %i.iz = call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.iv, ptr noundef %i.iy) #13 ; 0 uses
  %i.ja = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !72
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef %i.jc, i32 noundef %i.jf) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %hashTypeLength.exit133
  %.0110 = phi i64 [ -1, %bb.ae ], [ %.1.i132, %hashTypeLength.exit133 ] ; 2 uses
  %.not128 = icmp eq i64 %.1.i, %.0110
  br i1 %.not128, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jg = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.jh = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !72
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.jm = call i32 @getKeySlot(ptr noundef %i.jl) #13
  call void @updateKeysizesHist(ptr noundef %i.jg, i32 noundef %i.jm, i32 noundef 4, i64 noundef %.1.i, i64 noundef %.0110) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parseHashFieldExpireArgs(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  store i32 0, ptr %1, align 4, !tbaa !9
  store i32 -1, ptr %4, align 4, !tbaa !9
  store i32 -1, ptr %5, align 4, !tbaa !9
  store i32 -1, ptr %3, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = add nuw nsw i32 %6, 1
  %i.j = zext nneg i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bh
  %i.k = phi i32 [ %i.g, %.lr.ph ], [ %i.dk, %bb.bh ] ; 5 uses
  %.0111203 = phi i32 [ 2, %.lr.ph ], [ %i.dj, %bb.bh ] ; 15 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !148  ; 6 uses
  %i.m = sext i32 %.0111203 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 10 uses
  %i.r = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.61) #16
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.s = add nsw i32 %.0111203, 1                 ; 2 uses
  %.not121 = icmp slt i32 %i.s, %i.k
  br i1 %.not121, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @addReplyErrorArity(ptr noundef nonnull %0) #13
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.w = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.v, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.62) #13
  %.not122 = icmp eq i32 %i.w, 0
  br i1 %.not122, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %.0111203, 2
  store i32 %i.x, ptr %4, align 4, !tbaa !9
  %i.y = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  store i32 %i.z, ptr %5, align 4, !tbaa !9
  %i.aa = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %sext = shl i64 %i.y, 32
  %i.ac = ashr exact i64 %sext, 32
  %i.ad = shl nsw i64 %i.ac, %i.j
  %i.ae = add nsw i64 %i.ad, %i.ab
  %i.af = load i32, ptr %i.f, align 8, !tbaa !153
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp sgt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.63) #13
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.thread173

bb.h:                                             ; preds = %bb.f
  %8 = mul nsw i32 %7, %i.z
  %i.ai = add i32 %8, -1
  %i.aj = add i32 %i.ai, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bh

bb.i:                                             ; preds = %bb.b
  %i.ak = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.64) #16
  %.not123 = icmp eq i32 %i.ak, 0
  br i1 %.not123, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.am = and i32 %i.al, 63
  %.not124 = icmp eq i32 %i.am, 0
  br i1 %.not124, label %bb.k, label %bb.bn

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.k, -1
  %.not125 = icmp slt i32 %.0111203, %i.an
  br i1 %.not125, label %bb.l, label %bb.bl

bb.l:                                             ; preds = %bb.k
  %i.ao = or disjoint i32 %i.al, 1
  store i32 %i.ao, ptr %1, align 4, !tbaa !9
  %i.ap = add nsw i32 %.0111203, 1                ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.at = call i64 @commandTimeSnapshot() #13     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.au = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.as, ptr noundef nonnull %i.d, ptr noundef null) #13
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.m, label %parseExpireTime.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr %i.d, align 8, !tbaa !27  ; 3 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.78) #13
  br label %parseExpireTime.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp samesign ugt i64 %i.av, 70368744177
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @addReplyErrorExpireTime(ptr noundef nonnull %0) #13
  br label %parseExpireTime.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.ay = mul nuw nsw i64 %i.av, 1000             ; 3 uses
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !27
  %i.az = sub nsw i64 70368744177663, %i.at
  %i.ba = icmp sgt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @addReplyErrorExpireTime(ptr noundef nonnull %0) #13
  br label %parseExpireTime.exit.thread

parseExpireTime.exit.thread:                      ; preds = %bb.l, %bb.n, %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.thread173

bb.s:                                             ; preds = %bb.q
  %i.bb = add nsw i64 %i.ay, %i.at
  store i64 %i.bb, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  store i32 %i.ap, ptr %3, align 4, !tbaa !9
  br label %bb.bh

bb.t:                                             ; preds = %bb.i
  %i.bc = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.65) #16
  %.not127 = icmp eq i32 %i.bc, 0
  br i1 %.not127, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bd = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.be = and i32 %i.bd, 63
  %.not128 = icmp eq i32 %i.be, 0
  br i1 %.not128, label %bb.v, label %bb.bn

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i32 %i.k, -1
  %.not129 = icmp slt i32 %.0111203, %i.bf
  br i1 %.not129, label %bb.w, label %bb.bl

bb.w:                                             ; preds = %bb.v
  %i.bg = or disjoint i32 %i.bd, 2
  store i32 %i.bg, ptr %1, align 4, !tbaa !9
  %i.bh = add nsw i32 %.0111203, 1                ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.bl = call i64 @commandTimeSnapshot() #13     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bm = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.bk, ptr noundef nonnull %i.c, ptr noundef null) #13
  %.not.i152 = icmp eq i32 %i.bm, 0
  br i1 %.not.i152, label %bb.x, label %parseExpireTime.exit154.thread

bb.x:                                             ; preds = %bb.w
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.78) #13
  br label %parseExpireTime.exit154.thread

bb.z:                                             ; preds = %bb.x
  %i.bp = sub nsw i64 70368744177663, %i.bl
  %i.bq = icmp sgt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @addReplyErrorExpireTime(ptr noundef %0) #13
  br label %parseExpireTime.exit154.thread

parseExpireTime.exit154.thread:                   ; preds = %bb.w, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread173

bb.ab:                                            ; preds = %bb.z
  %i.br = add nsw i64 %i.bn, %i.bl
  store i64 %i.br, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  store i32 %i.bh, ptr %3, align 4, !tbaa !9
  br label %bb.bh

bb.ac:                                            ; preds = %bb.t
  %i.bs = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.66) #16
  %.not131 = icmp eq i32 %i.bs, 0
  br i1 %.not131, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.bt = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.bu = and i32 %i.bt, 63
  %.not132 = icmp eq i32 %i.bu, 0
  br i1 %.not132, label %bb.ae, label %bb.bn

bb.ae:                                            ; preds = %bb.ad
  %i.bv = add nsw i32 %i.k, -1
  %.not133 = icmp slt i32 %.0111203, %i.bv
  br i1 %.not133, label %bb.af, label %bb.bl

bb.af:                                            ; preds = %bb.ae
  %i.bw = or disjoint i32 %i.bt, 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !9
  %i.bx = add nsw i32 %.0111203, 1                ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cb = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.ca, ptr noundef nonnull %i.b, ptr noundef null) #13
  %.not.i155 = icmp eq i32 %i.cb, 0
  br i1 %.not.i155, label %bb.ag, label %parseExpireTime.exit157.thread

bb.ag:                                            ; preds = %bb.af
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.78) #13
  br label %parseExpireTime.exit157.thread

bb.ai:                                            ; preds = %bb.ag
  %i.ce = icmp samesign ugt i64 %i.cc, 70368744177
  br i1 %i.ce, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @addReplyErrorExpireTime(ptr noundef %0) #13
  br label %parseExpireTime.exit157.thread

bb.ak:                                            ; preds = %bb.ai
  %i.cf = mul nuw nsw i64 %i.cc, 1000
  store i64 %i.cf, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 %i.bx, ptr %3, align 4, !tbaa !9
  br label %bb.bh

parseExpireTime.exit157.thread:                   ; preds = %bb.af, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread173

bb.al:                                            ; preds = %bb.ac
  %i.cg = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.67) #16
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.ch = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.ci = and i32 %i.ch, 63
  %.not136 = icmp eq i32 %i.ci, 0
  br i1 %.not136, label %bb.an, label %bb.bn

bb.an:                                            ; preds = %bb.am
  %i.cj = add nsw i32 %i.k, -1
  %.not137 = icmp slt i32 %.0111203, %i.cj
end_hunk_0
