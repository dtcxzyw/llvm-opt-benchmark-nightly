inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@replaceClientCommandVector:bb.a
  store ptr %2, ptr %i.bf, align 8, !tbaa !186
  store i32 %1, ptr %i.be, align 8, !tbaa !278
  store i32 %1, ptr %i.as, align 8, !tbaa !275
  br i1 %i.w, label %.preheader, label %bb.o

.preheader:                                       ; preds = %freeClientArgv.exit
  %i.bh = icmp sgt i32 %1, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %i.bi = phi i32 [ %i.bo, %bb.n ], [ %1, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %.068 = phi i64 [ %.1, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !186
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 2 uses
  %.not56 = icmp eq ptr %i.bl, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bm = tail call i64 @getStringObjectLen(ptr noundef nonnull %i.bl)
  %i.bn = add i64 %i.bm, %.068
  %.pre = load i32, ptr %i.as, align 8, !tbaa !275
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.bo = phi i32 [ %.pre, %bb.m ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ %i.bn, %bb.m ], [ %.068, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !363

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.br = phi i32 [ %1, %.preheader ], [ %i.bo, %bb.n ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.1, %bb.n ] ; 3 uses
  br i1 %.not5461, label %.thread74, label %.thread75

.thread74:                                        ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.0.lcssa, ptr %i.bs, align 8, !tbaa !201
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !186
  %i.bu = tail call ptr @lookupCommandOrOriginal(ptr noundef %i.bt, i32 noundef %i.br) #30 ; 2 uses
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !154
  br label %bb.q

.thread75:                                        ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.05060, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !292
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !201
  %i.bz = sub i64 %i.by, %i.bw
  store i64 %.0.lcssa, ptr %i.bv, align 8, !tbaa !292
  %i.ca = add i64 %i.bz, %.0.lcssa
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !201
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !186
  %i.cc = tail call ptr @lookupCommandOrOriginal(ptr noundef %i.cb, i32 noundef %i.br) #30 ; 2 uses
  store ptr %i.cc, ptr %i.bc, align 8, !tbaa !154
  br label %bb.p

bb.o:                                             ; preds = %freeClientArgv.exit
  %i.cd = load ptr, ptr %i.bf, align 8, !tbaa !186
  %i.ce = tail call ptr @lookupCommandOrOriginal(ptr noundef %i.cd, i32 noundef %1) #30 ; 3 uses
  store ptr %i.ce, ptr %i.bc, align 8, !tbaa !154
  br i1 %.not5461, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread75, %bb.o
  %i.cf = phi ptr [ %i.cc, %.thread75 ], [ %i.ce, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05060, i64 32
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !329
  br label %bb.q

bb.q:                                             ; preds = %.thread74, %bb.p, %bb.o
  %i.ch = phi ptr [ %i.bu, %.thread74 ], [ %i.cf, %bb.p ], [ %i.ce, %bb.o ]
  %.not57 = icmp eq ptr %i.ch, null
  br i1 %.not57, label %bb.r, label %bb.s, !prof !142

bb.r:                                             ; preds = %bb.q
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.1, i32 noundef 4959) #30
  tail call void @abort() #31
  unreachable

bb.s:                                             ; preds = %bb.q
  ret void
}

declare ptr @lookupCommandOrOriginal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rewriteClientCommandArgument(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %retainOriginalCommandVector.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !275  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.d, ptr %i.e, align 4, !tbaa !242
  %i.f = sext i32 %i.d to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @zmalloc(i64 noundef %i.g) #32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !241
  %i.i = load i32, ptr %i.c, align 8, !tbaa !275
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %retainOriginalCommandVector.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173  ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store ptr %i.n, ptr %i.p, align 8, !tbaa !173
  tail call void @incrRefCount(ptr noundef %i.n) #30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !275
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next.i, %i.r
  br i1 %i.s, label %bb.c, label %retainOriginalCommandVector.exit, !llvm.loop !354

retainOriginalCommandVector.exit:                 ; preds = %bb.c, %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !327  ; 11 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %retainOriginalCommandVector.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !269
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  %i.z = icmp eq ptr %i.w, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %retainOriginalCommandVector.exit
  %i.aa = phi i1 [ false, %retainOriginalCommandVector.exit ], [ %i.z, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !275
  %.not73 = icmp slt i32 %1, %i.ac
  br i1 %.not73, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !278
  %.not74 = icmp slt i32 %1, %i.ae
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !186 ; 2 uses
  %.pre91 = add nsw i32 %1, 1                     ; 3 uses
  br i1 %.not74, label %.thread99, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sext i32 %.pre91 to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = tail call ptr @zrealloc(ptr noundef %.pre, i64 noundef %i.ag) #35 ; 2 uses
  store ptr %i.ah, ptr %.phi.trans.insert, align 8, !tbaa !186
  store i32 %.pre91, ptr %i.ad, align 8, !tbaa !278
  br label %.thread99

.thread99:                                        ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %.pre, %bb.f ]
  store i32 %.pre91, ptr %i.ab, align 8, !tbaa !275
  %i.aj = sext i32 %1 to i64                      ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  store ptr null, ptr %i.ak, align 8, !tbaa !173
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre86 = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !186
  %.pre87 = sext i32 %1 to i64                    ; 3 uses
  %.phi.trans.insert89 = getelementptr inbounds [8 x i8], ptr %.pre86, i64 %.pre87
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8, !tbaa !173 ; 3 uses
  %.not75 = icmp eq ptr %.pre90, null
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i64 @getStringObjectLen(ptr noundef nonnull %.pre90)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !201
  %i.ao = sub i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !201
  br label %bb.j

bb.j:                                             ; preds = %.thread99, %bb.i, %bb.h
  %.not75103 = phi i1 [ true, %.thread99 ], [ false, %bb.i ], [ true, %bb.h ]
  %.pre-phi102 = phi i64 [ %i.aj, %.thread99 ], [ %.pre87, %bb.i ], [ %.pre87, %bb.h ]
  %i.ap = phi ptr [ null, %.thread99 ], [ %.pre90, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.not76 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not76, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.ar = load i32, ptr %i.ab, align 8, !tbaa !275 ; 7 uses
  %.079 = add nsw i32 %1, 1                       ; 2 uses
  %i.as = icmp slt i32 %.079, %i.ar
  %.pre88 = load ptr, ptr %i.aq, align 8, !tbaa !186 ; 13 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %3 = sext i32 %.079 to i64                      ; 5 uses
  %4 = add i32 %i.ar, -2
  %5 = sub i32 %4, %1                             ; 2 uses
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %5, 13
  %8 = add i32 %i.ar, -2
  %9 = icmp slt i32 %8, %1
  %or.cond = or i1 %min.iters.check, %9
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %10 = sext i32 %1 to i64
  %11 = sub nsw i64 %10, %3
  %12 = and i64 %11, 2305843009213693948
  %diff.check = icmp eq i64 %12, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, 8589934588                 ; 4 uses
  %13 = add nsw i64 %n.vec, %3
  %14 = trunc i64 %n.vec to i32
  %15 = add i32 %1, %14
  %invariant.gep = getelementptr [8 x i8], ptr %.pre88, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %16 = trunc i64 %index to i32
  %17 = add i32 %1, %16
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x ptr>, ptr %gep, align 8, !tbaa !173
  %wide.load104 = load <2 x ptr>, ptr %18, align 8, !tbaa !173
  %i.at = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.at ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store <2 x ptr> %wide.load, ptr %19, align 8, !tbaa !173
  store <2 x ptr> %wide.load104, ptr %20, align 8, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph ], [ %13, %middle.block ] ; 3 uses
  %.0.in80.ph = phi i32 [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %15, %middle.block ] ; 2 uses
  %21 = trunc i64 %indvars.iv.ph to i32           ; 2 uses
  %22 = sub i32 %i.ar, %21
  %xtraiter = and i32 %22, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.in80.prol = phi i32 [ %24, %scalar.ph.prol ], [ %.0.in80.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.av = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.prol
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !173
  %23 = sext i32 %.0.in80.prol to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %23
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !173
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %24 = trunc nsw i64 %indvars.iv.prol to i32     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !367

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0.in80.unr = phi i32 [ %.0.in80.ph, %scalar.ph.preheader ], [ %24, %scalar.ph.prol ]
  %25 = sub i32 %21, %i.ar
  %26 = icmp ugt i32 %25, -4
  br i1 %26, label %._crit_edge, label %scalar.ph

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.pre-phi102
  store ptr %2, ptr %i.az, align 8, !tbaa !173
  tail call void @incrRefCount(ptr noundef nonnull %2) #30
  %i.ba = tail call i64 @getStringObjectLen(ptr noundef nonnull %2)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201
  %i.bd = add i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !201
  br label %bb.l

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.be = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.be, ptr %i.ab, align 8, !tbaa !275
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.bf
  store ptr null, ptr %i.bg, align 8, !tbaa !173
  br label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.0.in80 = phi i32 [ %34, %scalar.ph ], [ %.0.in80.unr, %scalar.ph.prol.loopexit ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !173
  %27 = sext i32 %.0.in80 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %27
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !173
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173
  %sext = shl i64 %indvars.iv, 32
  %28 = ashr exact i64 %sext, 29
  %29 = getelementptr inbounds i8, ptr %.pre88, i64 %28
  store ptr %i.bl, ptr %29, align 8, !tbaa !173
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next.1
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !173
  %sext107 = shl i64 %indvars.iv.next, 32
  %30 = ashr exact i64 %sext107, 29
  %31 = getelementptr inbounds i8, ptr %.pre88, i64 %30
  store ptr %i.bn, ptr %31, align 8, !tbaa !173
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next.2
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !173
  %sext108 = shl i64 %indvars.iv.next.1, 32
  %32 = ashr exact i64 %sext108, 29
  %33 = getelementptr inbounds i8, ptr %.pre88, i64 %32
  store ptr %i.bp, ptr %33, align 8, !tbaa !173
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %34 = trunc nsw i64 %indvars.iv.next.2 to i32
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.ar, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !369

bb.l:                                             ; preds = %._crit_edge, %bb.k
  br i1 %.not75103, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.aa, label %bb.n, label %bb.r

.thread:                                          ; preds = %bb.l
  tail call void @decrRefCount(ptr noundef nonnull %i.ap) #30
  br i1 %i.aa, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !269
  %i.bs = load i32, ptr %i.ab, align 8, !tbaa !275
  store i32 %i.bs, ptr %i.u, align 8, !tbaa !272
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !278
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !287
  br label %bb.p

bb.o:                                             ; preds = %.thread
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !269
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !275
  store i32 %i.by, ptr %i.u, align 8, !tbaa !272
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !278
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !287
  %i.cc = tail call i64 @getStringObjectLen(ptr noundef nonnull %i.ap)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !292
  %i.cf = sub i64 %i.ce, %i.cc
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !292
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = tail call i64 @getStringObjectLen(ptr noundef nonnull %2)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !292
  %i.cj = add i64 %i.ci, %i.cg
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !292
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.p, %bb.q, %bb.m
  %i.ck = icmp eq i32 %1, 0
  br i1 %i.ck, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.cm = load i32, ptr %i.ab, align 8, !tbaa !275
  %i.cn = tail call ptr @lookupCommandOrOriginal(ptr noundef %i.cl, i32 noundef %i.cm) #30 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !154
  %.not77 = icmp eq ptr %i.cn, null
  br i1 %.not77, label %bb.t, label %bb.u, !prof !142

bb.t:                                             ; preds = %bb.s
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.1, i32 noundef 5024) #30
  tail call void @abort() #31
  unreachable

bb.u:                                             ; preds = %bb.s
  br i1 %i.aa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !329
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @getClientOutputBufferMemoryUsage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !99
  %i.b = and i64 %.val, 9007199254740997
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.d, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7408), align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 6
  %i.x = add i64 %i.m, 64
  %i.y = add i64 %i.x, %i.o
  %i.z = sub i64 %i.y, %i.q
  %i.aa = add i64 %i.z, %i.w
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = mul i64 %i.ag, 48
  %i.ai = add i64 %i.ah, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i64 [ %i.ai, %bb.d ], [ %i.aa, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @getNormalClientPendingReplyBytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !99
  %i.b = and i64 %.val, 9007199254740997
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c, !prof !142

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.1, i32 noundef 5055) #30
  tail call void @abort() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !143
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i64, ptr %i.n, align 8, !tbaa !161
  %i.p = load i64, ptr %i.m, align 8, !tbaa !20
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = add i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87
  %i.w = add i64 %i.t, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.w, %bb.e ]
  ret i64 %.0
}

declare i64 @multiStateMemOverhead(ptr noundef) local_unnamed_addr #2

declare i64 @pubsubMemOverhead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @getClientTypeName(i32 noundef %0) local_unnamed_addr #26 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.getClientTypeName, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @checkClientOutputBufferLimits(ptr nofree noundef captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !99 ; 4 uses
  %i.b = and i64 %.val.i, 9007199254740997
  %.not.i = icmp eq i64 %i.b, 1
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %.not17.i = icmp eq ptr %i.d, null
  br i1 %.not17.i, label %getClientOutputBufferMemoryUsage.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7408), align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 6
  %i.x = add i64 %i.m, 64
  %i.y = add i64 %i.x, %i.o
  %i.z = sub i64 %i.y, %i.q
  %i.aa = add i64 %i.z, %i.w
  br label %getClientOutputBufferMemoryUsage.exit

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %i.ah = mul i64 %i.ag, 48
  %i.ai = add i64 %i.ah, %i.ac
  br label %getClientOutputBufferMemoryUsage.exit

