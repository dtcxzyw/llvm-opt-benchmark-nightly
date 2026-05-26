inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@exprTokenize:bb.a
  %i.ax = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ay = tail call ptr %i.ax(i64 noundef 40) #22, !inline_history !51 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 2, ptr %i.ba, align 4, !tbaa !15
  store i32 1, ptr %i.ay, align 8, !tbaa !17
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %.backedge.i, %bb.m
  %i.bd = phi ptr [ %i.bh, %.backedge.i ], [ %i.bb, %bb.m ] ; 4 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18  ; 2 uses
  switch i8 %i.be, label %bb.p [
    i8 0, label %bb.r
    i8 92, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %.not18.i = icmp eq i8 %i.bg, 0
  br i1 %.not18.i, label %bb.p, label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %bb.o
  %.sink.i = phi i64 [ 1, %bb.p ], [ 2, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink.i ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !31
  br label %bb.n, !llvm.loop !50

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = icmp eq i8 %i.be, %i.p
  br i1 %i.bi, label %bb.q, label %.backedge.i

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.bk = ptrtoint ptr %i.bd to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !18
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !31
  br label %exprParseString.exit.thread

bb.r:                                             ; preds = %bb.n
  tail call void @exprTokenRelease(ptr noundef nonnull %i.ay)
  br label %exprParseString.exit.thread56

bb.s:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18  ; 2 uses
  %i.bs = sext i8 %i.br to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !36
  %i.bv = and i16 %i.bu, 3072
  %or.cond.i = icmp eq i16 %i.bv, 0
  br i1 %or.cond.i, label %bb.t, label %memchr.success.i

bb.t:                                             ; preds = %bb.s
  switch i8 %i.br, label %is_selector_char.exit.thread52 [
    i8 95, label %memchr.success.i
    i8 45, label %memchr.success.i
    i8 0, label %memchr.success.i
  ]

memchr.success.i:                                 ; preds = %bb.t, %bb.t, %bb.t, %bb.s
  %i.bw = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.bx = tail call ptr %i.bw(i64 noundef 40) #22, !inline_history !54 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 4, ptr %i.bz, align 4, !tbaa !15
  store i32 1, ptr %i.bx, align 8, !tbaa !17
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 6 uses
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !31
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18  ; 2 uses
  %.not13.i = icmp eq i8 %i.cc, 0
  br i1 %.not13.i, label %exprParseSelector.exit, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %memchr.success.i
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %memchr.success.i.i, %.lr.ph.i47
  %i.ce = phi i8 [ %i.cc, %.lr.ph.i47 ], [ %i.ck, %memchr.success.i.i ] ; 2 uses
  %storemerge14.i = phi ptr [ %i.cb, %.lr.ph.i47 ], [ %i.cj, %memchr.success.i.i ] ; 2 uses
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !36
  %i.ci = and i16 %i.ch, 3072
  %or.cond.i.i = icmp eq i16 %i.ci, 0
  br i1 %or.cond.i.i, label %bb.v, label %memchr.success.i.i

bb.v:                                             ; preds = %bb.u
  switch i8 %i.ce, label %exprParseSelector.exit [
    i8 95, label %memchr.success.i.i
    i8 45, label %memchr.success.i.i
  ]

memchr.success.i.i:                               ; preds = %bb.v, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge14.i, i64 1 ; 4 uses
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !31
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18  ; 2 uses
  %.not.i48 = icmp eq i8 %i.ck, 0
  br i1 %.not.i48, label %exprParseSelector.exit, label %bb.u, !llvm.loop !46

exprParseSelector.exit:                           ; preds = %bb.v, %memchr.success.i.i, %memchr.success.i
  %storemerge.lcssa.i = phi ptr [ %i.cb, %memchr.success.i ], [ %i.cj, %memchr.success.i.i ], [ %storemerge14.i, %bb.v ]
  %i.cl = ptrtoint ptr %storemerge.lcssa.i to i64
  %i.cm = ptrtoint ptr %i.cb to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cb, ptr %i.co, align 8, !tbaa !18
  %sext.i = shl i64 %i.cn, 32
  %i.cp = ashr exact i64 %sext.i, 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !18
  br label %exprParseString.exit.thread

is_selector_char.exit.thread52:                   ; preds = %bb.t, %bb.j
  %i.cr = zext nneg i8 %i.p to i32
  br label %bb.x

is_selector_char.exit:                            ; preds = %bb.l
  %i.cs = sext i8 %i.p to i32
  %i.ct = icmp eq i8 %i.p, 91
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %is_selector_char.exit
  %i.cu = tail call ptr @exprParseTuple(ptr noundef nonnull %0)
  br label %exprParseString.exit

bb.x:                                             ; preds = %is_selector_char.exit.thread52, %is_selector_char.exit
  %i.cv = phi i32 [ %i.cr, %is_selector_char.exit.thread52 ], [ %i.cs, %is_selector_char.exit ]
  %i.cw = and i16 %i.am, 1024
  %.not43 = icmp eq i16 %i.cw, 0
  br i1 %.not43, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.23, i32 %i.cv, i64 14)
  %.not44 = icmp eq ptr %memchr, null
  br i1 %.not44, label %exprParseString.exit.thread56, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cx = tail call ptr @exprParseOperatorOrLiteral(ptr noundef nonnull %0)
  br label %exprParseString.exit

exprParseString.exit:                             ; preds = %bb.k, %bb.z, %bb.w
  %.031 = phi ptr [ %i.cx, %bb.z ], [ %i.av, %bb.k ], [ %i.cu, %bb.w ] ; 2 uses
  %i.cy = icmp eq ptr %.031, null
  br i1 %i.cy, label %exprParseString.exit.thread56, label %exprParseString.exit.thread

exprParseString.exit.thread56:                    ; preds = %bb.y, %exprParseString.exit, %bb.r
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %.thread58, label %bb.aa

bb.aa:                                            ; preds = %exprParseString.exit.thread56
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.da = load ptr, ptr %0, align 8, !tbaa !52
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %1, align 4, !tbaa !9
  br label %.thread58

exprParseString.exit.thread:                      ; preds = %bb.q, %exprParseSelector.exit, %bb.g, %exprParseString.exit
  %.03154 = phi ptr [ %.031, %exprParseString.exit ], [ %i.ay, %bb.q ], [ %i.bx, %exprParseSelector.exit ], [ %i.ag, %bb.g ] ; 2 uses
  %i.df = load i32, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !28
  %i.dh = icmp eq i32 %i.df, %i.dg
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  br i1 %i.dh, label %bb.ab, label %exprStackPush.exit

bb.ab:                                            ; preds = %exprParseString.exit.thread
  %i.di = shl nsw i32 %i.df, 1                    ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.dl = shl nsw i64 %i.dj, 3
  %i.dm = tail call ptr %i.dk(ptr noundef %.pre.i, i64 noundef %i.dl) #22, !inline_history !55 ; 2 uses
  store ptr %i.dm, ptr %i.b, align 8, !tbaa !23
  store i32 %i.di, ptr %i.d, align 4, !tbaa !28
  %.pre12.i = load i32, ptr %i.c, align 8, !tbaa !27
  br label %exprStackPush.exit

exprStackPush.exit:                               ; preds = %exprParseString.exit.thread, %bb.ab
  %i.dn = phi i32 [ %.pre12.i, %bb.ab ], [ %i.df, %exprParseString.exit.thread ] ; 2 uses
  %i.do = phi ptr [ %i.dm, %bb.ab ], [ %.pre.i, %exprParseString.exit.thread ]
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp
  store ptr %.03154, ptr %i.dq, align 8, !tbaa !19
  %i.dr = add nsw i32 %i.dn, 1
  store i32 %i.dr, ptr %i.c, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %.03154, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !15
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.thread58, label %bb.b

.thread58:                                        ; preds = %exprStackPush.exit, %bb.aa, %exprParseString.exit.thread56
  %.2 = phi i32 [ 1, %bb.aa ], [ 1, %exprParseString.exit.thread56 ], [ 0, %exprStackPush.exit ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @exprGetOpPrecedence(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @ExprOptable, align 16, !tbaa !41
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv.next
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !56

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @exprGetOpArity(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @ExprOptable, align 16, !tbaa !41
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv.next
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !58

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @exprProcessOperator(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  switch i32 %i.b, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %exprStackPop.exit.thread, label %exprStackPop.exit.lr.ph

exprStackPop.exit.lr.ph:                          ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  br label %exprStackPop.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i32 %i.l, %i.n
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  br i1 %i.o, label %bb.c, label %exprStackPush.exit

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.l, 1                      ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.s = shl nsw i64 %i.q, 3
  %i.t = tail call ptr %i.r(ptr noundef %.pre.i, i64 noundef %i.s) #22, !inline_history !55 ; 2 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !23
  store i32 %i.p, ptr %i.m, align 4, !tbaa !28
  %.pre12.i = load i32, ptr %i.k, align 8, !tbaa !27
  br label %exprStackPush.exit

exprStackPush.exit:                               ; preds = %bb.b, %bb.c
  %i.u = phi i32 [ %.pre12.i, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.c ], [ %.pre.i, %bb.b ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  store ptr %1, ptr %i.x, align 8, !tbaa !19
  %i.y = add nsw i32 %i.u, 1
  store i32 %i.y, ptr %i.k, align 8, !tbaa !27
  %i.z = load i32, ptr %1, align 8, !tbaa !17
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %1, align 8, !tbaa !17
  br label %.thread

exprStackPop.exit:                                ; preds = %exprStackPop.exit.lr.ph, %bb.n
  %i.ab = phi i32 [ %i.d, %exprStackPop.exit.lr.ph ], [ %i.bq, %bb.n ]
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %exprStackPop.exit.thread, label %bb.e

exprStackPop.exit.thread:                         ; preds = %exprStackPop.exit, %bb.n, %.preheader
  %.not71 = icmp eq ptr %3, null
  br i1 %.not71, label %.thread, label %bb.d

bb.d:                                             ; preds = %exprStackPop.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !60
  store i32 %i.aj, ptr %3, align 4, !tbaa !9
  br label %.thread

bb.e:                                             ; preds = %exprStackPop.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @exprTokenRelease(ptr noundef nonnull %i.ag)
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr @ExprOptable, align 16, !tbaa !41
  %.not12.i = icmp eq ptr %i.an, null
  br i1 %.not12.i, label %exprGetOpArity.exit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv.next.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %exprGetOpArity.exit, label %.lr.ph.i, !llvm.loop !58

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44
  %i.at = icmp eq i32 %i.as, %i.al
  br i1 %i.at, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  br label %exprGetOpArity.exit

exprGetOpArity.exit:                              ; preds = %bb.h, %bb.g, %bb.i
  %i.aw = phi i32 [ %i.av, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ] ; 2 uses
  %i.ax = load i32, ptr %2, align 4, !tbaa !9
  %i.ay = icmp slt i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %exprGetOpArity.exit
  tail call void @exprTokenRelease(ptr noundef nonnull %i.ag)
  %.not70 = icmp eq ptr %3, null
  br i1 %.not70, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !60
  store i32 %i.ba, ptr %3, align 4, !tbaa !9
  br label %.thread
end_hunk_0
begin_hunk_1_@exprTokensStringIn:bb.a
  %i.r = add i64 %.01316, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.r, %i.o
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !66

bb.f:                                             ; preds = %.preheader, %bb.e
  %.01316 = phi i64 [ 0, %.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01316
  %bcmp = tail call i32 @bcmp(ptr %i.s, ptr %i.q, i64 %i.i)
  %i.t = icmp eq i32 %bcmp, 0
  br i1 %i.t, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jsonExtractField(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = ptrtoint ptr %i.b to i64                 ; 7 uses
  %.not11 = icmp eq i64 %1, 0
  br i1 %.not11, label %jsonSkipWhiteSpaces.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = tail call ptr @__ctype_b_loc() #24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.275.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.275.i, align 1, !tbaa !18
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !36
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %jsonSkipWhiteSpaces.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.275.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.k, %i.b
  br i1 %exitcond.not.i.i, label %jsonSeekField.exit.thread, label %bb.b, !llvm.loop !67

jsonSkipWhiteSpaces.exit.i:                       ; preds = %bb.b, %bb.a
  %.376.i = phi ptr [ %0, %bb.a ], [ %.275.i, %bb.b ] ; 3 uses
  %.not.i = icmp ult ptr %.376.i, %i.b
  br i1 %.not.i, label %bb.d, label %jsonSeekField.exit.thread

bb.d:                                             ; preds = %jsonSkipWhiteSpaces.exit.i
  %i.l = load i8, ptr %.376.i, align 1, !tbaa !18
  %.not31.i = icmp eq i8 %i.l, 123
  br i1 %.not31.i, label %.preheader.i, label %jsonSeekField.exit.thread

.preheader.i:                                     ; preds = %bb.d, %bb.ap
  %.376.pn.i = phi ptr [ %.16.i, %bb.ap ], [ %.376.i, %bb.d ] ; 3 uses
  %.074.i = getelementptr inbounds nuw i8, ptr %.376.pn.i, i64 1 ; 3 uses
  %i.m = icmp ult ptr %.074.i, %i.b
  br i1 %i.m, label %.lr.ph.i42.i, label %jsonSkipWhiteSpaces.exit45.i

.lr.ph.i42.i:                                     ; preds = %.preheader.i
  %.376.pn168.i = ptrtoint ptr %.376.pn.i to i64
  %i.n = tail call ptr @__ctype_b_loc() #24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %scevgep167.i = getelementptr i8, ptr %.376.pn.i, i64 %i.c
  %i.p = sub i64 0, %.376.pn168.i
  %scevgep169.i = getelementptr i8, ptr %scevgep167.i, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i42.i
  %.4.i = phi ptr [ %.074.i, %.lr.ph.i42.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.q = load i8, ptr %.4.i, align 1, !tbaa !18
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !36
  %i.u = and i16 %i.t, 8192
  %.not.i43.i = icmp eq i16 %i.u, 0
  br i1 %.not.i43.i, label %jsonSkipWhiteSpaces.exit45.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq ptr %i.v, %i.b
  br i1 %exitcond.not.i44.i, label %jsonSkipWhiteSpaces.exit45.i, label %bb.e, !llvm.loop !67

jsonSkipWhiteSpaces.exit45.i:                     ; preds = %bb.f, %bb.e, %.preheader.i
  %.5.i = phi ptr [ %.074.i, %.preheader.i ], [ %.4.i, %bb.e ], [ %scevgep169.i, %bb.f ] ; 3 uses
  %.not32.i = icmp ult ptr %.5.i, %i.b
  br i1 %.not32.i, label %bb.g, label %jsonSeekField.exit.thread

bb.g:                                             ; preds = %jsonSkipWhiteSpaces.exit45.i
  %i.w = load i8, ptr %.5.i, align 1, !tbaa !18
  %cond.i = icmp eq i8 %i.w, 34
  br i1 %cond.i, label %bb.h, label %jsonSeekField.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 4 uses
  %i.y = icmp ult ptr %i.x, %i.b
  br i1 %i.y, label %.lr.ph.i47.i, label %jsonSeekField.exit.thread

.lr.ph.i47.i:                                     ; preds = %bb.h, %.backedge.i.i
  %i.z = phi ptr [ %i.ab, %.backedge.i.i ], [ %i.x, %bb.h ] ; 5 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  switch i8 %i.aa, label %.backedge.i.i [
    i8 92, label %bb.i
    i8 34, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i47.i
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.i, %.lr.ph.i47.i
  %.sink.i.i = phi i64 [ 2, %bb.i ], [ 1, %.lr.ph.i47.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.i.i ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.b
  br i1 %i.ac, label %.lr.ph.i47.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.j:                                             ; preds = %.lr.ph.i47.i
  %.lcssa170173.i = ptrtoint ptr %i.z to i64      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = sub i64 %.lcssa170173.i, %i.ae
  %i.ag = icmp eq i64 %i.af, %3
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.x, ptr readonly %2, i64 %3)
  %.not35.i = icmp eq i32 %bcmp.i, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i1 [ false, %bb.j ], [ %.not35.i, %bb.k ]
  %i.ai = icmp ult ptr %i.ad, %i.b
  br i1 %i.ai, label %.lr.ph.i49.i, label %jsonSkipWhiteSpaces.exit52.i

.lr.ph.i49.i:                                     ; preds = %bb.l
  %i.aj = tail call ptr @__ctype_b_loc() #24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  %scevgep172.i = getelementptr i8, ptr %i.z, i64 %i.c
  %i.al = sub i64 0, %.lcssa170173.i
  %scevgep174.i = getelementptr i8, ptr %scevgep172.i, i64 %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i49.i
  %.6.i = phi ptr [ %i.ad, %.lr.ph.i49.i ], [ %i.ar, %bb.n ] ; 3 uses
  %i.am = load i8, ptr %.6.i, align 1, !tbaa !18
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !36
  %i.aq = and i16 %i.ap, 8192
  %.not.i50.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i50.i, label %jsonSkipWhiteSpaces.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 2 uses
  %exitcond.not.i51.i = icmp eq ptr %i.ar, %i.b
  br i1 %exitcond.not.i51.i, label %jsonSkipWhiteSpaces.exit52.i, label %bb.m, !llvm.loop !67

jsonSkipWhiteSpaces.exit52.i:                     ; preds = %bb.n, %bb.m, %bb.l
  %.7.i = phi ptr [ %i.ad, %bb.l ], [ %.6.i, %bb.m ], [ %scevgep174.i, %bb.n ] ; 5 uses
  %.7176.i = ptrtoint ptr %.7.i to i64
  %.not36.i = icmp ult ptr %.7.i, %i.b
  br i1 %.not36.i, label %bb.o, label %jsonSeekField.exit.thread

bb.o:                                             ; preds = %jsonSkipWhiteSpaces.exit52.i
  %i.as = load i8, ptr %.7.i, align 1, !tbaa !18
  %.not37.i = icmp eq i8 %i.as, 58
  br i1 %.not37.i, label %bb.p, label %jsonSeekField.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 3 uses
  %i.au = icmp ult ptr %i.at, %i.b
  br i1 %i.au, label %.lr.ph.i54.i, label %jsonSkipWhiteSpaces.exit57.i

.lr.ph.i54.i:                                     ; preds = %bb.p
  %i.av = tail call ptr @__ctype_b_loc() #24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %scevgep175.i = getelementptr i8, ptr %.7.i, i64 %i.c
  %i.ax = sub i64 0, %.7176.i
  %scevgep177.i = getelementptr i8, ptr %scevgep175.i, i64 %i.ax
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i54.i
  %.8.i = phi ptr [ %i.at, %.lr.ph.i54.i ], [ %i.bd, %bb.r ] ; 3 uses
  %i.ay = load i8, ptr %.8.i, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !36
  %i.bc = and i16 %i.bb, 8192
  %.not.i55.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i55.i, label %jsonSkipWhiteSpaces.exit57.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq ptr %i.bd, %i.b
  br i1 %exitcond.not.i56.i, label %jsonSkipWhiteSpaces.exit57.i, label %bb.q, !llvm.loop !67

jsonSkipWhiteSpaces.exit57.i:                     ; preds = %bb.r, %bb.q, %bb.p
  %.9.i = phi ptr [ %i.at, %bb.p ], [ %.8.i, %bb.q ], [ %scevgep177.i, %bb.r ] ; 6 uses
  %.not38.i = icmp uge ptr %.9.i, %i.b            ; 2 uses
  %brmerge.i = select i1 %.not38.i, i1 true, i1 %i.ah
  br i1 %brmerge.i, label %.thread.loopexit100.split.loop.exit114.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %jsonSkipWhiteSpaces.exit57.i
  %.9179.i = ptrtoint ptr %.9.i to i64
  %i.be = tail call ptr @__ctype_b_loc() #24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34 ; 3 uses
  %scevgep178.i = getelementptr i8, ptr %.9.i, i64 %i.c
  %i.bg = sub i64 0, %.9179.i
  %scevgep180.i = getelementptr i8, ptr %scevgep178.i, i64 %i.bg
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.13.i = phi ptr [ %.9.i, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ] ; 3 uses
  %i.bh = load i8, ptr %.13.i, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !36
  %i.bl = and i16 %i.bk, 8192
  %.not.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i, label %jsonSkipWhiteSpaces.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.bm, %i.b
  br i1 %exitcond.not.i.i.i, label %jsonSkipWhiteSpaces.exit.i.i, label %bb.s, !llvm.loop !67

jsonSkipWhiteSpaces.exit.i.i:                     ; preds = %bb.t, %bb.s
  %.10.i = phi ptr [ %.13.i, %bb.s ], [ %scevgep180.i, %bb.t ] ; 16 uses
  %.10182.i = ptrtoint ptr %.10.i to i64          ; 2 uses
  %.not.i58.i = icmp ult ptr %.10.i, %i.b
  br i1 %.not.i58.i, label %bb.u, label %jsonSeekField.exit.thread

bb.u:                                             ; preds = %jsonSkipWhiteSpaces.exit.i.i
  %i.bn = load i8, ptr %.10.i, align 1, !tbaa !18
  switch i8 %i.bn, label %.lr.ph.i45.i.i [
    i8 34, label %bb.v
    i8 123, label %bb.y
    i8 91, label %bb.ac
    i8 116, label %bb.ag
    i8 102, label %bb.ai
    i8 110, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.b
  br i1 %i.bp, label %.lr.ph.i22.i.i, label %jsonSeekField.exit.thread

.lr.ph.i22.i.i:                                   ; preds = %bb.v, %.backedge.i.i.i
  %i.bq = phi ptr [ %i.bs, %.backedge.i.i.i ], [ %i.bo, %bb.v ] ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  switch i8 %i.br, label %.backedge.i.i.i [
    i8 92, label %bb.w
    i8 34, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i22.i.i
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.w, %.lr.ph.i22.i.i
  %.sink.i.i.i = phi i64 [ 2, %bb.w ], [ 1, %.lr.ph.i22.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink.i.i.i ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.b
  br i1 %i.bt, label %.lr.ph.i22.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.x:                                             ; preds = %.lr.ph.i22.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  br label %jsonSkipValue.exit.thread86.i

bb.y:                                             ; preds = %bb.u
  %storemerge2833.i.i.i = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.bv = icmp ult ptr %storemerge2833.i.i.i, %i.b
  br i1 %i.bv, label %.lr.ph.i23.i.i, label %jsonSeekField.exit.thread

.lr.ph.i23.i.i:                                   ; preds = %bb.y, %jsonSkipString.exit.i.i.i
  %storemerge2835.i.i.i = phi ptr [ %storemerge28.i.i.i, %jsonSkipString.exit.i.i.i ], [ %storemerge2833.i.i.i, %bb.y ] ; 3 uses
  %.01834.i.i.i = phi i32 [ %.220.i.i.i, %jsonSkipString.exit.i.i.i ], [ 1, %bb.y ] ; 2 uses
  %i.bw = load i8, ptr %storemerge2835.i.i.i, align 1, !tbaa !18 ; 3 uses
  %i.bx = icmp eq i8 %i.bw, 34
  br i1 %i.bx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i23.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge2835.i.i.i, i64 1 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.b
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %jsonSeekField.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.backedge.i.i.i.i
  %i.ca = phi ptr [ %i.cc, %.backedge.i.i.i.i ], [ %i.by, %bb.z ] ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  switch i8 %i.cb, label %.backedge.i.i.i.i [
    i8 92, label %bb.aa
    i8 34, label %jsonSkipString.exit.i.i.i
  ]

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 2, %bb.aa ], [ 1, %.lr.ph.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink.i.i.i.i ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.b
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.ab:                                            ; preds = %.lr.ph.i23.i.i
  %i.ce = icmp eq i8 %i.bw, 123
  %i.cf = icmp eq i8 %i.bw, 125
  %i.cg = sext i1 %i.cf to i32
  %.119.v.i.i.i = select i1 %i.ce, i32 1, i32 %i.cg
  %.119.i.i.i = add nsw i32 %.119.v.i.i.i, %.01834.i.i.i
  br label %jsonSkipString.exit.i.i.i

jsonSkipString.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %bb.ab
  %.pn.i.i.i = phi ptr [ %storemerge2835.i.i.i, %bb.ab ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %.220.i.i.i = phi i32 [ %.119.i.i.i, %bb.ab ], [ %.01834.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %storemerge28.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %i.ch = icmp ult ptr %storemerge28.i.i.i, %i.b
  %i.ci = icmp sgt i32 %.220.i.i.i, 0
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %.lr.ph.i23.i.i, label %jsonSkipValue.exit.i

bb.ac:                                            ; preds = %bb.u
  %storemerge2833.i24.i.i = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.ck = icmp ult ptr %storemerge2833.i24.i.i, %i.b
  br i1 %i.ck, label %.lr.ph.i26.i.i, label %jsonSeekField.exit.thread

.lr.ph.i26.i.i:                                   ; preds = %bb.ac, %jsonSkipString.exit.i31.i.i
  %storemerge2835.i27.i.i = phi ptr [ %storemerge28.i34.i.i, %jsonSkipString.exit.i31.i.i ], [ %storemerge2833.i24.i.i, %bb.ac ] ; 3 uses
  %.01834.i28.i.i = phi i32 [ %.220.i33.i.i, %jsonSkipString.exit.i31.i.i ], [ 1, %bb.ac ] ; 2 uses
  %i.cl = load i8, ptr %storemerge2835.i27.i.i, align 1, !tbaa !18 ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 34
  br i1 %i.cm, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i26.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge2835.i27.i.i, i64 1 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %i.b
  br i1 %i.co, label %.lr.ph.i.i36.i.i, label %jsonSeekField.exit.thread

.lr.ph.i.i36.i.i:                                 ; preds = %bb.ad, %.backedge.i.i37.i.i
  %i.cp = phi ptr [ %i.cr, %.backedge.i.i37.i.i ], [ %i.cn, %bb.ad ] ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  switch i8 %i.cq, label %.backedge.i.i37.i.i [
    i8 92, label %bb.ae
    i8 34, label %jsonSkipString.exit.i31.i.i
  ]

bb.ae:                                            ; preds = %.lr.ph.i.i36.i.i
  br label %.backedge.i.i37.i.i

.backedge.i.i37.i.i:                              ; preds = %bb.ae, %.lr.ph.i.i36.i.i
  %.sink.i.i38.i.i = phi i64 [ 2, %bb.ae ], [ 1, %.lr.ph.i.i36.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink.i.i38.i.i ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.b
  br i1 %i.cs, label %.lr.ph.i.i36.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

bb.af:                                            ; preds = %.lr.ph.i26.i.i
  %i.ct = icmp eq i8 %i.cl, 91
  %i.cu = icmp eq i8 %i.cl, 93
  %i.cv = sext i1 %i.cu to i32
  %.119.v.i29.i.i = select i1 %i.ct, i32 1, i32 %i.cv
  %.119.i30.i.i = add nsw i32 %.119.v.i29.i.i, %.01834.i28.i.i
  br label %jsonSkipString.exit.i31.i.i

jsonSkipString.exit.i31.i.i:                      ; preds = %.lr.ph.i.i36.i.i, %bb.af
  %.pn.i32.i.i = phi ptr [ %storemerge2835.i27.i.i, %bb.af ], [ %i.cp, %.lr.ph.i.i36.i.i ]
  %.220.i33.i.i = phi i32 [ %.119.i30.i.i, %bb.af ], [ %.01834.i28.i.i, %.lr.ph.i.i36.i.i ] ; 3 uses
  %storemerge28.i34.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.cw = icmp ult ptr %storemerge28.i34.i.i, %i.b
  %i.cx = icmp sgt i32 %.220.i33.i.i, 0
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph.i26.i.i, label %._crit_edge.loopexit.i35.i.i

._crit_edge.loopexit.i35.i.i:                     ; preds = %jsonSkipString.exit.i31.i.i
  %i.cz = icmp eq i32 %.220.i33.i.i, 0
  br i1 %i.cz, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ag:                                            ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %.10.i, i64 4 ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.b
  br i1 %i.db, label %jsonSeekField.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(5) @.str.174, i64 noundef 4) #25
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ai:                                            ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %.10.i, i64 5 ; 2 uses
  %i.df = icmp ugt ptr %i.de, %i.b
  br i1 %i.df, label %jsonSeekField.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(6) @.str.175, i64 noundef 5) #25
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

bb.ak:                                            ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %.10.i, i64 4 ; 2 uses
  %i.dj = icmp ugt ptr %i.di, %i.b
  br i1 %i.dj, label %jsonSeekField.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.10.i, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #25
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

.lr.ph.i45.i.i:                                   ; preds = %bb.u
  %i.dm = sub i64 %i.c, %.10182.i
  %scevgep.i.i.i = getelementptr i8, ptr %.10.i, i64 %i.dm
  %scevgep181.i = getelementptr i8, ptr %.10.i, i64 %i.c
  %i.dn = sub i64 0, %.10182.i
  %scevgep183.i = getelementptr i8, ptr %scevgep181.i, i64 %i.dn
  br label %bb.am

bb.am:                                            ; preds = %jsonIsNumberChar.exit.thread.i.i.i, %.lr.ph.i45.i.i
  %i.do = phi ptr [ %.10.i, %.lr.ph.i45.i.i ], [ %i.du, %jsonIsNumberChar.exit.thread.i.i.i ] ; 4 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18  ; 2 uses
  %i.dq = sext i8 %i.dp to i64
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !36
  %.fr13.i.i.i.i = freeze i16 %i.ds
  %i.dt = and i16 %.fr13.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i.i.i, label %switch.early.test.i.i.i.i, label %jsonIsNumberChar.exit.thread.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.am
  switch i8 %i.dp, label %jsonSkipNumber.exit.i.i [
    i8 101, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 46, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 45, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 43, label %jsonIsNumberChar.exit.thread.i.i.i
    i8 69, label %jsonIsNumberChar.exit.thread.i.i.i
  ]

jsonIsNumberChar.exit.thread.i.i.i:               ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %exitcond.not.i46.i.i = icmp eq ptr %i.du, %i.b
  br i1 %exitcond.not.i46.i.i, label %jsonSkipNumber.exit.i.i, label %bb.am, !llvm.loop !69

jsonSkipNumber.exit.i.i:                          ; preds = %jsonIsNumberChar.exit.thread.i.i.i, %switch.early.test.i.i.i.i
  %.12.i = phi ptr [ %i.do, %switch.early.test.i.i.i.i ], [ %scevgep183.i, %jsonIsNumberChar.exit.thread.i.i.i ]
  %.lcssa.ph.i.i.i = phi ptr [ %i.do, %switch.early.test.i.i.i.i ], [ %scevgep.i.i.i, %jsonIsNumberChar.exit.thread.i.i.i ]
  %i.dv = icmp ugt ptr %.lcssa.ph.i.i.i, %.10.i
  br i1 %i.dv, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.i:                             ; preds = %jsonSkipString.exit.i.i.i
  %i.dw = icmp eq i32 %.220.i.i.i, 0
  br i1 %i.dw, label %jsonSkipValue.exit.thread86.i, label %jsonSeekField.exit.thread

jsonSkipValue.exit.thread86.i:                    ; preds = %jsonSkipValue.exit.i, %jsonSkipNumber.exit.i.i, %bb.al, %bb.aj, %bb.ah, %._crit_edge.loopexit.i35.i.i, %bb.x
  %.1491.i = phi ptr [ %storemerge28.i.i.i, %jsonSkipValue.exit.i ], [ %i.da, %bb.ah ], [ %i.de, %bb.aj ], [ %i.bu, %bb.x ], [ %i.di, %bb.al ], [ %.12.i, %jsonSkipNumber.exit.i.i ], [ %storemerge28.i34.i.i, %._crit_edge.loopexit.i35.i.i ] ; 5 uses
  %i.dx = icmp ult ptr %.1491.i, %i.b
  br i1 %i.dx, label %.lr.ph.i61.i, label %jsonSkipWhiteSpaces.exit64.i

.lr.ph.i61.i:                                     ; preds = %jsonSkipValue.exit.thread86.i
  %.1491185.i = ptrtoint ptr %.1491.i to i64
  %scevgep184.i = getelementptr i8, ptr %.1491.i, i64 %i.c
  %i.dy = sub i64 0, %.1491185.i
  %scevgep186.i = getelementptr i8, ptr %scevgep184.i, i64 %i.dy
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i61.i
  %.15.i = phi ptr [ %.1491.i, %.lr.ph.i61.i ], [ %i.ee, %bb.ao ] ; 3 uses
  %i.dz = load i8, ptr %.15.i, align 1, !tbaa !18
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !36
  %i.ed = and i16 %i.ec, 8192
  %.not.i62.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i62.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %.15.i, i64 1 ; 2 uses
  %exitcond.not.i63.i = icmp eq ptr %i.ee, %i.b
  br i1 %exitcond.not.i63.i, label %jsonSkipWhiteSpaces.exit64.i, label %bb.an, !llvm.loop !67

jsonSkipWhiteSpaces.exit64.i:                     ; preds = %bb.ao, %bb.an, %jsonSkipValue.exit.thread86.i
  %.16.i = phi ptr [ %.1491.i, %jsonSkipValue.exit.thread86.i ], [ %.15.i, %bb.an ], [ %scevgep186.i, %bb.ao ] ; 3 uses
  %.not40.i = icmp ult ptr %.16.i, %i.b
  br i1 %.not40.i, label %bb.ap, label %jsonSeekField.exit.thread

bb.ap:                                            ; preds = %jsonSkipWhiteSpaces.exit64.i
  %i.ef = load i8, ptr %.16.i, align 1, !tbaa !18
  %i.eg = icmp eq i8 %i.ef, 44
  br i1 %i.eg, label %.preheader.i, label %jsonSeekField.exit.thread

.thread.loopexit100.split.loop.exit114.i:         ; preds = %jsonSkipWhiteSpaces.exit57.i
  br i1 %.not38.i, label %jsonSeekField.exit.thread, label %jsonSeekField.exit

jsonSeekField.exit:                               ; preds = %.thread.loopexit100.split.loop.exit114.i
  store ptr %.9.i, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq ptr %.9.i, null
  br i1 %.not, label %jsonSeekField.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %jsonSeekField.exit
  %i.eh = call fastcc ptr @jsonParseValueToken(ptr noundef %i.a, ptr noundef %i.b)
  br label %jsonSeekField.exit.thread

jsonSeekField.exit.thread:                        ; preds = %bb.c, %jsonSkipWhiteSpaces.exit45.i, %bb.g, %bb.ap, %jsonSkipWhiteSpaces.exit52.i, %jsonSkipValue.exit.i, %jsonSkipWhiteSpaces.exit64.i, %bb.o, %bb.h, %bb.aj, %jsonSkipWhiteSpaces.exit.i.i, %bb.v, %bb.ah, %bb.al, %bb.y, %bb.ac, %bb.ag, %bb.ai, %bb.ak, %jsonSkipNumber.exit.i.i, %._crit_edge.loopexit.i35.i.i, %.backedge.i.i, %bb.ad, %bb.z, %.backedge.i.i.i, %.backedge.i.i37.i.i, %.backedge.i.i.i.i, %.thread.loopexit100.split.loop.exit114.i, %jsonSkipWhiteSpaces.exit.i, %bb.d, %jsonSeekField.exit, %bb.aq
  %.0 = phi ptr [ %i.eh, %bb.aq ], [ null, %jsonSeekField.exit ], [ null, %bb.z ], [ null, %jsonSkipWhiteSpaces.exit.i ], [ null, %.backedge.i.i.i ], [ null, %.backedge.i.i37.i.i ], [ null, %.backedge.i.i.i.i ], [ null, %jsonSkipWhiteSpaces.exit45.i ], [ null, %.backedge.i.i ], [ null, %bb.ad ], [ null, %.thread.loopexit100.split.loop.exit114.i ], [ null, %bb.d ], [ null, %._crit_edge.loopexit.i35.i.i ], [ null, %jsonSkipNumber.exit.i.i ], [ null, %bb.ak ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.ac ], [ null, %bb.y ], [ null, %bb.al ], [ null, %bb.ah ], [ null, %bb.v ], [ null, %jsonSkipWhiteSpaces.exit.i.i ], [ null, %bb.aj ], [ null, %bb.h ], [ null, %bb.o ], [ null, %jsonSkipWhiteSpaces.exit64.i ], [ null, %jsonSkipValue.exit.i ], [ null, %jsonSkipWhiteSpaces.exit52.i ], [ null, %bb.ap ], [ null, %bb.g ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @jsonParseValueToken(ptr noundef nonnull captures(none) %0, ptr noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %i.c = icmp ult ptr %.promoted.i, %1
  br i1 %i.c, label %.lr.ph.i, label %jsonSkipWhiteSpaces.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = tail call ptr @__ctype_b_loc() #24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.f = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !36
  %i.k = and i16 %i.j, 8192
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %jsonSkipWhiteSpaces.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !49
  %exitcond.not.i = icmp eq ptr %i.l, %1
  br i1 %exitcond.not.i, label %jsonSkipWhiteSpaces.exit, label %bb.b, !llvm.loop !67

jsonSkipWhiteSpaces.exit:                         ; preds = %bb.b, %bb.c, %bb.a
  %i.m = phi ptr [ %.promoted.i, %bb.a ], [ %i.l, %bb.c ], [ %i.f, %bb.b ] ; 17 uses
  %.not = icmp ult ptr %i.m, %1
  br i1 %.not, label %bb.d, label %jsonParseStringToken.exit

bb.d:                                             ; preds = %jsonSkipWhiteSpaces.exit
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 3 uses
  switch i8 %i.n, label %bb.at [
    i8 34, label %bb.e
    i8 91, label %bb.p
    i8 123, label %jsonParseStringToken.exit
    i8 116, label %bb.ah
    i8 102, label %bb.al
    i8 110, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %.ptr93.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  store ptr %.ptr93.i, ptr %0, align 8, !tbaa !49
  %i.o = icmp ult ptr %.ptr93.i, %1
  br i1 %i.o, label %.lr.ph.lr.ph.i, label %jsonParseStringToken.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.e, %.outer68.outer.i
  %.054.ph.ph83.idx.i = phi i64 [ %.05478.add91.i, %.outer68.outer.i ], [ 1, %bb.e ]
  %.not66.i = phi i1 [ false, %.outer68.outer.i ], [ true, %bb.e ]
  %.056.ph.ph81.i = phi i64 [ %i.r, %.outer68.outer.i ], [ 0, %bb.e ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.outer68.i, %.lr.ph.lr.ph.i
  %.054.ph80.idx.i = phi i64 [ %.054.ph.ph83.idx.i, %.lr.ph.lr.ph.i ], [ %i.p, %.outer68.i ] ; 5 uses
  %.056.ph79.i = phi i64 [ %.056.ph.ph81.i, %.lr.ph.lr.ph.i ], [ %i.u, %.outer68.i ] ; 5 uses
  %i.p = add i64 %.054.ph80.idx.i, 1              ; 3 uses
  %.05478.ptr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.054.ph80.idx.i
  %i.q = load i8, ptr %.05478.ptr.i, align 1, !tbaa !18
  switch i8 %i.q, label %.outer68.i [
    i8 92, label %bb.f
    i8 34, label %bb.g
  ]

.outer68.outer.i:                                 ; preds = %bb.f
  %.05478.add91.i = add i64 %.054.ph80.idx.i, 2   ; 2 uses
  %.ptr94.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.05478.add91.i
  %i.r = add i64 %.056.ph79.i, 1
  %i.s = icmp ult ptr %.ptr94.i, %1
  br i1 %i.s, label %.lr.ph.lr.ph.i, label %jsonParseStringToken.exit, !llvm.loop !70

bb.f:                                             ; preds = %.lr.ph.i27
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.t = icmp ult ptr %.ptr.i, %1
  br i1 %i.t, label %.outer68.outer.i, label %jsonParseStringToken.exit

.outer68.i:                                       ; preds = %.lr.ph.i27
  %.ptr92.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.u = add i64 %.056.ph79.i, 1
  %i.v = icmp ult ptr %.ptr92.i, %1
  br i1 %i.v, label %.lr.ph.i27, label %jsonParseStringToken.exit, !llvm.loop !70

bb.g:                                             ; preds = %.lr.ph.i27
  %.05478.ptr.i.le = getelementptr inbounds nuw i8, ptr %i.m, i64 %.054.ph80.idx.i ; 3 uses
  %i.w = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.x = tail call ptr %i.w(i64 noundef 40) #22, !inline_history !71 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 2, ptr %i.z, align 4, !tbaa !15
  store i32 1, ptr %i.x, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  br i1 %.not66.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.ptr93.i, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.056.ph79.i, ptr %i.ac, align 8, !tbaa !18
  store ptr null, ptr %i.aa, align 8, !tbaa !18
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ae = add i64 %.056.ph79.i, 1
  %i.af = tail call ptr %i.ad(i64 noundef %i.ae) #22, !inline_history !72 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.056.ph79.i, ptr %i.ah, align 8, !tbaa !18
  %i.ai = icmp sgt i64 %.054.ph80.idx.i, 1
  br i1 %i.ai, label %.lr.ph86.i, label %.outer._crit_edge.i

.lr.ph86.i:                                       ; preds = %bb.i, %.outer.backedge.i
  %.0.ph89.i = phi ptr [ %.0.ph.be.i, %.outer.backedge.i ], [ %.ptr93.i, %bb.i ] ; 3 uses
  %.052.ph88.i = phi ptr [ %.052.ph.be.i, %.outer.backedge.i ], [ %i.af, %bb.i ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.0.ph89.i, i64 1 ; 6 uses
  %i.aj = load i8, ptr %.0.ph89.i, align 1, !tbaa !18 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 92
  br i1 %i.ak, label %bb.n, label %.outer.backedge.i

bb.j:                                             ; preds = %bb.n
  %i.al = load i8, ptr %scevgep.i, align 1, !tbaa !18 ; 2 uses
  switch i8 %i.al, label %bb.m [
    i8 110, label %.outer.backedge.i
    i8 114, label %bb.k
    i8 116, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.j
  br label %.outer.backedge.i

bb.m:                                             ; preds = %bb.j
  br label %.outer.backedge.i

.outer.backedge.i:                                ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph86.i
  %.sink.i = phi i8 [ %i.aj, %.lr.ph86.i ], [ 13, %bb.k ], [ 9, %bb.l ], [ 10, %bb.j ], [ %i.al, %bb.m ]
  %.085100.i = phi ptr [ %.0.ph89.i, %.lr.ph86.i ], [ %scevgep.i, %bb.k ], [ %scevgep.i, %bb.l ], [ %scevgep.i, %bb.j ], [ %scevgep.i, %bb.m ]
  store i8 %.sink.i, ptr %.052.ph88.i, align 1, !tbaa !18
  %.0.ph.be.i = getelementptr inbounds nuw i8, ptr %.085100.i, i64 1 ; 2 uses
  %.052.ph.be.i = getelementptr inbounds nuw i8, ptr %.052.ph88.i, i64 1 ; 2 uses
  %i.am = icmp ult ptr %.0.ph.be.i, %.05478.ptr.i.le
  br i1 %i.am, label %.lr.ph86.i, label %.outer._crit_edge.i, !llvm.loop !73

bb.n:                                             ; preds = %.lr.ph86.i
  %i.an = icmp ult ptr %scevgep.i, %.05478.ptr.i.le
  br i1 %i.an, label %bb.j, label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %bb.n, %.outer.backedge.i, %bb.i
  %.052.ph.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %.052.ph.be.i, %.outer.backedge.i ], [ %.052.ph88.i, %bb.n ]
  store i8 0, ptr %.052.ph.lcssa.i, align 1, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %.outer._crit_edge.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.05478.ptr.i.le, i64 1
  store ptr %i.ao, ptr %0, align 8, !tbaa !49
  br label %jsonParseStringToken.exit

bb.p:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !49
  %i.aq = icmp ult ptr %i.ap, %1
  br i1 %i.aq, label %.lr.ph.i155, label %jsonSkipWhiteSpaces.exit158

.lr.ph.i155:                                      ; preds = %bb.p
  %i.ar = tail call ptr @__ctype_b_loc() #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i155
  %i.at = phi ptr [ %i.ap, %.lr.ph.i155 ], [ %i.az, %bb.r ] ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !36
end_hunk_1
begin_hunk_2_@parseVector:bb.a
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = load i64, ptr %i.c, align 8             ; 4 uses
  %i.ax = icmp slt i64 %i.aw, 1
  %or.cond9 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond9, label %.critedge105, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = sext i32 %1 to i64
  %i.az = sext i32 %i.ap to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.aw, %i.az
  %i.bb = icmp sgt i64 %i.ba, %i.ay
  br i1 %i.bb, label %.critedge105, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.aw, ptr %3, align 8, !tbaa !92
  %i.bc = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.bd = shl i64 %i.aw, 2
  %i.be = call ptr %i.bc(i64 noundef %i.bd) #22   ; 4 uses
  %.not96 = icmp eq ptr %i.be, null
  br i1 %.not96, label %.critedge105, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !116 ; 2 uses
  %.not98108 = icmp sgt i64 %i.bf, 0
  br i1 %.not98108, label %.lr.ph.preheader, label %.critedge103

.lr.ph.preheader:                                 ; preds = %.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.az
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bg = load ptr, ptr @RedisModule_StringToDouble, align 8, !tbaa !13
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load ptr, ptr %gep, align 8, !tbaa !115
  %i.bi = call i32 %i.bg(ptr noundef %i.bh, ptr noundef nonnull %i.d) #22
  %.not97 = icmp eq i32 %i.bi, 0
  br i1 %.not97, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bj = load double, ptr %i.d, align 8, !tbaa !118
  %i.bk = fptrunc double %i.bj to float
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !116 ; 2 uses
  %.not98 = icmp sgt i64 %i.bm, %indvars.iv.next
  br i1 %.not98, label %.lr.ph, label %.critedge103, !llvm.loop !120

bb.p:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bn(ptr noundef nonnull %i.be) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %.critedge105

.critedge103:                                     ; preds = %bb.o, %.preheader
  %i.bo = phi i64 [ %i.bf, %.preheader ], [ %i.bm, %bb.o ]
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %.173, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %.critedge103
  %.476 = phi i32 [ %i.bq, %.critedge103 ], [ %.173, %bb.i ]
  %.266 = phi ptr [ %i.be, %.critedge103 ], [ %i.am, %bb.i ] ; 2 uses
  %.not99 = icmp eq ptr %5, null
  br i1 %.not99, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.476, ptr %5, align 4, !tbaa !9
  br label %bb.s

.critedge105:                                     ; preds = %bb.p, %bb.n, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.s

.critedge101:                                     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.s

.critedge107:                                     ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.s

bb.s:                                             ; preds = %.critedge107, %bb.f, %bb.k, %.critedge105, %bb.j, %bb.r, %bb.q, %.critedge101
  %.8 = phi ptr [ null, %.critedge101 ], [ %.266, %bb.q ], [ null, %bb.k ], [ null, %bb.f ], [ null, %bb.j ], [ null, %.critedge105 ], [ null, %.critedge107 ], [ %.266, %bb.r ]
  ret ptr %.8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @VADD_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @pthread_self() #24
  %i.b = tail call i32 @pthread_detach(i64 noundef %i.a) #22 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.k = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.j) #22
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.m(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 466) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.q = atomicrmw sub ptr %i.p, i32 1 seq_cst, align 8 ; 0 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.s = tail call ptr @hnsw_prepare_insert(ptr noundef %i.r, ptr noundef %i.g, ptr noundef null, float noundef 0.000000e+00, i64 noundef 0, i32 noundef %i.o) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.j) #22 ; 0 uses
  %i.v = load ptr, ptr @RedisModule_BlockedClientMeasureTimeEnd, align 8, !tbaa !13
  %i.w = tail call i32 %i.v(ptr noundef %i.c) #22 ; 0 uses
  %i.x = load ptr, ptr @RedisModule_UnblockClient, align 8, !tbaa !13
  %i.y = tail call i32 %i.x(ptr noundef %i.c, ptr noundef nonnull %0) #22 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #17

declare ptr @hnsw_prepare_insert(ptr noundef, ptr noundef, ptr noundef, float noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @VADD_CASReply(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %i.b = load ptr, ptr @RedisModule_GetBlockedClientPrivateData, align 8, !tbaa !13
  %i.c = tail call ptr %i.b(ptr noundef %0) #22   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 3 uses
  %i.s = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.s(ptr noundef %i.c) #22
  %i.t = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !115
  %i.w = tail call ptr %i.t(ptr noundef %0, ptr noundef %i.v, i32 noundef 3) #22 ; 3 uses
  %i.x = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.y = tail call i32 %i.x(ptr noundef %i.w) #22
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.aa = tail call ptr %i.z(ptr noundef %i.w) #22
  %i.ab = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.ae = tail call ptr %i.ad(ptr noundef %i.w) #22 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !94
  %.not53 = icmp ne i64 %i.ag, %i.f
  %.not5468 = icmp eq ptr %i.ae, null
  %.not54 = or i1 %.not5468, %.not53
  br i1 %.not54, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ak = tail call ptr %i.ah(ptr noundef %i.aj, ptr noundef %i.j, ptr noundef null) #22
  %.not55 = icmp eq ptr %i.ak, null
  br i1 %.not55, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.am = tail call ptr %i.al(i64 noundef 16) #22 ; 4 uses
  store ptr %i.j, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.r, ptr %i.an, align 8, !tbaa !108
  %i.ao = icmp eq ptr %i.l, null
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.aq = tail call ptr @hnsw_try_commit_insert(ptr noundef %i.ap, ptr noundef nonnull %i.l, ptr noundef nonnull %i.am) #22 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %.thread65

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.at = tail call ptr @hnsw_insert(ptr noundef %i.as, ptr noundef %i.h, ptr noundef null, float noundef 0.000000e+00, i64 noundef 0, ptr noundef nonnull %i.am, i32 noundef %i.p) #22 ; 2 uses
  %.not56 = icmp eq ptr %i.at, null
  br i1 %.not56, label %bb.h, label %.thread65

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.au(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27, i32 noundef 545) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

.thread65:                                        ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.at, %bb.g ], [ %i.aq, %bb.f ]
  %i.av = load ptr, ptr @RedisModule_DictSet, align 8, !tbaa !13
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ax = tail call i32 %i.av(ptr noundef %i.aw, ptr noundef %i.j, ptr noundef nonnull %.0) #22 ; 0 uses
  %i.ay = load ptr, ptr @RedisModule_ReplicateVerbatim, align 8, !tbaa !13
  %i.az = tail call i32 %i.ay(ptr noundef %0) #22 ; 0 uses
  %i.ba = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.bb = tail call i32 %i.ba(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  tail call void @hnsw_free_insert_context(ptr noundef %i.l) #22
  %i.bc = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.bd = tail call i32 %i.bc(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
  %.not57 = icmp eq ptr %i.j, null
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  tail call void %i.be(ptr noundef %0, ptr noundef nonnull %i.j) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not58 = icmp eq ptr %i.r, null
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  tail call void %i.bf(ptr noundef %0, ptr noundef nonnull %i.r) #22
  br label %bb.m

bb.m:                                             ; preds = %.thread65, %bb.l, %bb.k
  %i.bg = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.bg(ptr noundef %i.h) #22
  ret i32 0
}

declare void @hnsw_free_insert_context(ptr noundef) local_unnamed_addr #16

declare ptr @hnsw_try_commit_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @VADD_RedisCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.g(ptr noundef %0) #22
  %i.h = icmp slt i32 %2, 5
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.j = tail call i32 %i.i(ptr noundef %0) #22
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 200, ptr %i.d, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 16, ptr %i.e, align 8, !tbaa !116
  %i.k = call ptr @parseVector(ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 18 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.m = call i32 %i.l(ptr noundef %0, ptr noundef nonnull @.str.39) #22
  br label %.thread232

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i32 %2, -2
  %i.o = load i32, ptr %i.c, align 4, !tbaa !9    ; 4 uses
  %.not188 = icmp sgt i32 %i.n, %i.o
  br i1 %.not188, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.p(ptr noundef nonnull %i.k) #22
  %i.q = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.r = call i32 %i.q(ptr noundef %0) #22
  br label %.thread232

bb.g:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.o, 3                      ; 2 uses
  %.not196265 = icmp slt i32 %i.s, %2
  br i1 %.not196265, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.w
  %.0154269 = phi i32 [ %.2156.ph, %bb.w ], [ 0, %bb.g ] ; 6 uses
  %.0164268 = phi ptr [ %.2166.ph, %bb.w ], [ null, %bb.g ] ; 6 uses
  %.0172267 = phi i32 [ %.2174.ph, %bb.w ], [ 1, %bb.g ] ; 4 uses
  %.0176266 = phi i32 [ %i.bp, %bb.w ], [ %i.s, %bb.g ] ; 8 uses
  %i.t = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.u = sext i32 %.0176266 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115
  %i.x = call ptr %i.t(ptr noundef %i.w, ptr noundef null) #22 ; 7 uses
  %i.y = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.40) #25
  %.not189 = icmp eq i32 %i.y, 0
  br i1 %.not189, label %bb.w, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.z = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.41) #25
  %.not190 = icmp eq i32 %i.z, 0
  br i1 %.not190, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.0176266, 1                ; 3 uses
  %i.ab = icmp slt i32 %i.aa, %2
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.ag = call i32 %i.ac(ptr noundef %i.af, ptr noundef nonnull %i.d) #22
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = load i64, ptr %i.d, align 8
  %i.aj = add i64 %i.ai, -1000001
  %i.ak = icmp ult i64 %i.aj, -1000000
  %or.cond5 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond5, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.al(ptr noundef nonnull %i.k) #22
  %i.am = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.an = call i32 %i.am(ptr noundef %0, ptr noundef nonnull @.str.42) #22
  br label %.thread232

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ao = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.43) #25
  %.not191 = icmp eq i32 %i.ao, 0
  br i1 %.not191, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %.0176266, 1                ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %2
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !115
  %i.av = call i32 %i.ar(ptr noundef %i.au, ptr noundef nonnull %i.e) #22
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = load i64, ptr %i.e, align 8
  %i.ay = add i64 %i.ax, -4097
  %i.az = icmp ult i64 %i.ay, -4093
  %or.cond9 = select i1 %i.aw, i1 true, i1 %i.az
  br i1 %or.cond9, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.ba(ptr noundef nonnull %i.k) #22
  %i.bb = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.bc = call i32 %i.bb(ptr noundef %0, ptr noundef nonnull @.str.44) #22
  br label %.thread232
end_hunk_2
