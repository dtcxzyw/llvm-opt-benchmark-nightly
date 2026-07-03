inline.NumInlined: 302
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@replaceClientCommandVector:bb.a
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
  %i.at = sext i32 %.079 to i64                   ; 5 uses
  %i.au = sub i32 %i.ar, %1
  %i.av = add i32 %i.au, -2                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 15
  %i.ay = add i32 %i.ar, -2
  %i.az = icmp slt i32 %i.ay, %1
  %or.cond = or i1 %min.iters.check, %i.az
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ba = sext i32 %1 to i64
  %i.bb = sub nsw i64 %i.ba, %i.at
  %i.bc = and i64 %i.bb, 2305843009213693948
  %diff.check = icmp eq i64 %i.bc, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 8589934588              ; 4 uses
  %i.bd = add nsw i64 %n.vec, %i.at
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %1, %i.be
  %invariant.gep = getelementptr [8 x i8], ptr %.pre88, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = trunc i64 %index to i32
  %i.bh = add i32 %1, %i.bg
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x ptr>, ptr %gep, align 8, !tbaa !173
  %wide.load104 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !173
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x ptr> %wide.load, ptr %i.bk, align 8, !tbaa !173
  store <2 x ptr> %wide.load104, ptr %i.bl, align 8, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph ], [ %i.bd, %middle.block ] ; 3 uses
  %.0.in80.ph = phi i32 [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.bf, %middle.block ] ; 2 uses
  %i.bn = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.bo = sub i32 %i.ar, %i.bn
  %xtraiter = and i32 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.in80.prol = phi i32 [ %i.bt, %scalar.ph.prol ], [ %.0.in80.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bp = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.prol
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !173
  %i.br = sext i32 %.0.in80.prol to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !173
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bt = trunc nsw i64 %indvars.iv.prol to i32   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !367

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0.in80.unr = phi i32 [ %.0.in80.ph, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %i.bu = sub i32 %i.bn, %i.ar
  %i.bv = icmp ugt i32 %i.bu, -4
  br i1 %i.bv, label %._crit_edge, label %scalar.ph

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.pre-phi102
  store ptr %2, ptr %i.bx, align 8, !tbaa !173
  tail call void @incrRefCount(ptr noundef nonnull %2) #30
  %i.by = tail call i64 @getStringObjectLen(ptr noundef nonnull %2)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !201
  %i.cb = add i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !201
  br label %bb.l

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.cc = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.ab, align 8, !tbaa !275
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.cd
  store ptr null, ptr %i.ce, align 8, !tbaa !173
  br label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.0.in80 = phi i32 [ %i.cv, %scalar.ph ], [ %.0.in80.unr, %scalar.ph.prol.loopexit ]
  %i.cf = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !173
  %i.ch = sext i32 %.0.in80 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !173
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !173
  %sext = shl i64 %indvars.iv, 32
  %i.cl = ashr exact i64 %sext, 29
  %i.cm = getelementptr inbounds i8, ptr %.pre88, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !173
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next.1
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173
  %sext107 = shl i64 %indvars.iv.next, 32
  %i.cp = ashr exact i64 %sext107, 29
  %i.cq = getelementptr inbounds i8, ptr %.pre88, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !173
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.pre88, i64 %indvars.iv.next.2
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !173
  %sext108 = shl i64 %indvars.iv.next.1, 32
  %i.ct = ashr exact i64 %sext108, 29
  %i.cu = getelementptr inbounds i8, ptr %.pre88, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !173
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cv = trunc nsw i64 %indvars.iv.next.2 to i32
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
  %i.cw = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.cx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !269
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !275
  store i32 %i.cy, ptr %i.u, align 8, !tbaa !272
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !278
  %i.db = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !287
  br label %bb.p

bb.o:                                             ; preds = %.thread
  %i.dc = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !269
  %i.de = load i32, ptr %i.ab, align 8, !tbaa !275
  store i32 %i.de, ptr %i.u, align 8, !tbaa !272
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !278
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !287
  %i.di = tail call i64 @getStringObjectLen(ptr noundef nonnull %i.ap)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !292
  %i.dl = sub i64 %i.dk, %i.di
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !292
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = tail call i64 @getStringObjectLen(ptr noundef nonnull %2)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !292
  %i.dp = add i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !292
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.p, %bb.q, %bb.m
  %i.dq = icmp eq i32 %1, 0
  br i1 %i.dq, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %i.aq, align 8, !tbaa !186
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !275
  %i.dt = tail call ptr @lookupCommandOrOriginal(ptr noundef %i.dr, i32 noundef %i.ds) #30 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !154
  %.not77 = icmp eq ptr %i.dt, null
  br i1 %.not77, label %bb.t, label %bb.u, !prof !142

bb.t:                                             ; preds = %bb.s
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.1, i32 noundef 5024) #30
  tail call void @abort() #31
  unreachable

bb.u:                                             ; preds = %bb.s
  br i1 %i.aa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 32
end_hunk_0