getClientOutputBufferMemoryUsage.exit:            ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.ai, %bb.d ], [ %i.aa, %bb.c ] ; 4 uses
  %i.aj = icmp ugt i64 %.0.i, 1024
  br i1 %i.aj, label %bb.e, label %getClientOutputBufferMemoryUsage.exit.thread

bb.e:                                             ; preds = %getClientOutputBufferMemoryUsage.exit
  %i.ak = load ptr, ptr @DefaultUser, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load atomic i32, ptr %i.al monotonic, align 8
  %i.an = and i32 %i.am, 6
  %or.cond.i = icmp eq i32 %i.an, 4
  br i1 %or.cond.i, label %getClientOutputBufferMemoryUsage.exit.thread, label %authRequired.exit

authRequired.exit:                                ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !74
  %.not5.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not5.i.not, label %bb.l, label %getClientOutputBufferMemoryUsage.exit.thread

getClientOutputBufferMemoryUsage.exit.thread:     ; preds = %bb.e, %bb.b, %authRequired.exit, %getClientOutputBufferMemoryUsage.exit
  %.0.i43 = phi i64 [ 0, %bb.b ], [ %.0.i, %authRequired.exit ], [ %.0.i, %getClientOutputBufferMemoryUsage.exit ], [ %.0.i, %bb.e ] ; 2 uses
  %i.aq = and i64 %.val.i, 2
  %.not.i39 = icmp eq i64 %i.aq, 0
  br i1 %.not.i39, label %bb.f, label %getClientType.exit

bb.f:                                             ; preds = %getClientOutputBufferMemoryUsage.exit.thread
  %i.ar = and i64 %.val.i, 5
  %or.cond.i41 = icmp eq i64 %i.ar, 1
  br i1 %or.cond.i41, label %getClientType.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = trunc i64 %.val.i to i32
  %i.at = lshr i32 %i.as, 17
  %..i = and i32 %i.at, 2
  br label %getClientType.exit

getClientType.exit:                               ; preds = %bb.f, %bb.g, %getClientOutputBufferMemoryUsage.exit.thread
  %i.au = phi i32 [ 0, %getClientOutputBufferMemoryUsage.exit.thread ], [ 1, %bb.f ], [ %..i, %bb.g ] ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 6544), i64 %i.av ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !370 ; 3 uses
  %i.ay = icmp eq i32 %i.au, 1
  %i.az = icmp ne i64 %i.ax, 0                    ; 2 uses
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 %i.ba)
  %.025 = select i1 %or.cond, i64 %spec.select, i64 %i.ax
  %.not32 = icmp uge i64 %.0.i43, %.025
  %or.cond37.not = select i1 %i.az, i1 %.not32, i1 false ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !372
  %i.bd = add i64 %i.bc, -1
  %or.cond38.not = icmp ult i64 %i.bd, %.0.i43
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  br i1 %or.cond38.not, label %.critedge, label %bb.j

.critedge:                                        ; preds = %getClientType.exit
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !114
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !90 ; 2 uses
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !114
  br label %bb.k

bb.i:                                             ; preds = %.critedge
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !114
  %i.bj = sub nsw i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !373
  %.not36 = icmp sgt i64 %i.bj, %i.bl
  %i.bm = or i1 %or.cond37.not, %.not36
  br label %bb.k

bb.j:                                             ; preds = %getClientType.exit
  store i64 0, ptr %i.be, align 8, !tbaa !114
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.2 = phi i1 [ %or.cond37.not, %bb.h ], [ %i.bm, %bb.i ], [ %or.cond37.not, %bb.j ]
  %i.bn = zext i1 %.2 to i32
  br label %bb.l

bb.l:                                             ; preds = %authRequired.exit, %bb.k
  %.0 = phi i32 [ %i.bn, %bb.k ], [ 1, %authRequired.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @flushSlavesOutputBuffers() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !257
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %0) #30
  %i.b = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not33 = icmp eq ptr %i.b, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %i.c = phi ptr [ %i.ba, %bb.o ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160  ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !84
  %.not15 = icmp eq i8 %i.g, 0
  br i1 %.not15, label %putClientInPendingWriteQueue.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @fetchClientFromIOThread(ptr noundef nonnull %i.e) #30
  %i.h = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !99 ; 2 uses
  %i.i = and i64 %.val.i, 9007199254740997
  %.not.i = icmp eq i64 %i.i, 1
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.j = call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %i.e)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.o, label %clientHasPendingReplies.exit.clientHasPendingReplies.exit.thread_crit_edge, !llvm.loop !374

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %clientHasPendingReplies.exit, label %clientHasPendingReplies.exit.thread

clientHasPendingReplies.exit:                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !143
  %.not30 = icmp eq i64 %i.q, 0
  br i1 %.not30, label %bb.o, label %clientHasPendingReplies.exit.clientHasPendingReplies.exit.thread_crit_edge, !llvm.loop !374

clientHasPendingReplies.exit.clientHasPendingReplies.exit.thread_crit_edge: ; preds = %bb.c, %clientHasPendingReplies.exit
  %.pre = load i64, ptr %i.h, align 8, !tbaa !99
  br label %clientHasPendingReplies.exit.thread, !llvm.loop !374

clientHasPendingReplies.exit.thread:              ; preds = %clientHasPendingReplies.exit.clientHasPendingReplies.exit.thread_crit_edge, %bb.d
  %i.r = phi i64 [ %.pre, %clientHasPendingReplies.exit.clientHasPendingReplies.exit.thread_crit_edge ], [ %.val.i, %bb.d ] ; 2 uses
  %i.s = and i64 %i.r, 2097152
  %.not.i20 = icmp eq i64 %i.s, 0
  br i1 %.not.i20, label %bb.e, label %putClientInPendingWriteQueue.exit

bb.e:                                             ; preds = %clientHasPendingReplies.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  %i.u = load i32, ptr %i.t, align 4, !tbaa !111
  switch i32 %i.u, label %putClientInPendingWriteQueue.exit [
    i32 0, label %bb.g
    i32 12, label %bb.g
    i32 9, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112
  %.not7.i = icmp eq i32 %i.w, 0
  br i1 %.not7.i, label %bb.g, label %putClientInPendingWriteQueue.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.e
  %i.x = or disjoint i64 %i.r, 2097152
  store i64 %i.x, ptr %i.h, align 8, !tbaa !99
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  call void @listLinkNodeHead(ptr noundef %i.y, ptr noundef nonnull %i.z) #30
  br label %putClientInPendingWriteQueue.exit

putClientInPendingWriteQueue.exit:                ; preds = %bb.g, %bb.f, %bb.e, %clientHasPendingReplies.exit.thread, %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ac = getelementptr i8, ptr %i.ab, i64 56
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !191
  %.not31 = icmp eq ptr %.val, null
  br i1 %.not31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %putClientInPendingWriteQueue.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !99
  %i.af = and i64 %i.ae, 2097152
  %i.ag = icmp ne i64 %i.af, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %putClientInPendingWriteQueue.exit
  %i.ah = phi i1 [ true, %putClientInPendingWriteQueue.exit ], [ %i.ag, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111
  switch i32 %i.aj, label %bb.o [
    i32 9, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !99 ; 2 uses
  %i.am = and i64 %i.al, 1024
  %i.an = icmp eq i64 %i.am, 0
  %or.cond = select i1 %i.an, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !112
  %.not18 = icmp eq i32 %i.ap, 0
  br i1 %.not18, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = and i64 %i.al, 9007199254740997
  %.not.i22 = icmp eq i64 %i.aq, 1
  br i1 %.not.i22, label %bb.m, label %bb.n, !prof !142

bb.m:                                             ; preds = %bb.l
  %i.ar = call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %i.e)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %clientHasPendingReplies.exit25.thread

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.au = load i64, ptr %i.at, align 8, !tbaa !87
  %.not.i.i23 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i23, label %clientHasPendingReplies.exit25, label %clientHasPendingReplies.exit25.thread

clientHasPendingReplies.exit25:                   ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !143
  %.not32 = icmp eq i64 %i.ay, 0
  br i1 %.not32, label %bb.o, label %clientHasPendingReplies.exit25.thread

clientHasPendingReplies.exit25.thread:            ; preds = %bb.m, %bb.n, %clientHasPendingReplies.exit25
  %i.az = call i32 @writeToClient(ptr noundef nonnull %i.e, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.c, %bb.j, %bb.k, %clientHasPendingReplies.exit25, %clientHasPendingReplies.exit25.thread, %bb.i, %clientHasPendingReplies.exit
  %i.ba = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updatePausedActions() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !375 ; 4 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1568), align 8, !tbaa !341
  %i.d = icmp sgt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), align 8, !tbaa !343 ; 2 uses
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1568), align 8, !tbaa !341
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ 0, %bb.c ], [ %i.e, %bb.b ]    ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1584), align 8, !tbaa !341
  %i.h = icmp sgt i64 %i.g, %i.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1576), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1584), align 8, !tbaa !341
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1576), align 8, !tbaa !343
  %i.j = or i32 %i.f, %i.i                        ; 2 uses
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ %i.f, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1600), align 8, !tbaa !341
  %i.m = icmp sgt i64 %i.l, %i.b
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1592), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1600), align 8, !tbaa !341
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1592), align 8, !tbaa !343
  %i.o = or i32 %i.k, %i.n                        ; 2 uses
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = phi i32 [ %i.k, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1616), align 8, !tbaa !341
  %i.r = icmp sgt i64 %i.q, %i.b
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1608), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1616), align 8, !tbaa !341
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1608), align 8, !tbaa !343
  %i.t = or i32 %i.p, %i.s                        ; 2 uses
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi i32 [ %i.t, %bb.l ], [ %i.p, %bb.k ]
  %i.v = and i32 %i.u, 3
  %i.w = and i32 %i.a, 3
  %i.x = icmp samesign ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !376
  call void @listRewind(ptr noundef %i.y, ptr noundef nonnull %0) #30
  %i.z = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not2.i = icmp eq ptr %i.z, null
  br i1 %.not2.i, label %unblockPostponedClients.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.z, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !160
  call void @unblockClient(ptr noundef %i.ac, i32 noundef 1) #30
  %i.ad = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %unblockPostponedClients.exit, label %.lr.ph.i, !llvm.loop !377

unblockPostponedClients.exit:                     ; preds = %.lr.ph.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.o

bb.o:                                             ; preds = %unblockPostponedClients.exit, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unblockPostponedClients() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !376
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %0) #30
  %i.b = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  call void @unblockClient(ptr noundef %i.e, i32 noundef 1) #30
  %i.f = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !377

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pauseActions(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), i64 %i.a ; 2 uses
  store i32 %2, ptr %i.b, align 8, !tbaa !343
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !341
  %i.e = icmp slt i64 %i.d, %1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 8, !tbaa !341
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @updatePausedActions()
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4, !tbaa !351
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 248), align 8, !tbaa !352
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  %i.h = and i32 %i.g, 3
  %or.cond = icmp eq i32 %i.h, 0
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @asmImportInProgress() #30
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1, i32 noundef 5380) #30
  tail call void @abort() #31
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @isPausedActions(i32 noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  %i.b = and i32 %i.a, %0
  ret i32 %i.b
}

declare i32 @asmImportInProgress() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @isPausedActionsWithUpdate(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  %i.b = and i32 %i.a, %0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @updatePausedActions()
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1544), align 8, !tbaa !353
  %i.d = and i32 %i.c, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @processEventsWhileBlocked() local_unnamed_addr #0 {
bb.a:
  tail call void @updateCachedTime(i32 noundef 0) #30
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8096), align 8, !tbaa !378
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !375
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8096), align 8, !tbaa !378
  %i.c = load i32, ptr @ProcessingEventsWhileBlocked, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @ProcessingEventsWhileBlocked, align 4, !tbaa !9
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !380
  %i.g = tail call i32 @aeProcessEvents(ptr noundef %i.f, i32 noundef 29) #30
  %i.h = sext i32 %i.g to i64
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %i.j = add nsw i64 %i.i, %i.h                   ; 3 uses
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %.not7 = icmp eq i64 %i.j, %i.e
  br i1 %.not7, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !380
  %i.l = tail call i32 @aeProcessEvents(ptr noundef %i.k, i32 noundef 29) #30
  %i.m = sext i32 %i.l to i64
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %i.o = add nsw i64 %i.n, %i.m                   ; 3 uses
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %.not7.1 = icmp eq i64 %i.o, %i.j
  br i1 %.not7.1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !380
  %i.q = tail call i32 @aeProcessEvents(ptr noundef %i.p, i32 noundef 29) #30
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %i.t = add nsw i64 %i.s, %i.r                   ; 2 uses
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %.not7.2 = icmp eq i64 %i.t, %i.o
  br i1 %.not7.2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !380
  %i.v = tail call i32 @aeProcessEvents(ptr noundef %i.u, i32 noundef 29) #30
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  %i.y = add nsw i64 %i.x, %i.w
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2456), align 8, !tbaa !379
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @whileBlockedCron() #30
  %i.z = load i32, ptr @ProcessingEventsWhileBlocked, align 4, !tbaa !9 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr @ProcessingEventsWhileBlocked, align 4, !tbaa !9
  %i.ab = icmp sgt i32 %i.z, 0
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.1, i32 noundef 5451) #30
  tail call void @abort() #31
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8096), align 8, !tbaa !378
  ret void
}

declare void @updateCachedTime(i32 noundef) local_unnamed_addr #2

declare i32 @aeProcessEvents(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @whileBlockedCron() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 131072, 1) i64 @getClientEvictionLimit() local_unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7760), align 8, !tbaa !381 ; 4 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8 ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = uitofp i64 %i.c to double
  %i.f = sitofp i64 %i.a to double
  %i.g = fneg double %i.f
  %i.h = fmul nnan double %i.g, %i.e
  %i.i = fdiv double %i.h, 1.000000e+02
  %i.j = fptoui double %i.i to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = icmp sgt i64 %i.a, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.j, %bb.b ], [ %i.a, %bb.c ]
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %.1, i64 131072)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %spec.store.select, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @evictClients() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !382 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265
  call void @listRewind(ptr noundef %i.c, ptr noundef nonnull %0) #30
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7760), align 8, !tbaa !381 ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8 ; 2 uses
  %i.g = icmp ne i64 %i.f, 0
  %or.cond.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp i64 %i.f to double
  %i.i = sitofp i64 %i.d to double
  %i.j = fneg double %i.i
  %i.k = fmul nnan double %i.j, %i.h
  %i.l = fdiv double %i.k, 1.000000e+02
  %i.m = fptoui double %i.l to i64
  br label %getClientEvictionLimit.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp sgt i64 %i.d, 0
  br i1 %i.n, label %getClientEvictionLimit.exit, label %getClientEvictionLimit.exit.thread

getClientEvictionLimit.exit:                      ; preds = %bb.c, %bb.d
  %.1.i = phi i64 [ %i.m, %bb.c ], [ %i.d, %bb.d ]
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %.1.i, i64 131072) ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3048), align 8, !tbaa !20
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3064), align 8, !tbaa !20
  %i.q = add i64 %i.p, %i.o
  %.not3037 = icmp ult i64 %i.q, %spec.store.select.i
  br i1 %.not3037, label %getClientEvictionLimit.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %getClientEvictionLimit.exit, %bb.n
  %.038 = phi i32 [ %.2, %bb.n ], [ 18, %getClientEvictionLimit.exit ] ; 6 uses
  %i.r = call ptr @listNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not31 = icmp eq ptr %i.r, null
  br i1 %.not31, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !84    ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %.not32 = icmp eq i8 %i.v, 0                    ; 2 uses
  br i1 %.not32, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 800 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !253
  call void @pauseIOThread(i32 noundef %i.w) #30
  %i.z = call i32 @updateClientMemUsageAndBucket(ptr noundef nonnull %i.t) #30 ; 0 uses
  %.pre = load i64, ptr %i.x, align 8, !tbaa !253
  %i.aa = icmp ult i64 %.pre, %i.y
  br i1 %i.aa, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 824
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !262
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !382
  %i.ae = sext i32 %.038 to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = icmp eq ptr %i.ac, %i.af
  br i1 %i.ag, label %.thread, label %.thread43

.thread:                                          ; preds = %bb.e, %bb.g, %bb.f
  %i.ah = call ptr @sdsempty() #30
  %i.ai = call ptr @catClientInfoString(ptr noundef %i.ah, ptr noundef nonnull %i.t) ; 2 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !159
  %i.ak = icmp sgt i32 %i.aj, 2
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.255, ptr noundef %i.ai) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  call void @freeClient(ptr noundef nonnull %i.t)
  call void @sdsfree(ptr noundef %i.ai) #30
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2616), align 8, !tbaa !383
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2616), align 8, !tbaa !383
  br i1 %.not32, label %bb.n, label %.thread43

.thread43:                                        ; preds = %bb.g, %bb.i
  call void @resumeIOThread(i32 noundef %i.w) #30
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !382
  %i.ao = sext i32 %.038 to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ao
  br label %.sink.split

bb.j:                                             ; preds = %.lr.ph
  %i.aq = icmp slt i32 %.038, 1
  br i1 %i.aq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !159
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %getClientEvictionLimit.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.256) #30
  br label %getClientEvictionLimit.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.at = add nsw i32 %.038, -1                   ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !382
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av
  br label %.sink.split

.sink.split:                                      ; preds = %.thread43, %bb.m
  %.sink.in = phi ptr [ %i.aw, %bb.m ], [ %i.ap, %.thread43 ]
  %.2.ph = phi i32 [ %i.at, %bb.m ], [ %.038, %.thread43 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !265
  call void @listRewind(ptr noundef %.sink, ptr noundef nonnull %0) #30
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.i
  %.2 = phi i32 [ %.038, %bb.i ], [ %.2.ph, %.sink.split ]
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3048), align 8, !tbaa !20
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3064), align 8, !tbaa !20
  %i.az = add i64 %i.ay, %i.ax
  %.not30 = icmp ult i64 %i.az, %spec.store.select.i
  br i1 %.not30, label %getClientEvictionLimit.exit.thread, label %.lr.ph

getClientEvictionLimit.exit.thread:               ; preds = %bb.n, %getClientEvictionLimit.exit, %bb.k, %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %getClientEvictionLimit.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @initPendingCommand(ptr nofree noundef writeonly captures(none) initializes((0, 144)) %0) local_unnamed_addr #18 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 -1, ptr %i.a, align 4, !tbaa !293
  ret void
}

declare void @getKeysFreeResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @getClientCachedKeyResult(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !284  ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @preprocessCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #30
  %i.f = load i32, ptr %i.c, align 8, !tbaa !284
  %i.g = or i32 %i.f, 2                           ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !284
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.i = and i32 %i.h, 4
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !313
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @shrinkPendingCommandPool() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2436), align 4, !tbaa !289 ; 2 uses
  %i.b = icmp slt i32 %i.a, 17
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2432), align 8, !tbaa !288 ; 4 uses
  %i.d = icmp sgt i32 %i.c, 33
  %i.e = sdiv i32 %i.c, 2
  %i.f = select i1 %i.d, i32 %i.e, i32 16         ; 4 uses
  %i.g = icmp sgt i32 %i.c, %i.f
  %.pre9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2424), align 8, !tbaa !290 ; 2 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.h = phi ptr [ %i.af, %bb.f ], [ %.pre9, %bb.b ] ; 2 uses
  %i.i = phi i32 [ %i.ae, %bb.f ], [ %i.c, %bb.b ]
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2432), align 8, !tbaa !288
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !294  ; 6 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @getKeysFreeResult(ptr noundef nonnull %i.n) #30
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !269  ; 2 uses
  %.not21.i = icmp eq ptr %i.p, null
  br i1 %.not21.i, label %freePendingCommand.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.q = load i32, ptr %i.m, align 8, !tbaa !272  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre27.i = load ptr, ptr %i.o, align 8, !tbaa !269
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.s = phi ptr [ %.pre27.i, %._crit_edge.loopexit.i ], [ %i.p, %.preheader.i ]
  tail call void @zfree(ptr noundef %i.s) #30
  br label %freePendingCommand.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.t = phi i32 [ %i.x, %bb.e ], [ %i.q, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.preheader.i ] ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !269
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173  ; 2 uses
  %.not24.i = icmp eq ptr %i.w, null
  br i1 %.not24.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @decrRefCount(ptr noundef nonnull %i.w) #30
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !272
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.x = phi i32 [ %i.t, %.lr.ph.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !273

freePendingCommand.exit:                          ; preds = %bb.c, %._crit_edge.i
  tail call void @zfree(ptr noundef nonnull %i.m) #30
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2424), align 8, !tbaa !290 ; 2 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2432), align 8, !tbaa !288 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac
  store ptr null, ptr %i.ad, align 8, !tbaa !294
  br label %bb.f

bb.f:                                             ; preds = %freePendingCommand.exit, %.lr.ph
  %i.ae = phi i32 [ %i.ab, %freePendingCommand.exit ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.af = phi ptr [ %i.aa, %freePendingCommand.exit ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.ag = icmp sgt i32 %i.ae, %i.f
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !384

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2436), align 4, !tbaa !289
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi ptr [ %i.af, %._crit_edge.loopexit ], [ %.pre9, %bb.b ]
  %i.ai = phi i32 [ %.pre8, %._crit_edge.loopexit ], [ %i.a, %bb.b ]
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2436), align 4, !tbaa !289
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call ptr @zrealloc(ptr noundef %i.ah, i64 noundef %i.ak) #35
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2424), align 8, !tbaa !290
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !159
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2436), align 4, !tbaa !289
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.258, i32 noundef %i.ai, i32 noundef %i.ao) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge, %bb.a
  ret void
}

declare void @listLinkNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @releaseBufReferences(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not2334 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not2334, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.a
  br i1 %.not2334, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.c = load i8, ptr %i.b, align 1, !tbaa !84
  %.fr24 = freeze i8 %i.c
  %.not39 = icmp eq i8 %.fr24, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not39, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.022.us = phi ptr [ %i.x, %bb.f ], [ %1, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.022.us, i64 9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.022.us, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !156
  switch i8 %i.i, label %.split.us [
    i8 1, label %bb.c
    i8 0, label %bb.f
  ], !prof !385

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.j = load ptr, ptr %i.g, align 1, !tbaa !176  ; 2 uses
  %.not21.us = icmp eq ptr %i.j, null
  br i1 %.not21.us, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8, !tbaa !250  ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !274  ; 3 uses
  %.not.i.us = icmp slt i32 %i.k, %i.l
  br i1 %.not.i.us, label %._crit_edge.i.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not11.i.us = icmp eq i32 %i.l, 0
  %i.m = shl nsw i32 %i.l, 1
  %spec.select.i.us = select i1 %.not11.i.us, i32 8, i32 %i.m ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !251
  %i.o = sext i32 %spec.select.i.us to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call ptr @zrealloc(ptr noundef %i.n, i64 noundef %i.p) #35 ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !251
  store i32 %spec.select.i.us, ptr %i.e, align 4, !tbaa !274
  %.pre12.i.us = load i32, ptr %i.d, align 8, !tbaa !250
  br label %ioDeferFreeRobj.exit.us

._crit_edge.i.us:                                 ; preds = %bb.d
  %.pre.i.us = load ptr, ptr %i.f, align 8, !tbaa !251
  br label %ioDeferFreeRobj.exit.us

ioDeferFreeRobj.exit.us:                          ; preds = %._crit_edge.i.us, %bb.e
  %i.r = phi i32 [ %i.k, %._crit_edge.i.us ], [ %.pre12.i.us, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.us, %._crit_edge.i.us ], [ %i.q, %bb.e ]
  %i.t = add nsw i32 %i.r, 1
  store i32 %i.t, ptr %i.d, align 8, !tbaa !250
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u
  store ptr %i.j, ptr %i.v, align 8, !tbaa !173
  store ptr null, ptr %i.g, align 1, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %ioDeferFreeRobj.exit.us, %bb.c, %.lr.ph.split.us
  %i.w = load i64, ptr %.022.us, align 1, !tbaa !158
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.a
  br i1 %i.y, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !386

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.i
  %.022 = phi ptr [ %i.ae, %bb.i ], [ %1, %.lr.ph.split.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.022, i64 9 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !156
  switch i8 %i.ab, label %.split.us [
    i8 1, label %bb.g
    i8 0, label %bb.i
  ], !prof !385

bb.g:                                             ; preds = %.lr.ph.split
  %i.ac = load ptr, ptr %i.z, align 1, !tbaa !176 ; 2 uses
  %.not21 = icmp eq ptr %i.ac, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @decrRefCount(ptr noundef nonnull %i.ac) #30
  store ptr null, ptr %i.z, align 1, !tbaa !176
  br label %bb.i

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  tail call void @_serverAssert(ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.1, i32 noundef 2039) #30
  tail call void @abort() #31
  unreachable

bb.i:                                             ; preds = %.lr.ph.split, %bb.g, %bb.h
  %i.ad = load i64, ptr %.022, align 1, !tbaa !158
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.a
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge, !llvm.loop !386

._crit_edge:                                      ; preds = %bb.f, %bb.i, %.thread, %bb.b
  ret void
}

declare void @incrementalTrimReplicationBacklog(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_writevToClient(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ReplyIOV, align 8           ; 9 uses
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %4 = alloca %struct.listIter, align 8           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !387
  %narrow = tail call i16 @llvm.umin.i16(i16 %i.e, i16 1024) ; 2 uses
  %spec.select = zext nneg i16 %narrow to i32     ; 3 uses
  %i.f = zext nneg i16 %narrow to i64
  %5 = alloca %struct.iovec, i64 %i.f, align 16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %5, ptr %2, align 8, !tbaa !388
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !391
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  store i32 0, ptr %i.h, align 4, !tbaa !392
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !393
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87   ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.m = load i8, ptr %i.l, align 8, !tbaa !92
  %.not121 = icmp eq i8 %i.m, 0
  br i1 %.not121, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i64, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.r, ptr %5, align 16, !tbaa !394
  %i.s = sub i64 %i.k, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !396
  store i32 1, ptr %i.h, align 4, !tbaa !392
  store i64 %i.s, ptr %i.i, align 8, !tbaa !393
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93   ; 3 uses
  %.not122 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82   ; 3 uses
  br i1 %.not122, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not123 = icmp ult ptr %i.v, %i.x
  br i1 %.not123, label %.critedge141, label %.thread, !prof !397

.thread:                                          ; preds = %bb.d, %bb.e
  %i.y = phi ptr [ %i.v, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.k ; 2 uses
  %i.aa = icmp ult ptr %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %.critedge141, !prof !13

.critedge141:                                     ; preds = %bb.e, %.thread
  call void @_serverAssert(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.1, i32 noundef 2483) #30
  call void @abort() #31
  unreachable

bb.f:                                             ; preds = %.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  call fastcc void @processEncodedBufferForWrite(ptr noundef %2, ptr noundef %i.y, ptr noundef nonnull %i.z, i64 noundef %i.ac)
  %.pre163 = load i32, ptr %i.h, align 4, !tbaa !392
  %.pre164 = load i32, ptr %i.g, align 8, !tbaa !391
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.a
  %i.ad = phi i32 [ %spec.select, %bb.c ], [ %.pre164, %bb.f ], [ %spec.select, %bb.a ]
  %i.ae = phi i32 [ 1, %bb.c ], [ %.pre163, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.not.i = icmp slt i32 %i.ae, %i.ad
  br i1 %.not.i, label %replyIOVReachLimit.exit, label %replyIOVReachLimit.exit.thread

replyIOVReachLimit.exit:                          ; preds = %bb.g
  %i.af = load i64, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 65536
  br i1 %i.ag, label %bb.h, label %replyIOVReachLimit.exit.thread

bb.h:                                             ; preds = %replyIOVReachLimit.exit
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !87
  %.not125 = icmp eq i64 %i.ah, 0
  br i1 %.not125, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !93
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.am = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.an = phi ptr [ %i.al, %bb.i ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  call void @listRewind(ptr noundef %i.ap, ptr noundef nonnull %3) #30
  %i.aq = call ptr @listNext(ptr noundef nonnull %3) #30 ; 3 uses
  %.not127157 = icmp eq ptr %i.aq, null
  br i1 %.not127157, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !160 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20 ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !17
  %.not129.peel = icmp eq i8 %i.ay, 0
  %.not130.peel = icmp eq ptr %i.an, null         ; 2 uses
  br i1 %.not129.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 17 ; 2 uses
  %i.ba = select i1 %.not130.peel, ptr %i.az, ptr %i.an
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  call fastcc void @processEncodedBufferForWrite(ptr noundef %2, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef %i.am)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %.not130.peel, label %bb.o, label %bb.u, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.am
  %i.be = sext i32 %i.ae to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %5, i64 %i.be ; 2 uses
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !394
  %i.bg = sub i64 %i.av, %i.am                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !396
  %i.bi = add nsw i32 %i.ae, 1
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !392
  %i.bj = add i64 %i.af, %i.bg
  store i64 %i.bj, ptr %i.i, align 8, !tbaa !393
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.bk = load i64, ptr %i.at, align 8, !tbaa !20
  %i.bl = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.bm = sub i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.ar, align 8, !tbaa !161
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !113
  call void @listDelNode(ptr noundef %i.bn, ptr noundef nonnull %i.aq) #30
  br label %bb.q, !llvm.loop !398

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.bo = call ptr @listNext(ptr noundef nonnull %3) #30 ; 2 uses
  %.not127.peel = icmp eq ptr %i.bo, null
  br i1 %.not127.peel, label %.critedge.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.q, %bb.x
  %i.bp = phi ptr [ %i.cm, %bb.x ], [ %i.bo, %bb.q ] ; 2 uses
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !392 ; 3 uses
  %i.br = load i32, ptr %i.g, align 8, !tbaa !391
  %.not.i143 = icmp slt i32 %i.bq, %i.br
  %i.bs = load i64, ptr %i.i, align 8             ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 65536
  %or.cond = select i1 %.not.i143, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.r, label %.critedge.loopexit

bb.r:                                             ; preds = %.peel.next
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !160 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !20 ; 4 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.cb = sub i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.ar, align 8, !tbaa !161
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !113
  call void @listDelNode(ptr noundef %i.cc, ptr noundef nonnull %i.bp) #30
  br label %bb.x, !llvm.loop !398

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !17
  %.not129 = icmp eq i8 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 17 ; 3 uses
  br i1 %.not129, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.n
  call void @_serverAssert(ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.1, i32 noundef 2508) #30
  call void @abort() #31
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = sext i32 %i.bq to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %5, i64 %i.cg ; 2 uses
  store ptr %i.cf, ptr %i.ch, align 16, !tbaa !394
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.bx, ptr %i.ci, align 8, !tbaa !396
  %i.cj = add nsw i32 %i.bq, 1
  store i32 %i.cj, ptr %i.h, align 4, !tbaa !392
  %i.ck = add i64 %i.bs, %i.bx
  store i64 %i.ck, ptr %i.i, align 8, !tbaa !393
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  call fastcc void @processEncodedBufferForWrite(ptr noundef %2, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cl, i64 noundef 0)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s
  %i.cm = call ptr @listNext(ptr noundef nonnull %3) #30 ; 2 uses
  %.not127 = icmp eq ptr %i.cm, null
  br i1 %.not127, label %.critedge.loopexit, label %.peel.next, !llvm.loop !399

.critedge.loopexit:                               ; preds = %.peel.next, %bb.x, %bb.q
  %.pr.pre.pre = load i32, ptr %i.h, align 4, !tbaa !392
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.j
  %.pr.pre = phi i32 [ %.pr.pre.pre, %.critedge.loopexit ], [ %i.ae, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %replyIOVReachLimit.exit.thread

replyIOVReachLimit.exit.thread:                   ; preds = %.critedge, %replyIOVReachLimit.exit, %bb.g
  %i.cn = phi i32 [ %i.ae, %bb.g ], [ %i.ae, %replyIOVReachLimit.exit ], [ %.pr.pre, %.critedge ] ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.an, label %bb.y

bb.y:                                             ; preds = %replyIOVReachLimit.exit.thread
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !401
  %i.ct = call i32 %i.cs(ptr noundef nonnull %i.cp, ptr noundef nonnull %5, i32 noundef range(i32 1, 0) %i.cn) #30, !inline_history !402 ; 2 uses
  %i.cu = sext i32 %i.ct to i64                   ; 6 uses
  store i64 %i.cu, ptr %1, align 8, !tbaa !20
  %i.cv = icmp slt i32 %i.ct, 1
  br i1 %i.cv, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.cu, ptr %i.a, align 8, !tbaa !20
  %i.cw = load i64, ptr %i.j, align 8, !tbaa !87  ; 3 uses
  %.not132 = icmp eq i64 %i.cw, 0
  br i1 %.not132, label %.thread193, label %bb.aa

.thread193:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !113
  call void @listRewind(ptr noundef %i.cy, ptr noundef nonnull %4) #30
  br label %.preheader

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !92
  %.not133 = icmp eq i8 %i.da, 0
  br i1 %.not133, label %bb.ab, label %bb.ae, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !98 ; 2 uses
  %i.dd = sub i64 %i.cw, %i.dc
  %i.de = add i64 %i.dc, %i.cu
  store i64 %i.de, ptr %i.db, align 8, !tbaa !98
  %sext = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %sext, 32                ; 2 uses
  %.not136 = icmp sgt i64 %i.df, %i.cu
  br i1 %.not136, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 0, ptr %i.j, align 8, !tbaa !87
  store i64 0, ptr %i.db, align 8, !tbaa !98
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dg = sub nsw i64 %i.cu, %i.df                ; 2 uses
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !20
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !93 ; 2 uses
  %.not134 = icmp eq ptr %i.di, null
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !82 ; 2 uses
  %. = select i1 %.not134, ptr %i.dk, ptr %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.cw
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dn = call fastcc ptr @processSentDataInEncodedBuffer(ptr noundef nonnull %0, ptr noundef %., ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm, ptr noundef %i.a) ; 2 uses
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !93
  %.not135 = icmp eq ptr %i.dn, null
  br i1 %.not135, label %bb.af, label %thread-pre-split147

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %i.j, align 8, !tbaa !87
  store i8 0, ptr %i.cz, align 8, !tbaa !92
  store i64 0, ptr %i.dm, align 8, !tbaa !98
  br label %thread-pre-split147

thread-pre-split147:                              ; preds = %bb.af, %bb.ae
  %.old.pr = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split147, %bb.ad
  %.old = phi i64 [ %.old.pr, %thread-pre-split147 ], [ %i.dg, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !113
  call void @listRewind(ptr noundef %i.dp, ptr noundef nonnull %4) #30
  %.old142 = icmp sgt i64 %.old, 0
  br i1 %.old142, label %.preheader, label %.thread150

.preheader:                                       ; preds = %.thread193, %bb.ag
  %i.dq = phi ptr [ %i.cx, %.thread193 ], [ %i.do, %bb.ag ] ; 2 uses
  %.old196 = phi i64 [ %i.cu, %.thread193 ], [ %.old, %bb.ag ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader, %bb.am
  %i.du = phi i64 [ %.old196, %.preheader ], [ %i.ew, %bb.am ] ; 3 uses
  %i.dv = call ptr @listNext(ptr noundef nonnull %4) #30 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !160 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !17
  %.not137 = icmp eq i8 %i.dz, 0
  br i1 %.not137, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.ec = load i64, ptr %i.ds, align 8, !tbaa !98 ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = icmp slt i64 %i.du, %i.ed
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = add i64 %i.ec, %i.du
  store i64 %i.ef, ptr %i.ds, align 8, !tbaa !98
  br label %.thread150

bb.ak:                                            ; preds = %bb.ai
  %i.eg = sub nsw i64 %i.du, %i.ed                ; 2 uses
  store i64 %i.eg, ptr %i.a, align 8, !tbaa !20
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.ei = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.ej = sub i64 %i.ei, %i.eh
  store i64 %i.ej, ptr %i.dt, align 8, !tbaa !161
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !113
  call void @listDelNode(ptr noundef %i.ek, ptr noundef nonnull %i.dv) #30
  store i64 0, ptr %i.ds, align 8, !tbaa !98
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.el = load ptr, ptr %i.dr, align 8, !tbaa !93 ; 2 uses
  %.not138 = icmp eq ptr %i.el, null
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 17 ; 2 uses
  %i.en = select i1 %.not138, ptr %i.em, ptr %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  %i.er = call fastcc ptr @processSentDataInEncodedBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ds, ptr noundef %i.a) ; 2 uses
  store ptr %i.er, ptr %i.dr, align 8, !tbaa !93
  %.not139 = icmp eq ptr %i.er, null
  br i1 %.not139, label %.thread148, label %.thread150

.thread148:                                       ; preds = %bb.al
  %i.es = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.et = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.eu = sub i64 %i.et, %i.es
  store i64 %i.eu, ptr %i.dt, align 8, !tbaa !161
  %i.ev = load ptr, ptr %i.dq, align 8, !tbaa !113
  call void @listDelNode(ptr noundef %i.ev, ptr noundef nonnull %i.dv) #30
  store i64 0, ptr %i.ds, align 8, !tbaa !98
  %.pre169 = load i64, ptr %i.a, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %.thread148
  %i.ew = phi i64 [ %i.eg, %bb.ak ], [ %.pre169, %.thread148 ] ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %bb.ah, label %.thread150

.thread150:                                       ; preds = %bb.al, %bb.am, %bb.aj, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.an

bb.an:                                            ; preds = %bb.y, %replyIOVReachLimit.exit.thread, %.thread150
  %.0 = phi i32 [ 0, %.thread150 ], [ 0, %replyIOVReachLimit.exit.thread ], [ -1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @processEncodedBufferForWrite(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3) unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.c = icmp ult ptr %1, %2
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !391  ; 6 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !392 ; 6 uses
  %.not.i.peel = icmp slt i32 %.promoted, %i.e
  br i1 %.not.i.peel, label %replyIOVReachLimit.exit.peel, label %.critedge

replyIOVReachLimit.exit.peel:                     ; preds = %.lr.ph
  %i.f = load i64, ptr %i.b, align 8, !tbaa !393  ; 4 uses
  %i.g = icmp ult i64 %i.f, 65536
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %replyIOVReachLimit.exit.peel
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !156
  %i.j = icmp eq i8 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  br i1 %i.j, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.m = load i32, ptr %i.l, align 1, !tbaa !178
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = load ptr, ptr %i.k, align 1, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.val.i.peel = load i8, ptr %i.r, align 1, !tbaa !17 ; 2 uses
  %i.s = and i8 %.val.i.peel, 7
  switch i8 %i.s, label %sdslen.exit.peel [
    i8 0, label %bb.h
    i8 1, label %bb.g
    i8 2, label %bb.f
    i8 3, label %bb.e
    i8 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !20
  br label %sdslen.exit.peel

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -9
  %i.w = load i32, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i32 %i.w to i64
  br label %sdslen.exit.peel

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -5
  %i.z = load i16, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i16 %i.z to i64
  br label %sdslen.exit.peel

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i64
  br label %sdslen.exit.peel

bb.h:                                             ; preds = %bb.c
  %i.ae = lshr i8 %.val.i.peel, 3
  %i.af = zext nneg i8 %i.ae to i64
  br label %sdslen.exit.peel

sdslen.exit.peel:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.peel = phi i64 [ %i.u, %bb.d ], [ %i.af, %bb.h ], [ %i.ad, %bb.g ], [ %i.aa, %bb.f ], [ %i.x, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.ag = icmp ult i64 %3, %i.n
  br i1 %i.ag, label %replyIOVReachLimit.exit83.peel, label %bb.i

bb.i:                                             ; preds = %sdslen.exit.peel
  %i.ah = sub nuw i64 %3, %i.n
  br label %bb.j

replyIOVReachLimit.exit83.peel:                   ; preds = %sdslen.exit.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %3
  %i.ak = load ptr, ptr %0, align 8, !tbaa !388
  %i.al = sext i32 %.promoted to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !394
  %i.an = sub nuw nsw i64 %i.n, %3                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !396
  %i.ap = add nsw i32 %.promoted, 1               ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !392
  %i.aq = add nuw nsw i64 %i.f, %i.an             ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !393
  br label %bb.j

bb.j:                                             ; preds = %replyIOVReachLimit.exit83.peel, %bb.i
  %i.ar = phi i64 [ %i.aq, %replyIOVReachLimit.exit83.peel ], [ %i.f, %bb.i ] ; 4 uses
  %i.as = phi i32 [ %i.ap, %replyIOVReachLimit.exit83.peel ], [ %.promoted, %bb.i ] ; 5 uses
  %.169.peel = phi i64 [ 0, %replyIOVReachLimit.exit83.peel ], [ %i.ah, %bb.i ] ; 4 uses
  %i.at = icmp ult i64 %.169.peel, %.0.i.peel
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = sub nuw i64 %.169.peel, %.0.i.peel      ; 2 uses
  %i.av = icmp ult i64 %i.au, 2
  br i1 %i.av, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.j
  %.not.i84.peel = icmp slt i32 %i.as, %i.e
  %i.aw = icmp ult i64 %i.ar, 65536
  %or.cond122 = select i1 %.not.i84.peel, i1 %i.aw, i1 false
  br i1 %or.cond122, label %.thread.peel, label %.critedge

.thread.peel:                                     ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %.169.peel
  %i.ay = load ptr, ptr %0, align 8, !tbaa !388
  %i.az = sext i32 %i.as to i64
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !394
  %i.bb = sub i64 %.0.i.peel, %.169.peel          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !396
  %i.bd = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !392
  %i.be = add i64 %i.ar, %i.bb                    ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !393
  br label %bb.m

bb.m:                                             ; preds = %.thread.peel, %bb.k
  %i.bf = phi i64 [ %i.be, %.thread.peel ], [ %i.ar, %bb.k ] ; 2 uses
  %i.bg = phi i32 [ %i.bd, %.thread.peel ], [ %i.as, %bb.k ] ; 3 uses
  %.291.peel = phi i64 [ 0, %.thread.peel ], [ %i.au, %bb.k ] ; 2 uses
  %.not.i86.peel = icmp slt i32 %i.bg, %i.e
  %i.bh = icmp ult i64 %i.bf, 65536
  %or.cond123 = select i1 %.not.i86.peel, i1 %i.bh, i1 false
  br i1 %or.cond123, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.291.peel
  %i.bk = load ptr, ptr %0, align 8, !tbaa !388
  %i.bl = sext i32 %i.bg to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !394
  %i.bn = sub nuw nsw i64 2, %.291.peel           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !396
  %i.bp = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !392
  %i.bq = add nuw nsw i64 %i.bf, %i.bn
  br label %.sink.split

bb.o:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  %i.bs = load ptr, ptr %0, align 8, !tbaa !388
  %i.bt = sext i32 %.promoted to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !394
  %i.bv = load i64, ptr %1, align 1, !tbaa !158
  %i.bw = sub i64 %i.bv, %3                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !396
  %i.by = add nsw i32 %.promoted, 1               ; 2 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !392
  %i.bz = add i64 %i.f, %i.bw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.sink = phi i64 [ %i.bz, %bb.o ], [ %i.bq, %bb.n ] ; 2 uses
  %.ph124 = phi i32 [ %i.by, %bb.o ], [ %i.bp, %bb.n ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !393
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k
  %i.ca = phi i64 [ %i.ar, %bb.k ], [ %.sink, %.sink.split ]
  %i.cb = phi i32 [ %i.as, %bb.k ], [ %.ph124, %.sink.split ]
  %i.cc = load i64, ptr %1, align 1, !tbaa !158
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 9      ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %2
  br i1 %i.cf, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %bb.p, %bb.ac
  %i.cg = phi i64 [ %i.ep, %bb.ac ], [ %i.ca, %bb.p ] ; 4 uses
  %i.ch = phi i32 [ %i.eq, %bb.ac ], [ %i.cb, %bb.p ] ; 6 uses
  %.07093 = phi ptr [ %i.et, %bb.ac ], [ %i.ce, %bb.p ] ; 8 uses
  %.not.i = icmp slt i32 %i.ch, %i.e
  %i.ci = icmp ult i64 %i.cg, 65536
  %or.cond = select i1 %.not.i, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.peel.next
  %i.cj = getelementptr inbounds nuw i8, ptr %.07093, i64 8
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !156
  %i.cl = icmp eq i8 %i.ck, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %.07093, i64 9 ; 2 uses
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %0, align 8, !tbaa !388
  %i.co = sext i32 %i.ch to i64
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !394
  %i.cq = load i64, ptr %.07093, align 1, !tbaa !158 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !396
  %i.cs = add nsw i32 %i.ch, 1                    ; 2 uses
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !392
  %i.ct = add i64 %i.cg, %i.cq
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.07093, i64 17
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !178 ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = load ptr, ptr %i.cm, align 1, !tbaa !176
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !14 ; 6 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %.val.i = load i8, ptr %i.da, align 1, !tbaa !17 ; 2 uses
  %i.db = and i8 %.val.i, 7
  switch i8 %i.db, label %sdslen.exit [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.dc = lshr i8 %.val.i, 3
  %i.dd = zext nneg i8 %i.dc to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = zext i8 %i.df to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !18
  %i.dj = zext i16 %i.di to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !9
  %i.dm = zext i32 %i.dl to i64
  br label %sdslen.exit

bb.x:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %i.do, %bb.x ], [ %i.dd, %bb.t ], [ %i.dg, %bb.u ], [ %i.dj, %bb.v ], [ %i.dm, %bb.w ], [ 0, %bb.s ] ; 3 uses
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %bb.y, label %replyIOVReachLimit.exit83

replyIOVReachLimit.exit83:                        ; preds = %sdslen.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %.07093, i64 21
  %i.dq = load ptr, ptr %0, align 8, !tbaa !388
  %i.dr = sext i32 %i.ch to i64
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !394
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.cw, ptr %i.dt, align 8, !tbaa !396
  %i.du = add nsw i32 %i.ch, 1                    ; 2 uses
  store i32 %i.du, ptr %i.a, align 4, !tbaa !392
  %i.dv = add nuw nsw i64 %i.cg, %i.cw            ; 2 uses
  store i64 %i.dv, ptr %i.b, align 8, !tbaa !393
  br label %bb.y

bb.y:                                             ; preds = %sdslen.exit, %replyIOVReachLimit.exit83
  %i.dw = phi i64 [ %i.dv, %replyIOVReachLimit.exit83 ], [ %i.cg, %sdslen.exit ] ; 3 uses
  %i.dx = phi i32 [ %i.du, %replyIOVReachLimit.exit83 ], [ %i.ch, %sdslen.exit ] ; 4 uses
  %.not119 = icmp eq i64 %.0.i, 0
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i84 = icmp slt i32 %i.dx, %i.e
  %i.dy = icmp samesign ult i64 %i.dw, 65536
  %or.cond120 = select i1 %.not.i84, i1 %i.dy, i1 false
  br i1 %or.cond120, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.z
  %i.dz = load ptr, ptr %0, align 8, !tbaa !388
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  store ptr %i.cz, ptr %i.eb, align 8, !tbaa !394
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.0.i, ptr %i.ec, align 8, !tbaa !396
  %i.ed = add nsw i32 %i.dx, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !392
  %i.ee = add i64 %i.dw, %.0.i                    ; 2 uses
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !393
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.thread
  %i.ef = phi i64 [ %i.ee, %.thread ], [ %i.dw, %bb.y ] ; 2 uses
  %i.eg = phi i32 [ %i.ed, %.thread ], [ %i.dx, %bb.y ] ; 3 uses
  %.not.i86 = icmp slt i32 %i.eg, %i.e
  %i.eh = icmp ult i64 %i.ef, 65536
  %or.cond121 = select i1 %.not.i86, i1 %i.eh, i1 false
  br i1 %or.cond121, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %.07093, i64 45
  %i.ej = load ptr, ptr %0, align 8, !tbaa !388
  %i.ek = sext i32 %i.eg to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !394
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 2, ptr %i.em, align 8, !tbaa !396
  %i.en = add nsw i32 %i.eg, 1                    ; 2 uses
  store i32 %i.en, ptr %i.a, align 4, !tbaa !392
  %i.eo = add nuw nsw i64 %i.ef, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.r
  %i.ep = phi i64 [ %i.eo, %bb.ab ], [ %i.ct, %bb.r ] ; 2 uses
  %i.eq = phi i32 [ %i.en, %bb.ab ], [ %i.cs, %bb.r ]
  store i64 %i.ep, ptr %i.b, align 8, !tbaa !393
  %i.er = load i64, ptr %.07093, align 1, !tbaa !158
  %i.es = getelementptr i8, ptr %.07093, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 9      ; 2 uses
  %i.eu = icmp ult ptr %i.et, %2
  br i1 %i.eu, label %.peel.next, label %.critedge, !llvm.loop !403

.critedge:                                        ; preds = %bb.ac, %.peel.next, %bb.z, %bb.aa, %.lr.ph, %replyIOVReachLimit.exit.peel, %bb.l, %bb.m, %bb.p, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @processSentDataInEncodedBuffer(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = icmp ult ptr %1, %2                      ; 2 uses
  br i1 %.not, label %.thread109, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %.lr.ph, label %.critedge

.thread109:                                       ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.split.preheader, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.c = load i8, ptr %i.b, align 1, !tbaa !84
  %.fr77 = freeze i8 %i.c
  %.not130 = icmp eq i8 %.fr77, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not130, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread109, %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.04667.us = phi ptr [ %i.bf, %bb.n ], [ %1, %.lr.ph ] ; 9 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !20     ; 7 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %.04667.us, i64 8
  %i.j = load i8, ptr %i.i, align 1, !tbaa !156
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.04667.us, i64 9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04667.us, i64 17
  %i.n = load i32, ptr %i.m, align 1, !tbaa !178
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.l, align 1, !tbaa !176  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.val.i.us = load i8, ptr %i.s, align 1, !tbaa !17 ; 2 uses
  %i.t = and i8 %.val.i.us, 7
  switch i8 %i.t, label %sdslen.exit.us [
    i8 0, label %bb.i
    i8 1, label %bb.h
    i8 2, label %bb.g
    i8 3, label %bb.f
    i8 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !20
  br label %sdslen.exit.us

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit.us

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i16 %i.aa to i64
  br label %sdslen.exit.us

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 -3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i64
  br label %sdslen.exit.us

bb.i:                                             ; preds = %bb.d
  %i.af = lshr i8 %.val.i.us, 3
  %i.ag = zext nneg i8 %i.af to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.us = phi i64 [ %i.v, %bb.e ], [ %i.ag, %bb.i ], [ %i.ae, %bb.h ], [ %i.ab, %bb.g ], [ %i.y, %bb.f ], [ 0, %bb.d ]
  %i.ah = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ai = add nuw nsw i64 %i.o, 2
  %i.aj = add i64 %i.ai, %.0.i.us
  %i.ak = sub i64 %i.aj, %i.ah                    ; 2 uses
  %.not56.us = icmp slt i64 %i.g, %i.ak
  br i1 %.not56.us, label %.thread, label %bb.j

bb.j:                                             ; preds = %sdslen.exit.us
  %i.al = sub i64 %i.g, %i.ak
  store i64 %i.al, ptr %4, align 8, !tbaa !20
  %i.am = load i32, ptr %i.d, align 8, !tbaa !250 ; 2 uses
  %i.an = load i32, ptr %i.e, align 4, !tbaa !274 ; 3 uses
  %.not.i.us = icmp slt i32 %i.am, %i.an
  br i1 %.not.i.us, label %._crit_edge.i.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not11.i.us = icmp eq i32 %i.an, 0
  %i.ao = shl nsw i32 %i.an, 1
  %spec.select.i.us = select i1 %.not11.i.us, i32 8, i32 %i.ao ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !251
  %i.aq = sext i32 %spec.select.i.us to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = tail call ptr @zrealloc(ptr noundef %i.ap, i64 noundef %i.ar) #35 ; 2 uses
  store ptr %i.as, ptr %i.f, align 8, !tbaa !251
  store i32 %spec.select.i.us, ptr %i.e, align 4, !tbaa !274
  %.pre12.i.us = load i32, ptr %i.d, align 8, !tbaa !250
  br label %ioDeferFreeRobj.exit.us

._crit_edge.i.us:                                 ; preds = %bb.j
  %.pre.i.us = load ptr, ptr %i.f, align 8, !tbaa !251
  br label %ioDeferFreeRobj.exit.us

ioDeferFreeRobj.exit.us:                          ; preds = %._crit_edge.i.us, %bb.k
  %i.at = phi i32 [ %i.am, %._crit_edge.i.us ], [ %.pre12.i.us, %bb.k ] ; 2 uses
  %i.au = phi ptr [ %.pre.i.us, %._crit_edge.i.us ], [ %i.as, %bb.k ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.d, align 8, !tbaa !250
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  store ptr %i.p, ptr %i.ax, align 8, !tbaa !173
  store ptr null, ptr %i.l, align 1, !tbaa !176
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %.04667.us, align 1, !tbaa !158
  %i.az = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = icmp slt i64 %i.g, %i.ba
  br i1 %i.bb, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = sub i64 %i.g, %i.ba
  store i64 %i.bc, ptr %4, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ioDeferFreeRobj.exit.us
  store i64 0, ptr %3, align 8, !tbaa !20
  %i.bd = load i64, ptr %.04667.us, align 1, !tbaa !158
  %i.be = getelementptr i8, ptr %.04667.us, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 9      ; 3 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph.split.us, label %.critedge, !llvm.loop !404

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.y
  %.04667 = phi ptr [ %i.cw, %bb.y ], [ %1, %.lr.ph.split.preheader ] ; 9 uses
  %i.bh = load i64, ptr %4, align 8, !tbaa !20    ; 7 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph.split
  %i.bj = getelementptr inbounds nuw i8, ptr %.04667, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !156
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %.04667, align 1, !tbaa !158
  %i.bn = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp slt i64 %i.bh, %i.bo
  br i1 %i.bp, label %.split.us, label %bb.q

.split.us:                                        ; preds = %bb.l, %bb.p
  %.us-phi73 = phi i64 [ %i.bn, %bb.p ], [ %i.az, %bb.l ]
  %.us-phi74 = phi i64 [ %i.bh, %bb.p ], [ %i.g, %bb.l ]
  %.us-phi75 = phi ptr [ %.04667, %bb.p ], [ %.04667.us, %bb.l ]
  %i.bq = add i64 %.us-phi73, %.us-phi74
  store i64 %i.bq, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !20
  br label %.thread58

bb.q:                                             ; preds = %bb.p
  %i.br = sub i64 %i.bh, %i.bo
  store i64 %i.br, ptr %4, align 8, !tbaa !20
  br label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.04667, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04667, i64 17
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !178
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bs, align 1, !tbaa !176 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 5 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %.val.i = load i8, ptr %i.bz, align 1, !tbaa !17 ; 2 uses
  %i.ca = and i8 %.val.i, 7
  switch i8 %i.ca, label %sdslen.exit [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.cb = lshr i8 %.val.i, 3
  %i.cc = zext nneg i8 %i.cb to i64
  br label %sdslen.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 -3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  %i.cf = zext i8 %i.ce to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 -5
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i16 %i.ch to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds i8, ptr %i.by, i64 -9
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !9
  %i.cl = zext i32 %i.ck to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds i8, ptr %i.by, i64 -17
  %i.cn = load i64, ptr %i.cm, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi i64 [ %i.cn, %bb.w ], [ %i.cc, %bb.s ], [ %i.cf, %bb.t ], [ %i.ci, %bb.u ], [ %i.cl, %bb.v ], [ 0, %bb.r ]
  %i.co = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cp = add nuw nsw i64 %i.bv, 2
  %i.cq = add i64 %i.cp, %.0.i
  %i.cr = sub i64 %i.cq, %i.co                    ; 2 uses
  %.not56 = icmp slt i64 %i.bh, %i.cr
  br i1 %.not56, label %.thread, label %bb.x

.thread:                                          ; preds = %sdslen.exit.us, %sdslen.exit
  %.us-phi70 = phi i64 [ %i.bh, %sdslen.exit ], [ %i.g, %sdslen.exit.us ]
  %.us-phi71 = phi ptr [ %.04667, %sdslen.exit ], [ %.04667.us, %sdslen.exit.us ]
  %.us-phi72 = phi i64 [ %i.co, %sdslen.exit ], [ %i.ah, %sdslen.exit.us ]
  %i.cs = add i64 %.us-phi72, %.us-phi70
  store i64 %i.cs, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !20
  br label %.thread58

bb.x:                                             ; preds = %sdslen.exit
  %i.ct = sub i64 %i.bh, %i.cr
  store i64 %i.ct, ptr %4, align 8, !tbaa !20
  tail call void @decrRefCount(ptr noundef nonnull %i.bw) #30
  store ptr null, ptr %i.bs, align 1, !tbaa !176
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x
  store i64 0, ptr %3, align 8, !tbaa !20
  %i.cu = load i64, ptr %.04667, align 1, !tbaa !158
  %i.cv = getelementptr i8, ptr %.04667, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 9      ; 3 uses
  %i.cx = icmp ult ptr %i.cw, %2
  br i1 %i.cx, label %.lr.ph.split, label %.critedge, !llvm.loop !404

.critedge:                                        ; preds = %.lr.ph.split.us, %bb.n, %.lr.ph.split, %bb.y, %.thread109, %bb.b
  %.046.lcssa = phi ptr [ %1, %bb.b ], [ %1, %.thread109 ], [ %.04667, %.lr.ph.split ], [ %i.cw, %bb.y ], [ %.04667.us, %.lr.ph.split.us ], [ %i.bf, %bb.n ] ; 2 uses
  %i.cy = icmp eq ptr %.046.lcssa, %2
  %i.cz = select i1 %i.cy, ptr null, ptr %.046.lcssa
  br label %.thread58

.thread58:                                        ; preds = %.thread, %.split.us, %.critedge
  %.4 = phi ptr [ %i.cz, %.critedge ], [ %.us-phi75, %.split.us ], [ %.us-phi71, %.thread ]
  ret ptr %.4
}

declare void @askingCommand(ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @clusterAsmCancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind willreturn memory(none) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!15, !16, i64 8}
!15 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !16, i64 8}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = !{!23, !32, i64 1440}
!23 = !{!"redisServer", !10, i64 0, !21, i64 8, !24, i64 16, !24, i64 24, !25, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !27, i64 64, !28, i64 72, !28, i64 80, !29, i64 88, !30, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !31, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !24, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !21, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !24, i64 232, !24, i64 240, !10, i64 248, !10, i64 252, !21, i64 256, !11, i64 264, !28, i64 272, !28, i64 280, !28, i64 288, !32, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !24, i64 472, !24, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !33, i64 1336, !32, i64 1440, !32, i64 1448, !32, i64 1456, !32, i64 1464, !32, i64 1472, !32, i64 1480, !32, i64 1488, !35, i64 1496, !35, i64 1504, !16, i64 1512, !30, i64 1520, !10, i64 1528, !30, i64 1536, !10, i64 1544, !32, i64 1552, !11, i64 1560, !11, i64 1624, !28, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !36, i64 2424, !10, i64 2448, !31, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !21, i64 2488, !21, i64 2496, !21, i64 2504, !21, i64 2512, !21, i64 2520, !21, i64 2528, !31, i64 2536, !31, i64 2544, !31, i64 2552, !31, i64 2560, !31, i64 2568, !31, i64 2576, !38, i64 2584, !31, i64 2592, !31, i64 2600, !31, i64 2608, !31, i64 2616, !31, i64 2624, !31, i64 2632, !21, i64 2640, !31, i64 2648, !31, i64 2656, !31, i64 2664, !31, i64 2672, !31, i64 2680, !31, i64 2688, !31, i64 2696, !31, i64 2704, !21, i64 2712, !21, i64 2720, !21, i64 2728, !31, i64 2736, !31, i64 2744, !31, i64 2752, !31, i64 2760, !31, i64 2768, !38, i64 2776, !31, i64 2784, !31, i64 2792, !31, i64 2800, !31, i64 2808, !31, i64 2816, !32, i64 2824, !31, i64 2832, !31, i64 2840, !21, i64 2848, !39, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !21, i64 2976, !21, i64 2984, !21, i64 2992, !21, i64 3000, !21, i64 3008, !21, i64 3016, !21, i64 3024, !21, i64 3032, !38, i64 3040, !11, i64 3048, !21, i64 3080, !31, i64 3088, !31, i64 3096, !31, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !31, i64 5168, !31, i64 5176, !31, i64 5184, !31, i64 5192, !11, i64 5200, !31, i64 6264, !31, i64 6272, !21, i64 6280, !31, i64 6288, !31, i64 6296, !21, i64 6304, !11, i64 6312, !40, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !21, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !21, i64 6496, !21, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !24, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !41, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !24, i64 6680, !24, i64 6688, !10, i64 6696, !10, i64 6700, !21, i64 6704, !21, i64 6712, !21, i64 6720, !21, i64 6728, !21, i64 6736, !10, i64 6744, !10, i64 6748, !24, i64 6752, !10, i64 6760, !10, i64 6764, !31, i64 6768, !31, i64 6776, !21, i64 6784, !21, i64 6792, !21, i64 6800, !10, i64 6808, !10, i64 6812, !21, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !21, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !16, i64 6872, !10, i64 6880, !31, i64 6888, !31, i64 6896, !31, i64 6904, !31, i64 6912, !10, i64 6920, !42, i64 6928, !10, i64 6936, !24, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !21, i64 6968, !21, i64 6976, !21, i64 6984, !21, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !43, i64 7024, !10, i64 7032, !10, i64 7036, !24, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !44, i64 7072, !10, i64 7088, !24, i64 7096, !10, i64 7104, !24, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !31, i64 7232, !31, i64 7240, !11, i64 7248, !31, i64 7256, !10, i64 7264, !10, i64 7268, !46, i64 7272, !31, i64 7280, !31, i64 7288, !47, i64 7296, !21, i64 7344, !21, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !21, i64 7400, !32, i64 7408, !21, i64 7416, !24, i64 7424, !24, i64 7432, !24, i64 7440, !10, i64 7448, !10, i64 7452, !35, i64 7456, !35, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !21, i64 7488, !21, i64 7496, !21, i64 7504, !21, i64 7512, !21, i64 7520, !48, i64 7528, !48, i64 7536, !10, i64 7544, !24, i64 7552, !21, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !21, i64 7584, !21, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !24, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !31, i64 7680, !10, i64 7688, !32, i64 7696, !10, i64 7704, !31, i64 7712, !31, i64 7720, !21, i64 7728, !21, i64 7736, !10, i64 7744, !31, i64 7752, !21, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !31, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !32, i64 7872, !32, i64 7880, !10, i64 7888, !21, i64 7896, !32, i64 7904, !32, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !21, i64 7936, !21, i64 7944, !21, i64 7952, !21, i64 7960, !21, i64 7968, !21, i64 7976, !21, i64 7984, !21, i64 7992, !21, i64 8000, !31, i64 8008, !31, i64 8016, !31, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !21, i64 8048, !11, i64 8056, !31, i64 8064, !31, i64 8072, !10, i64 8080, !21, i64 8088, !31, i64 8096, !21, i64 8104, !31, i64 8112, !49, i64 8120, !28, i64 8128, !10, i64 8136, !49, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !31, i64 8168, !31, i64 8176, !24, i64 8184, !31, i64 8192, !31, i64 8200, !31, i64 8208, !10, i64 8216, !50, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !24, i64 8256, !24, i64 8264, !24, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !31, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !31, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !31, i64 8384, !28, i64 8392, !24, i64 8400, !21, i64 8408, !24, i64 8416, !10, i64 8424, !51, i64 8432, !10, i64 8472, !21, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !52, i64 8504, !24, i64 8624, !24, i64 8632, !24, i64 8640, !24, i64 8648, !53, i64 8656, !31, i64 8664, !10, i64 8672, !24, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !21, i64 8704, !10, i64 8712, !10, i64 8716, !24, i64 8720, !10, i64 8728, !10, i64 8732}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!"p2 omnipotent char", !26, i64 0}
!26 = !{!"any p2 pointer", !16, i64 0}
!27 = !{!"p1 _ZTS7redisDb", !16, i64 0}
!28 = !{!"p1 _ZTS4dict", !16, i64 0}
!29 = !{!"p1 _ZTS11aeEventLoop", !16, i64 0}
!30 = !{!"p1 _ZTS3rax", !16, i64 0}
!31 = !{!"long long", !11, i64 0}
!32 = !{!"p1 _ZTS4list", !16, i64 0}
!33 = !{!"connListener", !11, i64 0, !10, i64 64, !25, i64 72, !10, i64 80, !10, i64 84, !34, i64 88, !16, i64 96}
!34 = !{!"p1 _ZTS14ConnectionType", !16, i64 0}
!35 = !{!"p1 _ZTS6client", !16, i64 0}
!36 = !{!"pendingCommandPool", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!37 = !{!"p2 _ZTS14pendingCommand", !26, i64 0}
!38 = !{!"double", !11, i64 0}
!39 = !{!"malloc_stats", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80}
!40 = !{!"p1 _ZTS11hotkeyStats", !16, i64 0}
!41 = !{!"p1 double", !16, i64 0}
!42 = !{!"p1 _ZTS9saveparam", !16, i64 0}
!43 = !{!"p2 _ZTS10connection", !26, i64 0}
!44 = !{!"redisOpArray", !45, i64 0, !10, i64 8, !10, i64 12}
!45 = !{!"p1 _ZTS7redisOp", !16, i64 0}
!46 = !{!"p1 _ZTS11replBacklog", !16, i64 0}
!47 = !{!"replDataBuf", !32, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!48 = !{!"p1 _ZTS10connection", !16, i64 0}
!49 = !{!"p1 _ZTS8_kvstore", !16, i64 0}
!50 = !{!"p1 _ZTS12clusterState", !16, i64 0}
!51 = !{!"aclInfo", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32}
!52 = !{!"redisTLSContextConfig", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !10, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!53 = !{!"p1 _ZTS14sentinelConfig", !16, i64 0}
!54 = !{!55, !56, i64 8}
!55 = !{!"list", !56, i64 0, !56, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !21, i64 40}
!56 = !{!"p1 _ZTS8listNode", !16, i64 0}
!57 = !{!58, !56, i64 720}
!58 = !{!"client", !21, i64 0, !21, i64 8, !48, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !27, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !24, i64 64, !21, i64 72, !21, i64 80, !10, i64 88, !60, i64 96, !10, i64 104, !10, i64 108, !60, i64 112, !21, i64 120, !61, i64 128, !62, i64 152, !63, i64 160, !10, i64 168, !60, i64 176, !10, i64 184, !10, i64 188, !64, i64 192, !64, i64 200, !64, i64 208, !64, i64 216, !16, i64 224, !10, i64 232, !10, i64 236, !21, i64 240, !32, i64 248, !31, i64 256, !32, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !10, i64 296, !10, i64 300, !65, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !31, i64 336, !31, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !21, i64 368, !21, i64 376, !24, i64 384, !31, i64 392, !31, i64 400, !31, i64 408, !31, i64 416, !31, i64 424, !31, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !11, i64 480, !10, i64 524, !24, i64 528, !10, i64 536, !10, i64 540, !21, i64 544, !66, i64 552, !67, i64 592, !31, i64 664, !32, i64 672, !28, i64 680, !28, i64 688, !28, i64 696, !24, i64 704, !24, i64 712, !56, i64 720, !56, i64 728, !56, i64 736, !16, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !21, i64 784, !30, i64 792, !21, i64 800, !10, i64 808, !56, i64 816, !16, i64 824, !56, i64 832, !21, i64 840, !56, i64 848, !21, i64 856, !56, i64 864, !21, i64 872, !68, i64 880, !68, i64 904, !21, i64 928, !21, i64 936, !21, i64 944, !31, i64 952, !21, i64 960, !21, i64 968, !24, i64 976, !11, i64 984, !69, i64 992, !31, i64 1000, !31, i64 1008, !31, i64 1016, !70, i64 1024, !24, i64 1032, !11, i64 1040}
!59 = !{!"p1 _ZTS11redisObject", !16, i64 0}
!60 = !{!"p2 _ZTS11redisObject", !26, i64 0}
!61 = !{!"pendingCommandList", !62, i64 0, !62, i64 8, !10, i64 16, !10, i64 20}
!62 = !{!"p1 _ZTS14pendingCommand", !16, i64 0}
!63 = !{!"p1 _ZTS14deferredObject", !16, i64 0}
!64 = !{!"p1 _ZTS12redisCommand", !16, i64 0}
!65 = !{!"p1 _ZTS9dictEntry", !16, i64 0}
!66 = !{!"multiState", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !21, i64 24, !10, i64 32}
!67 = !{!"blockingState", !10, i64 0, !31, i64 8, !10, i64 16, !28, i64 24, !10, i64 32, !10, i64 36, !31, i64 40, !16, i64 48, !16, i64 56, !21, i64 64}
!68 = !{!"listNode", !56, i64 0, !56, i64 8, !16, i64 16}
!69 = !{!"p1 _ZTS13payloadHeader", !16, i64 0}
!70 = !{!"p1 _ZTS7asmTask", !16, i64 0}
!71 = !{!58, !21, i64 0}
!72 = !{!23, !30, i64 1536}
!73 = !{!16, !16, i64 0}
!74 = !{!58, !10, i64 352}
!75 = !{!23, !10, i64 6428}
!76 = !{!77, !34, i64 0}
!77 = !{!"connection", !34, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !19, i64 20, !19, i64 22, !19, i64 24, !16, i64 32, !29, i64 40, !16, i64 48, !16, i64 56, !16, i64 64}
!78 = !{!79, !16, i64 160}
!79 = !{!"ConnectionType", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240}
!80 = distinct !{null}
!81 = !{!77, !16, i64 32}
!82 = !{!58, !24, i64 976}
!83 = !{!58, !11, i64 24}
!84 = !{!58, !11, i64 25}
!85 = !{!58, !10, i64 28}
!86 = !{!58, !48, i64 16}
!87 = !{!58, !21, i64 960}
!88 = !{!58, !21, i64 968}
!89 = !{!58, !21, i64 944}
!90 = !{!23, !11, i64 8040}
!91 = !{!58, !31, i64 952}
!92 = !{!58, !11, i64 984}
!93 = !{!58, !69, i64 992}
!94 = !{!58, !10, i64 232}
!95 = !{!58, !65, i64 304}
!96 = !{!58, !10, i64 236}
!97 = !{!58, !21, i64 240}
!98 = !{!58, !21, i64 272}
!99 = !{!58, !21, i64 8}
!100 = !{!58, !11, i64 26}
!101 = !{!58, !11, i64 27}
!102 = !{!58, !10, i64 296}
!103 = !{!58, !10, i64 300}
!104 = !{!58, !21, i64 312}
!105 = !{!58, !21, i64 280}
!106 = !{!58, !21, i64 320}
!107 = !{!58, !21, i64 288}
!108 = !{!58, !16, i64 224}
!109 = !{!110, !11, i64 8}
!110 = !{!"", !24, i64 0, !11, i64 8, !32, i64 16, !32, i64 24, !59, i64 32}
!111 = !{!58, !10, i64 356}
!112 = !{!58, !10, i64 360}
!113 = !{!58, !32, i64 248}
!114 = !{!58, !21, i64 328}
!115 = !{!55, !16, i64 24}
!116 = !{!55, !16, i64 16}
!117 = !{!58, !31, i64 664}
!118 = !{!58, !32, i64 672}
!119 = !{!58, !28, i64 680}
!120 = !{!58, !28, i64 688}
end_hunk_0
begin_hunk_1_@llvm.umin.i16
!164 = !{!58, !64, i64 216}
!165 = !{!145, !31, i64 200}
!166 = !{!167, !31, i64 24}
!167 = !{!"replBacklog", !56, i64 0, !21, i64 8, !30, i64 16, !31, i64 24, !31, i64 32}
!168 = !{!23, !31, i64 3088}
!169 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!170 = !{!68, !56, i64 0}
!171 = !{!68, !56, i64 8}
!172 = !{!23, !31, i64 5168}
!173 = !{!59, !59, i64 0}
!174 = distinct !{!174, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !{!177, !59, i64 0}
!177 = !{!"bulkStrRef", !59, i64 0, !10, i64 8, !11, i64 12, !11, i64 36}
!178 = !{!177, !10, i64 8}
!179 = !{!58, !56, i64 912}
!180 = !{!58, !56, i64 904}
!181 = !{!23, !32, i64 1472}
!182 = !{!55, !56, i64 0}
!183 = !{!184, !59, i64 24}
!184 = !{!"sharedObjectsStruct", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !59, i64 192, !59, i64 200, !59, i64 208, !59, i64 216, !59, i64 224, !59, i64 232, !59, i64 240, !59, i64 248, !59, i64 256, !59, i64 264, !59, i64 272, !59, i64 280, !59, i64 288, !59, i64 296, !59, i64 304, !59, i64 312, !59, i64 320, !59, i64 328, !59, i64 336, !59, i64 344, !59, i64 352, !59, i64 360, !59, i64 368, !59, i64 376, !59, i64 384, !59, i64 392, !59, i64 400, !59, i64 408, !59, i64 416, !59, i64 424, !59, i64 432, !59, i64 440, !59, i64 448, !59, i64 456, !59, i64 464, !59, i64 472, !59, i64 480, !59, i64 488, !59, i64 496, !59, i64 504, !59, i64 512, !59, i64 520, !59, i64 528, !59, i64 536, !59, i64 544, !59, i64 552, !59, i64 560, !59, i64 568, !59, i64 576, !59, i64 584, !59, i64 592, !59, i64 600, !59, i64 608, !59, i64 616, !59, i64 624, !59, i64 632, !59, i64 640, !59, i64 648, !59, i64 656, !59, i64 664, !59, i64 672, !59, i64 680, !59, i64 688, !59, i64 696, !59, i64 704, !59, i64 712, !59, i64 720, !59, i64 728, !59, i64 736, !59, i64 744, !59, i64 752, !59, i64 760, !59, i64 768, !59, i64 776, !59, i64 784, !59, i64 792, !59, i64 800, !59, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !24, i64 81920, !24, i64 81928}
!185 = !{!184, !59, i64 32}
!186 = !{!58, !60, i64 96}
!187 = distinct !{!187, !175}
!188 = distinct !{!188, !175}
!189 = distinct !{!189, !175}
!190 = !{!77, !16, i64 64}
!191 = !{!77, !16, i64 56}
!192 = !{!58, !56, i64 832}
!193 = !{!23, !32, i64 7408}
!194 = !{!77, !10, i64 16}
!195 = !{!58, !59, i64 40}
!196 = !{!58, !27, i64 32}
!197 = !{!198, !10, i64 72}
!198 = !{!"redisDb", !49, i64 0, !49, i64 8, !199, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !10, i64 72, !31, i64 80, !21, i64 88}
!199 = !{!"p1 _ZTS7_estore", !16, i64 0}
!200 = !{!58, !10, i64 564}
!201 = !{!58, !21, i64 120}
!202 = !{!110, !24, i64 0}
!203 = !{!58, !21, i64 784}
!204 = !{!58, !59, i64 48}
!205 = !{!58, !59, i64 56}
!206 = !{!58, !31, i64 1008}
!207 = !{!58, !31, i64 1016}
!208 = !{!58, !21, i64 840}
!209 = !{!58, !56, i64 864}
!210 = !{!58, !56, i64 848}
!211 = !{!58, !21, i64 872}
!212 = !{!58, !21, i64 856}
!213 = !{!79, !16, i64 168}
!214 = distinct !{null}
!215 = !{!23, !10, i64 1896}
!216 = !{!79, !16, i64 56}
!217 = distinct !{null}
!218 = !{!79, !16, i64 128}
!219 = distinct !{null}
!220 = !{!23, !31, i64 2792}
!221 = !{!79, !16, i64 240}
!222 = distinct !{null}
!223 = !{!23, !10, i64 6420}
!224 = !{!23, !31, i64 2544}
!225 = !{!58, !24, i64 704}
!226 = !{!23, !24, i64 480}
!227 = !{!79, !16, i64 48}
!228 = distinct !{ptr @genClientAddrString, null, null}
!229 = !{!58, !24, i64 712}
!230 = distinct !{null, null}
!231 = !{!79, !16, i64 96}
!232 = distinct !{null}
!233 = !{!23, !10, i64 7744}
!234 = !{!23, !10, i64 8160}
!235 = !{!79, !16, i64 120}
!236 = distinct !{null}
!237 = !{!58, !16, i64 744}
!238 = !{!23, !35, i64 7456}
!239 = !{!58, !28, i64 616}
!240 = distinct !{!240, !175}
!241 = !{!58, !60, i64 112}
!242 = !{!58, !10, i64 108}
!243 = distinct !{!243, !175}
!244 = !{!58, !10, i64 168}
!245 = !{!58, !63, i64 160}
!246 = !{!247, !10, i64 0}
!247 = !{!"deferredObject", !10, i64 0, !16, i64 8}
!248 = !{!247, !16, i64 8}
!249 = distinct !{!249, !175}
!250 = !{!58, !10, i64 184}
!251 = !{!58, !60, i64 176}
!252 = distinct !{!252, !175}
!253 = !{!58, !21, i64 800}
!254 = !{!58, !10, i64 808}
!255 = !{!58, !10, i64 144}
!256 = !{!23, !10, i64 6936}
!257 = !{!23, !32, i64 1480}
!258 = distinct !{!258, !175}
!259 = !{!58, !10, i64 364}
!260 = !{!58, !24, i64 384}
!261 = !{!23, !21, i64 7352}
!262 = !{!58, !16, i64 824}
!263 = !{!264, !21, i64 8}
!264 = !{!"", !32, i64 0, !21, i64 8}
!265 = !{!264, !32, i64 0}
!266 = !{!58, !56, i64 816}
!267 = !{!58, !24, i64 528}
!268 = !{!58, !24, i64 1032}
!269 = !{!270, !60, i64 8}
!270 = !{!"pendingCommand", !10, i64 0, !10, i64 4, !60, i64 8, !21, i64 16, !31, i64 24, !64, i64 32, !271, i64 40, !31, i64 104, !10, i64 112, !10, i64 116, !11, i64 120, !62, i64 128, !62, i64 136}
!271 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !16, i64 56}
!272 = !{!270, !10, i64 0}
!273 = distinct !{!273, !175}
!274 = !{!58, !10, i64 188}
!275 = !{!58, !10, i64 88}
!276 = distinct !{!276, !175}
!277 = !{!58, !64, i64 208}
!278 = !{!58, !10, i64 104}
!279 = !{!61, !62, i64 0}
!280 = !{!270, !62, i64 128}
!281 = !{!270, !62, i64 136}
!282 = !{!61, !62, i64 8}
!283 = !{!61, !10, i64 16}
!284 = !{!270, !10, i64 112}
!285 = !{!61, !10, i64 20}
!286 = !{!23, !10, i64 2420}
!287 = !{!270, !10, i64 4}
!288 = !{!23, !10, i64 2432}
!289 = !{!23, !10, i64 2436}
!290 = !{!23, !37, i64 2424}
!291 = distinct !{!291, !175}
!292 = !{!270, !21, i64 16}
!293 = !{!270, !10, i64 116}
!294 = !{!62, !62, i64 0}
!295 = distinct !{!295, !175}
!296 = distinct !{!296, !175}
!297 = distinct !{!297, !175}
!298 = !{!23, !10, i64 7032}
!299 = distinct !{!299, !175}
!300 = !{!48, !48, i64 0}
!301 = !{!23, !43, i64 7024}
!302 = !{!23, !10, i64 316}
!303 = !{!79, !16, i64 88}
!304 = distinct !{null}
!305 = !{!23, !32, i64 7872}
!306 = !{!23, !32, i64 1488}
!307 = distinct !{!307, !175}
!308 = distinct !{null, null}
!309 = !{!23, !31, i64 7752}
!310 = distinct !{null}
!311 = distinct !{!311, !175}
!312 = distinct !{ptr @installClientWriteHandler, null}
!313 = !{!58, !62, i64 152}
!314 = !{!270, !11, i64 120}
!315 = distinct !{!315, !175}
!316 = !{!270, !31, i64 24}
!317 = !{!58, !31, i64 408}
!318 = !{!58, !31, i64 416}
!319 = !{!58, !31, i64 424}
!320 = !{!58, !70, i64 1024}
!321 = !{!58, !10, i64 148}
!322 = !{!23, !10, i64 2440}
!323 = distinct !{!323, !175}
!324 = !{!58, !31, i64 392}
!325 = !{!58, !31, i64 400}
!326 = !{!270, !31, i64 104}
!327 = !{!58, !62, i64 128}
!328 = !{!58, !21, i64 928}
!329 = !{!270, !64, i64 32}
!330 = !{!331, !331, i64 0}
!331 = !{!"p1 short", !16, i64 0}
!332 = distinct !{!332, !175}
!333 = !{!58, !30, i64 792}
!334 = distinct !{!334, !175}
!335 = distinct !{!335, !175}
!336 = !{!184, !59, i64 0}
!337 = distinct !{!337, !175}
!338 = !{!184, !59, i64 216}
!339 = distinct !{!339, !175}
!340 = distinct !{!340, !175}
!341 = !{!342, !31, i64 8}
!342 = !{!"", !10, i64 0, !31, i64 8}
!343 = !{!342, !10, i64 0}
!344 = distinct !{!344, !175}
!345 = !{!346, !24, i64 16}
!346 = !{!"raxIterator", !10, i64 0, !30, i64 8, !24, i64 16, !16, i64 24, !21, i64 32, !21, i64 40, !11, i64 48, !347, i64 176, !348, i64 184, !16, i64 472, !16, i64 480}
!347 = !{!"p1 _ZTS7raxNode", !16, i64 0}
!348 = !{!"raxStack", !26, i64 0, !21, i64 8, !21, i64 16, !11, i64 24, !10, i64 280}
!349 = !{!346, !21, i64 32}
!350 = distinct !{!350, !175}
!351 = !{!23, !10, i64 220}
!352 = !{!23, !10, i64 248}
!353 = !{!23, !10, i64 1544}
!354 = distinct !{!354, !175}
!355 = !{!184, !59, i64 784}
!356 = distinct !{!356, !175}
!357 = !{!23, !10, i64 204}
!358 = !{!23, !24, i64 7440}
!359 = distinct !{null, null}
!360 = distinct !{!360, !175}
!361 = !{!58, !10, i64 560}
!362 = !{!58, !37, i64 552}
!363 = distinct !{!363, !175}
!364 = distinct !{!364, !175, !365, !366}
!365 = !{!"llvm.loop.isvectorized", i32 1}
!366 = !{!"llvm.loop.unroll.runtime.disable"}
!367 = distinct !{!367, !368}
!368 = !{!"llvm.loop.unroll.disable"}
!369 = distinct !{!369, !175, !365}
!370 = !{!371, !31, i64 0}
!371 = !{!"clientBufferLimitsConfig", !31, i64 0, !31, i64 8, !21, i64 16}
!372 = !{!371, !31, i64 8}
!373 = !{!371, !21, i64 16}
!374 = distinct !{!374, !175}
!375 = !{!23, !31, i64 8064}
!376 = !{!23, !32, i64 1552}
!377 = distinct !{!377, !175}
!378 = !{!23, !31, i64 8096}
!379 = !{!23, !31, i64 2456}
!380 = !{!23, !29, i64 88}
!381 = !{!23, !21, i64 7760}
!382 = !{!23, !16, i64 1512}
!383 = !{!23, !31, i64 2616}
!384 = distinct !{!384, !175}
!385 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!386 = distinct !{!386, !175}
!387 = !{!77, !19, i64 24}
!388 = !{!389, !390, i64 0}
!389 = !{!"ReplyIOV", !390, i64 0, !10, i64 8, !10, i64 12, !21, i64 16}
!390 = !{!"p1 _ZTS5iovec", !16, i64 0}
!391 = !{!389, !10, i64 8}
!392 = !{!389, !10, i64 12}
!393 = !{!389, !21, i64 16}
!394 = !{!395, !16, i64 0}
!395 = !{!"iovec", !16, i64 0, !21, i64 8}
!396 = !{!395, !21, i64 8}
!397 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!398 = distinct !{!398, !175}
!399 = distinct !{!399, !400}
!400 = !{!"llvm.loop.peeled.count", i32 1}
!401 = !{!79, !16, i64 136}
!402 = distinct !{null}
!403 = distinct !{!403, !175, !400}
!404 = distinct !{!404, !175}
end_hunk_1
