Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@array_seek:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %.151.us, i64 %i.bj
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = add i64 %i.bk, %i.cb
  %i.cd = and i64 %i.cc, %i.bl
  %i.ce = inttoptr i64 %i.cd to ptr
  %.151.us.1 = select i1 %.not.us.1, ptr %.151.us, ptr %i.ce ; 3 uses
  %i.cf = shl i32 %spec.select60.us, 1            ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 256                  ; 2 uses
  %spec.select.idx.us.1 = zext i1 %i.cg to i64
  %spec.select.us.1 = getelementptr inbounds nuw i8, ptr %spec.select.us, i64 %spec.select.idx.us.1 ; 2 uses
  %spec.select60.us.1 = select i1 %i.cg, i32 1, i32 %i.cf ; 2 uses
  %niter23.next.1 = add nuw nsw i32 %niter23, 2   ; 2 uses
  %niter23.ncmp.1 = icmp eq i32 %niter23.next.1, %unroll_iter22
  br i1 %niter23.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph78.split.us, !llvm.loop !60

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %i.ch = icmp eq i32 %4, -1
  br i1 %i.ch, label %.lr.ph78.split.split.us, label %.lr.ph78.split.split

.lr.ph78.split.split.us:                          ; preds = %.lr.ph78.split, %bb.o
  %.077.us81 = phi i32 [ %i.dg, %bb.o ], [ 0, %.lr.ph78.split ]
  %.04776.us82 = phi i32 [ %spec.select60.us89, %bb.o ], [ %i.bg, %.lr.ph78.split ] ; 2 uses
  %.05075.us83 = phi ptr [ %.151.us86, %bb.o ], [ %0, %.lr.ph78.split ] ; 5 uses
  %.05274.us84 = phi ptr [ %spec.select.us88, %bb.o ], [ %i.be, %.lr.ph78.split ] ; 2 uses
  %i.ci = load i8, ptr %.05274.us84, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = and i32 %.04776.us82, %i.cj
  %.not.us85 = icmp eq i32 %i.ck, 0
  br i1 %.not.us85, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.lr.ph78.split.split.us
  %i.cl = load i8, ptr %.05075.us83, align 1      ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp eq i8 %i.cl, 1
  br i1 %i.cn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = and i32 %i.cm, 1
  %.not.i.us = icmp eq i32 %i.co, 0
  br i1 %.not.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = lshr i32 %i.cm, 1
  %i.cq = zext nneg i32 %i.cp to i64
  br label %VARSIZE_ANY.exit.us

bb.m:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %.05075.us83, align 4
  %i.cs = lshr i32 %i.cr, 2
  %i.ct = zext nneg i32 %i.cs to i64
  br label %VARSIZE_ANY.exit.us

bb.n:                                             ; preds = %bb.j
  %i.cu = getelementptr i8, ptr %.05075.us83, i64 1
  %.val.i.us = load i8, ptr %i.cu, align 1        ; 2 uses
  %i.cv = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.cv, 3
  %i.cw = icmp eq i8 %.val.i.us, 18
  %i.cx = select i1 %i.cw, i64 18, i64 2
  %i.cy = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.cx
  br label %VARSIZE_ANY.exit.us

VARSIZE_ANY.exit.us:                              ; preds = %bb.n, %bb.m, %bb.l
  %.0.i61.us = phi i64 [ %i.cy, %bb.n ], [ %i.cq, %bb.l ], [ %i.ct, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.05075.us83, i64 %.0.i61.us
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = add i64 %i.bk, %i.da
  %i.dc = and i64 %i.db, %i.bl
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %bb.o

bb.o:                                             ; preds = %VARSIZE_ANY.exit.us, %.lr.ph78.split.split.us
  %.151.us86 = phi ptr [ %i.dd, %VARSIZE_ANY.exit.us ], [ %.05075.us83, %.lr.ph78.split.split.us ] ; 2 uses
  %i.de = shl i32 %.04776.us82, 1                 ; 2 uses
  %i.df = icmp eq i32 %i.de, 256                  ; 2 uses
  %spec.select.idx.us87 = zext i1 %i.df to i64
  %spec.select.us88 = getelementptr inbounds nuw i8, ptr %.05274.us84, i64 %spec.select.idx.us87
  %spec.select60.us89 = select i1 %i.df, i32 1, i32 %i.de
  %i.dg = add nuw nsw i32 %.077.us81, 1           ; 2 uses
  %exitcond102.not = icmp eq i32 %i.dg, %3
  br i1 %exitcond102.not, label %.loopexit, label %.lr.ph78.split.split.us, !llvm.loop !60

.lr.ph78.split.split:                             ; preds = %.lr.ph78.split, %bb.q
  %.077 = phi i32 [ %i.dt, %bb.q ], [ 0, %.lr.ph78.split ]
  %.04776 = phi i32 [ %spec.select60, %bb.q ], [ %i.bg, %.lr.ph78.split ] ; 2 uses
  %.05075 = phi ptr [ %.151, %bb.q ], [ %0, %.lr.ph78.split ] ; 3 uses
  %.05274 = phi ptr [ %spec.select, %bb.q ], [ %i.be, %.lr.ph78.split ] ; 2 uses
  %i.dh = load i8, ptr %.05274, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i32 %.04776, %i.di
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph78.split.split
  %i.dk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.05075) #18
  %i.dl = getelementptr i8, ptr %.05075, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.bk, %i.dn
  %i.dp = and i64 %i.do, %i.bl
  %i.dq = inttoptr i64 %i.dp to ptr
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph78.split.split
  %.151 = phi ptr [ %i.dq, %bb.p ], [ %.05075, %.lr.ph78.split.split ] ; 2 uses
  %i.dr = shl i32 %.04776, 1                      ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 256                  ; 2 uses
  %spec.select.idx = zext i1 %i.ds to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.05274, i64 %spec.select.idx
  %spec.select60 = select i1 %i.ds, i32 1, i32 %i.dr
  %i.dt = add nuw nsw i32 %.077, 1                ; 2 uses
  %exitcond101.not = icmp eq i32 %i.dt, %3
  br i1 %exitcond101.not, label %.loopexit, label %.lr.ph78.split.split, !llvm.loop !60

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.lr.ph.split.split
  %.169 = phi i32 [ %i.eb, %.lr.ph.split.split ], [ 0, %.lr.ph.split ]
  %.268 = phi ptr [ %i.ea, %.lr.ph.split.split ], [ %0, %.lr.ph.split ] ; 2 uses
  %i.du = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.268) #18
  %i.dv = getelementptr i8, ptr %.268, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 1
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = add i64 %i.s, %i.dx
  %i.dz = and i64 %i.dy, %i.t
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.eb = add nuw nsw i32 %.169, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !59

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph78.split.us
  %lcmp.mod19.not = icmp eq i32 %xtraiter17, 0
  br i1 %lcmp.mod19.not, label %.loopexit, label %.lr.ph78.split.us.epil.preheader

.lr.ph78.split.us.epil.preheader:                 ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph78.split.us.preheader
  %.04776.us.epil.init = phi i32 [ %i.bg, %.lr.ph78.split.us.preheader ], [ %spec.select60.us.1, %.loopexit.loopexit.unr-lcssa ]
  %.05075.us.epil.init = phi ptr [ %0, %.lr.ph78.split.us.preheader ], [ %.151.us.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05274.us.epil.init = phi ptr [ %i.be, %.lr.ph78.split.us.preheader ], [ %spec.select.us.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ec = load i8, ptr %.05274.us.epil.init, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = and i32 %.04776.us.epil.init, %i.ed
  %.not.us.epil = icmp eq i32 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.05075.us.epil.init, i64 %i.bj
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = add i64 %i.bk, %i.eg
  %i.ei = and i64 %i.eh, %i.bl
  %i.ej = inttoptr i64 %i.ei to ptr
  %.151.us.epil = select i1 %.not.us.epil, ptr %.05075.us.epil.init, ptr %i.ej
  br label %.loopexit

.loopexit.loopexit10.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit10.unr-lcssa, %.lr.ph.split.us.preheader
  %.268.us.epil.init = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.ag, %.loopexit.loopexit10.unr-lcssa ]
  %lcmp.mod16 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.268.us.epil = phi ptr [ %i.eo, %.lr.ph.split.us.epil ], [ %.268.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.268.us.epil, i64 %i.r
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = add i64 %i.s, %i.el
  %i.en = and i64 %i.em, %i.t
  %i.eo = inttoptr i64 %i.en to ptr               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.split.us.epil, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph.split.split, %VARSIZE_ANY.exit66.us, %.loopexit.loopexit10.unr-lcssa, %.lr.ph.split.us.epil, %bb.q, %bb.o, %.lr.ph78.split.us.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.i, %bb.c
  %.049 = phi ptr [ %i.o, %bb.c ], [ %i.ba, %VARSIZE_ANY.exit66.us ], [ %0, %bb.i ], [ %.151, %bb.q ], [ %i.eo, %.lr.ph.split.us.epil ], [ %0, %.preheader ], [ %.151.us.epil, %.lr.ph78.split.us.epil.preheader ], [ %.151.us86, %bb.o ], [ %.151.us.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ag, %.loopexit.loopexit10.unr-lcssa ], [ %i.ea, %.lr.ph.split.split ]
  ret ptr %.049
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_get_slice(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i1 zeroext %8, i8 noundef signext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %i.b = alloca [6 x i32], align 16               ; 6 uses
  %i.c = alloca [6 x i32], align 16               ; 5 uses
  %i.d = alloca [6 x i32], align 16               ; 5 uses
  %i.e = alloca [6 x i32], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 1088) #16 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2071, ptr noundef nonnull @__func__.array_get_slice) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %0 to ptr
  %i.k = tail call ptr @pg_detoast_datum(ptr noundef %i.j) #16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 8 uses
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = shl nsw i64 %i.o, 2                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not = icmp eq i32 %i.u, 0                     ; 4 uses
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.o, 3                      ; 4 uses
  %i.x = add nsw i64 %i.w, 16
  %i.y = select i1 %.not, i64 %i.x, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w ; 2 uses
  %spec.select = select i1 %.not, ptr null, ptr %i.aa ; 6 uses
  %i.ab = icmp slt i32 %i.m, %1
  %i.ac = add i32 %i.m, -7
  %i.ad = icmp ult i32 %i.ac, -6
  %or.cond3 = or i1 %i.ab, %i.ad
  br i1 %or.cond3, label %bb.d, label %.preheader133

.preheader133:                                    ; preds = %bb.c
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader133
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.af = tail call ptr @palloc0(i64 noundef 16) #16 ; 5 uses
  store i32 64, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 %i.s, ptr %i.ai, align 4
  br label %bb.u

.preheader:                                       ; preds = %bb.l, %.preheader133
  %.0125.lcssa = phi i32 [ 0, %.preheader133 ], [ %1, %bb.l ] ; 2 uses
  %i.aj = icmp slt i32 %.0125.lcssa, %i.m
  br i1 %i.aj, label %.lr.ph137.preheader, label %._crit_edge

.lr.ph137.preheader:                              ; preds = %.preheader
  %i.ak = zext nneg i32 %.0125.lcssa to i64
  %wide.trip.count147 = zext nneg i32 %i.m to i64
  br label %.lr.ph137

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !range !8, !noundef !9
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.e, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %bb.e
  %i.at = phi i32 [ %.pre, %.lr.ph._crit_edge ], [ %i.ar, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi i32 [ %i.at, %bb.f ], [ %i.ap, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !range !8, !noundef !9
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.g
  %.phi.trans.insert155 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %.pre156 = load i32, ptr %.phi.trans.insert155, align 4
  %.phi.trans.insert157 = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %.pre158 = load i32, ptr %.phi.trans.insert157, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = add i32 %i.be, %i.bc
  %.not131 = icmp slt i32 %i.ba, %i.bf
  br i1 %.not131, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge154, %bb.h
  %i.bg = phi i32 [ %.pre158, %._crit_edge154 ], [ %i.be, %bb.h ]
  %i.bh = phi i32 [ %.pre156, %._crit_edge154 ], [ %i.bc, %bb.h ]
  %i.bi = add i32 %i.bh, -1
  %i.bj = add i32 %i.bi, %i.bg                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4
  %.phi.trans.insert159 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.pre160 = load i32, ptr %.phi.trans.insert159, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = phi i32 [ %i.bj, %bb.i ], [ %i.ba, %bb.h ]
  %i.bm = phi i32 [ %.pre160, %bb.i ], [ %i.av, %bb.h ]
  %i.bn = icmp sgt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = tail call ptr @palloc0(i64 noundef 16) #16 ; 5 uses
  store i32 64, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 %i.s, ptr %i.br, align 4
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !62

bb.m:                                             ; preds = %.lr.ph137
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge, label %.lr.ph137, !llvm.loop !63

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.m
  %indvars.iv144 = phi i64 [ %i.ak, %.lr.ph137.preheader ], [ %indvars.iv.next145, %bb.m ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv144
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv144 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv144
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bw, -1
  %i.by = add i32 %i.bx, %i.bt                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv144
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = load i32, ptr %i.bu, align 4
  %i.cb = icmp sgt i32 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph137
  %i.cc = tail call ptr @palloc0(i64 noundef 16) #16 ; 5 uses
  store i32 64, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 0, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %i.s, ptr %i.cf, align 4
  br label %bb.u

._crit_edge:                                      ; preds = %bb.m, %.preheader
  call void @mda_get_range(i32 noundef %i.m, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef %2) #16
  %i.cg = call fastcc i32 @array_slice_size(ptr noundef nonnull %i.z, ptr noundef %spec.select, i32 noundef %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef %3, ptr noundef %2, i32 noundef %7, i8 noundef signext %9)
  %i.ch = shl nuw nsw i32 %i.m, 3                 ; 2 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ci = call i32 @ArrayGetNItems(i32 noundef %i.m, ptr noundef nonnull %i.e) #16
  %i.cj = add i32 %i.ci, 7
  %i.ck = sdiv i32 %i.cj, 8
  %i.cl = add nuw nsw i32 %i.ch, 23
  %i.cm = add nsw i32 %i.cl, %i.ck
  %i.cn = and i32 %i.cm, -8                       ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i32 %i.ch, 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cp = phi i32 [ %i.cn, %bb.o ], [ 0, %bb.p ]  ; 3 uses
  %.pn = phi i32 [ %i.cn, %bb.o ], [ %i.co, %bb.p ]
  %.0 = add i32 %.pn, %i.cg                       ; 2 uses
  %i.cq = sext i32 %.0 to i64
  %i.cr = call ptr @palloc0(i64 noundef %i.cq) #16 ; 8 uses
  %i.cs = shl i32 %.0, 2
  store i32 %i.cs, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.m, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cp, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.s, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr nonnull align 16 %i.e, i64 %i.p, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.p ; 6 uses
  %i.cy = icmp sgt i32 %i.m, 0
  br i1 %i.cy, label %.lr.ph140.1.a, label %._crit_edge141

.lr.ph140.1.a:                                    ; preds = %bb.q
  store i32 1, ptr %i.cx, align 4
  %exitcond153.not.1.a = icmp eq i32 %i.m, 1
  br i1 %exitcond153.not.1.a, label %._crit_edge141, label %.lr.ph140.2.a

.lr.ph140.2.a:                                    ; preds = %.lr.ph140.1.a
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 1, ptr %i.cz, align 4
  %exitcond153.not.2.a = icmp eq i32 %i.m, 2
  br i1 %exitcond153.not.2.a, label %._crit_edge141, label %.lr.ph140.3.a

.lr.ph140.3.a:                                    ; preds = %.lr.ph140.2.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 1, ptr %i.da, align 4
  %exitcond153.not.3.a = icmp eq i32 %i.m, 3
  br i1 %exitcond153.not.3.a, label %._crit_edge141, label %.lr.ph140.4.a

.lr.ph140.4.a:                                    ; preds = %.lr.ph140.3.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 1, ptr %i.db, align 4
  %exitcond153.not.4.a = icmp eq i32 %i.m, 4
  br i1 %exitcond153.not.4.a, label %._crit_edge141, label %.lr.ph140.5.a

.lr.ph140.5.a:                                    ; preds = %.lr.ph140.4.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 1, ptr %i.dc, align 4
  %exitcond153.not.5 = icmp eq i32 %i.m, 5
  br i1 %exitcond153.not.5, label %._crit_edge141, label %.lr.ph140.6

.lr.ph140.6:                                      ; preds = %.lr.ph140.5.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 1, ptr %i.dd, align 4
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %.lr.ph140.1.a, %.lr.ph140.2.a, %.lr.ph140.3.a, %.lr.ph140.4.a, %.lr.ph140.5.a, %.lr.ph140.6, %bb.q
  %.not.i = icmp eq i32 %i.cp, 0                  ; 2 uses
  %i.de = sext i32 %i.cp to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.w
  %i.dh = freeze ptr %i.dg                        ; 2 uses
  %i.di = getelementptr i8, ptr %i.cr, i64 %i.w
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = select i1 %.not.i, ptr %i.dj, ptr %i.df ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.dl = call i32 @ArrayGetOffset(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef %3) #16 ; 3 uses
  %i.dm = call fastcc ptr @array_seek(ptr noundef nonnull %i.z, i32 noundef 0, ptr noundef readonly %spec.select, i32 noundef %i.dl, i32 noundef %7, i8 noundef signext %9) ; 2 uses
  call void @mda_get_prod(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #16
  call void @mda_get_range(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %2) #16
  call void @mda_get_offset_values(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.dn = shl nuw nsw i32 %i.m, 2
  %i.do = zext nneg i32 %i.dn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 range(i64 0, 25) %i.do, i1 false)
  %i.dp = add nsw i32 %i.m, -1                    ; 2 uses
  %.not69.i173 = icmp eq ptr %i.dh, null
  %.not69.i = or i1 %.not.i, %.not69.i173
  br i1 %.not69.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge141, %array_bitmap_copy.exit.us.i
  %.061.us.i = phi ptr [ %i.eb, %array_bitmap_copy.exit.us.i ], [ %i.dk, %._crit_edge141 ] ; 2 uses
  %.059.us.i = phi ptr [ %i.ec, %array_bitmap_copy.exit.us.i ], [ %i.dm, %._crit_edge141 ] ; 2 uses
  %.058.us.i = phi i32 [ %i.ed, %array_bitmap_copy.exit.us.i ], [ %i.dl, %._crit_edge141 ] ; 3 uses
  %.0.us.i = phi i32 [ %i.ee, %array_bitmap_copy.exit.us.i ], [ %i.dp, %._crit_edge141 ]
  %i.dq = sext i32 %.0.us.i to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  %.not68.us.i = icmp eq i32 %i.ds, 0
  br i1 %.not68.us.i, label %array_bitmap_copy.exit.us.i, label %bb.r

bb.r:                                             ; preds = %.split.us.i
  %i.dt = call fastcc ptr @array_seek(ptr noundef %.059.us.i, i32 noundef %.058.us.i, ptr noundef readonly %spec.select, i32 noundef %i.ds, i32 noundef %7, i8 noundef signext %9)
  %i.du = load i32, ptr %i.dr, align 4
  %i.dv = add i32 %i.du, %.058.us.i
  br label %array_bitmap_copy.exit.us.i

array_bitmap_copy.exit.us.i:                      ; preds = %bb.r, %.split.us.i
  %.160.us.i = phi ptr [ %i.dt, %bb.r ], [ %.059.us.i, %.split.us.i ] ; 4 uses
  %.1.us.i = phi i32 [ %i.dv, %bb.r ], [ %.058.us.i, %.split.us.i ] ; 2 uses
  %i.dw = call fastcc ptr @array_seek(ptr noundef %.160.us.i, i32 noundef %.1.us.i, ptr noundef readonly %spec.select, i32 noundef 1, i32 noundef %7, i8 noundef signext %9)
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.160.us.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %sext.i.us.i = shl i64 %i.dz, 32
  %i.ea = ashr exact i64 %sext.i.us.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061.us.i, ptr align 1 %.160.us.i, i64 %i.ea, i1 false)
  %i.eb = getelementptr inbounds i8, ptr %.061.us.i, i64 %i.ea
  %i.ec = getelementptr inbounds i8, ptr %.160.us.i, i64 %i.ea
  %i.ed = add i32 %.1.us.i, 1
  %i.ee = call i32 @mda_next_tuple(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not70.us.i = icmp eq i32 %i.ee, -1
  br i1 %.not70.us.i, label %array_extract_slice.exit, label %.split.us.i, !llvm.loop !64

.split.i:                                         ; preds = %._crit_edge141, %array_bitmap_copy.exit.i
  %.061.i = phi ptr [ %i.fk, %array_bitmap_copy.exit.i ], [ %i.dk, %._crit_edge141 ] ; 2 uses
  %.059.i = phi ptr [ %i.fl, %array_bitmap_copy.exit.i ], [ %i.dm, %._crit_edge141 ] ; 2 uses
  %.058.i = phi i32 [ %i.fm, %array_bitmap_copy.exit.i ], [ %i.dl, %._crit_edge141 ] ; 3 uses
  %.057.i = phi i32 [ %i.fn, %array_bitmap_copy.exit.i ], [ 0, %._crit_edge141 ] ; 3 uses
  %.0.i = phi i32 [ %i.fo, %array_bitmap_copy.exit.i ], [ %i.dp, %._crit_edge141 ]
  %i.ef = sext i32 %.0.i to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %.not68.i = icmp eq i32 %i.eh, 0
  br i1 %.not68.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split.i
  %i.ei = call fastcc ptr @array_seek(ptr noundef %.059.i, i32 noundef %.058.i, ptr noundef readonly %spec.select, i32 noundef %i.eh, i32 noundef %7, i8 noundef signext %9)
  %i.ej = load i32, ptr %i.eg, align 4
  %i.ek = add i32 %i.ej, %.058.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.160.i = phi ptr [ %i.ei, %bb.s ], [ %.059.i, %.split.i ] ; 4 uses
  %.1.i = phi i32 [ %i.ek, %bb.s ], [ %.058.i, %.split.i ] ; 4 uses
  %i.el = call fastcc ptr @array_seek(ptr noundef %.160.i, i32 noundef %.1.i, ptr noundef readonly %spec.select, i32 noundef 1, i32 noundef %7, i8 noundef signext %9)
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %.160.i to i64
  %i.eo = sub i64 %i.em, %i.en
  %sext.i.i = shl i64 %i.eo, 32
  %i.ep = ashr exact i64 %sext.i.i, 32            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061.i, ptr align 1 %.160.i, i64 %i.ep, i1 false)
  %i.eq = sdiv i32 %.057.i, 8
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.dh, i64 %i.er ; 2 uses
  %i.et = and i32 %.057.i, 7
  %i.eu = shl nuw nsw i32 1, %i.et                ; 3 uses
  %i.ev = load i8, ptr %i.es, align 1
  %i.ew = zext i8 %i.ev to i32                    ; 3 uses
  br i1 %.not, label %.lr.ph94.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.ex = sdiv i32 %.1.i, 8
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.aa, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = and i32 %.1.i, 7
  %i.fd = shl nuw nsw i32 1, %i.fc
  %i.fe = and i32 %i.fd, %i.fb
  %.not65.i.i = icmp eq i32 %i.fe, 0
  %i.ff = or i32 %i.eu, %i.ew
  %i.fg = xor i32 %i.eu, -1
  %i.fh = and i32 %i.ew, %i.fg
  %.145.i.i = select i1 %.not65.i.i, i32 %i.fh, i32 %i.ff
  br label %array_bitmap_copy.exit.i

.lr.ph94.i.i:                                     ; preds = %bb.t
  %i.fi = or i32 %i.eu, %i.ew
  br label %array_bitmap_copy.exit.i

array_bitmap_copy.exit.i:                         ; preds = %.lr.ph94.i.i, %.lr.ph.preheader.i.i
  %.145.i.sink.i = phi i32 [ %.145.i.i, %.lr.ph.preheader.i.i ], [ %i.fi, %.lr.ph94.i.i ]
  %i.fj = trunc nuw i32 %.145.i.sink.i to i8
  store i8 %i.fj, ptr %i.es, align 1
  %i.fk = getelementptr inbounds i8, ptr %.061.i, i64 %i.ep
  %i.fl = getelementptr inbounds i8, ptr %.160.i, i64 %i.ep
  %i.fm = add i32 %.1.i, 1
  %i.fn = add i32 %.057.i, 1
  %i.fo = call i32 @mda_next_tuple(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not70.i = icmp eq i32 %i.fo, -1
  br i1 %.not70.i, label %array_extract_slice.exit, label %.split.i, !llvm.loop !64

array_extract_slice.exit:                         ; preds = %array_bitmap_copy.exit.i, %array_bitmap_copy.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

bb.u:                                             ; preds = %array_extract_slice.exit, %bb.n, %bb.k, %bb.d
  %.0124.in = phi ptr [ %i.af, %bb.d ], [ %i.bo, %bb.k ], [ %i.cc, %bb.n ], [ %i.cr, %array_extract_slice.exit ]
  %.0124 = ptrtoint ptr %.0124.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret i64 %.0124
}

declare void @mda_get_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @array_slice_size(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 1, 7) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef signext %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 8 uses
  %i.b = alloca [6 x i32], align 16               ; 4 uses
  %i.c = alloca [6 x i32], align 16               ; 6 uses
  %i.d = alloca [6 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %switch.tableidx = add i8 %8, -99               ; 3 uses
  %i.e = icmp ult i8 %switch.tableidx, 17
  br i1 %i.e, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.f = sext i8 %8 to i32
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.f) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  call void @mda_get_range(i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %5, ptr noundef %6) #16
  %i.j = icmp slt i32 %7, 1
  %i.k = icmp ne ptr %1, null                     ; 4 uses
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.l = call i32 @ArrayGetNItems(i32 noundef %2, ptr noundef nonnull %i.a) #16
  %i.m = zext nneg i8 %switch.load to i32         ; 2 uses
  %i.n = add nsw i32 %7, -1
  %i.o = add nuw i32 %i.n, %i.m
  %i.p = sub nsw i32 0, %i.m
  %i.q = and i32 %i.o, %i.p
  %i.r = mul i32 %i.l, %i.q
  br label %.loopexit

bb.d:                                             ; preds = %switch.lookup
  %i.s = call i32 @ArrayGetOffset(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #16 ; 4 uses
  %i.t = call fastcc ptr @array_seek(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %i.s, i32 noundef %7, i8 noundef signext %8) ; 3 uses
  call void @mda_get_prod(i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.b) #16
  call void @mda_get_offset_values(i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #16
  %i.u = shl nuw nsw i32 %2, 2
  %i.v = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 range(i64 0, 25) %i.v, i1 false)
  %i.w = add nsw i32 %2, -1                       ; 3 uses
  %i.x = icmp sgt i32 %7, 0
  %i.y = zext nneg i8 %switch.load to i64         ; 3 uses
  %i.z = add nuw nsw i64 %i.y, 4294967295         ; 2 uses
  %i.aa = sub nsw i64 0, %i.y                     ; 3 uses
  br i1 %i.x, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d
  %i.ab = zext nneg i32 %7 to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, %i.aa                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %sext.us = shl i64 %i.ad, 32
  %i.af = ashr exact i64 %sext.us, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.split.us
  %.060.us = phi i32 [ %i.s, %.split.us ], [ %i.aw, %bb.h ] ; 3 uses
  %.058.us = phi ptr [ %i.t, %.split.us ], [ %.2.us, %bb.h ] ; 2 uses
  %.056.us = phi i32 [ %i.w, %.split.us ], [ %i.ax, %bb.h ]
  %.0.us = phi i32 [ 0, %.split.us ], [ %.1.us, %bb.h ] ; 2 uses
  %i.ag = sext i32 %.056.us to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.us = icmp eq i32 %i.ai, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call fastcc ptr @array_seek(ptr noundef %.058.us, i32 noundef %.060.us, ptr noundef %1, i32 noundef %i.ai, i32 noundef %7, i8 noundef signext %8)
  %i.ak = load i32, ptr %i.ah, align 4
  %i.al = add i32 %i.ak, %.060.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.161.us = phi i32 [ %i.al, %bb.f ], [ %.060.us, %bb.e ] ; 3 uses
  %.159.us = phi ptr [ %i.aj, %bb.f ], [ %.058.us, %bb.e ] ; 2 uses
  br i1 %i.k, label %array_get_isnull.exit.us, label %array_get_isnull.exit.thread.us

array_get_isnull.exit.us:                         ; preds = %bb.g
  %i.am = sdiv i32 %.161.us, 8
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = and i32 %.161.us, 7
  %i.as = shl nuw nsw i32 1, %i.ar
  %i.at = and i32 %i.as, %i.aq
  %.not.i.us = icmp eq i32 %i.at, 0
  br i1 %.not.i.us, label %bb.h, label %array_get_isnull.exit.thread.us

array_get_isnull.exit.thread.us:                  ; preds = %array_get_isnull.exit.us, %bb.g
  %i.au = getelementptr inbounds i8, ptr %.159.us, i64 %i.af
  %i.av = add i32 %.0.us, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %array_get_isnull.exit.thread.us, %array_get_isnull.exit.us
  %.2.us = phi ptr [ %.159.us, %array_get_isnull.exit.us ], [ %i.au, %array_get_isnull.exit.thread.us ]
  %.1.us = phi i32 [ %.0.us, %array_get_isnull.exit.us ], [ %i.av, %array_get_isnull.exit.thread.us ] ; 2 uses
  %i.aw = add i32 %.161.us, 1
  %i.ax = call i32 @mda_next_tuple(i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not69.us = icmp eq i32 %i.ax, -1
  br i1 %.not69.us, label %.loopexit, label %bb.e, !llvm.loop !65

.split:                                           ; preds = %bb.d
  %i.ay = icmp eq i32 %7, -1
  br i1 %i.ay, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.o
  %.060.us75 = phi i32 [ %i.ch, %bb.o ], [ %i.s, %.split ] ; 3 uses
  %.058.us76 = phi ptr [ %.2.us87, %bb.o ], [ %i.t, %.split ] ; 2 uses
  %.056.us77 = phi i32 [ %i.ci, %bb.o ], [ %i.w, %.split ]
  %.0.us78 = phi i32 [ %.1.us88, %bb.o ], [ 0, %.split ] ; 2 uses
  %i.az = sext i32 %.056.us77 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not.us79 = icmp eq i32 %i.bb, 0
  br i1 %.not.us79, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.split.us
  %i.bc = call fastcc ptr @array_seek(ptr noundef %.058.us76, i32 noundef %.060.us75, ptr noundef %1, i32 noundef %i.bb, i32 noundef -1, i8 noundef signext %8)
  %i.bd = load i32, ptr %i.ba, align 4
  %i.be = add i32 %i.bd, %.060.us75
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.split.us
  %.161.us80 = phi i32 [ %i.be, %bb.i ], [ %.060.us75, %.split.split.us ] ; 3 uses
  %.159.us81 = phi ptr [ %i.bc, %bb.i ], [ %.058.us76, %.split.split.us ] ; 5 uses
  br i1 %i.k, label %array_get_isnull.exit.us82, label %array_get_isnull.exit.thread.us84

array_get_isnull.exit.us82:                       ; preds = %bb.j
  %i.bf = sdiv i32 %.161.us80, 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %.161.us80, 7
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not.i.us83 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.us83, label %bb.o, label %array_get_isnull.exit.thread.us84

array_get_isnull.exit.thread.us84:                ; preds = %array_get_isnull.exit.us82, %bb.j
  %i.bn = load i8, ptr %.159.us81, align 1        ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp eq i8 %i.bn, 1
  br i1 %i.bp, label %bb.n, label %bb.k

bb.k:                                             ; preds = %array_get_isnull.exit.thread.us84
  %i.bq = and i32 %i.bo, 1
  %.not.i71.us = icmp eq i32 %i.bq, 0
  br i1 %.not.i71.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = lshr i32 %i.bo, 1
  %i.bs = zext nneg i32 %i.br to i64
  br label %VARSIZE_ANY.exit.us85

bb.m:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %.159.us81, align 4
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = zext nneg i32 %i.bu to i64
  br label %VARSIZE_ANY.exit.us85

bb.n:                                             ; preds = %array_get_isnull.exit.thread.us84
  %i.bw = getelementptr i8, ptr %.159.us81, i64 1
  %.val.i.us = load i8, ptr %i.bw, align 1        ; 2 uses
  %i.bx = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.bx, 3
  %i.by = icmp eq i8 %.val.i.us, 18
  %i.bz = select i1 %i.by, i64 18, i64 2
  %i.ca = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.bz
  br label %VARSIZE_ANY.exit.us85

VARSIZE_ANY.exit.us85:                            ; preds = %bb.n, %bb.m, %bb.l
  %i.cb = phi i64 [ %i.bv, %bb.m ], [ %i.bs, %bb.l ], [ %i.ca, %bb.n ]
  %i.cc = add nuw nsw i64 %i.z, %i.cb
  %i.cd = and i64 %i.cc, %i.aa                    ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %sext.us86 = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw i8, ptr %.159.us81, i64 %sext.us86
  %i.cg = add i32 %.0.us78, %i.ce
  br label %bb.o

bb.o:                                             ; preds = %VARSIZE_ANY.exit.us85, %array_get_isnull.exit.us82
  %.2.us87 = phi ptr [ %.159.us81, %array_get_isnull.exit.us82 ], [ %i.cf, %VARSIZE_ANY.exit.us85 ]
  %.1.us88 = phi i32 [ %.0.us78, %array_get_isnull.exit.us82 ], [ %i.cg, %VARSIZE_ANY.exit.us85 ] ; 2 uses
  %i.ch = add i32 %.161.us80, 1
  %i.ci = call i32 @mda_next_tuple(i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not69.us89 = icmp eq i32 %i.ci, -1
  br i1 %.not69.us89, label %.loopexit, label %.split.split.us, !llvm.loop !65

.split.split:                                     ; preds = %.split, %bb.r
  %.060 = phi i32 [ %i.dd, %bb.r ], [ %i.s, %.split ] ; 3 uses
  %.058 = phi ptr [ %.2, %bb.r ], [ %i.t, %.split ] ; 2 uses
  %.056 = phi i32 [ %i.de, %bb.r ], [ %i.w, %.split ]
  %.0 = phi i32 [ %.1, %bb.r ], [ 0, %.split ]    ; 2 uses
  %i.cj = sext i32 %.056 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split.split
  %i.cm = call fastcc ptr @array_seek(ptr noundef %.058, i32 noundef %.060, ptr noundef %1, i32 noundef %i.cl, i32 noundef %7, i8 noundef signext %8)
  %i.cn = load i32, ptr %i.ck, align 4
  %i.co = add i32 %i.cn, %.060
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.split
  %.161 = phi i32 [ %i.co, %bb.p ], [ %.060, %.split.split ] ; 3 uses
  %.159 = phi ptr [ %i.cm, %bb.p ], [ %.058, %.split.split ] ; 3 uses
  br i1 %i.k, label %array_get_isnull.exit, label %array_get_isnull.exit.thread

array_get_isnull.exit:                            ; preds = %bb.q
  %i.cp = sdiv i32 %.161, 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = and i32 %.161, 7
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = and i32 %i.cv, %i.ct
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %bb.r, label %array_get_isnull.exit.thread

array_get_isnull.exit.thread:                     ; preds = %bb.q, %array_get_isnull.exit
  %i.cx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.159) #18
  %.reass = add i64 %i.cx, %i.y
  %i.cy = and i64 %.reass, %i.aa                  ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %sext = shl i64 %i.cy, 32
  %i.da = ashr exact i64 %sext, 32
  %i.db = getelementptr inbounds i8, ptr %.159, i64 %i.da
  %i.dc = add i32 %.0, %i.cz
  br label %bb.r

bb.r:                                             ; preds = %array_get_isnull.exit.thread, %array_get_isnull.exit
  %.2 = phi ptr [ %.159, %array_get_isnull.exit ], [ %i.db, %array_get_isnull.exit.thread ]
  %.1 = phi i32 [ %.0, %array_get_isnull.exit ], [ %i.dc, %array_get_isnull.exit.thread ] ; 2 uses
  %i.dd = add i32 %.161, 1
  %i.de = call i32 @mda_next_tuple(i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not69 = icmp eq i32 %i.de, -1
  br i1 %.not69, label %.loopexit, label %.split.split, !llvm.loop !65

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.h, %bb.c
  %.062 = phi i32 [ %i.r, %bb.c ], [ %.1.us, %bb.h ], [ %.1.us88, %bb.o ], [ %.1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_set_element(i64 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 19 uses
  %i.b = alloca [6 x i32], align 16               ; 15 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  %i.e = alloca [6 x i32], align 16               ; 24 uses
  %i.f = alloca [6 x i32], align 16               ; 16 uses
  store i64 %3, ptr %i.c, align 8
  %i.g = zext i1 %4 to i8                         ; 2 uses
  store i8 %i.g, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %switch.tableidx = add i8 %8, -99               ; 3 uses
  %i.h = icmp ult i8 %switch.tableidx, 17
  br i1 %i.h, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.i = sext i8 %8 to i32
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.i) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.l = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1 ; 4 uses
  %i.m = icmp sgt i32 %5, 0
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %switch.lookup
  %.not226 = icmp eq i32 %1, 1
  br i1 %.not226, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2250, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %2, align 4                ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sdiv i32 %5, %6
  %.not227 = icmp slt i32 %i.q, %i.s
  br i1 %.not227, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.u = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2255, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2260, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %5 to i64                  ; 2 uses
  %i.aa = tail call ptr @palloc(i64 noundef %i.z) #16 ; 3 uses
  %i.ab = inttoptr i64 %0 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ab, i64 %i.z, i1 false)
  %i.ac = load i32, ptr %2, align 4
  %i.ad = mul i32 %i.ac, %6
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = tail call fastcc i32 @ArrayCastAndSet(i64 noundef %3, i32 noundef %6, i1 noundef zeroext %7, i8 noundef zeroext %switch.load, ptr noundef %i.af) ; 0 uses
  br label %array_bitmap_copy.exit

bb.k:                                             ; preds = %switch.lookup
  %i.ah = add i32 %1, -7
  %or.cond = icmp ult i32 %i.ah, -6
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.aj = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2272, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = icmp ne i32 %6, -1                      ; 3 uses
  %or.cond3 = or i1 %4, %i.al
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = inttoptr i64 %3 to ptr
  %i.an = tail call ptr @pg_detoast_datum(ptr noundef %i.am) #16
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = phi i64 [ %i.ao, %bb.n ], [ %3, %bb.m ] ; 4 uses
  %i.aq = inttoptr i64 %0 to ptr                  ; 3 uses
  %.val2.i = load i8, ptr %i.aq, align 1
  %i.ar = icmp eq i8 %.val2.i, 1
  br i1 %i.ar, label %VARATT_IS_EXTERNAL_EXPANDED.exit, label %VARATT_IS_EXTERNAL_EXPANDED.exit.thread

VARATT_IS_EXTERNAL_EXPANDED.exit:                 ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.aq, i64 1
  %.val.i = load i8, ptr %i.as, align 1
  %i.at = and i8 %.val.i, -2
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %bb.p, label %VARATT_IS_EXTERNAL_EXPANDED.exit.thread

bb.p:                                             ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.av = tail call ptr @DatumGetExpandedArray(i64 noundef %0) #16 ; 18 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 52 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = sext i32 %i.ax to i64
  %i.bb = shl nsw i64 %i.ba, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %i.az, i64 %i.bb, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %i.bd, i64 %i.bb, i1 false)
  %i.be = icmp eq i32 %i.ax, 0                    ; 7 uses
  br i1 %i.be, label %.loopexit200.loopexit.i, label %bb.q

.loopexit200.loopexit.i:                          ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = shl nuw nsw i32 %1, 2
  %i.bi = zext nneg i32 %i.bh to i64              ; 4 uses
  %i.bj = tail call ptr @MemoryContextAllocZero(ptr noundef %i.bg, i64 noundef %i.bi) #16
  store ptr %i.bj, ptr %i.ay, align 8
  %i.bk = load ptr, ptr %i.bf, align 8
  %i.bl = tail call ptr @MemoryContextAllocZero(ptr noundef %i.bk, i64 noundef %i.bi) #16
  store ptr %i.bl, ptr %i.bc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 range(i64 0, 25) %i.bi, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %2, i64 range(i64 0, 25) %i.bi, i1 false)
  br label %.loopexit200.i

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i32 %i.ax, %1
  br i1 %.not.i, label %.loopexit200.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bn = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2575, ptr noundef nonnull @__func__.array_set_element_expanded) #16
  unreachable

.loopexit200.i:                                   ; preds = %bb.q, %.loopexit200.loopexit.i
  tail call void @deconstruct_expanded_array(ptr noundef nonnull %i.av) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 78 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 2, !range !8, !noundef !9
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i = or i1 %4, %i.br
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit200.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.bt, ptr @CurrentMemoryContext, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 76
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = sext i16 %i.bw to i32
  %i.by = tail call i64 @datumCopy(i64 noundef %i.ap, i1 noundef zeroext false, i32 noundef %i.bx) #16
  store ptr %i.bu, ptr @CurrentMemoryContext, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit200.i
  %.0.i229 = phi i64 [ %i.ap, %.loopexit200.i ], [ %i.by, %bb.s ] ; 2 uses
end_hunk_0
begin_hunk_1_@array_set_element:bb.a
  %i.em = icmp slt i32 %i.ej, %i.el
  br i1 %i.em, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.preheader198.i.4
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eo = load i32, ptr %i.en, align 16
  %i.ep = add i32 %i.eo, %i.el
  %.not156.i.4 = icmp slt i32 %i.ej, %i.ep
  br i1 %.not156.i.4, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %exitcond.not.i.4 = icmp eq i32 %1, 5
  br i1 %exitcond.not.i.4, label %.loopexit199.i, label %.preheader198.i.5

.preheader198.i.5:                                ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %i.eu = icmp slt i32 %i.er, %i.et
  br i1 %i.eu, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.preheader198.i.5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = add i32 %i.ew, %i.et
  %.not156.i.5 = icmp slt i32 %i.er, %i.ex
  br i1 %.not156.i.5, label %.loopexit199.i, label %bb.ao

.preheader198.i:                                  ; preds = %bb.t
  %i.ey = load i32, ptr %2, align 4               ; 2 uses
  %i.ez = load i32, ptr %i.b, align 16            ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader198.i
  %i.fb = load i32, ptr %i.a, align 16
  %i.fc = add i32 %i.fb, %i.ez
  %.not156.i = icmp slt i32 %i.ey, %i.fc
  br i1 %.not156.i, label %.preheader198.i.1, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %.preheader198.i.5, %bb.ak, %.preheader198.i.4, %bb.ai, %.preheader198.i.3, %bb.ag, %.preheader198.i.2, %bb.ae, %.preheader198.i.1, %bb.an, %.preheader198.i
  %i.fd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fe = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ff = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2658, ptr noundef nonnull @__func__.array_set_element_expanded) #16
  unreachable

.loopexit199.i:                                   ; preds = %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.am, %bb.z
  %.1178.i = phi i32 [ %.0177.i, %bb.z ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %.2.i = phi i1 [ %.1134.i, %bb.z ], [ %i.be, %bb.am ], [ %i.be, %bb.al ], [ %i.be, %bb.aj ], [ %i.be, %bb.ah ], [ %i.be, %bb.af ]
  %.1.i = phi i1 [ %.0132.i, %bb.z ], [ %i.ce, %bb.am ], [ %i.ce, %bb.al ], [ %i.ce, %bb.aj ], [ %i.ce, %bb.ah ], [ %i.ce, %bb.af ] ; 2 uses
  br i1 %.2.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit199.i, %.thread.i
  %.1190.i = phi i1 [ %spec.select163.i, %.thread.i ], [ %.1.i, %.loopexit199.i ]
  %.0176186.i = phi i32 [ %i.dc, %.thread.i ], [ 0, %.loopexit199.i ]
  %.1178184.i = phi i32 [ %.0177.i, %.thread.i ], [ %.1178.i, %.loopexit199.i ]
  %i.fg = call i32 @ArrayGetNItems(i32 noundef range(i32 1, 7) %1, ptr noundef nonnull %i.a) #16 ; 0 uses
  call void @ArrayCheckBounds(i32 noundef range(i32 1, 7) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit199.i
  %.1189.i = phi i1 [ %.1190.i, %bb.ap ], [ %.1.i, %.loopexit199.i ]
  %.2187.i = phi i1 [ true, %bb.ap ], [ false, %.loopexit199.i ]
  %.0176185.i = phi i32 [ %.0176186.i, %bb.ap ], [ 0, %.loopexit199.i ] ; 8 uses
  %.1178183.i = phi i32 [ %.1178184.i, %bb.ap ], [ %.1178.i, %.loopexit199.i ] ; 3 uses
  %i.fh = call i32 @ArrayGetOffset(i32 noundef range(i32 1, 7) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #16 ; 2 uses
  %i.fi = load i32, ptr %i.a, align 16            ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp sgt i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.fm = sdiv i32 %i.fi, 8
  %i.fn = add i32 %i.fm, %i.fi
  %i.fo = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.fi) ; 3 uses
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = shl nsw i64 %i.fp, 3
  %i.fr = call ptr @repalloc(ptr noundef %i.ca, i64 noundef %i.fq) #16 ; 2 uses
  store ptr %i.fr, ptr %i.bz, align 8
  br i1 %i.cd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fs = call ptr @repalloc(ptr noundef nonnull %i.cc, i64 noundef %i.fp) #16 ; 2 uses
  store ptr %i.fs, ptr %i.cb, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0139.i = phi ptr [ %i.fs, %bb.as ], [ null, %bb.ar ]
  store i32 %i.fo, ptr %i.fj, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.ft = phi i32 [ %i.fo, %bb.at ], [ %i.fk, %bb.aq ]
  %.0142.i = phi ptr [ %i.fr, %bb.at ], [ %i.ca, %bb.aq ] ; 11 uses
  %.1140.i = phi ptr [ %.0139.i, %bb.at ], [ %i.cc, %bb.aq ] ; 2 uses
  %i.fu = icmp eq ptr %.1140.i, null
  %or.cond3.i = select i1 %.1189.i, i1 %i.fu, i1 false
  br i1 %or.cond3.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fv = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = sext i32 %i.ft to i64
  %i.fy = call ptr @MemoryContextAllocZero(ptr noundef %i.fw, i64 noundef %i.fx) #16 ; 2 uses
  store ptr %i.fy, ptr %i.cb, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2141.i = phi ptr [ %i.fy, %bb.av ], [ %.1140.i, %bb.au ] ; 14 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  br i1 %.2187.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 %1, ptr %i.aw, align 4
  %i.ga = load ptr, ptr %i.ay, align 8
  %i.gb = shl nuw nsw i32 %1, 2
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ga, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gc, i1 false)
  %i.gd = load ptr, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gd, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.gc, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ge = icmp sgt i32 %.1178183.i, 0
  br i1 %i.ge, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gf = zext nneg i32 %.1178183.i to i64        ; 4 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0142.i, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.av, i64 100 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %.0142.i, i64 %i.gk, i1 false)
  %i.gl = shl nuw nsw i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.0142.i, i8 0, i64 %i.gl, i1 false)
  %.not158.i = icmp eq ptr %.2141.i, null
  br i1 %.not158.i, label %.loopexit197.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.az
  %i.gm = getelementptr inbounds nuw i8, ptr %.2141.i, i64 %i.gf
  %i.gn = load i32, ptr %i.gh, align 4
  %i.go = sext i32 %i.gn to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gm, ptr nonnull align 1 %.2141.i, i64 %i.go, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.2141.i, i8 1, i64 %i.gf, i1 false)
  br label %.loopexit197.i

.loopexit197.i:                                   ; preds = %.lr.ph.preheader.i, %bb.az
  %i.gp = load i32, ptr %i.gh, align 4
  %i.gq = add i32 %i.gp, %.1178183.i
  store i32 %i.gq, ptr %i.gh, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit197.i, %bb.ay
  %i.gr = icmp sgt i32 %.0176185.i, 0
  br i1 %i.gr, label %.preheader196.i, label %bb.bd

.preheader196.i:                                  ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %i.av, i64 100 ; 12 uses
  %xtraiter = and i32 %.0176185.i, 3              ; 3 uses
  %i.gt = icmp ult i32 %.0176185.i, 4
  br i1 %i.gt, label %.epil.preheader, label %.preheader196.i.new

.preheader196.i.new:                              ; preds = %.preheader196.i
  %unroll_iter = and i32 %.0176185.i, 2147483644
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader196.i.new
  %.4205.i = phi i32 [ 0, %.preheader196.i.new ], [ %i.hn, %bb.bb ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader196.i.new ], [ %niter.next.3, %bb.bb ]
  %i.gu = load i32, ptr %i.gs, align 4
  %i.gv = add i32 %i.gu, %.4205.i
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %i.gw
  store i64 0, ptr %i.gx, align 8
  %i.gy = or disjoint i32 %.4205.i, 1
  %i.gz = load i32, ptr %i.gs, align 4
  %i.ha = add i32 %i.gz, %i.gy
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %i.hb
  store i64 0, ptr %i.hc, align 8
  %i.hd = or disjoint i32 %.4205.i, 2
  %i.he = load i32, ptr %i.gs, align 4
  %i.hf = add i32 %i.he, %i.hd
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %i.hg
  store i64 0, ptr %i.hh, align 8
  %i.hi = or disjoint i32 %.4205.i, 3
  %i.hj = load i32, ptr %i.gs, align 4
  %i.hk = add i32 %i.hj, %i.hi
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %i.hl
  store i64 0, ptr %i.hm, align 8
  %i.hn = add nuw nsw i32 %.4205.i, 4             ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bb, !llvm.loop !66

.unr-lcssa:                                       ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader196.i
  %.4205.i.epil.init = phi i32 [ 0, %.preheader196.i ], [ %i.hn, %.unr-lcssa ]
  %lcmp.mod492 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod492)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader
  %.4205.i.epil = phi i32 [ %.4205.i.epil.init, %.epil.preheader ], [ %i.hs, %bb.bc ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bc ]
  %i.ho = load i32, ptr %i.gs, align 4
  %i.hp = add i32 %i.ho, %.4205.i.epil
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %i.hq
  store i64 0, ptr %i.hr, align 8
  %i.hs = add nuw nsw i32 %.4205.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bc, !llvm.loop !67

.epilog-lcssa:                                    ; preds = %bb.bc, %.unr-lcssa
  %.not159.not.i = icmp eq ptr %.2141.i, null
  br i1 %.not159.not.i, label %.loopexit.i, label %.lr.ph207.i.preheader

.lr.ph207.i.preheader:                            ; preds = %.epilog-lcssa
  %xtraiter493 = and i32 %.0176185.i, 3           ; 3 uses
  %i.ht = icmp ult i32 %.0176185.i, 4
  br i1 %i.ht, label %.lr.ph207.i.epil.preheader, label %.lr.ph207.i.preheader.new

.lr.ph207.i.preheader.new:                        ; preds = %.lr.ph207.i.preheader
  %unroll_iter497 = and i32 %.0176185.i, 2147483644
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %.lr.ph207.i, %.lr.ph207.i.preheader.new
  %.5206.i = phi i32 [ 0, %.lr.ph207.i.preheader.new ], [ %i.in, %.lr.ph207.i ] ; 5 uses
  %niter498 = phi i32 [ 0, %.lr.ph207.i.preheader.new ], [ %niter498.next.3, %.lr.ph207.i ]
  %i.hu = load i32, ptr %i.gs, align 4
  %i.hv = add i32 %i.hu, %.5206.i
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %.2141.i, i64 %i.hw
  store i8 1, ptr %i.hx, align 1
  %i.hy = or disjoint i32 %.5206.i, 1
  %i.hz = load i32, ptr %i.gs, align 4
  %i.ia = add i32 %i.hz, %i.hy
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %.2141.i, i64 %i.ib
  store i8 1, ptr %i.ic, align 1
  %i.id = or disjoint i32 %.5206.i, 2
  %i.ie = load i32, ptr %i.gs, align 4
  %i.if = add i32 %i.ie, %i.id
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %.2141.i, i64 %i.ig
  store i8 1, ptr %i.ih, align 1
  %i.ii = or disjoint i32 %.5206.i, 3
  %i.ij = load i32, ptr %i.gs, align 4
  %i.ik = add i32 %i.ij, %i.ii
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %.2141.i, i64 %i.il
  store i8 1, ptr %i.im, align 1
  %i.in = add nuw nsw i32 %.5206.i, 4             ; 2 uses
  %niter498.next.3 = add nuw nsw i32 %niter498, 4 ; 2 uses
  %niter498.ncmp.3 = icmp eq i32 %niter498.next.3, %unroll_iter497
  br i1 %niter498.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph207.i, !llvm.loop !68

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph207.i
  %lcmp.mod495.not = icmp eq i32 %xtraiter493, 0
  br i1 %lcmp.mod495.not, label %.loopexit.i, label %.lr.ph207.i.epil.preheader

.lr.ph207.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph207.i.preheader
  %.5206.i.epil.init = phi i32 [ 0, %.lr.ph207.i.preheader ], [ %i.in, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod496 = icmp ne i32 %xtraiter493, 0
  call void @llvm.assume(i1 %lcmp.mod496)
  br label %.lr.ph207.i.epil

.lr.ph207.i.epil:                                 ; preds = %.lr.ph207.i.epil, %.lr.ph207.i.epil.preheader
  %.5206.i.epil = phi i32 [ %i.is, %.lr.ph207.i.epil ], [ %.5206.i.epil.init, %.lr.ph207.i.epil.preheader ] ; 2 uses
  %epil.iter494 = phi i32 [ %epil.iter494.next, %.lr.ph207.i.epil ], [ 0, %.lr.ph207.i.epil.preheader ]
  %i.io = load i32, ptr %i.gs, align 4
  %i.ip = add i32 %i.io, %.5206.i.epil
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %.2141.i, i64 %i.iq
  store i8 1, ptr %i.ir, align 1
  %i.is = add nuw nsw i32 %.5206.i.epil, 1
  %epil.iter494.next = add i32 %epil.iter494, 1   ; 2 uses
  %epil.iter494.cmp.not = icmp eq i32 %epil.iter494.next, %xtraiter493
  br i1 %epil.iter494.cmp.not, label %.loopexit.i, label %.lr.ph207.i.epil, !llvm.loop !69

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph207.i.epil, %.epilog-lcssa
  %i.it = load i32, ptr %i.gs, align 4
  %i.iu = add i32 %i.it, %.0176185.i
  store i32 %i.iu, ptr %i.gs, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i, %bb.ba
  %i.iv = load i8, ptr %i.bp, align 2, !range !8, !noundef !9
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %._crit_edge220.i, label %bb.be

._crit_edge220.i:                                 ; preds = %bb.bd
  %.pre221.i = sext i32 %i.fh to i64
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ix = icmp eq ptr %.2141.i, null
  %.pre222.i = sext i32 %i.fh to i64              ; 5 uses
  br i1 %i.ix, label %._crit_edge219.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iy = getelementptr inbounds i8, ptr %.2141.i, i64 %.pre222.i
  %i.iz = load i8, ptr %i.iy, align 1, !range !8, !noundef !9
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %.thread191.i, label %._crit_edge219.i

.thread191.i:                                     ; preds = %bb.bf
  %i.jb = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre222.i
  store i64 %.0.i229, ptr %i.jb, align 8
  br label %bb.bh

._crit_edge219.i:                                 ; preds = %bb.bf, %bb.be
  %i.jc = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre222.i
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = inttoptr i64 %i.jd to ptr
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge219.i, %._crit_edge220.i
  %.pre-phi.i = phi i64 [ %.pre221.i, %._crit_edge220.i ], [ %.pre222.i, %._crit_edge219.i ] ; 2 uses
  %.0131.i = phi ptr [ null, %._crit_edge220.i ], [ %i.je, %._crit_edge219.i ] ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre-phi.i
  store i64 %.0.i229, ptr %i.jf, align 8
  %.not160.i = icmp eq ptr %.2141.i, null
  br i1 %.not160.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread191.i
  %i.jg = phi i64 [ %.pre222.i, %.thread191.i ], [ %.pre-phi.i, %bb.bg ]
  %.0131194.i = phi ptr [ null, %.thread191.i ], [ %.0131.i, %bb.bg ]
  %i.jh = getelementptr inbounds i8, ptr %.2141.i, i64 %i.jg
  store i8 %i.g, ptr %i.jh, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0131195.i = phi ptr [ %.0131194.i, %bb.bh ], [ %.0131.i, %bb.bg ] ; 4 uses
  %.not161.i = icmp eq ptr %.0131195.i, null
  br i1 %.not161.i, label %array_set_element_expanded.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = icmp ult ptr %.0131195.i, %i.jj
  br i1 %i.jk, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.jm = load ptr, ptr %i.jl, align 8
  %.not162.i = icmp ult ptr %.0131195.i, %i.jm
  br i1 %.not162.i, label %array_set_element_expanded.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @pfree(ptr noundef nonnull %.0131195.i) #16
  br label %array_set_element_expanded.exit

array_set_element_expanded.exit:                  ; preds = %bb.bi, %bb.bk, %bb.bl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %array_bitmap_copy.exit

VARATT_IS_EXTERNAL_EXPANDED.exit.thread:          ; preds = %bb.o, %VARATT_IS_EXTERNAL_EXPANDED.exit
  %i.jo = tail call ptr @pg_detoast_datum(ptr noundef nonnull %i.aq) #16 ; 9 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4 ; 5 uses
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph333.preheader, label %bb.bm

.lr.ph333.preheader:                              ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = shl nuw nsw i32 %1, 2
  %i.jv = zext nneg i32 %i.ju to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 4 %2, i64 %i.jv, i1 false)
  store i32 1, ptr %i.e, align 16
  %exitcond355.not = icmp eq i32 %1, 1
  br i1 %exitcond355.not, label %._crit_edge, label %.lr.ph333.1

.lr.ph333.1:                                      ; preds = %.lr.ph333.preheader
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.jw, align 4
  %exitcond355.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond355.not.1, label %._crit_edge, label %.lr.ph333.2

.lr.ph333.2:                                      ; preds = %.lr.ph333.1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.jx, align 8
  %exitcond355.not.2 = icmp eq i32 %1, 3
  br i1 %exitcond355.not.2, label %._crit_edge, label %.lr.ph333.3

.lr.ph333.3:                                      ; preds = %.lr.ph333.2
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.jy, align 4
  %exitcond355.not.3 = icmp eq i32 %1, 4
  br i1 %exitcond355.not.3, label %._crit_edge, label %.lr.ph333.4

.lr.ph333.4:                                      ; preds = %.lr.ph333.3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1, ptr %i.jz, align 16
  %exitcond355.not.4 = icmp eq i32 %1, 5
  br i1 %exitcond355.not.4, label %._crit_edge, label %.lr.ph333.5

.lr.ph333.5:                                      ; preds = %.lr.ph333.4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1, ptr %i.ka, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph333.5, %.lr.ph333.4, %.lr.ph333.3, %.lr.ph333.2, %.lr.ph333.1, %.lr.ph333.preheader
  %i.kb = call ptr @construct_md_array(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.jt, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8)
  br label %array_bitmap_copy.exit

bb.bm:                                            ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %.not = icmp eq i32 %i.jq, %1
  br i1 %.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.kd = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ke = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2321, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 4 uses
  %i.kg = shl nuw nsw i32 %1, 2
  %i.kh = zext nneg i32 %i.kg to i64              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 4 %i.kf, i64 %i.kh, i1 false)
  %i.ki = load i32, ptr %i.jp, align 4
  %i.kj = sext i32 %i.ki to i64
  %i.kk = shl nsw i64 %i.kj, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 4 %i.kl, i64 %i.kh, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.kn = load i32, ptr %i.km, align 4
  %.not214 = icmp ne i32 %i.kn, 0
  %i.ko = or i1 %4, %.not214                      ; 7 uses
  %i.kp = icmp eq i32 %1, 1
  br i1 %i.kp, label %bb.bp, label %.lr.ph

bb.bp:                                            ; preds = %bb.bo
  %i.kq = load i32, ptr %2, align 4               ; 6 uses
  %i.kr = load i32, ptr %i.f, align 16            ; 3 uses
  %i.ks = icmp slt i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.bq, label %._crit_edge356

._crit_edge356:                                   ; preds = %bb.bp
  %.pre = load i32, ptr %i.e, align 16
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.kt = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.kr, i32 %i.kq) ; 2 uses
  %i.ku = extractvalue { i32, i1 } %i.kt, 1
  %i.kv = extractvalue { i32, i1 } %i.kt, 0       ; 3 uses
  br i1 %i.ku, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kw = load i32, ptr %i.e, align 16
  %i.kx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.kw, i32 %i.kv) ; 2 uses
  %i.ky = extractvalue { i32, i1 } %i.kx, 1
  %i.kz = extractvalue { i32, i1 } %i.kx, 0       ; 2 uses
  store i32 %i.kz, ptr %i.e, align 16
  br i1 %i.ky, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.la = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.lb = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.lc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2347, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bt:                                            ; preds = %bb.br
  store i32 %i.kq, ptr %i.f, align 16
  %i.ld = icmp sgt i32 %i.kv, 1
  %spec.select = select i1 %i.ld, i1 true, i1 %i.ko
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge356, %bb.bt
  %i.le = phi i32 [ %i.kq, %bb.bt ], [ %i.kr, %._crit_edge356 ]
  %i.lf = phi i32 [ %i.kz, %bb.bt ], [ %.pre, %._crit_edge356 ] ; 2 uses
  %.0294 = phi i32 [ %i.kv, %bb.bt ], [ 0, %._crit_edge356 ] ; 2 uses
  %.0191 = phi i1 [ %spec.select, %bb.bt ], [ %i.ko, %._crit_edge356 ] ; 2 uses
end_hunk_1
begin_hunk_2_@array_set_element:bb.a

.lr.ph94.i272.5:                                  ; preds = %.lr.ph94.i272.4
  %i.vt = icmp samesign ugt i32 %.in99.i273.ph464, 6
  br i1 %i.vt, label %.lr.ph94.i272.6, label %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit408

.lr.ph94.i272.6:                                  ; preds = %.lr.ph94.i272.5
  %.not400 = icmp eq i32 %.in99.i273.ph464, 7
  br i1 %.not400, label %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit, label %bb.ej

.thread308:                                       ; preds = %bb.ej
  %i.vu = getelementptr inbounds nuw i8, ptr %.25491.i276.ph466, i64 1 ; 3 uses
  %i.vv = load i8, ptr %i.vu, align 1
  %i.vw = zext i8 %i.vv to i32                    ; 2 uses
  %.not469 = icmp eq i32 %i.vq, 1
  br i1 %.not469, label %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit423, label %.lr.ph94.i272.1, !llvm.loop !1

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit: ; preds = %.lr.ph94.i272.6
  %i.vx = or i32 %.393.i274.ph465, 127
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit408: ; preds = %.lr.ph94.i272.5
  %i.vy = or i32 %.393.i274.ph465, 63
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit411: ; preds = %.lr.ph94.i272.4
  %i.vz = or i32 %.393.i274.ph465, 31
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit414: ; preds = %.lr.ph94.i272.3
  %i.wa = or i32 %.393.i274.ph465, 15
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit417: ; preds = %.lr.ph94.i272.2
  %i.wb = or i32 %.393.i274.ph465, 7
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit420: ; preds = %.lr.ph94.i272.1
  %i.wc = or i32 %.393.i274.ph465, 3
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit423: ; preds = %.thread308, %.lr.ph94.i272.outer.preheader
  %.393.i274.ph.lcssa = phi i32 [ %i.uw, %.lr.ph94.i272.outer.preheader ], [ %i.vw, %.thread308 ]
  %.25491.i276.ph.lcssa = phi ptr [ %i.sx, %.lr.ph94.i272.outer.preheader ], [ %i.vu, %.thread308 ]
  %i.wd = or i32 %.393.i274.ph.lcssa, 1
  br label %._crit_edge95.thread.sink.split.i267

._crit_edge95.thread.sink.split.i267:             ; preds = %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit408, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit411, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit414, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit417, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit420, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit423, %._crit_edge.i265
  %.273110.sink.i268 = phi i32 [ %.2.i260, %._crit_edge.i265 ], [ %i.wc, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit420 ], [ %i.wb, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit417 ], [ %i.wa, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit414 ], [ %i.vz, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit411 ], [ %i.vy, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit408 ], [ %i.vx, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit ], [ %i.wd, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit423 ]
  %.15369112.sink.i269 = phi ptr [ %.153.i258, %._crit_edge.i265 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit420 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit417 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit414 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit411 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit408 ], [ %.25491.i276.ph466, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit ], [ %.25491.i276.ph.lcssa, %._crit_edge95.thread.sink.split.i267.loopexit.split.loop.exit423 ]
  %i.we = trunc i32 %.273110.sink.i268 to i8
  store i8 %i.we, ptr %.15369112.sink.i269, align 1
  br label %array_bitmap_copy.exit283

array_bitmap_copy.exit283:                        ; preds = %bb.ee, %bb.ej, %bb.ec, %._crit_edge.i265, %._crit_edge95.thread.sink.split.i267
  br i1 %.0293, label %bb.ek, label %array_bitmap_copy.exit

bb.ek:                                            ; preds = %array_bitmap_copy.exit283
  %i.wf = add i32 %.0193, 1                       ; 2 uses
  %i.wg = xor i32 %.0193, -1
  %i.wh = add i32 %i.oa, %i.wg
  call void @array_bitmap_copy(ptr noundef nonnull %i.sx, i32 noundef %i.wf, ptr noundef %i.oi, i32 noundef %i.wf, i32 noundef %i.wh)
  br label %array_bitmap_copy.exit

array_bitmap_copy.exit:                           ; preds = %bb.dv, %bb.ea, %bb.dr, %array_bitmap_copy.exit283, %bb.ek, %bb.dt, %._crit_edge.i245, %._crit_edge95.thread.sink.split.i, %._crit_edge, %array_set_element_expanded.exit, %bb.j
  %.0196.in = phi ptr [ %i.aa, %bb.j ], [ %i.jn, %array_set_element_expanded.exit ], [ %i.kb, %._crit_edge ], [ %i.rx, %._crit_edge95.thread.sink.split.i ], [ %i.rx, %bb.dr ], [ %i.rx, %._crit_edge.i245 ], [ %i.rx, %bb.ea ], [ %i.rx, %bb.dt ], [ %i.rx, %bb.ek ], [ %i.rx, %array_bitmap_copy.exit283 ], [ %i.rx, %bb.dv ]
  %.0196 = ptrtoint ptr %.0196.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret i64 %.0196
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @construct_md_array(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %8, -99               ; 3 uses
  %i.a = icmp ult i8 %switch.tableidx, 17
  br i1 %i.a, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.b = sext i8 %8 to i32
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.b) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i32 noundef %2) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3518, ptr noundef nonnull @__func__.construct_md_array) #16
  unreachable

bb.d:                                             ; preds = %switch.lookup
  %i.j = icmp samesign ugt i32 %2, 6
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, i32 noundef %2, i32 noundef 6) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3523, ptr noundef nonnull @__func__.construct_md_array) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = tail call i32 @ArrayGetNItems(i32 noundef %2, ptr noundef %3) #16 ; 7 uses
  tail call void @ArrayCheckBounds(i32 noundef %2, ptr noundef %3, ptr noundef %4) #16
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.p = icmp eq i32 %6, -1
  %i.q = add nuw nsw i64 %switch.ext, 4294967295  ; 5 uses
  %i.r = sub nsw i64 0, %switch.ext               ; 5 uses
  br i1 %i.p, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %wide.trip.count130 = zext nneg i32 %i.n to i64
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.m
  %indvars.iv128 = phi i64 [ 0, %.preheader.split.us.preheader ], [ %indvars.iv.next129, %bb.m ] ; 3 uses
  %.06983.us = phi i32 [ 0, %.preheader.split.us.preheader ], [ %.1.us, %bb.m ] ; 2 uses
  %.07082.us = phi i1 [ false, %.preheader.split.us.preheader ], [ %.171.us, %bb.m ]
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv128
  %i.t = load i8, ptr %i.s, align 1, !range !8, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.split.us
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv128 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = tail call ptr @pg_detoast_datum(ptr noundef %i.x) #16 ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  store i64 %i.z, ptr %i.v, align 8
  %i.aa = zext i32 %.06983.us to i64
  %i.ab = load i8, ptr %i.y, align 1              ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp eq i8 %i.ab, 1
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = and i32 %i.ac, 1
  %.not.i.us = icmp eq i32 %i.ae, 0
  br i1 %.not.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = lshr i32 %i.ac, 1
  %i.ag = zext nneg i32 %i.af to i64
  br label %VARSIZE_ANY.exit.us

bb.k:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.y, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = zext nneg i32 %i.ai to i64
  br label %VARSIZE_ANY.exit.us

bb.l:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.y, i64 1
  %.val.i.us = load i8, ptr %i.ak, align 1        ; 2 uses
  %i.al = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.al, 3
  %i.am = icmp eq i8 %.val.i.us, 18
  %i.an = select i1 %i.am, i64 18, i64 2
  %i.ao = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.an
  br label %VARSIZE_ANY.exit.us

VARSIZE_ANY.exit.us:                              ; preds = %bb.l, %bb.k, %bb.j
  %.0.i78.us = phi i64 [ %i.ao, %bb.l ], [ %i.ag, %bb.j ], [ %i.aj, %bb.k ]
  %i.ap = add nuw nsw i64 %.0.i78.us, %i.aa
  %i.aq = add nsw i64 %i.q, %i.ap
  %i.ar = and i64 %i.aq, %i.r                     ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i64 %i.ar, 3221225472
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.m, label %.split.us

bb.m:                                             ; preds = %VARSIZE_ANY.exit.us, %bb.g
  %.171.us = phi i1 [ %.07082.us, %VARSIZE_ANY.exit.us ], [ true, %bb.g ] ; 2 uses
  %.1.us = phi i32 [ %i.as, %VARSIZE_ANY.exit.us ], [ %.06983.us, %bb.g ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count130
  br i1 %exitcond131.not, label %.split87.us, label %.preheader.split.us, !llvm.loop !70

.preheader.split:                                 ; preds = %.preheader
  %i.av = icmp sgt i32 %6, 0
  br i1 %i.av, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split
  br i1 %.not, label %.preheader.split.split.us.split.us, label %.preheader.split.split.us.split.preheader

.preheader.split.split.us.split.preheader:        ; preds = %.preheader.split.split.us
  %wide.trip.count125 = zext nneg i32 %i.n to i64
  br label %.preheader.split.split.us.split

.preheader.split.split.us.split.us:               ; preds = %.preheader.split.split.us, %bb.n
  %.084.us89.us = phi i32 [ %i.bd, %bb.n ], [ 0, %.preheader.split.split.us ]
  %.06983.us90.us = phi i32 [ %i.bc, %bb.n ], [ 0, %.preheader.split.split.us ]
  %i.aw = add i32 %.06983.us90.us, %6
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.q, %i.ax
  %i.az = and i64 %i.ay, %i.r                     ; 2 uses
  %i.ba = and i64 %i.az, 3221225472
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.preheader.split.split.us.split.us
  %i.bc = trunc i64 %i.az to i32                  ; 2 uses
  %i.bd = add nuw nsw i32 %.084.us89.us, 1        ; 2 uses
  %exitcond127.not = icmp eq i32 %i.bd, %i.n
  br i1 %exitcond127.not, label %.split87.us.thread, label %.preheader.split.split.us.split.us, !llvm.loop !70

.preheader.split.split.us.split:                  ; preds = %.preheader.split.split.us.split.preheader, %bb.p
  %indvars.iv123 = phi i64 [ 0, %.preheader.split.split.us.split.preheader ], [ %indvars.iv.next124, %bb.p ] ; 2 uses
  %.06983.us90 = phi i32 [ 0, %.preheader.split.split.us.split.preheader ], [ %.1.us93, %bb.p ] ; 2 uses
  %.07082.us91 = phi i1 [ false, %.preheader.split.split.us.split.preheader ], [ %.171.us92, %bb.p ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv123
  %i.bf = load i8, ptr %i.be, align 1, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.split.split.us.split
  %i.bh = add i32 %.06983.us90, %6
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.q, %i.bi
  %i.bk = and i64 %i.bj, %i.r                     ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i64 %i.bk, 3221225472
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %.split.us

bb.p:                                             ; preds = %bb.o, %.preheader.split.split.us.split
  %.171.us92 = phi i1 [ %.07082.us91, %bb.o ], [ true, %.preheader.split.split.us.split ] ; 2 uses
  %.1.us93 = phi i32 [ %i.bl, %bb.o ], [ %.06983.us90, %.preheader.split.split.us.split ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count125
  br i1 %exitcond126.not, label %.split87.us, label %.preheader.split.split.us.split, !llvm.loop !70

.preheader.split.split:                           ; preds = %.preheader.split
  %wide.trip.count121 = zext nneg i32 %i.n to i64 ; 2 uses
  br i1 %.not, label %.preheader.split.split.split.us, label %.preheader.split.split.split

.preheader.split.split.split.us:                  ; preds = %.preheader.split.split, %bb.q
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %bb.q ], [ 0, %.preheader.split.split ] ; 2 uses
  %.06983.us99 = phi i64 [ %i.bw, %bb.q ], [ 0, %.preheader.split.split ]
  %sext = shl i64 %.06983.us99, 32
  %i.bo = ashr exact i64 %sext, 32
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv118
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #18
  %i.bt = add nsw i64 %i.bo, 1
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = add i64 %i.q, %i.bu
  %i.bw = and i64 %i.bv, %i.r                     ; 3 uses
  %i.bx = and i64 %i.bw, 3221225472
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.q, label %.split.us

bb.q:                                             ; preds = %.preheader.split.split.split.us
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.split87.us.loopexit114, label %.preheader.split.split.split.us, !llvm.loop !70

bb.r:                                             ; preds = %bb.f
  %i.bz = tail call ptr @palloc0(i64 noundef 16) #16 ; 5 uses
  store i32 64, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 0, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %5, ptr %i.cc, align 4
  br label %bb.w

.preheader.split.split.split:                     ; preds = %.preheader.split.split, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader.split.split ] ; 3 uses
  %.06983 = phi i32 [ %.1, %bb.t ], [ 0, %.preheader.split.split ] ; 2 uses
  %.07082 = phi i1 [ %.171, %bb.t ], [ false, %.preheader.split.split ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !range !8, !noundef !9
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.split.split.split
  %i.cg = zext i32 %.06983 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #18
  %i.cl = add nuw nsw i64 %i.cg, 1
  %i.cm = add i64 %i.cl, %i.ck
  %i.cn = add i64 %i.q, %i.cm
  %i.co = and i64 %i.cn, %i.r                     ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i64 %i.co, 3221225472
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.t, label %.split.us

.split.us:                                        ; preds = %bb.s, %.preheader.split.split.split.us, %bb.o, %.preheader.split.split.us.split.us, %VARSIZE_ANY.exit.us
  %i.cs = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ct = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.cu = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3553, ptr noundef nonnull @__func__.construct_md_array) #16
  unreachable

bb.t:                                             ; preds = %.preheader.split.split.split, %bb.s
  %.171 = phi i1 [ %.07082, %bb.s ], [ true, %.preheader.split.split.split ] ; 2 uses
  %.1 = phi i32 [ %i.cp, %bb.s ], [ %.06983, %.preheader.split.split.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count121
  br i1 %exitcond.not, label %.split87.us, label %.preheader.split.split.split, !llvm.loop !70

.split87.us.loopexit114:                          ; preds = %bb.q
  %i.cv = trunc i64 %i.bw to i32
  br label %.split87.us.thread

.split87.us:                                      ; preds = %bb.t, %bb.p, %bb.m
  %.us-phi = phi i1 [ %.171.us, %bb.m ], [ %.171.us92, %bb.p ], [ %.171, %bb.t ]
  %.us-phi88 = phi i32 [ %.1.us, %bb.m ], [ %.1.us93, %bb.p ], [ %.1, %bb.t ] ; 2 uses
  br i1 %.us-phi, label %bb.u, label %.split87.us.thread

bb.u:                                             ; preds = %.split87.us
  %i.cw = shl nuw nsw i32 %2, 3
  %i.cx = add nuw i32 %i.n, 7
  %i.cy = sdiv i32 %i.cx, 8
  %i.cz = add nuw nsw i32 %i.cw, 23
  %i.da = add nsw i32 %i.cz, %i.cy
  %i.db = and i32 %i.da, -8                       ; 2 uses
  %i.dc = add i32 %.us-phi88, %i.db
  br label %bb.v

.split87.us.thread:                               ; preds = %bb.n, %.split87.us.loopexit114, %.split87.us
  %.us-phi88141 = phi i32 [ %.us-phi88, %.split87.us ], [ %i.cv, %.split87.us.loopexit114 ], [ %i.bc, %bb.n ]
  %i.dd = shl nuw nsw i32 %2, 3
  %i.de = add nuw nsw i32 %i.dd, 16
  %i.df = add i32 %i.de, %.us-phi88141
  br label %bb.v

bb.v:                                             ; preds = %.split87.us.thread, %bb.u
  %.2 = phi i32 [ %i.dc, %bb.u ], [ %i.df, %.split87.us.thread ] ; 2 uses
  %.068 = phi i32 [ %i.db, %bb.u ], [ 0, %.split87.us.thread ]
  %i.dg = sext i32 %.2 to i64
  %i.dh = tail call ptr @palloc0(i64 noundef %i.dg) #16 ; 7 uses
  %i.di = shl i32 %.2, 2
  store i32 %i.di, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %2, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %.068, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %5, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dn = shl nuw nsw i32 %2, 2
  %i.do = zext nneg i32 %i.dn to i64              ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dm, ptr align 4 %3, i64 %i.do, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %4, i64 %i.do, i1 false)
  tail call void @CopyArrayEls(ptr noundef nonnull %i.dh, ptr noundef %0, ptr noundef %1, i32 noundef %i.n, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8, i1 noundef zeroext false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.072 = phi ptr [ %i.bz, %bb.r ], [ %i.dh, %bb.v ]
  ret ptr %.072
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @array_bitmap_copy(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %4, 1
  br i1 %i.a, label %._crit_edge95.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %1, 8
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = and i32 %1, 7
  %i.f = shl nuw nsw i32 1, %i.e                  ; 2 uses
  %i.g = load i8, ptr %i.d, align 1
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph94, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = sdiv i32 %3, 8
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %3, 7
  %i.o = shl nuw nsw i32 1, %i.n
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread75
  %.in = phi i32 [ %i.p, %.thread75 ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.088 = phi i32 [ %.1, %.thread75 ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.04287 = phi i32 [ %.143, %.thread75 ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.04486 = phi i32 [ %.2, %.thread75 ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.04685 = phi i32 [ %.147, %.thread75 ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.05284 = phi ptr [ %.153, %.thread75 ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.05683 = phi ptr [ %.157, %.thread75 ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %i.p = add nsw i32 %.in, -1                     ; 3 uses
  %i.q = and i32 %.088, %.04287
  %.not65 = icmp eq i32 %i.q, 0
  %i.r = or i32 %.04486, %.04685
  %i.s = xor i32 %.04685, -1
  %i.t = and i32 %.04486, %i.s
  %.145 = select i1 %.not65, i32 %i.t, i32 %i.r   ; 2 uses
  %i.u = shl i32 %.04685, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 256
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.w = trunc i32 %.145 to i8
  store i8 %i.w, ptr %.05284, align 1
  %.not80 = icmp eq i32 %i.p, 0
  br i1 %.not80, label %._crit_edge95.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.05284, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.153 = phi ptr [ %i.x, %bb.d ], [ %.05284, %.lr.ph ] ; 2 uses
  %.147 = phi i32 [ 1, %bb.d ], [ %i.u, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.z, %bb.d ], [ %.145, %.lr.ph ] ; 2 uses
  %i.aa = shl i32 %.04287, 1                      ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 256
  br i1 %i.ab, label %bb.f, label %.thread75

bb.f:                                             ; preds = %bb.e
  %.not81 = icmp eq i32 %i.p, 0
  br i1 %.not81, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.05683, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  br label %.thread75

.thread75:                                        ; preds = %bb.g, %bb.e
  %.157 = phi ptr [ %i.ac, %bb.g ], [ %.05683, %bb.e ]
  %.143 = phi i32 [ 1, %bb.g ], [ %i.aa, %bb.e ]
  %.1 = phi i32 [ %i.ae, %bb.g ], [ %.088, %bb.e ]
  %i.af = icmp samesign ugt i32 %.in, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %.thread75
  %.not64 = icmp eq i32 %.147, 1
  br i1 %.not64, label %._crit_edge95.thread, label %._crit_edge95.thread.sink.split

.lr.ph94:                                         ; preds = %bb.b, %bb.j
  %.in99 = phi i32 [ %i.ag, %bb.j ], [ %4, %bb.b ] ; 2 uses
  %.393 = phi i32 [ %.4, %bb.j ], [ %i.h, %bb.b ]
  %.24892 = phi i32 [ %.349, %bb.j ], [ %i.f, %bb.b ] ; 2 uses
  %.25491 = phi ptr [ %.355, %bb.j ], [ %i.d, %bb.b ] ; 3 uses
  %i.ag = add nsw i32 %.in99, -1                  ; 2 uses
  %i.ah = or i32 %.393, %.24892                   ; 2 uses
  %i.ai = shl i32 %.24892, 1                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 256
  br i1 %i.aj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph94
  %i.ak = trunc i32 %i.ah to i8
  store i8 %i.ak, ptr %.25491, align 1
  %.not82 = icmp eq i32 %i.ag, 0
  br i1 %.not82, label %._crit_edge95.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.25491, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph94
  %.355 = phi ptr [ %i.al, %bb.i ], [ %.25491, %.lr.ph94 ] ; 2 uses
  %.349 = phi i32 [ 1, %bb.i ], [ %i.ai, %.lr.ph94 ] ; 2 uses
  %.4 = phi i32 [ %i.an, %bb.i ], [ %i.ah, %.lr.ph94 ] ; 2 uses
  %i.ao = icmp samesign ugt i32 %.in99, 1
  br i1 %i.ao, label %.lr.ph94, label %._crit_edge95, !llvm.loop !1

._crit_edge95:                                    ; preds = %bb.j
  %.not63 = icmp eq i32 %.349, 1
  br i1 %.not63, label %._crit_edge95.thread, label %._crit_edge95.thread.sink.split

._crit_edge95.thread.sink.split:                  ; preds = %._crit_edge95, %._crit_edge
  %.273110.sink = phi i32 [ %.2, %._crit_edge ], [ %.4, %._crit_edge95 ]
  %.15369112.sink = phi ptr [ %.153, %._crit_edge ], [ %.355, %._crit_edge95 ]
  %i.ap = trunc i32 %.273110.sink to i8
  store i8 %i.ap, ptr %.15369112.sink, align 1
  br label %._crit_edge95.thread

._crit_edge95.thread:                             ; preds = %bb.c, %bb.h, %._crit_edge95.thread.sink.split, %._crit_edge, %._crit_edge95, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_set_slice(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i8 noundef signext %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 4 uses
  %i.d = alloca [6 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 16               ; 20 uses
  %i.f = alloca [6 x i32], align 16               ; 18 uses
  %i.g = alloca [6 x i32], align 16               ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  br i1 %7, label %bb.ed, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %8, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 1088) #16 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2860, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %0 to ptr
  %i.p = tail call ptr @pg_detoast_datum(ptr noundef %i.o) #16 ; 13 uses
  %i.q = inttoptr i64 %6 to ptr
  %i.r = tail call ptr @pg_detoast_datum(ptr noundef %i.q) #16 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 8 uses
  %i.t = load i32, ptr %i.s, align 4              ; 24 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.w = load i32, ptr %i.v, align 4
  call void @deconstruct_array(ptr noundef %i.r, i32 poison, i32 noundef %9, i1 noundef zeroext %10, i8 noundef signext %11, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %.lr.ph504.preheader, label %._crit_edge

.lr.ph504.preheader:                              ; preds = %bb.e
  %wide.trip.count567 = zext nneg i32 %1 to i64
  br label %.lr.ph504

.lr.ph504:                                        ; preds = %.lr.ph504.preheader, %bb.k
  %indvars.iv564 = phi i64 [ 0, %.lr.ph504.preheader ], [ %indvars.iv.next565, %bb.k ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv564
  %i.z = load i8, ptr %i.y, align 1, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph504
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv564
  %i.ac = load i8, ptr %i.ab, align 1, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph504
  %i.ae = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.af = call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ag = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23) #16 ; 0 uses
  %i.ah = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.24) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2893, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv564
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv564
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv564 ; 2 uses
  %i.an = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.aj, i32 %i.al) ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 1
  %i.ap = extractvalue { i32, i1 } %i.an, 0       ; 2 uses
  store i32 %i.ap, ptr %i.am, align 4
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 1) ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  %i.as = extractvalue { i32, i1 } %i.aq, 0
  store i32 %i.as, ptr %i.am, align 4
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.au = call i32 @errcode(i32 noundef 261) #16  ; 0 uses
  %i.av = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2901, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv564
  store i32 %i.al, ptr %i.aw, align 4
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567
  br i1 %exitcond568.not, label %._crit_edge, label %.lr.ph504, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.k, %bb.e
  %i.ax = load i32, ptr %i.j, align 4
  %i.ay = call i32 @ArrayGetNItems(i32 noundef %1, ptr noundef nonnull %i.e) #16
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ba = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bb = call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2910, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr %i.h, align 8
  %i.be = load ptr, ptr %i.i, align 8
  %i.bf = call ptr @construct_md_array(ptr noundef %i.bd, ptr noundef %i.be, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.w, i32 noundef %9, i1 noundef zeroext %10, i8 noundef signext %11)
  %i.bg = ptrtoint ptr %i.bf to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ed

bb.n:                                             ; preds = %bb.d
  %i.bh = icmp slt i32 %i.t, %1
  %i.bi = icmp ugt i32 %i.t, 6
  %or.cond3 = or i1 %i.bh, %i.bi
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bk = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bl = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2920, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 9 uses
  %i.bn = shl nuw nsw i32 %i.t, 2
  %i.bo = zext nneg i32 %i.bn to i64              ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 4 %i.bm, i64 %i.bo, i1 false)
  %i.bp = load i32, ptr %i.s, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 4 %i.bs, i64 %i.bo, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp ne i32 %i.bw, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = phi i1 [ true, %bb.p ], [ %i.bx, %bb.q ] ; 4 uses
  %i.bz = icmp eq i32 %i.t, 1
  br i1 %i.bz, label %bb.s, label %.preheader450

.preheader450:                                    ; preds = %bb.r
  %i.ca = icmp sgt i32 %1, 0
  br i1 %i.ca, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader450
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %5, align 1, !range !8, !noundef !9
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.f, align 16
  store i32 %i.cd, ptr %3, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = load i8, ptr %4, align 1, !range !8, !noundef !9
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %._crit_edge570, label %bb.v

._crit_edge570:                                   ; preds = %bb.u
  %.pre571 = load i32, ptr %2, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = load i32, ptr %i.e, align 16
  %i.ch = load i32, ptr %i.f, align 16
  %i.ci = add i32 %i.cg, -1
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  store i32 %i.cj, ptr %2, align 4
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge570, %bb.v
  %i.ck = phi i32 [ %.pre571, %._crit_edge570 ], [ %i.cj, %bb.v ] ; 3 uses
  %i.cl = load i32, ptr %3, align 4               ; 5 uses
  %i.cm = icmp sgt i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.co = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.cp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2945, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cq = load i32, ptr %i.f, align 16            ; 3 uses
  %i.cr = icmp slt i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.z, label %._crit_edge572

._crit_edge572:                                   ; preds = %bb.y
  %.pre573 = load i32, ptr %i.e, align 16
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cq, i32 %i.cl) ; 2 uses
  %i.ct = extractvalue { i32, i1 } %i.cs, 1
  %i.cu = extractvalue { i32, i1 } %i.cs, 0       ; 3 uses
  br i1 %i.ct, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = load i32, ptr %i.e, align 16
  %i.cw = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cv, i32 %i.cu) ; 2 uses
  %i.cx = extractvalue { i32, i1 } %i.cw, 1
  %i.cy = extractvalue { i32, i1 } %i.cw, 0       ; 2 uses
  store i32 %i.cy, ptr %i.e, align 16
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.da = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.db = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2955, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.cl, ptr %i.f, align 16
  %i.dc = icmp sgt i32 %i.cu, 1
  %spec.select = select i1 %i.dc, i1 true, i1 %i.by
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge572, %bb.ac
  %i.dd = phi i32 [ %i.cl, %bb.ac ], [ %i.cq, %._crit_edge572 ]
  %i.de = phi i32 [ %i.cy, %bb.ac ], [ %.pre573, %._crit_edge572 ] ; 2 uses
  %.0401 = phi i32 [ %i.cu, %bb.ac ], [ 0, %._crit_edge572 ] ; 2 uses
  %.0276 = phi i1 [ %spec.select, %bb.ac ], [ %i.by, %._crit_edge572 ] ; 2 uses
  %i.df = add i32 %i.dd, %i.de                    ; 2 uses
  %.not304 = icmp slt i32 %i.ck, %i.df
  br i1 %.not304, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ck, i32 %i.df) ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 1
  br i1 %i.dh, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = extractvalue { i32, i1 } %i.dg, 0
  %i.dj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.di, i32 1) ; 2 uses
  %i.dk = extractvalue { i32, i1 } %i.dj, 1
  %i.dl = extractvalue { i32, i1 } %i.dj, 0       ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.de, i32 %i.dl) ; 2 uses
  %i.dn = extractvalue { i32, i1 } %i.dm, 1
  %i.do = extractvalue { i32, i1 } %i.dm, 0
  store i32 %i.do, ptr %i.e, align 16
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.dq = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2970, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ds = icmp sgt i32 %i.dl, 1
  %spec.select316 = select i1 %i.ds, i1 true, i1 %.0276
  br label %.loopexit

.preheader:                                       ; preds = %bb.ar, %.preheader450
  %.1279.lcssa = phi i32 [ 0, %.preheader450 ], [ %1, %bb.ar ] ; 2 uses
  %i.dt = icmp slt i32 %.1279.lcssa, %i.t
  br i1 %i.dt, label %.lr.ph497.preheader, label %.loopexit

.lr.ph497.preheader:                              ; preds = %.preheader
  %i.du = zext nneg i32 %.1279.lcssa to i64
  %wide.trip.count562 = zext nneg i32 %i.t to i64
  br label %.lr.ph497

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ar ] ; 12 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1, !range !8, !noundef !9
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.dz, ptr %i.ea, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.ec = load i8, ptr %i.eb, align 1, !range !8, !noundef !9
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %._crit_edge569, label %bb.al

._crit_edge569:                                   ; preds = %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = add i32 %i.ef, -1
  %i.ej = add i32 %i.ei, %i.eh                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ej, ptr %i.ek, align 4
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge569, %bb.al
  %i.el = phi i32 [ %.pre, %._crit_edge569 ], [ %i.ej, %bb.al ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = icmp sgt i32 %i.en, %i.el
  br i1 %i.eo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ep = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.eq = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.er = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2990, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %i.eu = icmp slt i32 %i.en, %i.et
  br i1 %i.eu, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = add i32 %i.ew, %i.et
  %.not303 = icmp slt i32 %i.el, %i.ex
  br i1 %.not303, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ey = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ez = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.fa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2995, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !72

bb.as:                                            ; preds = %.lr.ph497
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond563.not = icmp eq i64 %indvars.iv.next559, %wide.trip.count562
  br i1 %exitcond563.not, label %.loopexit, label %.lr.ph497, !llvm.loop !73

.lr.ph497:                                        ; preds = %.lr.ph497.preheader, %bb.as
  %indvars.iv558 = phi i64 [ %i.du, %.lr.ph497.preheader ], [ %indvars.iv.next559, %bb.as ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv558
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv558 ; 2 uses
  store i32 %i.fc, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv558
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = add i32 %i.fc, -1
  %i.fh = add i32 %i.fg, %i.ff                    ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv558
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = load i32, ptr %i.fd, align 4
  %i.fk = icmp sgt i32 %i.fj, %i.fh
  br i1 %i.fk, label %bb.at, label %bb.as

bb.at:                                            ; preds = %.lr.ph497
  %i.fl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fm = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.fn = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3005, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

.loopexit:                                        ; preds = %bb.as, %.preheader, %bb.ai, %bb.ad
  %.1402 = phi i32 [ %.0401, %bb.ad ], [ %.0401, %bb.ai ], [ 0, %.preheader ], [ 0, %bb.as ] ; 3 uses
  %.1277 = phi i1 [ %.0276, %bb.ad ], [ %spec.select316, %bb.ai ], [ %i.by, %.preheader ], [ %i.by, %bb.as ] ; 2 uses
  %i.fo = call i32 @ArrayGetNItems(i32 noundef %i.t, ptr noundef nonnull %i.e) #16
  call void @ArrayCheckBounds(i32 noundef %i.t, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  call void @mda_get_range(i32 noundef %i.t, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef %2) #16
  %i.fp = call i32 @ArrayGetNItems(i32 noundef %i.t, ptr noundef nonnull %i.g) #16 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 7 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.ft = call i32 @ArrayGetNItems(i32 noundef %i.fr, ptr noundef nonnull %i.fs) #16
  %i.fu = icmp sgt i32 %i.fp, %i.ft
  br i1 %i.fu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit
  %i.fv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fw = call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.fx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3022, ptr noundef nonnull @__func__.array_set_slice) #16
  unreachable

bb.av:                                            ; preds = %.loopexit
  %i.fy = shl nuw nsw i32 %i.t, 3                 ; 2 uses
  br i1 %.1277, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fz = add i32 %i.fo, 7
  %i.ga = sdiv i32 %i.fz, 8
  %i.gb = add nuw nsw i32 %i.fy, 23
  %i.gc = add nsw i32 %i.gb, %i.ga
  %i.gd = and i32 %i.gc, -8                       ; 2 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ge = add nuw nsw i32 %i.fy, 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gf = phi i32 [ %i.gd, %bb.aw ], [ 0, %bb.ax ] ; 3 uses
  %.0273 = phi i32 [ %i.gd, %bb.aw ], [ %i.ge, %bb.ax ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not305 = icmp eq i32 %i.gh, 0
  br i1 %.not305, label %.thread, label %bb.az

.thread:                                          ; preds = %bb.ay
  %i.gi = load i32, ptr %i.fq, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %i.r, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gn = sext i32 %i.gh to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gn
  %i.gp = load i32, ptr %i.fq, align 4
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gr
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.az
  %i.gt = phi ptr [ %i.go, %bb.az ], [ %i.gm, %.thread ] ; 2 uses
  %i.gu = phi ptr [ %i.gs, %bb.az ], [ null, %.thread ]
  %i.gv = call fastcc ptr @array_seek(ptr noundef nonnull %i.gt, i32 noundef 0, ptr noundef readonly %i.gu, i32 noundef %i.fp, i32 noundef %9, i8 noundef signext %11)
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 2 uses
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load i32, ptr %i.bt, align 4            ; 3 uses
  %.not307 = icmp eq i32 %i.ha, 0                 ; 3 uses
  br i1 %.not307, label %bb.bb, label %.thread403

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load i32, ptr %i.s, align 4             ; 3 uses
  %i.hc = shl i32 %i.hb, 3
  %i.hd = add i32 %i.hc, 16                       ; 2 uses
  %.val = load i32, ptr %i.p, align 4
  %i.he = lshr i32 %.val, 2
  %i.hf = sext i32 %i.hd to i64                   ; 2 uses
  %i.hg = sub i32 %i.he, %i.hd                    ; 2 uses
  %i.hh = icmp sgt i32 %i.t, 1
  br i1 %i.hh, label %.thread406, label %._crit_edge576

.thread403:                                       ; preds = %bb.ba
  %.val404 = load i32, ptr %i.p, align 4
  %i.hi = lshr i32 %.val404, 2
  %i.hj = sext i32 %i.ha to i64                   ; 4 uses
  %i.hk = sub i32 %i.hi, %i.ha                    ; 2 uses
  %i.hl = icmp sgt i32 %i.t, 1
  %.pre574 = load i32, ptr %i.s, align 4          ; 2 uses
  br i1 %i.hl, label %.thread405, label %._crit_edge576

.thread406:                                       ; preds = %bb.bb
  %i.hm = sext i32 %i.hb to i64
  %i.hn = shl nsw i64 %i.hm, 3
  %i.ho = getelementptr i8, ptr %i.p, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 16
  br label %bb.bc

.thread405:                                       ; preds = %.thread403
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.hj
  %i.hr = sext i32 %.pre574 to i64
  %i.hs = shl nsw i64 %i.hr, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.hs
  br label %bb.bc

bb.bc:                                            ; preds = %.thread406, %.thread405
  %i.hu = phi ptr [ %i.hq, %.thread405 ], [ %i.hp, %.thread406 ]
  %i.hv = phi i32 [ %i.hk, %.thread405 ], [ %i.hg, %.thread406 ]
  %i.hw = phi i64 [ %i.hj, %.thread405 ], [ %i.hf, %.thread406 ]
  %i.hx = phi ptr [ %i.ht, %.thread405 ], [ null, %.thread406 ]
  %i.hy = call fastcc i32 @array_slice_size(ptr noundef nonnull %i.hu, ptr noundef %i.hx, i32 noundef %i.t, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %3, ptr noundef %2, i32 noundef %9, i8 noundef signext %11)
  br label %bb.bf

._crit_edge576:                                   ; preds = %bb.bb, %.thread403
  %.pre-phi = phi i64 [ %i.hj, %.thread403 ], [ 0, %bb.bb ]
  %i.hz = phi i32 [ %.pre574, %.thread403 ], [ %i.hb, %bb.bb ]
  %i.ia = phi i32 [ %i.hk, %.thread403 ], [ %i.hg, %bb.bb ] ; 2 uses
  %i.ib = phi i64 [ %i.hj, %.thread403 ], [ %i.hf, %bb.bb ]
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %i.id = shl nsw i64 %i.ic, 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4            ; 4 uses
  %i.ig = load i32, ptr %i.bm, align 4
  %i.ih = add i32 %i.ig, %i.if                    ; 3 uses
  %i.ii = add i32 %i.ih, -1
  %i.ij = load i32, ptr %3, align 4
  %. = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ij) ; 3 uses
  %i.ik = load i32, ptr %2, align 4
  %i.il = call i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ik) ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.p, i64 %.pre-phi
  %i.in = shl nsw i64 %i.ic, 3                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.p, i64 %i.in
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  %i.ir = select i1 %.not307, ptr %i.iq, ptr %i.im ; 3 uses
  %i.is = select i1 %.not307, ptr null, ptr %i.io ; 2 uses
  %i.it = call i32 @llvm.smin.i32(i32 %., i32 %i.ih)
  %i.iu = sub i32 %i.it, %i.if                    ; 3 uses
  %i.iv = call fastcc ptr @array_seek(ptr noundef %i.ir, i32 noundef 0, ptr noundef readonly %i.is, i32 noundef %i.iu, i32 noundef %9, i8 noundef signext %11)
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.ir to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = icmp sgt i32 %., %i.il
  br i1 %i.ja, label %._crit_edge575, label %bb.bd

._crit_edge575:                                   ; preds = %._crit_edge576
  %.pre578 = shl i64 %i.iy, 32
  %.pre579 = ashr exact i64 %.pre578, 32
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge576
  %i.jb = sub i32 %i.il, %.
  %i.jc = add i32 %i.jb, 1                        ; 2 uses
  %sext = shl i64 %i.iy, 32
  %i.jd = ashr exact i64 %sext, 32                ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.ir, i64 %i.jd ; 2 uses
  %i.jf = call fastcc ptr @array_seek(ptr noundef %i.je, i32 noundef %i.iu, ptr noundef readonly %i.is, i32 noundef %i.jc, i32 noundef %9, i8 noundef signext %11)
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = trunc i64 %i.ji to i32
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge575, %bb.bd
  %.pre-phi580 = phi i64 [ %.pre579, %._crit_edge575 ], [ %i.jd, %bb.bd ]
  %.0274 = phi i32 [ 0, %._crit_edge575 ], [ %i.jj, %bb.bd ] ; 2 uses
  %.0 = phi i32 [ 0, %._crit_edge575 ], [ %i.jc, %bb.bd ]
  %i.jk = add i32 %i.il, 1
  %i.jl = call i32 @llvm.smax.i32(i32 %i.jk, i32 %i.if)
  %i.jm = sub i32 %i.ih, %i.jl
  %i.jn = add i32 %.0274, %i.iz
  %i.jo = sub i32 %i.ia, %i.jn
end_hunk_2
begin_hunk_3_@array_set_slice:bb.a
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %.0124.i to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %sext.i144.i = shl i64 %i.ns, 32
  %i.nt = ashr exact i64 %sext.i144.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0126.i, ptr align 1 %.0124.i, i64 %i.nt, i1 false)
  %i.nu = getelementptr inbounds i8, ptr %.0126.i, i64 %i.nt
  %i.nv = getelementptr inbounds i8, ptr %.0124.i, i64 %i.nt
  br i1 %.not.i, label %array_bitmap_copy.exit182.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nw = load i32, ptr %i.nn, align 4            ; 3 uses
  %i.nx = icmp slt i32 %i.nw, 1
  br i1 %i.nx, label %array_bitmap_copy.exit182.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ny = sdiv i32 %.0121.i, 8
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds i8, ptr %i.le, i64 %i.nz ; 3 uses
  %i.ob = and i32 %.0121.i, 7
  %i.oc = shl nuw nsw i32 1, %i.ob                ; 2 uses
  %i.od = load i8, ptr %i.oa, align 1
  %i.oe = zext i8 %i.od to i32                    ; 2 uses
  br i1 %.not.i145.i, label %.lr.ph94.i171.outer.i, label %.lr.ph.preheader.i146.i

.lr.ph.preheader.i146.i:                          ; preds = %bb.cb
  %i.of = sdiv i32 %.0120.i, 8
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds i8, ptr %i.lj, i64 %i.og ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = zext i8 %i.oi to i32
  %i.ok = and i32 %.0120.i, 7
  %i.ol = shl nuw nsw i32 1, %i.ok
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.thread75.i160.i, %.lr.ph.preheader.i146.i
  %.in.i148.i = phi i32 [ %i.om, %.thread75.i160.i ], [ %i.nw, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.088.i149.i = phi i32 [ %.1.i163.i, %.thread75.i160.i ], [ %i.oj, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04287.i150.i = phi i32 [ %.143.i162.i, %.thread75.i160.i ], [ %i.ol, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04486.i151.i = phi i32 [ %.2.i159.i, %.thread75.i160.i ], [ %i.oe, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04685.i152.i = phi i32 [ %.147.i158.i, %.thread75.i160.i ], [ %i.oc, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05284.i153.i = phi ptr [ %.153.i157.i, %.thread75.i160.i ], [ %i.oa, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05683.i154.i = phi ptr [ %.157.i161.i, %.thread75.i160.i ], [ %i.oh, %.lr.ph.preheader.i146.i ] ; 2 uses
  %i.om = add nsw i32 %.in.i148.i, -1             ; 3 uses
  %i.on = and i32 %.04287.i150.i, %.088.i149.i
  %.not65.i155.i = icmp eq i32 %i.on, 0
  %i.oo = or i32 %.04685.i152.i, %.04486.i151.i
  %i.op = xor i32 %.04685.i152.i, -1
  %i.oq = and i32 %.04486.i151.i, %i.op
  %.145.i156.i = select i1 %.not65.i155.i, i32 %i.oq, i32 %i.oo ; 2 uses
  %i.or = shl i32 %.04685.i152.i, 1               ; 2 uses
  %i.os = icmp eq i32 %i.or, 256
  br i1 %i.os, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %.lr.ph.i147.i
  %i.ot = trunc i32 %.145.i156.i to i8
  store i8 %i.ot, ptr %.05284.i153.i, align 1
  %.not80.i170.i = icmp eq i32 %i.om, 0
  br i1 %.not80.i170.i, label %array_bitmap_copy.exit182.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ou = getelementptr inbounds nuw i8, ptr %.05284.i153.i, i64 1 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = zext i8 %i.ov to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i147.i
  %.153.i157.i = phi ptr [ %i.ou, %bb.cd ], [ %.05284.i153.i, %.lr.ph.i147.i ] ; 2 uses
  %.147.i158.i = phi i32 [ 1, %bb.cd ], [ %i.or, %.lr.ph.i147.i ] ; 2 uses
  %.2.i159.i = phi i32 [ %i.ow, %bb.cd ], [ %.145.i156.i, %.lr.ph.i147.i ] ; 2 uses
  %i.ox = shl i32 %.04287.i150.i, 1               ; 2 uses
  %i.oy = icmp eq i32 %i.ox, 256
  br i1 %i.oy, label %bb.cf, label %.thread75.i160.i

bb.cf:                                            ; preds = %bb.ce
  %.not81.i169.i = icmp eq i32 %i.om, 0
  br i1 %.not81.i169.i, label %._crit_edge.i164.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oz = getelementptr inbounds nuw i8, ptr %.05683.i154.i, i64 1 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i32
  br label %.thread75.i160.i

.thread75.i160.i:                                 ; preds = %bb.cg, %bb.ce
  %.157.i161.i = phi ptr [ %i.oz, %bb.cg ], [ %.05683.i154.i, %bb.ce ]
  %.143.i162.i = phi i32 [ 1, %bb.cg ], [ %i.ox, %bb.ce ]
  %.1.i163.i = phi i32 [ %i.pb, %bb.cg ], [ %.088.i149.i, %bb.ce ]
  %i.pc = icmp samesign ugt i32 %.in.i148.i, 1
  br i1 %i.pc, label %.lr.ph.i147.i, label %._crit_edge.i164.i, !llvm.loop !0

._crit_edge.i164.i:                               ; preds = %.thread75.i160.i, %bb.cf
  %.not64.i165.i = icmp eq i32 %.147.i158.i, 1
  br i1 %.not64.i165.i, label %array_bitmap_copy.exit182.i, label %._crit_edge95.thread.sink.split.i166.i

.lr.ph94.i171.i:                                  ; preds = %.lr.ph94.i171.outer.i, %bb.ci
  %.in99.i172.i = phi i32 [ %i.pd, %bb.ci ], [ %.in99.i172.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %.393.i173.i = phi i32 [ %i.pe, %bb.ci ], [ %.393.i173.ph.i, %.lr.ph94.i171.outer.i ]
  %.24892.i174.i = phi i32 [ %i.pf, %bb.ci ], [ %.24892.i174.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %i.pd = add nsw i32 %.in99.i172.i, -1           ; 3 uses
  %i.pe = or i32 %.24892.i174.i, %.393.i173.i     ; 3 uses
  %i.pf = shl i32 %.24892.i174.i, 1               ; 2 uses
  %i.pg = icmp eq i32 %i.pf, 256
  br i1 %i.pg, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph94.i171.i
  %i.ph = trunc i32 %i.pe to i8
  store i8 %i.ph, ptr %.25491.i175.ph.i, align 1
  %.not82.i181.i = icmp eq i32 %i.pd, 0
  br i1 %.not82.i181.i, label %array_bitmap_copy.exit182.i, label %.thread271.i

bb.ci:                                            ; preds = %.lr.ph94.i171.i
  %i.pi = icmp samesign ugt i32 %.in99.i172.i, 1
  br i1 %i.pi, label %.lr.ph94.i171.i, label %._crit_edge95.thread.sink.split.i166.i, !llvm.loop !1

.thread271.i:                                     ; preds = %bb.ch
  %i.pj = getelementptr inbounds nuw i8, ptr %.25491.i175.ph.i, i64 1 ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = zext i8 %i.pk to i32
  br label %.lr.ph94.i171.outer.i, !llvm.loop !1

.lr.ph94.i171.outer.i:                            ; preds = %bb.cb, %.thread271.i
  %.in99.i172.ph.i = phi i32 [ %i.pd, %.thread271.i ], [ %i.nw, %bb.cb ]
  %.393.i173.ph.i = phi i32 [ %i.pl, %.thread271.i ], [ %i.oe, %bb.cb ]
  %.24892.i174.ph.i = phi i32 [ 1, %.thread271.i ], [ %i.oc, %bb.cb ]
  %.25491.i175.ph.i = phi ptr [ %i.pj, %.thread271.i ], [ %i.oa, %bb.cb ] ; 3 uses
  br label %.lr.ph94.i171.i

._crit_edge95.thread.sink.split.i166.i:           ; preds = %bb.ci, %._crit_edge.i164.i
  %.273110.sink.i167.i = phi i32 [ %.2.i159.i, %._crit_edge.i164.i ], [ %i.pe, %bb.ci ]
  %.15369112.sink.i168.i = phi ptr [ %.153.i157.i, %._crit_edge.i164.i ], [ %.25491.i175.ph.i, %bb.ci ]
  %i.pm = trunc i32 %.273110.sink.i167.i to i8
  store i8 %i.pm, ptr %.15369112.sink.i168.i, align 1
  br label %array_bitmap_copy.exit182.i

array_bitmap_copy.exit182.i:                      ; preds = %bb.cc, %bb.ch, %._crit_edge95.thread.sink.split.i166.i, %._crit_edge.i164.i, %bb.ca, %bb.bz
  %i.pn = load i32, ptr %i.nn, align 4            ; 2 uses
  %i.po = add i32 %i.pn, %.0121.i
  %i.pp = add i32 %i.pn, %.0120.i
  br label %bb.cj

bb.cj:                                            ; preds = %array_bitmap_copy.exit182.i, %bb.by
  %.1127.i = phi ptr [ %i.nu, %array_bitmap_copy.exit182.i ], [ %.0126.i, %bb.by ] ; 2 uses
  %.1125.i = phi ptr [ %i.nv, %array_bitmap_copy.exit182.i ], [ %.0124.i, %bb.by ]
  %.1122.i = phi i32 [ %i.po, %array_bitmap_copy.exit182.i ], [ %.0121.i, %bb.by ] ; 3 uses
  %.1.i = phi i32 [ %i.pp, %array_bitmap_copy.exit182.i ], [ %.0120.i, %bb.by ] ; 2 uses
  %i.pq = call fastcc ptr @array_seek(ptr noundef %.0123.i, i32 noundef %.0119.i, ptr noundef readonly %i.lo, i32 noundef 1, i32 noundef %9, i8 noundef signext %11)
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %.0123.i to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %sext.i183.i = shl i64 %i.pt, 32
  %i.pu = ashr exact i64 %sext.i183.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1127.i, ptr align 1 %.0123.i, i64 %i.pu, i1 false)
  br i1 %.not.i, label %array_bitmap_copy.exit221.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pv = sdiv i32 %.1122.i, 8
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds i8, ptr %i.le, i64 %i.pw ; 2 uses
  %i.py = and i32 %.1122.i, 7
  %i.pz = shl nuw nsw i32 1, %i.py                ; 3 uses
  %i.qa = load i8, ptr %i.px, align 1
  %i.qb = zext i8 %i.qa to i32                    ; 3 uses
  br i1 %.not.i184.i, label %.lr.ph94.i210.i, label %.lr.ph.preheader.i185.i

.lr.ph.preheader.i185.i:                          ; preds = %bb.ck
  %i.qc = sdiv i32 %.0119.i, 8
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds i8, ptr %i.lo, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = zext i8 %i.qf to i32
  %i.qh = and i32 %.0119.i, 7
  %i.qi = shl nuw nsw i32 1, %i.qh
  %i.qj = and i32 %i.qi, %i.qg
  %.not65.i194.i = icmp eq i32 %i.qj, 0
  %i.qk = or i32 %i.pz, %i.qb
  %i.ql = xor i32 %i.pz, -1
  %i.qm = and i32 %i.qb, %i.ql
  %.145.i195.i = select i1 %.not65.i194.i, i32 %i.qm, i32 %i.qk
  br label %array_bitmap_copy.exit221.sink.split.i

.lr.ph94.i210.i:                                  ; preds = %bb.ck
  %i.qn = or i32 %i.pz, %i.qb
  br label %array_bitmap_copy.exit221.sink.split.i

array_bitmap_copy.exit221.sink.split.i:           ; preds = %.lr.ph94.i210.i, %.lr.ph.preheader.i185.i
  %.145.i195.sink.i = phi i32 [ %.145.i195.i, %.lr.ph.preheader.i185.i ], [ %i.qn, %.lr.ph94.i210.i ]
  %i.qo = trunc nuw i32 %.145.i195.sink.i to i8
  store i8 %i.qo, ptr %i.px, align 1
  br label %array_bitmap_copy.exit221.i

array_bitmap_copy.exit221.i:                      ; preds = %array_bitmap_copy.exit221.sink.split.i, %bb.cj
  %i.qp = getelementptr inbounds i8, ptr %.1127.i, i64 %i.pu ; 2 uses
  %i.qq = getelementptr inbounds i8, ptr %.0123.i, i64 %i.pu
  %i.qr = add i32 %.1122.i, 1                     ; 3 uses
  %i.qs = add i32 %.0119.i, 1
  %i.qt = call fastcc ptr @array_seek(ptr noundef %.1125.i, i32 noundef %.1.i, ptr noundef %i.lj, i32 noundef 1, i32 noundef %9, i8 noundef signext %11) ; 4 uses
  %i.qu = add i32 %.1.i, 1                        ; 5 uses
  %i.qv = call i32 @mda_next_tuple(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not143.i = icmp eq i32 %i.qv, -1
  br i1 %.not143.i, label %bb.cl, label %bb.by, !llvm.loop !74

bb.cl:                                            ; preds = %array_bitmap_copy.exit221.i
  %i.qw = sub i32 %i.lq, %i.qu                    ; 4 uses
  %i.qx = call fastcc ptr @array_seek(ptr noundef %i.qt, i32 noundef %i.qu, ptr noundef readonly %i.lj, i32 noundef %i.qw, i32 noundef %9, i8 noundef signext %11)
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qt to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %sext.i222.i = shl i64 %i.ra, 32
  %i.rb = ashr exact i64 %sext.i222.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qp, ptr align 1 %i.qt, i64 %i.rb, i1 false)
  %i.rc = icmp slt i32 %i.qw, 1
  %or.cond304.i = or i1 %.not.i, %i.rc
  br i1 %or.cond304.i, label %array_insert_slice.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rd = sdiv i32 %i.qr, 8
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds i8, ptr %i.le, i64 %i.re ; 3 uses
  %i.rg = and i32 %i.qr, 7
  %i.rh = shl nuw nsw i32 1, %i.rg                ; 2 uses
  %i.ri = load i8, ptr %i.rf, align 1
  %i.rj = zext i8 %i.ri to i32                    ; 2 uses
  br i1 %.not.i145.i, label %.lr.ph94.i249.outer.i, label %.lr.ph.preheader.i224.i

.lr.ph.preheader.i224.i:                          ; preds = %bb.cm
  %i.rk = sdiv i32 %i.qu, 8
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds i8, ptr %i.lj, i64 %i.rl ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 1
  %i.ro = zext i8 %i.rn to i32
  %i.rp = and i32 %i.qu, 7
  %i.rq = shl nuw nsw i32 1, %i.rp
  br label %.lr.ph.i225.i

.lr.ph.i225.i:                                    ; preds = %.thread75.i238.i, %.lr.ph.preheader.i224.i
  %.in.i226.i = phi i32 [ %i.rr, %.thread75.i238.i ], [ %i.qw, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.088.i227.i = phi i32 [ %.1.i241.i, %.thread75.i238.i ], [ %i.ro, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04287.i228.i = phi i32 [ %.143.i240.i, %.thread75.i238.i ], [ %i.rq, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04486.i229.i = phi i32 [ %.2.i237.i, %.thread75.i238.i ], [ %i.rj, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04685.i230.i = phi i32 [ %.147.i236.i, %.thread75.i238.i ], [ %i.rh, %.lr.ph.preheader.i224.i ] ; 3 uses
  %.05284.i231.i = phi ptr [ %.153.i235.i, %.thread75.i238.i ], [ %i.rf, %.lr.ph.preheader.i224.i ] ; 3 uses
  %.05683.i232.i = phi ptr [ %.157.i239.i, %.thread75.i238.i ], [ %i.rm, %.lr.ph.preheader.i224.i ] ; 2 uses
  %i.rr = add nsw i32 %.in.i226.i, -1             ; 3 uses
  %i.rs = and i32 %.04287.i228.i, %.088.i227.i
  %.not65.i233.i = icmp eq i32 %i.rs, 0
  %i.rt = or i32 %.04685.i230.i, %.04486.i229.i
  %i.ru = xor i32 %.04685.i230.i, -1
  %i.rv = and i32 %.04486.i229.i, %i.ru
  %.145.i234.i = select i1 %.not65.i233.i, i32 %i.rv, i32 %i.rt ; 2 uses
  %i.rw = shl i32 %.04685.i230.i, 1               ; 2 uses
  %i.rx = icmp eq i32 %i.rw, 256
  br i1 %i.rx, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %.lr.ph.i225.i
  %i.ry = trunc i32 %.145.i234.i to i8
  store i8 %i.ry, ptr %.05284.i231.i, align 1
  %.not80.i248.i = icmp eq i32 %i.rr, 0
  br i1 %.not80.i248.i, label %array_insert_slice.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rz = getelementptr inbounds nuw i8, ptr %.05284.i231.i, i64 1 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph.i225.i
  %.153.i235.i = phi ptr [ %i.rz, %bb.co ], [ %.05284.i231.i, %.lr.ph.i225.i ] ; 2 uses
  %.147.i236.i = phi i32 [ 1, %bb.co ], [ %i.rw, %.lr.ph.i225.i ] ; 2 uses
  %.2.i237.i = phi i32 [ %i.sb, %bb.co ], [ %.145.i234.i, %.lr.ph.i225.i ] ; 2 uses
  %i.sc = shl i32 %.04287.i228.i, 1               ; 2 uses
  %i.sd = icmp eq i32 %i.sc, 256
  br i1 %i.sd, label %bb.cq, label %.thread75.i238.i

bb.cq:                                            ; preds = %bb.cp
  %.not81.i247.i = icmp eq i32 %i.rr, 0
  br i1 %.not81.i247.i, label %._crit_edge.i242.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.se = getelementptr inbounds nuw i8, ptr %.05683.i232.i, i64 1 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1
  %i.sg = zext i8 %i.sf to i32
  br label %.thread75.i238.i

.thread75.i238.i:                                 ; preds = %bb.cr, %bb.cp
  %.157.i239.i = phi ptr [ %i.se, %bb.cr ], [ %.05683.i232.i, %bb.cp ]
  %.143.i240.i = phi i32 [ 1, %bb.cr ], [ %i.sc, %bb.cp ]
  %.1.i241.i = phi i32 [ %i.sg, %bb.cr ], [ %.088.i227.i, %bb.cp ]
  %i.sh = icmp samesign ugt i32 %.in.i226.i, 1
  br i1 %i.sh, label %.lr.ph.i225.i, label %._crit_edge.i242.i, !llvm.loop !0

._crit_edge.i242.i:                               ; preds = %.thread75.i238.i, %bb.cq
  %.not64.i243.i = icmp eq i32 %.147.i236.i, 1
  br i1 %.not64.i243.i, label %array_insert_slice.exit, label %._crit_edge95.thread.sink.split.i244.i

.lr.ph94.i249.i:                                  ; preds = %.lr.ph94.i249.outer.i, %bb.ct
  %.in99.i250.i = phi i32 [ %i.si, %bb.ct ], [ %.in99.i250.ph.i, %.lr.ph94.i249.outer.i ] ; 2 uses
  %.393.i251.i = phi i32 [ %i.sj, %bb.ct ], [ %.393.i251.ph.i, %.lr.ph94.i249.outer.i ]
  %.24892.i252.i = phi i32 [ %i.sk, %bb.ct ], [ %.24892.i252.ph.i, %.lr.ph94.i249.outer.i ] ; 2 uses
  %i.si = add nsw i32 %.in99.i250.i, -1           ; 3 uses
  %i.sj = or i32 %.24892.i252.i, %.393.i251.i     ; 3 uses
  %i.sk = shl i32 %.24892.i252.i, 1               ; 2 uses
  %i.sl = icmp eq i32 %i.sk, 256
  br i1 %i.sl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph94.i249.i
  %i.sm = trunc i32 %i.sj to i8
  store i8 %i.sm, ptr %.25491.i253.ph.i, align 1
  %.not82.i259.i = icmp eq i32 %i.si, 0
  br i1 %.not82.i259.i, label %array_insert_slice.exit, label %.thread293.i

bb.ct:                                            ; preds = %.lr.ph94.i249.i
  %i.sn = icmp samesign ugt i32 %.in99.i250.i, 1
  br i1 %i.sn, label %.lr.ph94.i249.i, label %._crit_edge95.thread.sink.split.i244.i, !llvm.loop !1

.thread293.i:                                     ; preds = %bb.cs
  %i.so = getelementptr inbounds nuw i8, ptr %.25491.i253.ph.i, i64 1 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 1
  %i.sq = zext i8 %i.sp to i32
  br label %.lr.ph94.i249.outer.i, !llvm.loop !1

.lr.ph94.i249.outer.i:                            ; preds = %bb.cm, %.thread293.i
  %.in99.i250.ph.i = phi i32 [ %i.si, %.thread293.i ], [ %i.qw, %bb.cm ]
  %.393.i251.ph.i = phi i32 [ %i.sq, %.thread293.i ], [ %i.rj, %bb.cm ]
  %.24892.i252.ph.i = phi i32 [ 1, %.thread293.i ], [ %i.rh, %bb.cm ]
  %.25491.i253.ph.i = phi ptr [ %i.so, %.thread293.i ], [ %i.rf, %bb.cm ] ; 3 uses
  br label %.lr.ph94.i249.i

._crit_edge95.thread.sink.split.i244.i:           ; preds = %bb.ct, %._crit_edge.i242.i
  %.273110.sink.i245.i = phi i32 [ %.2.i237.i, %._crit_edge.i242.i ], [ %i.sj, %bb.ct ]
  %.15369112.sink.i246.i = phi ptr [ %.153.i235.i, %._crit_edge.i242.i ], [ %.25491.i253.ph.i, %bb.ct ]
  %i.sr = trunc i32 %.273110.sink.i245.i to i8
  store i8 %i.sr, ptr %.15369112.sink.i246.i, align 1
  br label %array_insert_slice.exit

array_insert_slice.exit:                          ; preds = %bb.cn, %bb.cs, %bb.cl, %._crit_edge.i242.i, %._crit_edge95.thread.sink.split.i244.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %array_bitmap_copy.exit394

bb.cu:                                            ; preds = %bb.bf
  %i.ss = sext i32 %.0273 to i64
  %i.st = getelementptr inbounds i8, ptr %i.jx, i64 %i.ss ; 2 uses
  %i.su = getelementptr inbounds i8, ptr %i.p, i64 %i.js ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.st, ptr align 1 %i.su, i64 %.0272, i1 false)
  %i.sv = getelementptr inbounds i8, ptr %i.st, i64 %.0272 ; 2 uses
  %i.sw = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not312 = icmp eq i32 %i.sw, 0
  br i1 %.not312, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sx = sext i32 %i.sw to i64
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.sy = load i32, ptr %i.fq, align 4
  %i.sz = sext i32 %i.sy to i64
  %i.ta = shl nsw i64 %i.sz, 3
  %i.tb = add nsw i64 %i.ta, 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.tc = phi i64 [ %i.sx, %bb.cv ], [ %i.tb, %bb.cw ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.tc
  %sext442 = shl i64 %i.gy, 32
  %i.te = ashr exact i64 %sext442, 32             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sv, ptr align 1 %i.td, i64 %i.te, i1 false)
  %i.tf = getelementptr inbounds i8, ptr %i.sv, i64 %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.su, i64 %.0272
  %i.th = sext i32 %.1275 to i64
  %i.ti = getelementptr inbounds i8, ptr %i.tg, i64 %i.th
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tf, ptr align 1 %i.ti, i64 %.0271, i1 false)
  br i1 %.1277, label %bb.cy, label %array_bitmap_copy.exit394

bb.cy:                                            ; preds = %bb.cx
  %i.tj = load i32, ptr %i.ka, align 4
  %.not313 = icmp eq i32 %i.tj, 0
  br i1 %.not313, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tk = load i32, ptr %i.jz, align 4
  %i.tl = sext i32 %i.tk to i64
  %i.tm = shl nsw i64 %i.tl, 3
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.tm
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.to = phi ptr [ %i.tn, %bb.cz ], [ null, %bb.cy ] ; 3 uses
  %i.tp = load i32, ptr %i.bt, align 4
  %.not314 = icmp eq i32 %i.tp, 0
  br i1 %.not314, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.tq = load i32, ptr %i.s, align 4
  %i.tr = sext i32 %i.tq to i64
  %i.ts = shl nsw i64 %i.tr, 3
  %i.tt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ts
  br label %bb.dc

end_hunk_3
begin_hunk_4_@array_set_slice:bb.a
  %i.yq = zext i8 %i.yp to i32
  br label %.lr.ph94.i383.outer, !llvm.loop !1

.lr.ph94.i383.outer:                              ; preds = %bb.dv, %.thread430
  %.in99.i384.ph = phi i32 [ %i.yi, %.thread430 ], [ %.0269, %bb.dv ]
  %.393.i385.ph = phi i32 [ %i.yq, %.thread430 ], [ %i.xj, %bb.dv ]
  %.24892.i386.ph = phi i32 [ 1, %.thread430 ], [ %i.xh, %bb.dv ]
  %.25491.i387.ph = phi ptr [ %i.yo, %.thread430 ], [ %i.xf, %bb.dv ] ; 3 uses
  br label %.lr.ph94.i383

._crit_edge95.thread.sink.split.i378:             ; preds = %bb.ec, %._crit_edge.i376
  %.273110.sink.i379 = phi i32 [ %.2.i371, %._crit_edge.i376 ], [ %i.yj, %bb.ec ]
  %.15369112.sink.i380 = phi ptr [ %.153.i369, %._crit_edge.i376 ], [ %.25491.i387.ph, %bb.ec ]
  %i.yr = trunc i32 %.273110.sink.i379 to i8
  store i8 %i.yr, ptr %.15369112.sink.i380, align 1
  br label %array_bitmap_copy.exit394

array_bitmap_copy.exit394:                        ; preds = %bb.dw, %bb.eb, %._crit_edge95.thread.sink.split.i378, %._crit_edge.i376, %array_bitmap_copy.exit356, %bb.cx, %array_insert_slice.exit
  %i.ys = ptrtoint ptr %i.jx to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.a, %array_bitmap_copy.exit394, %bb.m
  %.0280 = phi i64 [ %i.ys, %array_bitmap_copy.exit394 ], [ %i.bg, %bb.m ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret i64 %.0280
}

; Function Attrs: nounwind uwtable
define dso_local void @deconstruct_array(ptr noundef %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef signext %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %4, -99               ; 3 uses
  %i.a = icmp ult i8 %switch.tableidx, 17
  br i1 %i.a, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.b = sext i8 %4 to i32
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.b) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = tail call i32 @ArrayGetNItems(i32 noundef %i.g, ptr noundef nonnull %i.h) #16 ; 8 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.j) #16 ; 11 uses
  store ptr %i.k, ptr %5, align 8
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.l = tail call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.j) #16
  %i.m = freeze ptr %i.l                          ; 2 uses
  store ptr %i.m, ptr %6, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.052 = phi ptr [ %i.m, %bb.c ], [ null, %switch.lookup ] ; 6 uses
  store i32 %i.i, ptr %7, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not58 = icmp eq i32 %i.o, 0
  br i1 %.not58, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.p = load i32, ptr %i.f, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.f, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.aa = phi ptr [ %i.v, %bb.e ], [ %i.t, %.thread ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %bb.e ], [ null, %.thread ] ; 7 uses
  %i.ac = icmp sgt i32 %i.i, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not61 = icmp eq ptr %.052, null               ; 5 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ae = icmp eq i32 %i.ad, 1                    ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 3 uses
  %i.ag = icmp sgt i32 %2, 0
  %i.ah = zext nneg i32 %2 to i64
  %i.ai = add nsw i64 %switch.ext, -1             ; 4 uses
  %i.aj = sub nsw i64 0, %switch.ext              ; 4 uses
  br i1 %i.ag, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count135 = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %indvars.iv132 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next133, %bb.q ] ; 4 uses
  %.04767.us = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ %.1.us, %bb.q ] ; 3 uses
  %.04866.us = phi ptr [ %i.ab, %.lr.ph.split.us.preheader ], [ %.149.us, %bb.q ] ; 3 uses
  %.05065.us = phi ptr [ %i.aa, %.lr.ph.split.us.preheader ], [ %.151.us, %bb.q ] ; 7 uses
  %.not60.us = icmp eq ptr %.04866.us, null       ; 3 uses
  br i1 %.not60.us, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ak = load i8, ptr %.04866.us, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = and i32 %.04767.us, %i.al
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv132
  store i64 0, ptr %i.ao, align 8
  br i1 %.not61, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv132
  store i8 1, ptr %i.ap, align 1
  br label %bb.q

bb.j:                                             ; preds = %bb.g, %.lr.ph.split.us
  br i1 %3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %.05065.us to i64
  br label %fetch_att.exit.us

bb.l:                                             ; preds = %bb.j
  br i1 %i.ae, label %.split.i.us, label %.split70.us

.split.i.us:                                      ; preds = %bb.l
  switch i32 %i.af, label %.split70.us [
    i32 0, label %bb.p
    i32 1, label %bb.o
    i32 2, label %bb.n
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %.split.i.us
  %i.ar = load i64, ptr %.05065.us, align 8
  br label %fetch_att.exit.us

bb.n:                                             ; preds = %.split.i.us
  %i.as = load i32, ptr %.05065.us, align 4
  %i.at = sext i32 %i.as to i64
  br label %fetch_att.exit.us

bb.o:                                             ; preds = %.split.i.us
  %i.au = load i16, ptr %.05065.us, align 2
  %i.av = sext i16 %i.au to i64
  br label %fetch_att.exit.us

bb.p:                                             ; preds = %.split.i.us
  %i.aw = load i8, ptr %.05065.us, align 1
  %i.ax = sext i8 %i.aw to i64
  br label %fetch_att.exit.us

fetch_att.exit.us:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  %.0.i63.us = phi i64 [ %i.ax, %bb.p ], [ %i.av, %bb.o ], [ %i.at, %bb.n ], [ %i.ar, %bb.m ], [ %i.aq, %bb.k ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv132
  store i64 %.0.i63.us, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.05065.us, i64 %i.ah
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ai, %i.ba
  %i.bc = and i64 %i.bb, %i.aj
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %bb.q

bb.q:                                             ; preds = %fetch_att.exit.us, %bb.i
  %.151.us = phi ptr [ %.05065.us, %bb.i ], [ %i.bd, %fetch_att.exit.us ]
  %i.be = shl i32 %.04767.us, 1                   ; 2 uses
  %i.bf = icmp eq i32 %i.be, 256                  ; 2 uses
  %spec.select.idx.us = zext i1 %i.bf to i64
  %spec.select.us = getelementptr inbounds nuw i8, ptr %.04866.us, i64 %spec.select.idx.us
  %spec.select62.us = select i1 %i.bf, i32 1, i32 %i.be
  %.149.us = select i1 %.not60.us, ptr null, ptr %spec.select.us
  %.1.us = select i1 %.not60.us, i32 %.04767.us, i32 %spec.select62.us
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bg = icmp eq i32 %2, -1
  br i1 %i.bg, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count130 = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.af
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next128, %bb.af ] ; 4 uses
  %.04767.us72 = phi i32 [ 1, %.lr.ph.split.split.us.preheader ], [ %.1.us84, %bb.af ] ; 3 uses
  %.04866.us73 = phi ptr [ %i.ab, %.lr.ph.split.split.us.preheader ], [ %.149.us83, %bb.af ] ; 3 uses
  %.05065.us74 = phi ptr [ %i.aa, %.lr.ph.split.split.us.preheader ], [ %.151.us79, %bb.af ] ; 10 uses
  %.not60.us75 = icmp eq ptr %.04866.us73, null   ; 3 uses
  br i1 %.not60.us75, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.us
  %i.bh = load i8, ptr %.04866.us73, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = and i32 %.04767.us72, %i.bi
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv127
  store i64 0, ptr %i.bl, align 8
  br i1 %.not61, label %.split.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv127
  store i8 1, ptr %i.bm, align 1
  br label %bb.af

bb.u:                                             ; preds = %bb.r, %.lr.ph.split.split.us
  br i1 %3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = ptrtoint ptr %.05065.us74 to i64
  br label %fetch_att.exit.us77

bb.w:                                             ; preds = %bb.u
  br i1 %i.ae, label %.split.i.us76, label %.split70.us

.split.i.us76:                                    ; preds = %bb.w
  switch i32 %i.af, label %.split70.us [
    i32 0, label %bb.aa
    i32 1, label %bb.z
    i32 2, label %bb.y
    i32 3, label %bb.x
  ]

bb.x:                                             ; preds = %.split.i.us76
  %i.bo = load i64, ptr %.05065.us74, align 8
  br label %fetch_att.exit.us77

bb.y:                                             ; preds = %.split.i.us76
  %i.bp = load i32, ptr %.05065.us74, align 4
  %i.bq = sext i32 %i.bp to i64
  br label %fetch_att.exit.us77

bb.z:                                             ; preds = %.split.i.us76
  %i.br = load i16, ptr %.05065.us74, align 2
  %i.bs = sext i16 %i.br to i64
  br label %fetch_att.exit.us77

bb.aa:                                            ; preds = %.split.i.us76
  %i.bt = load i8, ptr %.05065.us74, align 1
  %i.bu = sext i8 %i.bt to i64
  br label %fetch_att.exit.us77

fetch_att.exit.us77:                              ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v
  %.0.i63.us78 = phi i64 [ %i.bu, %bb.aa ], [ %i.bs, %bb.z ], [ %i.bq, %bb.y ], [ %i.bo, %bb.x ], [ %i.bn, %bb.v ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv127
  store i64 %.0.i63.us78, ptr %i.bv, align 8
  %i.bw = load i8, ptr %.05065.us74, align 1      ; 2 uses
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = icmp eq i8 %i.bw, 1
  br i1 %i.by, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %fetch_att.exit.us77
  %i.bz = and i32 %i.bx, 1
  %.not.i.us = icmp eq i32 %i.bz, 0
  br i1 %.not.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = lshr i32 %i.bx, 1
  %i.cb = zext nneg i32 %i.ca to i64
  br label %VARSIZE_ANY.exit.us

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %.05065.us74, align 4
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = zext nneg i32 %i.cd to i64
  br label %VARSIZE_ANY.exit.us

bb.ae:                                            ; preds = %fetch_att.exit.us77
  %i.cf = getelementptr i8, ptr %.05065.us74, i64 1
  %.val.i.us = load i8, ptr %i.cf, align 1        ; 2 uses
  %i.cg = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.cg, 3
  %i.ch = icmp eq i8 %.val.i.us, 18
  %i.ci = select i1 %i.ch, i64 18, i64 2
  %i.cj = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.ci
  br label %VARSIZE_ANY.exit.us

VARSIZE_ANY.exit.us:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i64.us = phi i64 [ %i.cj, %bb.ae ], [ %i.cb, %bb.ac ], [ %i.ce, %bb.ad ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.05065.us74, i64 %.0.i64.us
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.ai, %i.cl
  %i.cn = and i64 %i.cm, %i.aj
  %i.co = inttoptr i64 %i.cn to ptr
  br label %bb.af

bb.af:                                            ; preds = %VARSIZE_ANY.exit.us, %bb.t
  %.151.us79 = phi ptr [ %.05065.us74, %bb.t ], [ %i.co, %VARSIZE_ANY.exit.us ]
  %i.cp = shl i32 %.04767.us72, 1                 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 256                  ; 2 uses
  %spec.select.idx.us80 = zext i1 %i.cq to i64
  %spec.select.us81 = getelementptr inbounds nuw i8, ptr %.04866.us73, i64 %spec.select.idx.us80
  %spec.select62.us82 = select i1 %i.cq, i32 1, i32 %i.cp
  %.149.us83 = select i1 %.not60.us75, ptr null, ptr %spec.select.us81
  %.1.us84 = select i1 %.not60.us75, i32 %.04767.us72, i32 %spec.select62.us82
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !75

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %3, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  br i1 %i.ae, label %.lr.ph.split.split.split.us.split.us.preheader, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us.preheader:   ; preds = %.lr.ph.split.split.split.us
  %wide.trip.count125 = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.split.us.split.us

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us.split.us.preheader, %bb.an
  %indvars.iv122 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us.preheader ], [ %indvars.iv.next123, %bb.an ] ; 4 uses
  %.04767.us86.us = phi i32 [ 1, %.lr.ph.split.split.split.us.split.us.preheader ], [ %.1.us98.us, %bb.an ] ; 3 uses
  %.04866.us87.us = phi ptr [ %i.ab, %.lr.ph.split.split.split.us.split.us.preheader ], [ %.149.us97.us, %bb.an ] ; 3 uses
  %.05065.us88.us = phi ptr [ %i.aa, %.lr.ph.split.split.split.us.split.us.preheader ], [ %.151.us93.us, %bb.an ] ; 7 uses
  %.not60.us89.us = icmp eq ptr %.04866.us87.us, null ; 3 uses
  br i1 %.not60.us89.us, label %.split.i.us90.us, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.split.split.us.split.us
  %i.cr = load i8, ptr %.04866.us87.us, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = and i32 %.04767.us86.us, %i.cs
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ah, label %.split.i.us90.us

bb.ah:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv122
  store i64 0, ptr %i.cv, align 8
  br i1 %.not61, label %.split.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv122
  store i8 1, ptr %i.cw, align 1
  br label %bb.an

.split.i.us90.us:                                 ; preds = %bb.ag, %.lr.ph.split.split.split.us.split.us
  switch i32 %i.af, label %.split70.us [
    i32 0, label %bb.am
    i32 1, label %bb.al
    i32 2, label %bb.ak
    i32 3, label %bb.aj
  ]

bb.aj:                                            ; preds = %.split.i.us90.us
  %i.cx = load i64, ptr %.05065.us88.us, align 8
  br label %fetch_att.exit.us91.us

bb.ak:                                            ; preds = %.split.i.us90.us
  %i.cy = load i32, ptr %.05065.us88.us, align 4
  %i.cz = sext i32 %i.cy to i64
  br label %fetch_att.exit.us91.us

bb.al:                                            ; preds = %.split.i.us90.us
  %i.da = load i16, ptr %.05065.us88.us, align 2
  %i.db = sext i16 %i.da to i64
  br label %fetch_att.exit.us91.us

bb.am:                                            ; preds = %.split.i.us90.us
  %i.dc = load i8, ptr %.05065.us88.us, align 1
  %i.dd = sext i8 %i.dc to i64
  br label %fetch_att.exit.us91.us

fetch_att.exit.us91.us:                           ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i63.us92.us = phi i64 [ %i.dd, %bb.am ], [ %i.db, %bb.al ], [ %i.cz, %bb.ak ], [ %i.cx, %bb.aj ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv122
  store i64 %.0.i63.us92.us, ptr %i.de, align 8
  %i.df = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.05065.us88.us) #18
  %i.dg = getelementptr i8, ptr %.05065.us88.us, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 1
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = add i64 %i.ai, %i.di
  %i.dk = and i64 %i.dj, %i.aj
  %i.dl = inttoptr i64 %i.dk to ptr
  br label %bb.an

bb.an:                                            ; preds = %fetch_att.exit.us91.us, %bb.ai
  %.151.us93.us = phi ptr [ %.05065.us88.us, %bb.ai ], [ %i.dl, %fetch_att.exit.us91.us ]
  %i.dm = shl i32 %.04767.us86.us, 1              ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 256                  ; 2 uses
  %spec.select.idx.us94.us = zext i1 %i.dn to i64
  %spec.select.us95.us = getelementptr inbounds nuw i8, ptr %.04866.us87.us, i64 %spec.select.idx.us94.us
  %spec.select62.us96.us = select i1 %i.dn, i32 1, i32 %i.dm
  %.149.us97.us = select i1 %.not60.us89.us, ptr null, ptr %spec.select.us95.us
  %.1.us98.us = select i1 %.not60.us89.us, i32 %.04767.us86.us, i32 %spec.select62.us96.us
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph.split.split.split.us.split.us, !llvm.loop !75

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  br i1 %.not61, label %.lr.ph.split.split.split.us.split.split.us, label %.lr.ph.split.split.split.us.split.split.preheader

.lr.ph.split.split.split.us.split.split.preheader: ; preds = %.lr.ph.split.split.split.us.split
  %wide.trip.count120 = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.split.us.split.split

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  %.not60.us89.us102 = icmp eq ptr %i.ab, null
  br i1 %.not60.us89.us102, label %.split70.us, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.split.split.split.us.split.split.us
  %i.do = load i8, ptr %i.ab, align 1
  %i.dp = and i8 %i.do, 1
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %.split.split.split.us.split.split.us, label %.split70.us

.split.split.split.us.split.split.us:             ; preds = %bb.ao
  store i64 0, ptr %i.k, align 8
  br label %.split.us

.lr.ph.split.split.split.us.split.split:          ; preds = %.lr.ph.split.split.split.us.split.split.preheader, %bb.aq
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.split.preheader ], [ %indvars.iv.next118, %bb.aq ] ; 3 uses
  %.04767.us86 = phi i32 [ 1, %.lr.ph.split.split.split.us.split.split.preheader ], [ %spec.select62.us96, %bb.aq ] ; 2 uses
  %.04866.us87 = phi ptr [ %i.ab, %.lr.ph.split.split.split.us.split.split.preheader ], [ %spec.select.us95, %bb.aq ] ; 3 uses
  %.not60.us89 = icmp eq ptr %.04866.us87, null
  br i1 %.not60.us89, label %.split70.us, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.split.split.us.split.split
  %i.dr = load i8, ptr %.04866.us87, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = and i32 %.04767.us86, %i.ds
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.aq, label %.split70.us

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv117
  store i64 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv117
  store i8 1, ptr %i.dw, align 1
  %i.dx = shl i32 %.04767.us86, 1                 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 256                  ; 2 uses
  %spec.select.idx.us94 = zext i1 %i.dy to i64
  %spec.select.us95 = getelementptr inbounds nuw i8, ptr %.04866.us87, i64 %spec.select.idx.us94
  %spec.select62.us96 = select i1 %i.dy, i32 1, i32 %i.dx
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge, label %.lr.ph.split.split.split.us.split.split, !llvm.loop !75

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next, %bb.au ] ; 4 uses
  %.04767 = phi i32 [ 1, %.lr.ph.split.split.split.preheader ], [ %.1, %bb.au ] ; 3 uses
  %.04866 = phi ptr [ %i.ab, %.lr.ph.split.split.split.preheader ], [ %.149, %bb.au ] ; 3 uses
  %.05065 = phi ptr [ %i.aa, %.lr.ph.split.split.split.preheader ], [ %.151, %bb.au ] ; 4 uses
  %.not60 = icmp eq ptr %.04866, null             ; 3 uses
  br i1 %.not60, label %fetch_att.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.split.split
  %i.dz = load i8, ptr %.04866, align 1
  %i.ea = zext i8 %i.dz to i32
  %i.eb = and i32 %.04767, %i.ea
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.as, label %fetch_att.exit

bb.as:                                            ; preds = %bb.ar
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store i64 0, ptr %i.ed, align 8
  br i1 %.not61, label %.split.us, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv
  store i8 1, ptr %i.ee, align 1
  br label %bb.au

.split.us:                                        ; preds = %bb.as, %bb.ah, %bb.s, %bb.h, %.split.split.split.us.split.split.us
  %i.ef = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.eg = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.eh = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3677, ptr noundef nonnull @__func__.deconstruct_array) #16
  unreachable

fetch_att.exit:                                   ; preds = %bb.ar, %.lr.ph.split.split.split
  %i.ei = ptrtoint ptr %.05065 to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.05065) #18
  %i.el = getelementptr i8, ptr %.05065, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 1
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = add i64 %i.ai, %i.en
  %i.ep = and i64 %i.eo, %i.aj
  %i.eq = inttoptr i64 %i.ep to ptr
  br label %bb.au

.split70.us:                                      ; preds = %bb.ap, %.lr.ph.split.split.split.us.split.split, %.split.i.us90.us, %.split.i.us76, %bb.w, %bb.l, %.split.i.us, %bb.ao, %.lr.ph.split.split.split.us.split.split.us
  %i.er = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.es = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.63, i32 noundef %2) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #16
  unreachable

bb.au:                                            ; preds = %fetch_att.exit, %bb.at
  %.151 = phi ptr [ %.05065, %bb.at ], [ %i.eq, %fetch_att.exit ]
  %i.et = shl i32 %.04767, 1                      ; 2 uses
  %i.eu = icmp eq i32 %i.et, 256                  ; 2 uses
  %spec.select.idx = zext i1 %i.eu to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.04866, i64 %spec.select.idx
  %spec.select62 = select i1 %i.eu, i32 1, i32 %i.et
  %.149 = select i1 %.not60, ptr null, ptr %spec.select
  %.1 = select i1 %.not60, i32 %.04767, i32 %spec.select62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.au, %bb.aq, %bb.an, %bb.af, %bb.q, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_ref(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i8 noundef signext %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call i64 @array_get_element(i64 noundef %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i8 noundef signext %6, ptr noundef %7)
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @array_set(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call i64 @array_set_element(i64 noundef %i.a, i32 noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8)
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_map(i64 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.array_iter, align 8         ; 6 uses
  %i.a = tail call ptr @DatumGetAnyArrayP(i64 noundef %0) #16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp eq i32 %i.f, -1                     ; 3 uses
  %.in.v = select i1 %i.g, i64 72, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.h = load i32, ptr %.in, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.in127 = select i1 %i.g, ptr %i.i, ptr %i.j
  %i.k = load i32, ptr %.in127, align 4           ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.p = tail call i32 @ArrayGetNItems(i32 noundef %i.k, ptr noundef %i.o) #16 ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @palloc0(i64 noundef 16) #16 ; 5 uses
  store i32 64, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %3, ptr %i.u, align 4
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.w = load i32, ptr %4, align 8
  %.not = icmp eq i32 %i.w, %i.h
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 7
  tail call void @get_typlenbyvalalign(i32 noundef %i.h, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #16
  store i32 %i.h, ptr %4, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = load i32, ptr %i.v, align 8
  %.not128 = icmp eq i32 %i.ai, %3
  br i1 %.not128, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 78
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 79
  tail call void @get_typlenbyvalalign(i32 noundef %3, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) #16
  store i32 %3, ptr %i.v, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.an = load i16, ptr %i.am, align 4
  %.fr148 = freeze i16 %i.an                      ; 3 uses
  %i.ao = sext i16 %.fr148 to i32                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 78
  %i.aq = load i8, ptr %i.ap, align 2, !range !8, !noundef !9
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 79
  %i.at = load i8, ptr %i.as, align 1             ; 3 uses
  %switch.tableidx = add i8 %i.at, -99            ; 3 uses
  %i.au = icmp ult i8 %switch.tableidx, 17
  br i1 %i.au, label %switch.hole_check, label %bb.k

bb.k:                                             ; preds = %switch.hole_check, %bb.j
  %i.av = sext i8 %i.at to i32
  %i.aw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ax = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.av) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.j
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ay = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.ay
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.az = zext nneg i32 %i.p to i64               ; 5 uses
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call ptr @palloc(i64 noundef %i.ba) #16 ; 5 uses
  %i.bc = tail call ptr @palloc(i64 noundef %i.az) #16 ; 5 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i32 noundef %i.ac, i1 noundef zeroext %i.af, i8 noundef signext %i.ah)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.be = icmp eq i16 %.fr148, -1
  %i.bf = add nuw nsw i64 %switch.ext, 4294967295 ; 3 uses
  %i.bg = sub nsw i64 0, %switch.ext              ; 3 uses
  br i1 %i.be, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %switch.lookup, %bb.q
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %bb.q ], [ 0, %switch.lookup ] ; 4 uses
  %.0135.us = phi i1 [ %.1.us, %bb.q ], [ false, %switch.lookup ]
  %.0119134.us = phi i32 [ %.1120.us, %bb.q ], [ 0, %switch.lookup ] ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv157 to i32
  %i.bi = call fastcc i64 @array_iter_next(ptr noundef nonnull %5, ptr noundef %i.e, i32 noundef %i.bh)
  store i64 %i.bi, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv157 ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8
  %i.bl = tail call i64 %i.bk(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.bj) #16, !inline_history !76 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv157 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = load i8, ptr %i.bj, align 1, !range !8, !noundef !9
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.bp = inttoptr i64 %i.bl to ptr
  %i.bq = tail call ptr @pg_detoast_datum(ptr noundef %i.bp) #16 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  store i64 %i.br, ptr %i.bm, align 8
  %i.bs = zext i32 %.0119134.us to i64
  %i.bt = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = icmp eq i8 %i.bt, 1
  br i1 %i.bv, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = and i32 %i.bu, 1
  %.not.i.us = icmp eq i32 %i.bw, 0
  br i1 %.not.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = lshr i32 %i.bu, 1
  %i.by = zext nneg i32 %i.bx to i64
  br label %VARSIZE_ANY.exit.us

bb.o:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.bq, align 4
  %i.ca = lshr i32 %i.bz, 2
  %i.cb = zext nneg i32 %i.ca to i64
  br label %VARSIZE_ANY.exit.us

bb.p:                                             ; preds = %bb.l
  %i.cc = getelementptr i8, ptr %i.bq, i64 1
  %.val.i.us = load i8, ptr %i.cc, align 1        ; 2 uses
  %i.cd = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.cd, 3
  %i.ce = icmp eq i8 %.val.i.us, 18
  %i.cf = select i1 %i.ce, i64 18, i64 2
  %i.cg = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.cf
  br label %VARSIZE_ANY.exit.us

VARSIZE_ANY.exit.us:                              ; preds = %bb.p, %bb.o, %bb.n
  %.0.i129.us = phi i64 [ %i.cg, %bb.p ], [ %i.by, %bb.n ], [ %i.cb, %bb.o ]
  %i.ch = add nuw nsw i64 %.0.i129.us, %i.bs
  %i.ci = add nsw i64 %i.bf, %i.ch
  %i.cj = and i64 %i.ci, %i.bg                    ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i64 %i.cj, 3221225472
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %.split.us

bb.q:                                             ; preds = %VARSIZE_ANY.exit.us, %.lr.ph.split.us
  %.1120.us = phi i32 [ %i.ck, %VARSIZE_ANY.exit.us ], [ %.0119134.us, %.lr.ph.split.us ] ; 2 uses
  %.1.us = phi i1 [ %.0135.us, %VARSIZE_ANY.exit.us ], [ true, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next158, %i.az
  br i1 %exitcond160.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !77

.lr.ph.split:                                     ; preds = %switch.lookup
  %i.cn = icmp sgt i16 %.fr148, 0
  br i1 %i.cn, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.s
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %bb.s ], [ 0, %.lr.ph.split ] ; 4 uses
  %.0135.us138 = phi i1 [ %.1.us142, %bb.s ], [ false, %.lr.ph.split ]
  %.0119134.us139 = phi i32 [ %.1120.us141, %bb.s ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.cp = call fastcc i64 @array_iter_next(ptr noundef nonnull %5, ptr noundef %i.e, i32 noundef %i.co)
  store i64 %i.cp, ptr %i.c, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv153 ; 2 uses
  %i.cr = load ptr, ptr %i.bd, align 8
  %i.cs = tail call i64 %i.cr(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.cq) #16, !inline_history !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv153
  store i64 %i.cs, ptr %i.ct, align 8
  %i.cu = load i8, ptr %i.cq, align 1, !range !8, !noundef !9
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.us
  %i.cw = add i32 %.0119134.us139, %i.ao
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.bf, %i.cx
  %i.cz = and i64 %i.cy, %i.bg                    ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i64 %i.cz, 3221225472
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.s, label %.split.us

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.split.us
  %.1120.us141 = phi i32 [ %i.da, %bb.r ], [ %.0119134.us139, %.lr.ph.split.split.us ] ; 2 uses
  %.1.us142 = phi i1 [ %.0135.us138, %bb.r ], [ true, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, %i.az
  br i1 %exitcond156.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !77

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %.lr.ph.split ] ; 4 uses
  %.0135 = phi i1 [ %.1, %bb.u ], [ false, %.lr.ph.split ]
  %.0119134 = phi i32 [ %.1120, %bb.u ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  %i.de = call fastcc i64 @array_iter_next(ptr noundef nonnull %5, ptr noundef %i.e, i32 noundef %i.dd)
  store i64 %i.de, ptr %i.c, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.dg = load ptr, ptr %i.bd, align 8
  %i.dh = tail call i64 %i.dg(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.df) #16, !inline_history !76 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 %i.dh, ptr %i.di, align 8
  %i.dj = load i8, ptr %i.df, align 1, !range !8, !noundef !9
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.dl = zext i32 %.0119134 to i64
  %i.dm = inttoptr i64 %i.dh to ptr
  %i.dn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dm) #18
  %i.do = add nuw nsw i64 %i.dl, 1
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = add i64 %i.bf, %i.dp
  %i.dr = and i64 %i.dq, %i.bg                    ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i64 %i.dr, 3221225472
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.u, label %.split.us

.split.us:                                        ; preds = %bb.t, %bb.r, %VARSIZE_ANY.exit.us
  %i.dv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.dw = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.dx = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3312, ptr noundef nonnull @__func__.array_map) #16
  unreachable

bb.u:                                             ; preds = %.lr.ph.split.split, %bb.t
  %.1120 = phi i32 [ %i.ds, %bb.t ], [ %.0119134, %.lr.ph.split.split ] ; 2 uses
  %.1 = phi i1 [ %.0135, %bb.t ], [ true, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.az
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.u, %bb.s, %bb.q
  %.0119.lcssa = phi i32 [ %.1120.us141, %bb.s ], [ %.1120.us, %bb.q ], [ %.1120, %bb.u ] ; 2 uses
  %.0.lcssa = phi i1 [ %.1.us142, %bb.s ], [ %.1.us, %bb.q ], [ %.1, %bb.u ]
  %i.dy = shl i32 %i.k, 3                         ; 2 uses
  br i1 %.0.lcssa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.dz = add nuw i32 %i.p, 7
  %i.ea = sdiv i32 %i.dz, 8
  %i.eb = add i32 %i.dy, 23
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = and i32 %i.ec, -8                       ; 2 uses
  %i.ee = add i32 %.0119.lcssa, %i.ed
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.ef = add i32 %i.dy, 16
  %i.eg = add i32 %i.ef, %.0119.lcssa
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2 = phi i32 [ %i.ee, %bb.v ], [ %i.eg, %bb.w ] ; 2 uses
  %.0118 = phi i32 [ %i.ed, %bb.v ], [ 0, %bb.w ]
  %i.eh = sext i32 %.2 to i64
  %i.ei = tail call ptr @palloc0(i64 noundef %i.eh) #16 ; 7 uses
  %i.ej = shl i32 %.2, 2
  store i32 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 %i.k, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %.0118, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 %3, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.eo = load i32, ptr %i.a, align 4
  %i.ep = icmp eq i32 %i.eo, -1
  br i1 %i.ep, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.er = load ptr, ptr %i.eq, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.et = phi ptr [ %i.er, %bb.y ], [ %i.es, %bb.z ]
  %i.eu = sext i32 %i.k to i64
  %i.ev = shl nsw i64 %i.eu, 2                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.et, i64 %i.ev, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ev
  %i.ex = load i32, ptr %i.a, align 4
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fa = load ptr, ptr %i.ez, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fc = load i32, ptr %i.j, align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fg = phi ptr [ %i.fa, %bb.ab ], [ %i.ff, %bb.ac ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ew, ptr align 4 %i.fg, i64 %i.ev, i1 false)
  tail call void @CopyArrayEls(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i32 noundef %i.p, i32 noundef %i.ao, i1 noundef zeroext %i.ar, i8 noundef signext %i.at, i1 noundef zeroext false)
  tail call void @pfree(ptr noundef nonnull %i.bb) #16
  tail call void @pfree(ptr noundef nonnull %i.bc) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.e
  %.0122.in = phi ptr [ %i.r, %bb.e ], [ %i.ei, %bb.ad ]
  %.0122 = ptrtoint ptr %.0122.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %.0122
}

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @construct_array(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 %1, ptr %i.a, align 4
  store i32 1, ptr %i.b, align 4
  %i.c = call ptr @construct_md_array(ptr noundef %0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @construct_array_builtin(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  switch i32 %2, label %bb.i [
    i32 18, label %bb.j
    i32 2275, label %bb.b
    i32 700, label %bb.c
    i32 701, label %bb.d
    i32 21, label %bb.e
    i32 23, label %bb.c
    i32 20, label %bb.d
    i32 19, label %bb.f
    i32 26, label %bb.c
    i32 2206, label %bb.c
    i32 25, label %bb.g
    i32 27, label %bb.h
    i32 28, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.27, i32 noundef %2) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3469, ptr noundef nonnull @__func__.construct_array_builtin) #16
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.08 = phi i32 [ -1, %bb.g ], [ -2, %bb.b ], [ 4, %bb.c ], [ 8, %bb.d ], [ 2, %bb.e ], [ 1, %bb.a ], [ 6, %bb.h ], [ 64, %bb.f ]
  %.07 = phi i1 [ false, %bb.g ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.a ], [ false, %bb.h ], [ false, %bb.f ]
  %.0 = phi i8 [ 105, %bb.g ], [ 99, %bb.b ], [ 105, %bb.c ], [ 100, %bb.d ], [ 115, %bb.e ], [ 99, %bb.a ], [ 115, %bb.h ], [ 99, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 %1, ptr %i.a, align 4
  store i32 1, ptr %i.b, align 4
  %i.e = call noundef ptr @construct_md_array(ptr noundef %0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %.08, i1 noundef zeroext %.07, i8 noundef signext %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local ptr @construct_empty_expanded_array(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 16) #16 ; 6 uses
  store i32 64, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %0, ptr %i.d, align 4
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = tail call i64 @expand_array(i64 noundef %i.e, ptr noundef %1, ptr noundef %2) #16
  tail call void @pfree(ptr noundef nonnull %i.a) #16
  %i.g = tail call ptr @DatumGetEOHP(i64 noundef %i.f) #16
  ret ptr %i.g
}

declare i64 @expand_array(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DatumGetEOHP(i64 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @deconstruct_array_builtin(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 18, label %bb.i
    i32 2275, label %bb.b
    i32 701, label %bb.c
    i32 21, label %bb.d
    i32 23, label %bb.e
end_hunk_4
begin_hunk_5_@array_eq:bb.a
bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.aa, %bb.f ]
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load i32, ptr %i.n, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.ad, %bb.h ], [ %i.ai, %bb.i ]
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = load i32, ptr %i.s, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.in108.v = phi i64 [ 72, %bb.k ], [ 12, %bb.l ]
  %i.ar = phi ptr [ %i.al, %bb.k ], [ %i.aq, %bb.l ]
  %.in107.v = select i1 %i.l, i64 72, i64 12
  %.in107 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in107.v
  %i.as = load i32, ptr %.in107, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.in108 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in108.v
  %i.at = load i32, ptr %.in108, align 4
  %.not109 = icmp eq i32 %i.as, %i.at
  br i1 %.not109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.av = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.aw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3854, ptr noundef nonnull @__func__.array_eq) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not110 = icmp eq i32 %i.o, %i.t
  br i1 %.not110, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ax = sext i32 %i.o to i64
  %i.ay = shl nsw i64 %i.ax, 2                    ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.x, ptr %i.ab, i64 %i.ay)
  %.not111 = icmp eq i32 %bcmp, 0
  br i1 %.not111, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %bcmp112 = tail call i32 @bcmp(ptr %i.aj, ptr %i.ar, i64 %i.ay)
  %.not113 = icmp eq i32 %bcmp112, 0
  br i1 %.not113, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load i32, ptr %i.bb, align 8
  %.not114 = icmp eq i32 %i.bd, %i.as
  br i1 %.not114, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = tail call ptr @lookup_type_cache(i32 noundef %i.as, i32 noundef 32) #16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load i32, ptr %i.bf, align 8
  %.not115 = icmp eq i32 %i.bg, 0
  br i1 %.not115, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bi = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.bj = tail call ptr @format_type_be(i32 noundef %i.as) #16
  %i.bk = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31, ptr noundef %i.bj) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3879, ptr noundef nonnull @__func__.array_eq) #16
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.be, ptr %i.bm, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.099 = phi ptr [ %i.be, %bb.v ], [ %i.bb, %bb.s ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.099, i64 8
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = sext i16 %i.bo to i32                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.099, i64 10
  %i.br = load i8, ptr %i.bq, align 2, !range !8, !noundef !9
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.099, i64 11
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.099, i64 80
  store ptr %i.bv, ptr %1, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store i32 %i.j, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  store i8 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 2, ptr %i.bz, align 2
  %i.ca = tail call i32 @ArrayGetNItems(i32 noundef %i.o, ptr noundef %i.x) #16 ; 2 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.e, i32 noundef %i.bp, i1 noundef zeroext %i.bs, i8 noundef signext %i.bu)
  call fastcc void @array_iter_setup(ptr noundef nonnull %3, ptr noundef nonnull %i.h, i32 noundef %i.bp, i1 noundef zeroext %i.bs, i8 noundef signext %i.bu)
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %select.unfold
  %.098121 = phi i32 [ 0, %.lr.ph ], [ %i.cs, %select.unfold ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cg = call fastcc i64 @array_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %.098121)
  %i.ch = call fastcc i64 @array_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.098121)
  %i.ci = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.cj = trunc nuw i8 %i.ci to i1                ; 2 uses
  %i.ck = load i8, ptr %i.b, align 1, !range !8
  %i.cl = trunc nuw i8 %i.ck to i1                ; 2 uses
  %or.cond = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %or.cond3 = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond3, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.cg, ptr %i.cc, align 8
  store i8 0, ptr %i.cd, align 8
  store i64 %i.ch, ptr %i.ce, align 8
  store i8 0, ptr %i.cf, align 8
  store i8 0, ptr %i.by, align 4
  %i.cm = load ptr, ptr %1, align 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call i64 %i.cn(ptr noundef nonnull %1) #16
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = load i8, ptr %i.by, align 4, !range !8, !noundef !9
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond5.not = select i1 %i.cr, i1 true, i1 %i.cp
  br i1 %or.cond5.not, label %.thread, label %select.unfold

.thread:                                          ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

select.unfold:                                    ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cs = add nuw nsw i32 %.098121, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.ca
  br i1 %exitcond.not, label %.loopexit, label %bb.x, !llvm.loop !78

.loopexit:                                        ; preds = %select.unfold, %bb.w, %.thread, %bb.o, %bb.p, %bb.q
  %.2 = phi i64 [ 0, %bb.o ], [ 0, %.thread ], [ 0, %bb.q ], [ 0, %bb.p ], [ 1, %bb.w ], [ 1, %select.unfold ]
  %i.ct = load i32, ptr %i.e, align 4
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.cv = load i64, ptr %i.c, align 8
  %i.cw = inttoptr i64 %i.cv to ptr
  %.not116 = icmp eq ptr %i.e, %i.cw
  br i1 %.not116, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @pfree(ptr noundef nonnull %i.e) #16
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.aa
  %i.cx = load i32, ptr %i.h, align 4
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i64, ptr %i.f, align 8
  %i.da = inttoptr i64 %i.cz to ptr
  %.not117 = icmp eq ptr %i.h, %i.da
  br i1 %.not117, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @pfree(ptr noundef nonnull %i.h) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.2
}

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @array_ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @array_eq(ptr noundef %0)
  %i.b = xor i64 %i.a, 1
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @array_lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @array_cmp(ptr noundef %0)
  %.lobit = lshr i32 %i.a, 31
  %i.b = zext nneg i32 %.lobit to i64
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @array_cmp(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.3, align 8              ; 13 uses
  %2 = alloca %struct.array_iter, align 8         ; 4 uses
  %3 = alloca %struct.array_iter, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.d) #16 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.g) #16 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = load i32, ptr %i.e, align 4
  %i.l = icmp eq i32 %i.k, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.in = select i1 %i.l, ptr %i.m, ptr %i.n
  %i.o = load i32, ptr %.in, align 4              ; 6 uses
  %i.p = load i32, ptr %i.h, align 4
  %i.q = icmp eq i32 %i.p, -1                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.in140 = select i1 %i.q, ptr %i.r, ptr %i.s
  %i.t = load i32, ptr %.in140, align 4           ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ac = tail call i32 @ArrayGetNItems(i32 noundef %i.o, ptr noundef %i.x) #16 ; 3 uses
  %i.ad = tail call i32 @ArrayGetNItems(i32 noundef %i.t, ptr noundef %i.ab) #16 ; 3 uses
  %i.ae = load i32, ptr %i.e, align 4
  %i.af = icmp eq i32 %i.ae, -1
  %.in141.v = select i1 %i.af, i64 72, i64 12
  %.in141 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in141.v
  %i.ag = load i32, ptr %.in141, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = icmp eq i32 %i.ah, -1
  %.in142.v = select i1 %i.ai, i64 72, i64 12
  %.in142 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in142.v
  %i.aj = load i32, ptr %.in142, align 4
  %.not = icmp eq i32 %i.ag, %i.aj
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.al = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4023, ptr noundef nonnull @__func__.array_cmp) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.ap, align 8
  %.not143 = icmp eq i32 %i.ar, %i.ag
  br i1 %.not143, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = tail call ptr @lookup_type_cache(i32 noundef %i.ag, i32 noundef 64) #16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = load i32, ptr %i.at, align 8
  %.not144 = icmp eq i32 %i.au, 0
  br i1 %.not144, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.aw = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.ax = tail call ptr @format_type_be(i32 noundef %i.ag) #16
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45, ptr noundef %i.ax) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4041, ptr noundef nonnull @__func__.array_cmp) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.as, ptr %i.ba, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.0124 = phi ptr [ %i.as, %bb.m ], [ %i.ap, %bb.j ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0124, i64 8
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0124, i64 10
  %i.bf = load i8, ptr %i.be, align 2, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0124, i64 11
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0124, i64 128
  store ptr %i.bj, ptr %1, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store i32 %i.j, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 2, ptr %i.bn, align 2
  %i.bo = icmp slt i32 %i.ac, %i.ad
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad) ; 2 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.e, i32 noundef %i.bd, i1 noundef zeroext %i.bg, i8 noundef signext %i.bi)
  call fastcc void @array_iter_setup(ptr noundef nonnull %3, ptr noundef nonnull %i.h, i32 noundef %i.bd, i1 noundef zeroext %i.bg, i8 noundef signext %i.bi)
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.r
  %.0123167 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bv = call fastcc i64 @array_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %.0123167)
  %i.bw = call fastcc i64 @array_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.0123167)
  %i.bx = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.by = trunc nuw i8 %i.bx to i1                ; 3 uses
  %i.bz = load i8, ptr %i.b, align 1, !range !8
  %i.ca = trunc nuw i8 %i.bz to i1                ; 3 uses
  %brmerge151 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %brmerge151, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.bv, ptr %i.br, align 8
  store i8 0, ptr %i.bs, align 8
  store i64 %i.bw, ptr %i.bt, align 8
  store i8 0, ptr %i.bu, align 8
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call i64 %i.cc(ptr noundef nonnull %1) #16
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.thread, label %.thread158

.thread:                                          ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.r

.thread158:                                       ; preds = %bb.p
  %.inv = icmp sgt i32 %i.ce, -1
  %. = select i1 %.inv, i32 1, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.cg = select i1 %i.by, i1 %i.ca, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.cg, label %bb.r, label %._crit_edge.split.loop.exit211

bb.r:                                             ; preds = %.thread, %bb.q
  %i.ch = add nuw nsw i32 %.0123167, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.bp
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !79

._crit_edge.split.loop.exit211:                   ; preds = %bb.q
  %not. = xor i1 %i.ca, true
  %.0125.mux.le = zext i1 %not. to i32
  %.0125.mux.mux.le = select i1 %i.by, i32 %.0125.mux.le, i32 -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %._crit_edge.split.loop.exit211
  %.2127 = phi i32 [ %.0125.mux.mux.le, %._crit_edge.split.loop.exit211 ], [ 0, %bb.r ] ; 2 uses
  %i.ci = icmp eq i32 %.2127, 0
  br i1 %i.ci, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %bb.n, %._crit_edge
  %.not145 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not145, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.cj = select i1 %i.bo, i32 -1, i32 1
  br label %.loopexit

bb.t:                                             ; preds = %._crit_edge.thread
  %.not146 = icmp eq i32 %i.o, %i.t
  br i1 %.not146, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.t
  %i.ck = icmp sgt i32 %i.o, 0                    ; 2 uses
  br i1 %i.ck, label %.lr.ph171.preheader, label %.thread160

.lr.ph171.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph171

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp slt i32 %i.o, %i.t
  %i.cm = select i1 %i.cl, i32 -1, i32 1
  br label %.loopexit

bb.v:                                             ; preds = %.lr.ph171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond184.not, label %.thread160, label %.lr.ph171, !llvm.loop !80

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph171.preheader ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.co, %i.cq
  br i1 %.not147, label %bb.v, label %bb.w

bb.w:                                             ; preds = %.lr.ph171
  %i.cr = icmp slt i32 %i.co, %i.cq
  %i.cs = select i1 %i.cr, i32 -1, i32 1
  br label %.loopexit

.thread160:                                       ; preds = %bb.v, %.preheader
  %i.ct = load i32, ptr %i.e, align 4
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %bb.z

bb.y:                                             ; preds = %.thread160
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cy = load i32, ptr %i.n, align 4
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dc = phi ptr [ %i.cw, %bb.x ], [ %i.db, %bb.y ]
  %i.dd = load i32, ptr %i.h, align 4
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.dg = load ptr, ptr %i.df, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.di = load i32, ptr %i.s, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = phi ptr [ %i.dg, %bb.aa ], [ %i.dl, %bb.ab ]
  br i1 %i.ck, label %.lr.ph174.preheader, label %.loopexit

.lr.ph174.preheader:                              ; preds = %bb.ac
  %wide.trip.count188 = zext nneg i32 %i.o to i64
  br label %.lr.ph174

bb.ad:                                            ; preds = %.lr.ph174
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.loopexit, label %.lr.ph174, !llvm.loop !81

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.ad
  %indvars.iv185 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next186, %bb.ad ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv185
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv185
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not148 = icmp eq i32 %i.do, %i.dq
  br i1 %.not148, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph174
  %i.dr = icmp slt i32 %i.do, %i.dq
  %i.ds = select i1 %i.dr, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ac, %bb.w, %.thread158, %bb.ae, %._crit_edge, %bb.u, %bb.s
  %.5 = phi i32 [ %i.cj, %bb.s ], [ %i.cm, %bb.u ], [ %.2127, %._crit_edge ], [ %i.cs, %bb.w ], [ %i.ds, %bb.ae ], [ %., %.thread158 ], [ 0, %bb.ac ], [ 0, %bb.ad ]
  %i.dt = load i32, ptr %i.e, align 4
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.dv = load i64, ptr %i.c, align 8
  %i.dw = inttoptr i64 %i.dv to ptr
  %.not149 = icmp eq ptr %i.e, %i.dw
  br i1 %.not149, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @pfree(ptr noundef nonnull %i.e) #16
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.ag, %bb.af
  %i.dx = load i32, ptr %i.h, align 4
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load i64, ptr %i.f, align 8
  %i.ea = inttoptr i64 %i.dz to ptr
  %.not150 = icmp eq ptr %i.h, %i.ea
  br i1 %.not150, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @pfree(ptr noundef nonnull %i.h) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @array_gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @array_cmp(ptr noundef %0)
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @array_le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @array_cmp(ptr noundef %0)
  %i.b = icmp slt i32 %i.a, 1
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @array_ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @array_cmp(ptr noundef %0)
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 2) i64 @btarraycmp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @array_cmp(ptr noundef %0)
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @hash_array(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.1, align 8              ; 11 uses
  %2 = alloca %struct.array_iter, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.c) #16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, -1                     ; 2 uses
  %.in.v = select i1 %i.f, i64 52, i64 4
  %.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.v
  %i.g = load i32, ptr %.in, align 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in74.v = phi i64 [ 72, %bb.b ], [ 12, %bb.c ]
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.in74 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in74.v
  %i.l = load i32, ptr %.in74, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %i.q, %i.l
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call ptr @lookup_type_cache(i32 noundef %i.l, i32 noundef 128) #16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne i32 %i.l, 2249                   ; 2 uses
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.y = tail call ptr @format_type_be(i32 noundef %i.l) #16
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef %i.y) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4202, ptr noundef nonnull @__func__.hash_array) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ac, ptr @CurrentMemoryContext, align 8
  %i.ae = tail call ptr @palloc0(i64 noundef 496) #16 ; 6 uses
  store i32 2249, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.aj = load i8, ptr %i.ai, align 2, !range !8, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i8 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  tail call void @fmgr_info(i32 noundef 6192, ptr noundef nonnull %i.ao) #16
  store ptr %i.ad, ptr @CurrentMemoryContext, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.068 = phi ptr [ %i.ae, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %.068, ptr %i.aq, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.1 = phi ptr [ %.068, %bb.j ], [ %i.o, %bb.e ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 10
  %i.av = load i8, ptr %i.au, align 2, !range !8, !noundef !9
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 11
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.1, i64 176
  store ptr %i.az, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 1, ptr %i.bf, align 2
  %i.bg = tail call i32 @ArrayGetNItems(i32 noundef %i.g, ptr noundef %i.k) #16 ; 2 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.d, i32 noundef %i.at, i1 noundef zeroext %i.aw, i8 noundef signext %i.ay)
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %.06777 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %bb.n ] ; 2 uses
  %.06976 = phi i32 [ 1, %.lr.ph ], [ %i.bs, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bk = call fastcc i64 @array_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %.06777)
  %i.bl = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.bk, ptr %i.bi, align 8
  store i8 0, ptr %i.bj, align 8
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i64 %i.bo(ptr noundef nonnull %1) #16
  %i.bq = trunc i64 %i.bp to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi i32 [ %i.bq, %bb.m ], [ 0, %bb.l ]
  %i.br = mul i32 %.06976, 31
  %i.bs = add i32 %.0, %i.br                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bt = add nuw nsw i32 %.06777, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %i.bg
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !82

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.bu = zext i32 %i.bs to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.069.lcssa = phi i64 [ 1, %bb.k ], [ %i.bu, %._crit_edge.loopexit ]
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bx = load i64, ptr %i.b, align 8
  %i.by = inttoptr i64 %i.bx to ptr
  %.not75 = icmp eq ptr %i.d, %i.by
  br i1 %.not75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @pfree(ptr noundef nonnull %i.d) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.069.lcssa
}

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_array_extended(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.2, align 8              ; 13 uses
  %2 = alloca %struct.array_iter, align 8         ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.c) #16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i32, ptr %i.d, align 4
  %i.h = icmp eq i32 %i.g, -1                     ; 2 uses
  %.in.v = select i1 %i.h, i64 52, i64 4
  %.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.v
  %i.i = load i32, ptr %.in, align 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in61.v = phi i64 [ 72, %bb.b ], [ 12, %bb.c ]
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %.in61 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in61.v
  %i.n = load i32, ptr %.in61, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 8
  %.not = icmp eq i32 %i.s, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call ptr @lookup_type_cache(i32 noundef %i.n, i32 noundef 32768) #16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.v = load i32, ptr %i.u, align 8
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.y = tail call ptr @format_type_be(i32 noundef %i.n) #16
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.33, ptr noundef %i.y) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4330, ptr noundef nonnull @__func__.hash_array_extended) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.t, ptr %i.ab, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.057 = phi ptr [ %i.t, %bb.h ], [ %i.q, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.057, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !range !8, !noundef !9
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.057, i64 11
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.057, i64 224
  store ptr %i.ak, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 2, ptr %i.aq, align 2
  %i.ar = tail call i32 @ArrayGetNItems(i32 noundef %i.i, ptr noundef %i.m) #16 ; 2 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.d, i32 noundef %i.ae, i1 noundef zeroext %i.ah, i8 noundef signext %i.aj)
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.05665 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %bb.l ] ; 2 uses
  %.05864 = phi i64 [ 1, %.lr.ph ], [ %i.be, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ax = call fastcc i64 @array_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %.05665)
  %i.ay = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.ax, ptr %i.at, align 8
  store i8 0, ptr %i.au, align 8
  store i64 %i.f, ptr %i.av, align 8
  store i8 0, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i64 %i.bb(ptr noundef nonnull %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.bc, %bb.k ], [ 0, %bb.j ]
  %i.bd = mul i64 %.05864, 31
  %i.be = add i64 %.0, %i.bd                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bf = add nuw nsw i32 %.05665, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.l, %bb.i
  %.058.lcssa = phi i64 [ 1, %bb.i ], [ %i.be, %bb.l ]
  %i.bg = load i32, ptr %i.d, align 4
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.b, align 8
  %i.bj = inttoptr i64 %i.bi to ptr
  %.not63 = icmp eq ptr %i.d, %i.bj
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @pfree(ptr noundef nonnull %i.d) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.058.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @arrayoverlap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.b) #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.e) #16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = tail call fastcc zeroext i1 @array_contain_compare(ptr noundef %i.c, ptr noundef %i.f, i32 noundef %i.h, i1 noundef zeroext false, ptr noundef nonnull %i.j)
  %i.l = load i32, ptr %i.c, align 4
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.c, %i.o
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pfree(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = load i32, ptr %i.f, align 4
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.d, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %.not16 = icmp eq ptr %i.f, %i.s
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef nonnull %i.f) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.t = zext i1 %i.k to i64
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @array_contain_compare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %union.anon.4, align 8              ; 15 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.array_iter, align 8         ; 7 uses
  %i.d = alloca i8, align 1                       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.e = load i32, ptr %0, align 4
  %i.f = icmp eq i32 %i.e, -1
  %.in.v = select i1 %i.f, i64 72, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.g = load i32, ptr %.in, align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.h = load i32, ptr %1, align 4                ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %.in83.v = select i1 %i.i, i64 72, i64 12
  %.in83 = getelementptr inbounds nuw i8, ptr %1, i64 %.in83.v
  %i.j = load i32, ptr %.in83, align 4
  %.not84 = icmp eq i32 %i.g, %i.j
  br i1 %.not84, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4414, ptr noundef nonnull @__func__.array_contain_compare) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8                ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 8
  %.not85 = icmp eq i32 %i.p, %i.g
  br i1 %.not85, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call ptr @lookup_type_cache(i32 noundef %i.g, i32 noundef 32) #16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i32, ptr %i.r, align 8
  %.not86 = icmp eq i32 %i.s, 0
  br i1 %.not86, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.u = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.v = tail call ptr @format_type_be(i32 noundef %i.g) #16
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31, ptr noundef %i.v) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4432, ptr noundef nonnull @__func__.array_contain_compare) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.q, ptr %4, align 8
  %.pre = load i32, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.x = phi i32 [ %.pre, %bb.g ], [ %i.h, %bb.d ]
  %.077 = phi ptr [ %i.q, %bb.g ], [ %i.n, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.077, i64 10
  %i.ac = load i8, ptr %i.ab, align 2, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.077, i64 11
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = icmp eq i32 %i.x, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @deconstruct_expanded_array(ptr noundef nonnull %1) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.b, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.am = load i32, ptr %i.al, align 4
  store i32 %i.am, ptr %i.c, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @deconstruct_array(ptr noundef nonnull %1, i32 poison, i32 noundef %i.aa, i1 noundef zeroext %i.ad, i8 noundef signext %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.077, i64 80
  store ptr %i.an, ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 5 uses
  store i8 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 2, ptr %i.ar, align 2
  %i.as = load i32, ptr %0, align 4
  %i.at = icmp eq i32 %i.as, -1                   ; 2 uses
  %.in87.v = select i1 %i.at, i64 52, i64 4
  %.in87 = getelementptr inbounds nuw i8, ptr %0, i64 %.in87.v
  %i.au = load i32, ptr %.in87, align 4
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %i.aw, %bb.l ], [ %i.ax, %bb.m ]
  %i.az = call i32 @ArrayGetNItems(i32 noundef %i.au, ptr noundef %i.ay) #16 ; 4 uses
  call fastcc void @array_iter_setup(ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef %i.aa, i1 noundef zeroext %i.ad, i8 noundef signext %i.af)
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %bb.n
  %i.bb = load i32, ptr %i.c, align 4
  %.fr112 = freeze i32 %i.bb                      ; 2 uses
  %i.bc = icmp sgt i32 %.fr112, 0
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8
  %.fr = freeze ptr %i.be                         ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  br i1 %i.bc, label %.lr.ph102.split.us, label %.lr.ph102.split

.lr.ph102.split.us:                               ; preds = %.lr.ph102
  %.not88 = icmp eq ptr %.fr, null
  %wide.trip.count123 = zext nneg i32 %.fr112 to i64 ; 2 uses
  br i1 %.not88, label %.lr.ph102.split.us.split.us, label %.lr.ph102.split.us.split

.lr.ph102.split.us.split.us:                      ; preds = %.lr.ph102.split.us, %bb.q
  %.076100.us.us = phi i32 [ %i.bu, %bb.q ], [ 0, %.lr.ph102.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bj = call fastcc i64 @array_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i32 noundef %.076100.us.us)
  %i.bk = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.p, label %.critedge.us.us.us

.critedge.us.us.us:                               ; preds = %.lr.ph102.split.us.split.us, %bb.o
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.o ], [ 0, %.lr.ph102.split.us.split.us ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv120
  %i.bn = load i64, ptr %i.bm, align 8
  store i64 %i.bj, ptr %i.bf, align 8
  store i8 0, ptr %i.bg, align 8
  store i64 %i.bn, ptr %i.bh, align 8
  store i8 0, ptr %i.bi, align 8
  store i8 0, ptr %i.aq, align 4
  %i.bo = load ptr, ptr %5, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i64 %i.bp(ptr noundef nonnull %5) #16
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = load i8, ptr %i.aq, align 4, !range !8, !noundef !9
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond.not.us.us.us = select i1 %i.bt, i1 true, i1 %i.br
  br i1 %or.cond.not.us.us.us, label %bb.o, label %.split.us.us.us

bb.o:                                             ; preds = %.critedge.us.us.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge.split.us.us.us, label %.critedge.us.us.us, !llvm.loop !84

.split.us.us.us:                                  ; preds = %.critedge.us.us.us
  br i1 %3, label %bb.q, label %.thread95

._crit_edge.split.us.us.us:                       ; preds = %bb.o
  br i1 %3, label %.thread95, label %bb.q

bb.p:                                             ; preds = %.lr.ph102.split.us.split.us
  br i1 %3, label %.thread95, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.split.us.us.us, %.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.bu = add nuw nsw i32 %.076100.us.us, 1       ; 2 uses
  %exitcond125.not = icmp eq i32 %i.bu, %i.az
  br i1 %exitcond125.not, label %.loopexit, label %.lr.ph102.split.us.split.us, !llvm.loop !85

.lr.ph102.split.us.split:                         ; preds = %.lr.ph102.split.us, %bb.t
  %.076100.us = phi i32 [ %i.cj, %bb.t ], [ 0, %.lr.ph102.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bv = call fastcc i64 @array_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i32 noundef %.076100.us)
  %i.bw = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph102.split.us.split, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.lr.ph102.split.us.split ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.fr, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !range !8, !noundef !9
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.critedge.us105, label %bb.r

.critedge.us105:                                  ; preds = %.preheader.us
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.bv, ptr %i.bf, align 8
  store i8 0, ptr %i.bg, align 8
  store i64 %i.cc, ptr %i.bh, align 8
  store i8 0, ptr %i.bi, align 8
  store i8 0, ptr %i.aq, align 4
  %i.cd = load ptr, ptr %5, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i64 %i.ce(ptr noundef nonnull %5) #16
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = load i8, ptr %i.aq, align 4, !range !8, !noundef !9
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.not.us106 = select i1 %i.ci, i1 true, i1 %i.cg
  br i1 %or.cond.not.us106, label %bb.r, label %.split.us107

bb.r:                                             ; preds = %.critedge.us105, %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next, %wide.trip.count123
  br i1 %exitcond118.not, label %._crit_edge.split.us108, label %.preheader.us, !llvm.loop !84

.split.us107:                                     ; preds = %.critedge.us105
  br i1 %3, label %bb.t, label %.thread95

._crit_edge.split.us108:                          ; preds = %bb.r
  br i1 %3, label %.thread95, label %bb.t

bb.s:                                             ; preds = %.lr.ph102.split.us.split
  br i1 %3, label %.thread95, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.split.us108, %.split.us107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.cj = add nuw nsw i32 %.076100.us, 1          ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cj, %i.az
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph102.split.us.split, !llvm.loop !85

.lr.ph102.split:                                  ; preds = %.lr.ph102
  br i1 %3, label %.lr.ph102.split.split.us, label %.lr.ph102.split.split.split

.lr.ph102.split.split.us:                         ; preds = %.lr.ph102.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ck = call fastcc i64 @array_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i32 noundef 0) ; 0 uses
  br label %.thread95

.lr.ph102.split.split.split:                      ; preds = %.lr.ph102.split, %.lr.ph102.split.split.split
  %.076100 = phi i32 [ %i.cm, %.lr.ph102.split.split.split ], [ 0, %.lr.ph102.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.cl = call fastcc i64 @array_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i32 noundef %.076100) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.cm = add nuw nsw i32 %.076100, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %i.az
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph102.split.split.split, !llvm.loop !85

.thread95:                                        ; preds = %bb.s, %._crit_edge.split.us108, %.split.us107, %bb.p, %._crit_edge.split.us.us.us, %.split.us.us.us, %.lr.ph102.split.split.us
  %.us-phi = phi i1 [ false, %.lr.ph102.split.split.us ], [ false, %bb.p ], [ true, %.split.us.us.us ], [ false, %._crit_edge.split.us.us.us ], [ true, %.split.us107 ], [ false, %._crit_edge.split.us108 ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph102.split.split.split, %bb.t, %bb.q, %bb.n, %.thread95
  %.2 = phi i1 [ %.us-phi, %.thread95 ], [ %3, %bb.t ], [ %3, %bb.n ], [ %3, %bb.q ], [ false, %.lr.ph102.split.split.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @arraycontains(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.b) #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.e) #16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = tail call fastcc zeroext i1 @array_contain_compare(ptr noundef %i.f, ptr noundef %i.c, i32 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull %i.j)
  %i.l = load i32, ptr %i.c, align 4
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.c, %i.o
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pfree(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = load i32, ptr %i.f, align 4
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.d, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %.not16 = icmp eq ptr %i.f, %i.s
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef nonnull %i.f) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.t = zext i1 %i.k to i64
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 0, 2) i64 @arraycontained(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.b) #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.e) #16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = tail call fastcc zeroext i1 @array_contain_compare(ptr noundef %i.c, ptr noundef %i.f, i32 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull %i.j)
  %i.l = load i32, ptr %i.c, align 4
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.c, %i.o
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pfree(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = load i32, ptr %i.f, align 4
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.d, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %.not16 = icmp eq ptr %i.f, %i.s
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef nonnull %i.f) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.t = zext i1 %i.k to i64
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local ptr @array_create_iterator(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 88) #16 ; 18 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.34) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4618, ptr noundef nonnull @__func__.array_create_iterator) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr %0, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.c, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr %i.c, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = tail call i32 @ArrayGetNItems(i32 noundef %i.q, ptr noundef nonnull %i.r) #16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.s, ptr %i.t, align 8
  %.not52 = icmp eq ptr %2, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i16, ptr %i.v, align 4
  store i16 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.y = load i8, ptr %i.x, align 2, !range !8, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.ab, ptr %i.ac, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 23 ; 2 uses
  tail call void @get_typlenbyvalalign(i32 noundef %i.ae, ptr noundef nonnull %i.u, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #16
  %.pre = load i8, ptr %i.ag, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i8 [ %.pre, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %switch.tableidx = add i8 %i.ah, -99            ; 3 uses
  %i.ai = icmp ult i8 %switch.tableidx, 17
  br i1 %i.ai, label %switch.hole_check, label %bb.j

bb.j:                                             ; preds = %switch.hole_check, %bb.i
  %i.aj = sext i8 %i.ah to i32
  %i.ak = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.al = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.aj) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.j
end_hunk_5
begin_hunk_6_@array_iterate:bb.a
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #18
  %i.bj = getelementptr i8, ptr %i.u, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  br label %bb.t

bb.t:                                             ; preds = %VARSIZE_ANY.exit, %bb.s, %bb.l
  %i.bl = phi ptr [ %i.ar, %bb.l ], [ %i.bh, %VARSIZE_ANY.exit ], [ %i.bk, %bb.s ]
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = zext i8 %i.bo to i64                    ; 2 uses
  %i.bq = add i64 %i.bm, -1
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = sub nsw i64 0, %i.bp
  %i.bt = and i64 %i.br, %i.bs
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %i.t, align 8
  br label %bb.ao

bb.u:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %.07094 = phi ptr [ %i.ca, %.lr.ph ], [ %.1, %bb.an ] ; 13 uses
  %i.ci = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cj = load i32, ptr %i.a, align 8             ; 3 uses
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.a, align 8
  %i.cl = icmp eq ptr %i.ci, null
  br i1 %i.cl, label %array_get_isnull.exit82.thread, label %array_get_isnull.exit82

array_get_isnull.exit82:                          ; preds = %bb.v
  %i.cm = sdiv i32 %i.cj, 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = and i32 %i.cj, 7
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.cq
  %.not.i80 = icmp eq i32 %i.ct, 0
  br i1 %.not.i80, label %bb.w, label %array_get_isnull.exit82.thread

bb.w:                                             ; preds = %array_get_isnull.exit82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv
  store i8 1, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  store i64 0, ptr %i.cv, align 8
  br label %bb.an

array_get_isnull.exit82.thread:                   ; preds = %bb.v, %array_get_isnull.exit82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv
  store i8 0, ptr %i.cw, align 1
  %i.cx = load i8, ptr %i.cf, align 2, !range !8, !noundef !9
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = load i16, ptr %i.cg, align 4
  %i.da = sext i16 %i.cz to i32                   ; 3 uses
  br i1 %i.cy, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %array_get_isnull.exit82.thread
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.da)
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %.split.i84, label %bb.ac

.split.i84:                                       ; preds = %bb.x
  %i.dd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.da, i1 true)
  switch i32 %i.dd, label %bb.ac [
    i32 0, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
  ]

bb.y:                                             ; preds = %.split.i84
  %i.de = load i8, ptr %.07094, align 1
  %i.df = sext i8 %i.de to i64
  br label %fetch_att.exit85

bb.z:                                             ; preds = %.split.i84
  %i.dg = load i16, ptr %.07094, align 2
  %i.dh = sext i16 %i.dg to i64
  br label %fetch_att.exit85

bb.aa:                                            ; preds = %.split.i84
  %i.di = load i32, ptr %.07094, align 4
  %i.dj = sext i32 %i.di to i64
  br label %fetch_att.exit85

bb.ab:                                            ; preds = %.split.i84
  %i.dk = load i64, ptr %.07094, align 8
  br label %fetch_att.exit85

bb.ac:                                            ; preds = %.split.i84, %bb.x
  %i.dl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.dm = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.63, i32 noundef %i.da) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #16
  unreachable

bb.ad:                                            ; preds = %array_get_isnull.exit82.thread
  %i.dn = ptrtoint ptr %.07094 to i64
  br label %fetch_att.exit85

fetch_att.exit85:                                 ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad
  %.0.i83 = phi i64 [ %i.df, %bb.y ], [ %i.dh, %bb.z ], [ %i.dj, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dn, %bb.ad ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  store i64 %.0.i83, ptr %i.do, align 8
  %i.dp = load i16, ptr %i.cg, align 4            ; 3 uses
  %i.dq = icmp sgt i16 %i.dp, 0
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %fetch_att.exit85
  %i.dr = zext nneg i16 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.07094, i64 %i.dr
  br label %bb.am

bb.af:                                            ; preds = %fetch_att.exit85
  %i.dt = icmp eq i16 %i.dp, -1
  br i1 %i.dt, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.du = load i8, ptr %.07094, align 1           ; 2 uses
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = icmp eq i8 %i.du, 1
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr i8, ptr %.07094, i64 1
  %.val.i88 = load i8, ptr %i.dx, align 1         ; 2 uses
  %i.dy = add i8 %.val.i88, -1
  %or.cond.i.i.i89 = icmp ult i8 %i.dy, 3
  %i.dz = icmp eq i8 %.val.i88, 18
  %i.ea = select i1 %i.dz, i64 18, i64 2
  %i.eb = select i1 %or.cond.i.i.i89, i64 10, i64 %i.ea
  br label %VARSIZE_ANY.exit90

bb.ai:                                            ; preds = %bb.ag
  %i.ec = and i32 %i.dv, 1
  %.not.i86 = icmp eq i32 %i.ec, 0
  br i1 %.not.i86, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = lshr i32 %i.dv, 1
  %i.ee = zext nneg i32 %i.ed to i64
  br label %VARSIZE_ANY.exit90

bb.ak:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr %.07094, align 4
  %i.eg = lshr i32 %i.ef, 2
  %i.eh = zext nneg i32 %i.eg to i64
  br label %VARSIZE_ANY.exit90

VARSIZE_ANY.exit90:                               ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i87 = phi i64 [ %i.eb, %bb.ah ], [ %i.ee, %bb.aj ], [ %i.eh, %bb.ak ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.07094, i64 %.0.i87
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.ej = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.07094) #18
  %i.ek = getelementptr i8, ptr %.07094, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 1
  br label %bb.am

bb.am:                                            ; preds = %VARSIZE_ANY.exit90, %bb.al, %bb.ae
  %i.em = phi ptr [ %i.ds, %bb.ae ], [ %i.ei, %VARSIZE_ANY.exit90 ], [ %i.el, %bb.al ]
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = load i8, ptr %i.ch, align 8
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = add i64 %i.en, -1
  %i.er = add i64 %i.eq, %i.ep
  %i.es = sub nsw i64 0, %i.ep
  %i.et = and i64 %i.er, %i.es
  %i.eu = inttoptr i64 %i.et to ptr
  br label %bb.an

bb.an:                                            ; preds = %bb.w, %bb.am
  %.1 = phi ptr [ %.07094, %bb.w ], [ %i.eu, %bb.am ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ev = load i32, ptr %i.cb, align 8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %i.ex, label %bb.v, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %bb.an
  %.pre = load i32, ptr %i.e, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.u
  %i.ey = phi i32 [ %i.f, %bb.u ], [ %.pre, %._crit_edge.loopexit ]
  %.070.lcssa = phi ptr [ %i.ca, %bb.u ], [ %.1, %._crit_edge.loopexit ]
  store ptr %.070.lcssa, ptr %i.bz, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %0, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fh = load i16, ptr %i.fg, align 4
  %i.fi = sext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.fk = load i8, ptr %i.fj, align 2, !range !8, !noundef !9
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = tail call ptr @construct_md_array(ptr noundef %i.bw, ptr noundef %i.by, i32 noundef %i.ey, ptr noundef %i.fa, ptr noundef %i.fc, i32 noundef %i.ff, i32 noundef %i.fi, i1 noundef zeroext %i.fl, i8 noundef signext %i.fn)
  store i8 0, ptr %2, align 1
  %i.fp = ptrtoint ptr %i.fo to i64
  store i64 %i.fp, ptr %1, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.t, %bb.d, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define dso_local void @array_free_iterator(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @pfree(ptr noundef %i.e) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @pfree(ptr noundef %i.g) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @pfree(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @initArrayResult(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %initArrayResultWithSize.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @AllocSetContextCreateInternal(ptr noundef %1, ptr noundef nonnull @.str.35, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16
  br label %initArrayResultWithSize.exit

initArrayResultWithSize.exit:                     ; preds = %bb.a, %bb.b
  %i.b = phi i32 [ 8, %bb.a ], [ 64, %bb.b ]      ; 2 uses
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ]  ; 4 uses
  %i.c = zext i1 %2 to i8
  %i.d = tail call ptr @MemoryContextAlloc(ptr noundef %.0.i, i64 noundef 48) #16 ; 11 uses
  store ptr %.0.i, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i32 %i.b, ptr %i.f, align 8
  %i.g = shl nuw nsw i32 %i.b, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call ptr @MemoryContextAlloc(ptr noundef %.0.i, i64 noundef %i.h) #16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = load i32, ptr %i.f, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = tail call ptr @MemoryContextAlloc(ptr noundef %.0.i, i64 noundef %i.l) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  tail call void @get_typlenbyvalalign(i32 noundef %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @initArrayResultWithSize(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @AllocSetContextCreateInternal(ptr noundef %1, ptr noundef nonnull @.str.35, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %i.b = zext i1 %2 to i8
  %i.c = tail call ptr @MemoryContextAlloc(ptr noundef %.0, i64 noundef 48) #16 ; 11 uses
  store ptr %.0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %3, ptr %i.e, align 8
  %i.f = sext i32 %3 to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call ptr @MemoryContextAlloc(ptr noundef %.0, i64 noundef %i.g) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = tail call ptr @MemoryContextAlloc(ptr noundef %.0, i64 noundef %i.k) #16
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 39
  tail call void @get_typlenbyvalalign(i32 noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #16
  ret ptr %i.c
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @accumArrayResult(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @AllocSetContextCreateInternal(ptr noundef %4, ptr noundef nonnull @.str.35, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16 ; 4 uses
  %i.c = tail call ptr @MemoryContextAlloc(ptr noundef %i.b, i64 noundef 48) #16 ; 11 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 64, ptr %i.e, align 8
  %i.f = tail call ptr @MemoryContextAlloc(ptr noundef %i.b, i64 noundef 512) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = load i32, ptr %i.e, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @MemoryContextAlloc(ptr noundef %i.b, i64 noundef %i.i) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 39
  tail call void @get_typlenbyvalalign(i32 noundef %3, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 10 uses
  %i.q = load ptr, ptr %.0, align 8
  %i.r = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.q, ptr @CurrentMemoryContext, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 28 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not = icmp slt i32 %i.t, %i.v
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = shl i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.u, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3                      ; 2 uses
  %i.z = icmp ult i64 %i.y, 1073741824
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ab = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5393, ptr noundef nonnull @.str.35) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call ptr @repalloc(ptr noundef %i.ae, i64 noundef %i.y) #16
end_hunk_6
begin_hunk_7_@MemoryContextDelete

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @initArrayResultArr(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @get_element_type(i32 noundef %0) #16 ; 2 uses
  %.not19 = icmp eq i32 %i.a, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.c = tail call i32 @errcode(i32 noundef 67141764) #16 ; 0 uses
  %i.d = tail call ptr @format_type_be(i32 noundef %0) #16
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.36, ptr noundef %i.d) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5534, ptr noundef nonnull @__func__.initArrayResultArr) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.016 = phi i32 [ %1, %bb.a ], [ %i.a, %bb.b ]
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @AllocSetContextCreateInternal(ptr noundef %2, ptr noundef nonnull @.str.37, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 2 uses
  %i.g = zext i1 %3 to i8
  %i.h = tail call ptr @MemoryContextAllocZero(ptr noundef %.0, i64 noundef 104) #16 ; 5 uses
  store ptr %.0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  store i8 %i.g, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  store i32 %0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 %.016, ptr %i.k, align 8
  ret ptr %i.h
}

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #2

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @accumArrayResultArr(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.b = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5589, ptr noundef nonnull @.str.37) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #16 ; 7 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @initArrayResultArr(i32 noundef %3, i32 noundef 0, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0107 = phi ptr [ %i.g, %bb.d ], [ %0, %bb.c ] ; 21 uses
  %i.h = load ptr, ptr %.0107, align 8
  %i.i = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.h, ptr @CurrentMemoryContext, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.m = sext i32 %i.k to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 2                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.m, 3
  %i.t = add nsw i64 %i.s, 16
  %i.u = select i1 %.not, i64 %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = tail call i32 @ArrayGetNItems(i32 noundef %i.k, ptr noundef nonnull %i.l) #16 ; 4 uses
  %.val = load i32, ptr %i.e, align 4
  %i.x = lshr i32 %.val, 2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = load i32, ptr %i.p, align 4              ; 2 uses
  %.not121 = icmp eq i32 %i.z, 0
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %i.z to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.j, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.aa, %bb.f ], [ %i.ae, %bb.g ]
  %i.ag = sub nsw i64 %i.y, %i.af                 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0107, i64 36 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, %i.w                     ; 5 uses
  %i.al = icmp ugt i32 %i.ak, 134217727
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.an = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5615, ptr noundef nonnull @.str.37) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.0107, i64 40 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.as = icmp eq i32 %i.k, 0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.au = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.av = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5625, ptr noundef nonnull @.str.37) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aw = add i32 %i.k, 1                         ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 6
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.az = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, i32 noundef %i.aw, i32 noundef 6) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5630, ptr noundef nonnull @.str.37) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  store i32 %i.aw, ptr %i.ap, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0107, i64 44
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0107, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 4 %i.l, i64 %i.n, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0107, i64 68
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.0107, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 4 %i.o, i64 %i.n, i1 false)
  %i.bf = add i32 %i.ah, 1
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 1024) ; 3 uses
  %i.bh = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.bg)
  %i.bi = icmp samesign ult i32 %i.bh, 2
  %i.bj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bg, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = shl nuw i32 2, %i.bk
  %.0.i = select i1 %i.bi, i32 %i.bg, i32 %i.bl   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  store i32 %.0.i, ptr %i.bm, align 8
  %i.bn = sext i32 %.0.i to i64
  %i.bo = tail call ptr @palloc(i64 noundef %i.bn) #16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %i.bq = add i32 %i.k, 1
  %.not122 = icmp eq i32 %i.aq, %i.bq
  br i1 %.not122, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.0107, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %.0107, i64 68
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not276 = icmp slt i32 %i.k, 1
  br i1 %exitcond.not276, label %._crit_edge278, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bu = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.bv = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5652, ptr noundef nonnull @.str.37) #16
  unreachable

bb.r:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge278, label %.lr.ph, !llvm.loop !87

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %indvars.iv277 = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv277, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv277
  %i.bz = load i32, ptr %i.by, align 4
  %.not123 = icmp eq i32 %i.bx, %i.bz
  br i1 %.not123, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv277
  %i.cd = load i32, ptr %i.cc, align 4
  %.not124 = icmp eq i32 %i.cb, %i.cd
  br i1 %.not124, label %bb.r, label %bb.t, !llvm.loop !87

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %i.ce = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.cf = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5658, ptr noundef nonnull @.str.37) #16
  unreachable

._crit_edge278:                                   ; preds = %bb.r, %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %.0107, i64 28
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.ci, %i.ah                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0107, i64 24 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp sgt i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge278
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge278
  %i.cn = shl i32 %i.cl, 1
  %. = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cj) ; 2 uses
  store i32 %., ptr %i.ck, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0107, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = sext i32 %. to i64
  %i.cr = tail call ptr @repalloc(ptr noundef %i.cp, i64 noundef %i.cq) #16 ; 2 uses
  store ptr %i.cr, ptr %i.co, align 8
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u, %bb.o
  %i.cs = phi ptr [ %.pre, %._crit_edge ], [ %i.cr, %bb.u ], [ %i.bo, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0107, i64 28 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %sext = shl i64 %i.ag, 32
  %i.cx = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 1 %i.v, i64 %i.cx, i1 false)
  %i.cy = load i32, ptr %i.ct, align 4
  %i.cz = add i32 %i.cy, %i.ah
  store i32 %i.cz, ptr %i.ct, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.db, null
  br i1 %.not125, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dc = load i32, ptr %i.p, align 4
  %.not126 = icmp eq i32 %i.dc, 0
  br i1 %.not126, label %array_bitmap_copy.exit143, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 255)
  %i.de = add nuw nsw i32 %i.dd, 1                ; 3 uses
  %i.df = tail call range(i32 1, 29) i32 @llvm.ctpop.i32(i32 %i.de)
  %i.dg = icmp samesign ult i32 %i.df, 2
  %i.dh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.de, i1 true)
  %i.di = xor i32 %i.dh, 31
  %i.dj = shl nuw nsw i32 2, %i.di
  %.0.i130 = select i1 %i.dg, i32 %i.de, i32 %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  store i32 %.0.i130, ptr %i.dk, align 8
  %i.dl = add nuw nsw i32 %.0.i130, 7
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = tail call ptr @palloc(i64 noundef %i.dn) #16 ; 4 uses
  store ptr %i.do, ptr %i.da, align 8
  %i.dp = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.dq = icmp slt i32 %i.dp, 1
  br i1 %i.dq, label %array_bitmap_copy.exit, label %.lr.ph94.i.outer.preheader

.lr.ph94.i.outer.preheader:                       ; preds = %bb.x
  %.393.i.ph.in279 = load i8, ptr %i.do, align 1  ; 2 uses
  %.not284 = icmp eq i32 %i.dp, 1
  br i1 %.not284, label %._crit_edge95.thread.sink.split.i.split.loop.exit234, label %.lr.ph94.i.1

bb.y:                                             ; preds = %.lr.ph94.i.6
  %i.dr = add nsw i32 %.in99.i.ph280, -8          ; 3 uses
  store i8 -1, ptr %.25491.i.ph281, align 1
  %.not82.i = icmp eq i32 %i.dr, 0
  br i1 %.not82.i, label %array_bitmap_copy.exit, label %.thread144

.lr.ph94.i.1:                                     ; preds = %.lr.ph94.i.outer.preheader, %.thread144
  %.393.i.ph.in282 = phi i8 [ %.393.i.ph.in, %.thread144 ], [ %.393.i.ph.in279, %.lr.ph94.i.outer.preheader ] ; 6 uses
  %.25491.i.ph281 = phi ptr [ %i.dv, %.thread144 ], [ %i.do, %.lr.ph94.i.outer.preheader ] ; 8 uses
  %.in99.i.ph280 = phi i32 [ %i.dr, %.thread144 ], [ %i.dp, %.lr.ph94.i.outer.preheader ] ; 7 uses
  %i.ds = icmp sgt i32 %.in99.i.ph280, 2
  br i1 %i.ds, label %.lr.ph94.i.2, label %._crit_edge95.thread.sink.split.i.split.loop.exit231

.lr.ph94.i.2:                                     ; preds = %.lr.ph94.i.1
  %.not210 = icmp eq i32 %.in99.i.ph280, 3
  br i1 %.not210, label %._crit_edge95.thread.sink.split.i.split.loop.exit228, label %.lr.ph94.i.3

.lr.ph94.i.3:                                     ; preds = %.lr.ph94.i.2
  %i.dt = icmp samesign ugt i32 %.in99.i.ph280, 4
  br i1 %i.dt, label %.lr.ph94.i.4, label %._crit_edge95.thread.sink.split.i.split.loop.exit225

.lr.ph94.i.4:                                     ; preds = %.lr.ph94.i.3
  %.not211 = icmp eq i32 %.in99.i.ph280, 5
  br i1 %.not211, label %._crit_edge95.thread.sink.split.i.split.loop.exit222, label %.lr.ph94.i.5

.lr.ph94.i.5:                                     ; preds = %.lr.ph94.i.4
  %i.du = icmp samesign ugt i32 %.in99.i.ph280, 6
  br i1 %i.du, label %.lr.ph94.i.6, label %._crit_edge95.thread.sink.split.i.split.loop.exit219

.lr.ph94.i.6:                                     ; preds = %.lr.ph94.i.5
  %.not212 = icmp eq i32 %.in99.i.ph280, 7
  br i1 %.not212, label %._crit_edge95.thread.sink.split.i.split.loop.exit, label %bb.y

.thread144:                                       ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %.25491.i.ph281, i64 1 ; 3 uses
  %.393.i.ph.in = load i8, ptr %i.dv, align 1     ; 2 uses
  %.not285 = icmp eq i32 %i.dr, 1
  br i1 %.not285, label %._crit_edge95.thread.sink.split.i.split.loop.exit234, label %.lr.ph94.i.1, !llvm.loop !1

._crit_edge95.thread.sink.split.i.split.loop.exit: ; preds = %.lr.ph94.i.6
  %i.dw = or i8 %.393.i.ph.in282, 127
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit219: ; preds = %.lr.ph94.i.5
  %i.dx = or i8 %.393.i.ph.in282, 63
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit222: ; preds = %.lr.ph94.i.4
  %i.dy = or i8 %.393.i.ph.in282, 31
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit225: ; preds = %.lr.ph94.i.3
  %i.dz = or i8 %.393.i.ph.in282, 15
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit228: ; preds = %.lr.ph94.i.2
  %i.ea = or i8 %.393.i.ph.in282, 7
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit231: ; preds = %.lr.ph94.i.1
  %i.eb = or i8 %.393.i.ph.in282, 3
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i.split.loop.exit234: ; preds = %.thread144, %.lr.ph94.i.outer.preheader
  %.25491.i.ph.lcssa = phi ptr [ %i.do, %.lr.ph94.i.outer.preheader ], [ %i.dv, %.thread144 ]
  %.393.i.ph.in.lcssa = phi i8 [ %.393.i.ph.in279, %.lr.ph94.i.outer.preheader ], [ %.393.i.ph.in, %.thread144 ]
  %i.ec = or i8 %.393.i.ph.in.lcssa, 1
  br label %._crit_edge95.thread.sink.split.i

._crit_edge95.thread.sink.split.i:                ; preds = %._crit_edge95.thread.sink.split.i.split.loop.exit234, %._crit_edge95.thread.sink.split.i.split.loop.exit231, %._crit_edge95.thread.sink.split.i.split.loop.exit228, %._crit_edge95.thread.sink.split.i.split.loop.exit225, %._crit_edge95.thread.sink.split.i.split.loop.exit222, %._crit_edge95.thread.sink.split.i.split.loop.exit219, %._crit_edge95.thread.sink.split.i.split.loop.exit
  %.25491.i.ph275 = phi ptr [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit231 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit219 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit222 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit225 ], [ %.25491.i.ph281, %._crit_edge95.thread.sink.split.i.split.loop.exit228 ], [ %.25491.i.ph.lcssa, %._crit_edge95.thread.sink.split.i.split.loop.exit234 ]
  %.lcssa182.ph.in = phi i8 [ %i.eb, %._crit_edge95.thread.sink.split.i.split.loop.exit231 ], [ %i.dw, %._crit_edge95.thread.sink.split.i.split.loop.exit ], [ %i.dx, %._crit_edge95.thread.sink.split.i.split.loop.exit219 ], [ %i.dy, %._crit_edge95.thread.sink.split.i.split.loop.exit222 ], [ %i.dz, %._crit_edge95.thread.sink.split.i.split.loop.exit225 ], [ %i.ea, %._crit_edge95.thread.sink.split.i.split.loop.exit228 ], [ %i.ec, %._crit_edge95.thread.sink.split.i.split.loop.exit234 ]
  store i8 %.lcssa182.ph.in, ptr %.25491.i.ph275, align 1
  br label %array_bitmap_copy.exit

bb.z:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %.0107, i64 32 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8            ; 2 uses
  %i.ef = icmp sgt i32 %i.ak, %i.ee
  br i1 %i.ef, label %bb.aa, label %array_bitmap_copy.exit

bb.aa:                                            ; preds = %bb.z
  %i.eg = shl i32 %i.ee, 1
  %.129 = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 %i.ak) ; 2 uses
  store i32 %.129, ptr %i.ed, align 8
  %i.eh = add nuw i32 %.129, 7
  %i.ei = sdiv i32 %i.eh, 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = tail call ptr @repalloc(ptr noundef nonnull %i.db, i64 noundef %i.ej) #16
  store ptr %i.ek, ptr %i.da, align 8
  br label %array_bitmap_copy.exit

array_bitmap_copy.exit:                           ; preds = %bb.y, %._crit_edge95.thread.sink.split.i, %bb.x, %bb.z, %bb.aa
  %i.el = load ptr, ptr %i.da, align 8
  %i.em = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.en = load i32, ptr %i.p, align 4
  %.not127 = icmp eq i32 %i.en, 0
  br i1 %.not127, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %array_bitmap_copy.exit
  %i.eo = load i32, ptr %i.j, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eq
  br label %bb.ac

bb.ac:                                            ; preds = %array_bitmap_copy.exit, %bb.ab
  %i.es = phi ptr [ %i.er, %bb.ab ], [ null, %array_bitmap_copy.exit ] ; 3 uses
  %i.et = icmp slt i32 %i.w, 1
  br i1 %i.et, label %array_bitmap_copy.exit143, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = sdiv i32 %i.em, 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.el, i64 %i.ev ; 3 uses
  %i.ex = and i32 %i.em, 7
  %i.ey = shl nuw nsw i32 1, %i.ex                ; 2 uses
  %i.ez = load i8, ptr %i.ew, align 1
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %.not.i = icmp eq ptr %i.es, null
end_hunk_7
begin_hunk_8_@array_fill_internal:bb.a
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = add nsw i64 %i.df, 16
  %i.dh = select i1 %.not118, i64 %i.dg, i64 %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  br label %.loopexit151

.loopexit151:                                     ; preds = %.preheader.preheader, %bb.ab
  %.0104 = phi ptr [ %i.di, %bb.ab ], [ %i.a, %.preheader.preheader ] ; 3 uses
  %i.dj = tail call i32 @ArrayGetNItems(i32 noundef %i.bf, ptr noundef %i.at) #16 ; 4 uses
  call void @ArrayCheckBounds(i32 noundef %i.bf, ptr noundef %i.at, ptr noundef %.0104) #16
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit151
  %i.dl = call ptr @palloc0(i64 noundef 16) #16   ; 5 uses
  store i32 64, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 0, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %4, ptr %i.do, align 4
  br label %.loopexit

bb.ad:                                            ; preds = %.loopexit151
  %i.dp = load ptr, ptr %5, align 8               ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8            ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.thread183, label %bb.ae

.thread183:                                       ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call ptr @MemoryContextAlloc(ptr noundef %i.du, i64 noundef 72) #16
  %i.dw = load ptr, ptr %5, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dv, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %5, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  store i32 0, ptr %i.ea, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.pre169 = load i32, ptr %i.dr, align 8
  %i.eb = icmp eq i32 %.pre169, %4
  br i1 %i.eb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread183, %bb.ae
  %.0103186 = phi ptr [ %i.ea, %.thread183 ], [ %i.dr, %bb.ae ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0103186, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.0103186, i64 6
  %i.ee = getelementptr inbounds nuw i8, ptr %.0103186, i64 7
  call void @get_typlenbyvalalign(i32 noundef %4, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ee) #16
  store i32 %4, ptr %.0103186, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0103187 = phi ptr [ %.0103186, %bb.af ], [ %i.dr, %bb.ae ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0103187, i64 4
  %i.eg = load i16, ptr %i.ef, align 4            ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0103187, i64 6
  %i.ei = load i8, ptr %i.eh, align 2, !range !8, !noundef !9
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %.0103187, i64 7
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %switch.tableidx = add i8 %i.el, -99            ; 3 uses
  %i.em = icmp ult i8 %switch.tableidx, 17
  br i1 %i.em, label %switch.hole_check, label %bb.ah

bb.ah:                                            ; preds = %switch.hole_check, %bb.ag
  %i.en = sext i8 %i.el to i32
  %i.eo = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ep = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.en) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.ag
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ah

switch.lookup:                                    ; preds = %switch.hole_check
  %i.eq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.eq
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  br i1 %3, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %switch.lookup
  %i.er = sext i16 %i.eg to i32                   ; 2 uses
  %i.es = icmp eq i16 %i.eg, -1
  br i1 %i.es, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = icmp sgt i16 %i.eg, 0
  br i1 %i.et, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.eu = zext nneg i32 %i.er to i64
  br label %VARSIZE_ANY.exit

bb.al:                                            ; preds = %bb.ai
  %i.ev = inttoptr i64 %2 to ptr
  %i.ew = call ptr @pg_detoast_datum(ptr noundef %i.ev) #16 ; 4 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.ey = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = icmp eq i8 %i.ey, 1
  br i1 %i.fa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr i8, ptr %i.ew, i64 1
  %.val.i = load i8, ptr %i.fb, align 1           ; 2 uses
  %i.fc = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.fc, 3
  %i.fd = icmp eq i8 %.val.i, 18
  %i.fe = select i1 %i.fd, i64 18, i64 2
  %i.ff = select i1 %or.cond.i.i.i, i64 10, i64 %i.fe
  br label %VARSIZE_ANY.exit

bb.an:                                            ; preds = %bb.al
  %i.fg = and i32 %i.ez, 1
  %.not.i136 = icmp eq i32 %i.fg, 0
  br i1 %.not.i136, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = lshr i32 %i.ez, 1
  %i.fi = zext nneg i32 %i.fh to i64
  br label %VARSIZE_ANY.exit

bb.ap:                                            ; preds = %bb.an
  %i.fj = load i32, ptr %i.ew, align 4
  %i.fk = lshr i32 %i.fj, 2
  %i.fl = zext nneg i32 %i.fk to i64
  br label %VARSIZE_ANY.exit

bb.aq:                                            ; preds = %bb.aj
  %i.fm = inttoptr i64 %2 to ptr
  %i.fn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fm) #18
  %i.fo = add i64 %i.fn, 1
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.ap, %bb.ao, %bb.am, %bb.aq, %bb.ak
  %.099146 = phi i64 [ %2, %bb.ak ], [ %2, %bb.aq ], [ %i.ex, %bb.am ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ap ]
  %i.fp = phi i64 [ %i.eu, %bb.ak ], [ %i.fo, %bb.aq ], [ %i.ff, %bb.am ], [ %i.fi, %bb.ao ], [ %i.fl, %bb.ap ]
  %i.fq = zext nneg i8 %switch.load to i64        ; 2 uses
  %i.fr = add nuw nsw i64 %i.fq, 4294967295
  %i.fs = add i64 %i.fr, %i.fp
  %i.ft = sub nsw i64 0, %i.fq
  %i.fu = and i64 %i.fs, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  %mul = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.fv, i32 %i.dj) ; 2 uses
  %mul.val = extractvalue { i32, i1 } %mul, 0     ; 2 uses
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  %i.fw = icmp ugt i32 %mul.val, 1073741823
  %or.cond.not = or i1 %mul.ov, %i.fw
  br i1 %or.cond.not, label %bb.ar, label %.lr.ph.preheader

bb.ar:                                            ; preds = %VARSIZE_ANY.exit
  %i.fx = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fy = call i32 @errcode(i32 noundef 261) #16  ; 0 uses
  %i.fz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6241, ptr noundef nonnull @__func__.array_fill_internal) #16
  unreachable

.lr.ph.preheader:                                 ; preds = %VARSIZE_ANY.exit
  %i.ga = shl nuw nsw i32 %i.bf, 3                ; 2 uses
  %i.gb = add nuw nsw i32 %i.ga, 16
  %i.gc = add nuw nsw i32 %i.gb, %mul.val         ; 2 uses
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = call ptr @palloc0(i64 noundef %i.gd) #16 ; 7 uses
  %i.gf = shl i32 %i.gc, 2
  store i32 %i.gf, ptr %i.ge, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %i.bf, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 0, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 %4, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gk = shl nuw nsw i32 %i.bf, 2
  %i.gl = zext nneg i32 %i.gk to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr readonly align 4 %i.at, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull readonly align 4 %.0104, i64 %i.gl, i1 false)
  %i.gn = zext nneg i32 %i.ga to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0100161 = phi ptr [ %i.gs, %.lr.ph ], [ %i.gp, %.lr.ph.preheader ] ; 2 uses
  %.0101160 = phi i32 [ %i.gt, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.gq = call fastcc i32 @ArrayCastAndSet(i64 noundef %.099146, i32 noundef %i.er, i1 noundef zeroext %i.ej, i8 noundef zeroext %switch.load, ptr noundef %.0100161)
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %.0100161, i64 %i.gr
  %i.gt = add nuw nsw i32 %.0101160, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %i.dj
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !88

bb.as:                                            ; preds = %switch.lookup
  %i.gu = shl nuw nsw i32 %i.bf, 3
  %i.gv = add nuw i32 %i.dj, 7
  %i.gw = sdiv i32 %i.gv, 8
  %i.gx = add nuw nsw i32 %i.gu, 23
  %i.gy = add nsw i32 %i.gx, %i.gw
  %i.gz = and i32 %i.gy, -8                       ; 3 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = call ptr @palloc0(i64 noundef %i.ha) #16 ; 6 uses
  %i.hc = shl nsw i32 %i.gz, 2
  store i32 %i.hc, ptr %i.hb, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 %i.bf, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %i.gz, ptr %i.he, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 %4, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hh = shl nuw nsw i32 %i.bf, 2
  %i.hi = zext nneg i32 %i.hh to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr readonly align 4 %i.at, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hj, ptr nonnull readonly align 4 %.0104, i64 %i.hi, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.as, %bb.ac
  %.0 = phi ptr [ %i.dl, %bb.ac ], [ %i.hb, %bb.as ], [ %i.ge, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_fill(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6066, ptr noundef nonnull @__func__.array_fill) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @pg_detoast_datum(ptr noundef %i.j) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !8, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.011 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.p = load ptr, ptr %0, align 8
  %i.q = tail call i32 @get_fn_expr_argtype(ptr noundef %i.p, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.42) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6083, ptr noundef nonnull @__func__.array_fill) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc ptr @array_fill_internal(ptr noundef %i.k, ptr noundef null, i64 noundef %.011, i1 noundef zeroext %i.n, i32 noundef %i.q, ptr noundef nonnull %0)
  %i.u = ptrtoint ptr %i.t to i64
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_unnest(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.h = tail call ptr @init_MultiFuncCall(ptr noundef nonnull %0) #16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.j, ptr @CurrentMemoryContext, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call ptr @DatumGetAnyArrayP(i64 noundef %i.m) #16 ; 10 uses
  %i.o = tail call ptr @palloc(i64 noundef 56) #16 ; 4 uses
  %i.p = load i32, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %i.s = load i16, ptr %i.r, align 4              ; 2 uses
  store i16 %i.s, ptr %i.a, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 78
  %i.u = load i8, ptr %i.t, align 2, !range !8, !noundef !9 ; 2 uses
  store i8 %i.u, ptr %i.b, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 79
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  store i8 %i.w, ptr %i.c, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load i32, ptr %i.x, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre = load i16, ptr %i.a, align 2
  %.pre45 = load i8, ptr %i.b, align 1, !range !8
  %.pre46 = load i8, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i8 [ %.pre46, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = phi i8 [ %.pre45, %bb.d ], [ %i.u, %bb.c ]
  %i.ab = phi i16 [ %.pre, %bb.d ], [ %i.s, %bb.c ]
  %i.ac = sext i16 %i.ab to i32
  %i.ad = trunc nuw i8 %i.aa to i1
  call fastcc void @array_iter_setup(ptr noundef %i.o, ptr noundef nonnull %i.n, i32 noundef %i.ac, i1 noundef zeroext %i.ad, i8 noundef signext %i.z)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 0, ptr %i.ae, align 8
  %i.af = load i32, ptr %i.n, align 4
  %i.ag = icmp eq i32 %i.af, -1                   ; 2 uses
  %.in.v = select i1 %i.ag, i64 52, i64 4
  %.in = getelementptr inbounds nuw i8, ptr %i.n, i64 %.in.v
  %i.ah = load i32, ptr %.in, align 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.aj, %bb.f ], [ %i.ak, %bb.g ]
  %i.am = call i32 @ArrayGetNItems(i32 noundef %i.ah, ptr noundef %i.al) #16
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.o, ptr %i.ao, align 8
  store ptr %i.k, ptr @CurrentMemoryContext, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.ap = call ptr @per_MultiFuncCall(ptr noundef nonnull %0) #16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = add nsw i32 %i.at, 1
  store i32 %i.ax, ptr %i.as, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = call fastcc i64 @array_iter_next(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ay, i32 noundef %i.at)
  %i.ba = load i64, ptr %i.ap, align 8
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.ap, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 1, ptr %i.be, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.ap) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i32 2, ptr %i.bh, align 8
end_hunk_8
begin_hunk_9_@array_replace_internal:bb.a
  br label %bb.al

bb.ae:                                            ; preds = %fetch_att.exit
  %i.ct = inttoptr i64 %.0.i199 to ptr            ; 4 uses
  br i1 %i.am, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = icmp eq i8 %i.cu, 1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr i8, ptr %i.ct, i64 1
  %.val.i = load i8, ptr %i.cx, align 1           ; 2 uses
  %i.cy = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.cy, 3
  %i.cz = icmp eq i8 %.val.i, 18
  %i.da = select i1 %i.cz, i64 18, i64 2
  %i.db = select i1 %or.cond.i.i.i, i64 10, i64 %i.da
  br label %VARSIZE_ANY.exit

bb.ah:                                            ; preds = %bb.af
  %i.dc = and i32 %i.cv, 1
  %.not.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = lshr i32 %i.cv, 1
  %i.de = zext nneg i32 %i.dd to i64
  br label %VARSIZE_ANY.exit

bb.aj:                                            ; preds = %bb.ah
  %i.df = load i32, ptr %i.ct, align 4
  %i.dg = lshr i32 %i.df, 2
  %i.dh = zext nneg i32 %i.dg to i64
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i200 = phi i64 [ %i.db, %bb.ag ], [ %i.de, %bb.ai ], [ %i.dh, %bb.aj ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0172248, i64 %.0.i200
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.dj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #18
  %i.dk = getelementptr i8, ptr %.0172248, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  br label %bb.al

bb.al:                                            ; preds = %VARSIZE_ANY.exit, %bb.ak, %bb.ad
  %i.dm = phi ptr [ %i.cs, %bb.ad ], [ %i.di, %VARSIZE_ANY.exit ], [ %i.dl, %bb.ak ]
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.bw, %i.dn
  %i.dp = and i64 %i.do, %i.bx
  %i.dq = inttoptr i64 %i.dp to ptr               ; 5 uses
  br i1 %2, label %.thread217, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %.0.i199, ptr %i.by, align 8
  store i8 0, ptr %i.bz, align 8
  store i64 %.1185, ptr %i.ca, align 8
  store i8 0, ptr %i.cb, align 8
  store i8 0, ptr %i.aw, align 4
  %i.dr = load ptr, ptr %8, align 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i64 %i.ds(ptr noundef nonnull %8) #16
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = load i8, ptr %i.aw, align 4, !range !8, !noundef !9
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond3.not = select i1 %i.dw, i1 true, i1 %i.du
  br i1 %or.cond3.not, label %.thread217, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %5, label %bb.bb, label %bb.ao

.thread217:                                       ; preds = %bb.am, %bb.al, %bb.u
  %.0.i199.sink = phi i64 [ %.0186, %bb.u ], [ %.0.i199, %bb.al ], [ %.0.i199, %bb.am ]
  %.1173.ph.ph = phi ptr [ %.0172248, %bb.u ], [ %i.dq, %bb.al ], [ %i.dq, %bb.am ]
  %.1.ph.ph = phi i1 [ true, %bb.u ], [ %.0167251, %bb.al ], [ %.0167251, %bb.am ]
  %i.dx = sext i32 %.0181239 to i64               ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.dx
  store i64 %.0.i199.sink, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.bb, i64 %i.dx
  store i8 0, ptr %i.dz, align 1
  br label %bb.ap

.thread226:                                       ; preds = %bb.u, %bb.s
  %i.ea = sext i32 %.0181239 to i64
  %i.eb = getelementptr inbounds i8, ptr %i.bb, i64 %i.ea
  store i8 1, ptr %i.eb, align 1
  br label %bb.ba

bb.ao:                                            ; preds = %bb.an
  %i.ec = sext i32 %.0181239 to i64               ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ec
  store i64 %.0186, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.bb, i64 %i.ec
  store i8 %i.cc, ptr %i.ee, align 1
  br i1 %4, label %bb.ba, label %bb.ap

bb.ap:                                            ; preds = %.thread217, %bb.ao
  %i.ef = phi i64 [ %i.dx, %.thread217 ], [ %i.ec, %bb.ao ]
  %.1.ph223 = phi i1 [ %.1.ph.ph, %.thread217 ], [ true, %bb.ao ]
  %.1173.ph221 = phi ptr [ %.1173.ph.ph, %.thread217 ], [ %i.dq, %bb.ao ]
  br i1 %i.bu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eg = add i32 %.0177244, %i.ab
  %i.eh = zext i32 %i.eg to i64
  br label %bb.ay

bb.ar:                                            ; preds = %bb.ap
  %i.ei = zext i32 %.0177244 to i64               ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ef
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = inttoptr i64 %i.ek to ptr               ; 4 uses
  br i1 %i.am, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.em = load i8, ptr %i.el, align 1             ; 2 uses
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = icmp eq i8 %i.em, 1
  br i1 %i.eo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr i8, ptr %i.el, i64 1
  %.val.i203 = load i8, ptr %i.ep, align 1        ; 2 uses
  %i.eq = add i8 %.val.i203, -1
  %or.cond.i.i.i204 = icmp ult i8 %i.eq, 3
  %i.er = icmp eq i8 %.val.i203, 18
  %i.es = select i1 %i.er, i64 18, i64 2
  %i.et = select i1 %or.cond.i.i.i204, i64 10, i64 %i.es
  br label %VARSIZE_ANY.exit205

bb.au:                                            ; preds = %bb.as
  %i.eu = and i32 %i.en, 1
  %.not.i201 = icmp eq i32 %i.eu, 0
  br i1 %.not.i201, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = lshr i32 %i.en, 1
  %i.ew = zext nneg i32 %i.ev to i64
  br label %VARSIZE_ANY.exit205

bb.aw:                                            ; preds = %bb.au
  %i.ex = load i32, ptr %i.el, align 4
  %i.ey = lshr i32 %i.ex, 2
  %i.ez = zext nneg i32 %i.ey to i64
  br label %VARSIZE_ANY.exit205

VARSIZE_ANY.exit205:                              ; preds = %bb.at, %bb.av, %bb.aw
  %.0.i202 = phi i64 [ %i.et, %bb.at ], [ %i.ew, %bb.av ], [ %i.ez, %bb.aw ]
  %i.fa = add nuw nsw i64 %.0.i202, %i.ei
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ar
  %i.fb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.el) #18
  %i.fc = add nuw nsw i64 %i.ei, 1
  %i.fd = add i64 %i.fc, %i.fb
  br label %bb.ay

bb.ay:                                            ; preds = %VARSIZE_ANY.exit205, %bb.ax, %bb.aq
  %i.fe = phi i64 [ %i.eh, %bb.aq ], [ %i.fa, %VARSIZE_ANY.exit205 ], [ %i.fd, %bb.ax ]
  %i.ff = add i64 %i.cd, %i.fe
  %i.fg = and i64 %i.ff, %i.bx                    ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i64 %i.fg, 3221225472
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fl = call i32 @errcode(i32 noundef 261) #16  ; 0 uses
  %i.fm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 1073741823) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6587, ptr noundef nonnull @__func__.array_replace_internal) #16
  unreachable

bb.ba:                                            ; preds = %.thread226, %bb.ao, %bb.ay
  %.1.ph224 = phi i1 [ %.1.ph223, %bb.ay ], [ true, %bb.ao ], [ %.0167251, %.thread226 ]
  %.1173.ph222 = phi ptr [ %.1173.ph221, %bb.ay ], [ %i.dq, %bb.ao ], [ %.0172248, %.thread226 ]
  %.1178 = phi i32 [ %i.fh, %bb.ay ], [ %.0177244, %bb.ao ], [ %.0177244, %.thread226 ]
  %.1175 = phi i1 [ %.0174246, %bb.ay ], [ true, %bb.ao ], [ true, %.thread226 ]
  %i.fn = add i32 %.0181239, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.t, %bb.an, %bb.ba
  %.1214 = phi i1 [ %.1.ph224, %bb.ba ], [ true, %bb.an ], [ true, %bb.t ] ; 2 uses
  %.1173212 = phi ptr [ %.1173.ph222, %bb.ba ], [ %i.dq, %bb.an ], [ %.0172248, %bb.t ]
  %.1182 = phi i32 [ %i.fn, %bb.ba ], [ %.0181239, %bb.an ], [ %.0181239, %bb.t ] ; 5 uses
  %.2179 = phi i32 [ %.1178, %bb.ba ], [ %.0177244, %bb.an ], [ %.0177244, %bb.t ] ; 2 uses
  %.2 = phi i1 [ %.1175, %bb.ba ], [ %.0174246, %bb.an ], [ %.0174246, %bb.t ] ; 2 uses
  %i.fo = shl i32 %.0168250, 1                    ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 256                  ; 2 uses
  %spec.select.idx = zext i1 %i.fp to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.0170249, i64 %spec.select.idx
  %spec.select198 = select i1 %i.fp, i32 1, i32 %i.fo
  %.1171 = select i1 %.not197, ptr null, ptr %spec.select
  %.1169 = select i1 %.not197, i32 %.0168250, i32 %spec.select198
  %i.fq = add nuw nsw i32 %.0180243, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fq, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.bb
  br i1 %.1214, label %bb.bc, label %.critedge

.critedge:                                        ; preds = %._crit_edge
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  br label %bb.bk

bb.bc:                                            ; preds = %._crit_edge
  %i.fr = icmp eq i32 %.1182, 0
  br i1 %i.fr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  %i.fs = call ptr @palloc0(i64 noundef 16) #16   ; 5 uses
  store i32 64, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 0, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 %i.b, ptr %i.fv, align 4
  br label %bb.bk

bb.be:                                            ; preds = %bb.bc
  %i.fw = shl i32 %i.d, 3                         ; 2 uses
  br i1 %.2, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fx = add i32 %.1182, 7
  %i.fy = sdiv i32 %i.fx, 8
  %i.fz = add i32 %i.fw, 23
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = and i32 %i.ga, -8                       ; 2 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gc = add i32 %i.fw, 16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi i32 [ %i.gb, %bb.bf ], [ %i.gc, %bb.bg ]
  %.0176 = phi i32 [ %i.gb, %bb.bf ], [ 0, %bb.bg ]
  %.3 = add i32 %.pn, %.2179                      ; 2 uses
  %i.gd = sext i32 %.3 to i64
  %i.ge = call ptr @palloc0(i64 noundef %i.gd) #16 ; 7 uses
  %i.gf = shl i32 %.3, 2
  store i32 %i.gf, ptr %i.ge, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %i.d, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %.0176, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 %i.b, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gk = sext i32 %i.d to i64
  %i.gl = shl nsw i64 %i.gk, 2                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr nonnull align 4 %i.e, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gl
  %i.gn = load i32, ptr %i.c, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = shl nsw i64 %i.go, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull align 4 %i.gq, i64 %i.gl, i1 false)
  br i1 %5, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 %.1182, ptr %i.gj, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @CopyArrayEls(ptr noundef nonnull %i.ge, ptr noundef %i.ba, ptr noundef %i.bb, i32 noundef %.1182, i32 noundef %i.ab, i1 noundef zeroext %i.ae, i8 noundef signext %i.ag, i1 noundef zeroext false)
  call void @pfree(ptr noundef %i.ba) #16
  call void @pfree(ptr noundef %i.bb) #16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.a, %bb.bj, %bb.bd, %.critedge
  %.0183 = phi ptr [ %0, %.critedge ], [ %i.fs, %bb.bd ], [ %i.ge, %bb.bj ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret ptr %.0183
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @array_replace(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load i64, ptr %i.e, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @pg_detoast_datum(ptr noundef %i.q) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call fastcc ptr @array_replace_internal(ptr noundef %i.r, i64 noundef %i.o, i1 noundef zeroext %i.m, i64 noundef %i.j, i1 noundef zeroext %i.h, i1 noundef zeroext false, i32 noundef %i.t, ptr noundef nonnull %0)
  %i.v = ptrtoint ptr %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @width_bucket_array(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.8, align 8              ; 13 uses
  %2 = alloca %union.anon.7, align 8              ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call ptr @pg_detoast_datum(ptr noundef %i.e) #16 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 8 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6728, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %.loopexit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.t = tail call i32 @ArrayGetNItems(i32 noundef %i.l, ptr noundef nonnull %i.s) #16 ; 4 uses
  %i.u = load i32, ptr %i.q, align 4              ; 3 uses
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.k, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %i.y, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.aa = icmp sgt i32 %i.t, 7
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ab = add nsw i32 %i.t, -8
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 1
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g, %bb.f
  %.016.lcssa.i = phi i32 [ %i.t, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %.015.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %scevgep, %bb.g ]
  %i.af = icmp sgt i32 %.016.lcssa.i, 0
  br i1 %i.af, label %.lr.ph28.i, label %.loopexit

.lr.ph28.i:                                       ; preds = %.preheader.i
  %i.ag = load i8, ptr %.015.lcssa.i, align 1
  %i.ah = zext i8 %i.ag to i32
  br label %bb.h

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.01524.i = phi ptr [ %i.aj, %bb.g ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %.01623.i = phi i32 [ %i.ak, %bb.g ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %i.ai = load i8, ptr %.01524.i, align 1
  %.not19.i = icmp eq i8 %i.ai, -1
  br i1 %.not19.i, label %bb.g, label %array_contains_nulls.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01524.i, i64 1
  %i.ak = add nsw i32 %.01623.i, -8               ; 2 uses
  %i.al = icmp samesign ugt i32 %.01623.i, 15
  br i1 %i.al, label %.lr.ph.i, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %bb.i, %.lr.ph28.i
  %.027.i = phi i32 [ 1, %.lr.ph28.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.126.i = phi i32 [ %.016.lcssa.i, %.lr.ph28.i ], [ %i.ap, %bb.i ] ; 2 uses
  %i.am = and i32 %.027.i, %i.ah
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %array_contains_nulls.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = shl i32 %.027.i, 1
  %i.ap = add nsw i32 %.126.i, -1
  %i.aq = icmp sgt i32 %.126.i, 1
  br i1 %i.aq, label %bb.h, label %.loopexit, !llvm.loop !3

array_contains_nulls.exit:                        ; preds = %.lr.ph.i, %bb.h
  %i.ar = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.as = tail call i32 @errcode(i32 noundef 67108994) #16 ; 0 uses
  %i.at = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6733, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

.loopexit:                                        ; preds = %bb.i, %.preheader.i
  %i.au = icmp eq i32 %i.j, 701
  br i1 %i.au, label %bb.j, label %bb.n

.loopexit.thread:                                 ; preds = %bb.c
  %i.av = icmp eq i32 %i.j, 701
  br i1 %i.av, label %.thread, label %bb.n

.thread:                                          ; preds = %.loopexit.thread
  %i.aw = bitcast i64 %i.b to double
  br label %bb.l

bb.j:                                             ; preds = %.loopexit
  %i.ax = bitcast i64 %i.b to double              ; 2 uses
  %.not.i36 = icmp eq i32 %i.u, 0
  br i1 %.not.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sext i32 %i.u to i64
  %.pre.i = load i32, ptr %i.k, align 4
  br label %bb.m

bb.l:                                             ; preds = %.thread, %bb.j
  %i.az = phi double [ %i.aw, %.thread ], [ %i.ax, %bb.j ]
  %i.ba = load i32, ptr %i.k, align 4             ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = add nsw i64 %i.bc, 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = phi double [ %i.ax, %bb.k ], [ %i.az, %bb.l ] ; 2 uses
  %i.bf = phi i32 [ %.pre.i, %bb.k ], [ %i.ba, %bb.l ]
  %i.bg = phi i64 [ %i.ay, %bb.k ], [ %i.bd, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bj = tail call i32 @ArrayGetNItems(i32 noundef %i.bf, ptr noundef nonnull %i.bi) #16 ; 3 uses
  %i.bk = fcmp uno double %i.be, 0.000000e+00
  br i1 %i.bk, label %width_bucket_array_float8.exit, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.m
  %i.bl = icmp sgt i32 %i.bj, 0
  br i1 %i.bl, label %.lr.ph.i38, label %width_bucket_array_float8.exit

.lr.ph.i38:                                       ; preds = %.preheader.i37, %.lr.ph.i38
  %.026.i = phi i32 [ %.1.i, %.lr.ph.i38 ], [ %i.bj, %.preheader.i37 ] ; 2 uses
  %.02125.i = phi i32 [ %.122.i, %.lr.ph.i38 ], [ 0, %.preheader.i37 ] ; 2 uses
  %i.bm = add i32 %.02125.i, %.026.i
  %i.bn = sdiv i32 %i.bm, 2                       ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8         ; 2 uses
  %i.br = fcmp uno double %i.bq, 0.000000e+00
  %i.bs = fcmp ogt double %i.bq, %i.be
  %or.cond.i = or i1 %i.br, %i.bs                 ; 2 uses
  %i.bt = add nsw i32 %i.bn, 1
  %.122.i = select i1 %or.cond.i, i32 %.02125.i, i32 %i.bt ; 3 uses
  %.1.i = select i1 %or.cond.i, i32 %i.bn, i32 %.026.i ; 2 uses
  %i.bu = icmp slt i32 %.122.i, %.1.i
  br i1 %i.bu, label %.lr.ph.i38, label %width_bucket_array_float8.exit, !llvm.loop !90

bb.n:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load i32, ptr %i.bx, align 8
  %.not = icmp eq i32 %i.bz, %i.j
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = tail call ptr @lookup_type_cache(i32 noundef %i.j, i32 noundef 64) #16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cc = load i32, ptr %i.cb, align 8
  %.not34 = icmp eq i32 %i.cc, 0
  br i1 %.not34, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ce = tail call i32 @errcode(i32 noundef 52461700) #16 ; 0 uses
  %i.cf = tail call ptr @format_type_be(i32 noundef %i.j) #16
  %i.cg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45, ptr noundef %i.cf) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6753, ptr noundef nonnull @__func__.width_bucket_array) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ca, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0 = phi ptr [ %i.ca, %bb.r ], [ %i.bx, %bb.o ] ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp sgt i16 %i.ck, 0
  br i1 %i.cl, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.cm = zext nneg i16 %i.ck to i32              ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 10
  %i.co = load i8, ptr %i.cn, align 2, !range !8, !noundef !9
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = load i32, ptr %i.q, align 4             ; 2 uses
  %.not.i39 = icmp eq i32 %i.cq, 0
  br i1 %.not.i39, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = sext i32 %i.cq to i64
  %.pre.i41 = load i32, ptr %i.k, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cs = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = add nsw i64 %i.cu, 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = phi i32 [ %.pre.i41, %bb.u ], [ %i.cs, %bb.v ]
  %i.cx = phi i64 [ %i.cr, %bb.u ], [ %i.cv, %bb.v ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 128
  store ptr %i.cz, ptr %2, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i16 2, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.df = tail call i32 @ArrayGetNItems(i32 noundef %i.cw, ptr noundef nonnull %i.de) #16 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i42, label %width_bucket_array_fixed.exit

.lr.ph.i42:                                       ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.dj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cm, i1 true)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br i1 %i.cp, label %.lr.ph.split.us.i, label %fetch_att.exit.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i42
  %i.dm = tail call range(i32 1, 16) i32 @llvm.ctpop.i32(i32 %i.cm)
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %.split.i.us.us.i, label %.lr.ph.split.us.split.i

.split.i.us.us.i:                                 ; preds = %.lr.ph.split.us.i, %fetch_att.exit.us.us.i
  %.042.us.us.i = phi i32 [ %.1.us.us.i, %fetch_att.exit.us.us.i ], [ %i.df, %.lr.ph.split.us.i ] ; 2 uses
  %.03641.us.us.i = phi i32 [ %.137.us.us.i, %fetch_att.exit.us.us.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.do = add i32 %.03641.us.us.i, %.042.us.us.i
  %i.dp = sdiv i32 %i.do, 2                       ; 3 uses
  %i.dq = mul i32 %i.dp, %i.cm
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.cy, i64 %i.dr ; 4 uses
  store i64 %i.b, ptr %i.dh, align 8
  store i8 0, ptr %i.di, align 8
  switch i32 %i.dj, label %.split.us.i [
    i32 0, label %bb.aa
    i32 1, label %bb.z
    i32 2, label %bb.y
    i32 3, label %bb.x
  ]

bb.x:                                             ; preds = %.split.i.us.us.i
  %i.dt = load i64, ptr %i.ds, align 8
  br label %fetch_att.exit.us.us.i

bb.y:                                             ; preds = %.split.i.us.us.i
  %i.du = load i32, ptr %i.ds, align 4
  %i.dv = sext i32 %i.du to i64
  br label %fetch_att.exit.us.us.i

bb.z:                                             ; preds = %.split.i.us.us.i
  %i.dw = load i16, ptr %i.ds, align 2
  %i.dx = sext i16 %i.dw to i64
  br label %fetch_att.exit.us.us.i

bb.aa:                                            ; preds = %.split.i.us.us.i
  %i.dy = load i8, ptr %i.ds, align 1
  %i.dz = sext i8 %i.dy to i64
  br label %fetch_att.exit.us.us.i

fetch_att.exit.us.us.i:                           ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i.us.us.i = phi i64 [ %i.dz, %bb.aa ], [ %i.dx, %bb.z ], [ %i.dv, %bb.y ], [ %i.dt, %bb.x ]
  store i64 %.0.i.us.us.i, ptr %i.dk, align 8
  store i8 0, ptr %i.dl, align 8
  %i.ea = load ptr, ptr %2, align 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call i64 %i.eb(ptr noundef nonnull %2) #16, !inline_history !91
  %i.ed = and i64 %i.ec, 2147483648
  %.not39.us.us.i = icmp eq i64 %i.ed, 0          ; 2 uses
  %i.ee = add nsw i32 %i.dp, 1
  %.137.us.us.i = select i1 %.not39.us.us.i, i32 %i.ee, i32 %.03641.us.us.i ; 3 uses
  %.1.us.us.i = select i1 %.not39.us.us.i, i32 %.042.us.us.i, i32 %i.dp ; 2 uses
  %i.ef = icmp slt i32 %.137.us.us.i, %.1.us.us.i
  br i1 %i.ef, label %.split.i.us.us.i, label %width_bucket_array_fixed.exit, !llvm.loop !92

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  store i64 %i.b, ptr %i.dh, align 8
  store i8 0, ptr %i.di, align 8
  br label %.split.us.i

fetch_att.exit.i:                                 ; preds = %.lr.ph.i42, %fetch_att.exit.i
  %.042.i = phi i32 [ %.1.i43, %fetch_att.exit.i ], [ %i.df, %.lr.ph.i42 ] ; 2 uses
  %.03641.i = phi i32 [ %.137.i, %fetch_att.exit.i ], [ 0, %.lr.ph.i42 ] ; 2 uses
  %i.eg = add i32 %.03641.i, %.042.i
  %i.eh = sdiv i32 %i.eg, 2                       ; 3 uses
  %i.ei = mul i32 %i.eh, %i.cm
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.cy, i64 %i.ej
  store i64 %i.b, ptr %i.dh, align 8
  store i8 0, ptr %i.di, align 8
  %i.el = ptrtoint ptr %i.ek to i64
  store i64 %i.el, ptr %i.dk, align 8
  store i8 0, ptr %i.dl, align 8
  %i.em = load ptr, ptr %2, align 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call i64 %i.en(ptr noundef nonnull %2) #16, !inline_history !91
  %i.ep = and i64 %i.eo, 2147483648
  %.not39.i = icmp eq i64 %i.ep, 0                ; 2 uses
  %i.eq = add nsw i32 %i.eh, 1
  %.137.i = select i1 %.not39.i, i32 %i.eq, i32 %.03641.i ; 3 uses
  %.1.i43 = select i1 %.not39.i, i32 %.042.i, i32 %i.eh ; 2 uses
  %i.er = icmp slt i32 %.137.i, %.1.i43
  br i1 %i.er, label %fetch_att.exit.i, label %width_bucket_array_fixed.exit, !llvm.loop !92

.split.us.i:                                      ; preds = %.split.i.us.us.i, %.lr.ph.split.us.split.i
  %i.es = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.et = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.63, i32 noundef %i.cm) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #16
  unreachable

width_bucket_array_fixed.exit:                    ; preds = %fetch_att.exit.i, %fetch_att.exit.us.us.i, %bb.w
  %.036.lcssa.i = phi i32 [ 0, %bb.w ], [ %.137.us.us.i, %fetch_att.exit.us.us.i ], [ %.137.i, %fetch_att.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %width_bucket_array_float8.exit

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.eu = load i16, ptr %i.cj, align 8            ; 3 uses
  %i.ev = sext i16 %i.eu to i32                   ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0, i64 10
  %i.ex = load i8, ptr %i.ew, align 2, !range !8, !noundef !9
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %.0, i64 11
  %i.fa = load i8, ptr %i.ez, align 1             ; 2 uses
  %switch.tableidx = add i8 %i.fa, -99            ; 3 uses
  %i.fb = icmp ult i8 %switch.tableidx, 17
  br i1 %i.fb, label %switch.hole_check, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check, %bb.ab
  %i.fc = sext i8 %i.fa to i32
  %i.fd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fe = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.fc) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.ab
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ac

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ff = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.width_bucket_array, i64 %i.ff
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.fg = load i32, ptr %i.q, align 4             ; 2 uses
  %.not.i44 = icmp eq i32 %i.fg, 0
  br i1 %.not.i44, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %switch.lookup
  %i.fh = sext i32 %i.fg to i64
  %.pre.i46 = load i32, ptr %i.k, align 4
  br label %bb.af

bb.ae:                                            ; preds = %switch.lookup
  %i.fi = load i32, ptr %i.k, align 4             ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 3
  %i.fl = add nsw i64 %i.fk, 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fm = phi i32 [ %.pre.i46, %bb.ad ], [ %i.fi, %bb.ae ]
  %i.fn = phi i64 [ %i.fh, %bb.ad ], [ %i.fl, %bb.ae ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0, i64 128
  store ptr %i.fo, ptr %1, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 2, ptr %i.fs, align 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fu = tail call i32 @ArrayGetNItems(i32 noundef %i.fm, ptr noundef nonnull %i.ft) #16 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph95.i, label %width_bucket_array_variable.exit

.lr.ph95.i:                                       ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fn
  %i.fx = icmp sgt i16 %i.eu, 0                   ; 2 uses
  %i.fy = icmp eq i16 %i.eu, -1                   ; 2 uses
  %i.fz = zext nneg i32 %i.ev to i64              ; 10 uses
  %i.ga = add nsw i64 %switch.ext, -1             ; 12 uses
  %i.gb = sub nsw i64 0, %switch.ext              ; 12 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ge = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ev)
  %i.gf = icmp eq i32 %i.ge, 1
  %i.gg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ev, i1 true)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %invariant.op = add i64 %i.fz, %i.ga
  %invariant.op111 = add i64 %i.fz, %i.ga
  %invariant.op113 = add i64 %i.fz, %i.ga
  %invariant.op115 = add i64 %i.fz, %i.ga
  %invariant.op117 = add i64 %i.fz, %i.ga
  %invariant.op119 = add i64 %i.fz, %i.ga
  %invariant.op121 = add i64 %i.fz, %i.ga
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bc, %.lr.ph95.i
  %.06393.i = phi i32 [ %i.fu, %.lr.ph95.i ], [ %.1.i48, %bb.bc ] ; 2 uses
  %.06490.i = phi i32 [ 0, %.lr.ph95.i ], [ %.165.i, %bb.bc ] ; 9 uses
  %.06687.i = phi ptr [ %i.fw, %.lr.ph95.i ], [ %.167.i, %bb.bc ] ; 6 uses
  %i.gj = add i32 %.06490.i, %.06393.i
  %i.gk = sdiv i32 %i.gj, 2                       ; 8 uses
  %i.gl = icmp slt i32 %.06490.i, %i.gk
  br i1 %i.gl, label %.lr.ph.i49, label %._crit_edge.i

.lr.ph.i49:                                       ; preds = %bb.ag
  br i1 %i.fx, label %.lr.ph.split.us.i50.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i50.preheader:                    ; preds = %.lr.ph.i49
  %i.gm = sub i32 %i.gk, %.06490.i
  %xtraiter = and i32 %i.gm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i50.prol.loopexit, label %.lr.ph.split.us.i50.prol

.lr.ph.split.us.i50.prol:                         ; preds = %.lr.ph.split.us.i50.preheader, %.lr.ph.split.us.i50.prol
  %.082.us.i.prol = phi i32 [ %i.gs, %.lr.ph.split.us.i50.prol ], [ %.06490.i, %.lr.ph.split.us.i50.preheader ]
  %.06281.us.i.prol = phi ptr [ %i.gr, %.lr.ph.split.us.i50.prol ], [ %.06687.i, %.lr.ph.split.us.i50.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us.i50.prol ], [ 0, %.lr.ph.split.us.i50.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.06281.us.i.prol, i64 %i.fz
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = add i64 %i.ga, %i.go
  %i.gq = and i64 %i.gp, %i.gb
  %i.gr = inttoptr i64 %i.gq to ptr               ; 3 uses
  %i.gs = add nsw i32 %.082.us.i.prol, 1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i50.prol.loopexit, label %.lr.ph.split.us.i50.prol, !llvm.loop !93

.lr.ph.split.us.i50.prol.loopexit:                ; preds = %.lr.ph.split.us.i50.prol, %.lr.ph.split.us.i50.preheader
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.split.us.i50.preheader ], [ %i.gr, %.lr.ph.split.us.i50.prol ]
  %.082.us.i.unr = phi i32 [ %.06490.i, %.lr.ph.split.us.i50.preheader ], [ %i.gs, %.lr.ph.split.us.i50.prol ]
  %.06281.us.i.unr = phi ptr [ %.06687.i, %.lr.ph.split.us.i50.preheader ], [ %i.gr, %.lr.ph.split.us.i50.prol ]
  %i.gt = sub i32 %.06490.i, %i.gk
  %i.gu = icmp ugt i32 %i.gt, -8
  br i1 %i.gu, label %._crit_edge.i, label %.lr.ph.split.us.i50

.lr.ph.split.us.i50:                              ; preds = %.lr.ph.split.us.i50.prol.loopexit, %.lr.ph.split.us.i50
  %.082.us.i = phi i32 [ %i.hh, %.lr.ph.split.us.i50 ], [ %.082.us.i.unr, %.lr.ph.split.us.i50.prol.loopexit ]
  %.06281.us.i = phi ptr [ %i.hg, %.lr.ph.split.us.i50 ], [ %.06281.us.i.unr, %.lr.ph.split.us.i50.prol.loopexit ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.06281.us.i, i64 %i.fz
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = add i64 %i.ga, %i.gw
  %i.gy = and i64 %i.gx, %i.gb
  %.reass = add i64 %i.gy, %invariant.op
  %i.gz = and i64 %.reass, %i.gb
  %.reass112 = add i64 %i.gz, %invariant.op111
  %i.ha = and i64 %.reass112, %i.gb
  %.reass114 = add i64 %i.ha, %invariant.op113
  %i.hb = and i64 %.reass114, %i.gb
  %.reass116 = add i64 %i.hb, %invariant.op115
  %i.hc = and i64 %.reass116, %i.gb
  %.reass118 = add i64 %i.hc, %invariant.op117
  %i.hd = and i64 %.reass118, %i.gb
  %.reass120 = add i64 %i.hd, %invariant.op119
  %i.he = and i64 %.reass120, %i.gb
  %.reass122 = add i64 %i.he, %invariant.op121
  %i.hf = and i64 %.reass122, %i.gb
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = add nsw i32 %.082.us.i, 8               ; 2 uses
  %exitcond103.not.i.7 = icmp eq i32 %i.hh, %i.gk
  br i1 %exitcond103.not.i.7, label %._crit_edge.i, label %.lr.ph.split.us.i50, !llvm.loop !94

.lr.ph.split.i:                                   ; preds = %.lr.ph.i49
  br i1 %i.fy, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %VARSIZE_ANY.exit.us.i
  %.082.us83.i = phi i32 [ %i.ib, %VARSIZE_ANY.exit.us.i ], [ %.06490.i, %.lr.ph.split.i ]
  %.06281.us84.i = phi ptr [ %i.ia, %VARSIZE_ANY.exit.us.i ], [ %.06687.i, %.lr.ph.split.i ] ; 4 uses
  %i.hi = load i8, ptr %.06281.us84.i, align 1    ; 2 uses
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %i.hk = icmp eq i8 %i.hi, 1
  br i1 %i.hk, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.split.us.i
  %i.hl = and i32 %i.hj, 1
  %.not.i.us.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hm = lshr i32 %i.hj, 1
  %i.hn = zext nneg i32 %i.hm to i64
  br label %VARSIZE_ANY.exit.us.i

bb.aj:                                            ; preds = %bb.ah
  %i.ho = load i32, ptr %.06281.us84.i, align 4
  %i.hp = lshr i32 %i.ho, 2
  %i.hq = zext nneg i32 %i.hp to i64
  br label %VARSIZE_ANY.exit.us.i

bb.ak:                                            ; preds = %.lr.ph.split.split.us.i
  %i.hr = getelementptr i8, ptr %.06281.us84.i, i64 1
  %.val.i.us.i = load i8, ptr %i.hr, align 1      ; 2 uses
  %i.hs = add i8 %.val.i.us.i, -1
  %or.cond.i.i.i.us.i = icmp ult i8 %i.hs, 3
  %i.ht = icmp eq i8 %.val.i.us.i, 18
  %i.hu = select i1 %i.ht, i64 18, i64 2
  %i.hv = select i1 %or.cond.i.i.i.us.i, i64 10, i64 %i.hu
  br label %VARSIZE_ANY.exit.us.i

VARSIZE_ANY.exit.us.i:                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i72.us.i = phi i64 [ %i.hv, %bb.ak ], [ %i.hn, %bb.ai ], [ %i.hq, %bb.aj ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.06281.us84.i, i64 %.0.i72.us.i
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = add i64 %i.ga, %i.hx
  %i.hz = and i64 %i.hy, %i.gb
  %i.ia = inttoptr i64 %i.hz to ptr               ; 2 uses
  %i.ib = add nsw i32 %.082.us83.i, 1             ; 2 uses
  %exitcond102.not.i = icmp eq i32 %i.ib, %i.gk
  br i1 %exitcond102.not.i, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !94

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.082.i = phi i32 [ %i.ij, %.lr.ph.split.split.i ], [ %.06490.i, %.lr.ph.split.i ]
  %.06281.i = phi ptr [ %i.ii, %.lr.ph.split.split.i ], [ %.06687.i, %.lr.ph.split.i ] ; 2 uses
  %i.ic = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.06281.i) #18
  %i.id = getelementptr i8, ptr %.06281.i, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 1
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = add i64 %i.ga, %i.if
  %i.ih = and i64 %i.ig, %i.gb
  %i.ii = inttoptr i64 %i.ih to ptr               ; 2 uses
  %i.ij = add nsw i32 %.082.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ij, %i.gk
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !94

._crit_edge.i:                                    ; preds = %.lr.ph.split.split.i, %VARSIZE_ANY.exit.us.i, %.lr.ph.split.us.i50.prol.loopexit, %.lr.ph.split.us.i50, %bb.ag
  %.062.lcssa.i = phi ptr [ %.06687.i, %bb.ag ], [ %i.hg, %.lr.ph.split.us.i50 ], [ %i.ia, %VARSIZE_ANY.exit.us.i ], [ %.lcssa103.unr, %.lr.ph.split.us.i50.prol.loopexit ], [ %i.ii, %.lr.ph.split.split.i ] ; 12 uses
  store i64 %i.b, ptr %i.gc, align 8
  store i8 0, ptr %i.gd, align 8
  br i1 %i.ey, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %._crit_edge.i
  br i1 %i.gf, label %.split.i.i, label %bb.aq

.split.i.i:                                       ; preds = %bb.al
  switch i32 %i.gg, label %bb.aq [
    i32 0, label %bb.am
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
  ]

bb.am:                                            ; preds = %.split.i.i
  %i.ik = load i8, ptr %.062.lcssa.i, align 1
  %i.il = sext i8 %i.ik to i64
  br label %fetch_att.exit.i47

bb.an:                                            ; preds = %.split.i.i
  %i.im = load i16, ptr %.062.lcssa.i, align 2
  %i.in = sext i16 %i.im to i64
  br label %fetch_att.exit.i47

bb.ao:                                            ; preds = %.split.i.i
  %i.io = load i32, ptr %.062.lcssa.i, align 4
  %i.ip = sext i32 %i.io to i64
  br label %fetch_att.exit.i47

bb.ap:                                            ; preds = %.split.i.i
  %i.iq = load i64, ptr %.062.lcssa.i, align 8
  br label %fetch_att.exit.i47

bb.aq:                                            ; preds = %.split.i.i, %bb.al
  %i.ir = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.is = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.63, i32 noundef %i.ev) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #16
  unreachable

bb.ar:                                            ; preds = %._crit_edge.i
  %i.it = ptrtoint ptr %.062.lcssa.i to i64
  br label %fetch_att.exit.i47

fetch_att.exit.i47:                               ; preds = %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i73.i = phi i64 [ %i.il, %bb.am ], [ %i.in, %bb.an ], [ %i.ip, %bb.ao ], [ %i.iq, %bb.ap ], [ %i.it, %bb.ar ]
  store i64 %.0.i73.i, ptr %i.gh, align 8
  store i8 0, ptr %i.gi, align 8
  %i.iu = load ptr, ptr %1, align 8
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call i64 %i.iv(ptr noundef nonnull %1) #16, !inline_history !95
  %i.ix = and i64 %i.iw, 2147483648
  %.not79.i = icmp eq i64 %i.ix, 0
  br i1 %.not79.i, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %fetch_att.exit.i47
  %i.iy = add nsw i32 %i.gk, 1
  br i1 %i.fx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.iz = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 %i.fz
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  br i1 %i.fy, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ja = load i8, ptr %.062.lcssa.i, align 1     ; 2 uses
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = icmp eq i8 %i.ja, 1
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jd = getelementptr i8, ptr %.062.lcssa.i, i64 1
  %.val.i76.i = load i8, ptr %i.jd, align 1       ; 2 uses
  %i.je = add i8 %.val.i76.i, -1
  %or.cond.i.i.i77.i = icmp ult i8 %i.je, 3
  %i.jf = icmp eq i8 %.val.i76.i, 18
  %i.jg = select i1 %i.jf, i64 18, i64 2
  %i.jh = select i1 %or.cond.i.i.i77.i, i64 10, i64 %i.jg
  br label %VARSIZE_ANY.exit78.i

bb.ax:                                            ; preds = %bb.av
  %i.ji = and i32 %i.jb, 1
  %.not.i74.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i74.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jj = lshr i32 %i.jb, 1
  %i.jk = zext nneg i32 %i.jj to i64
  br label %VARSIZE_ANY.exit78.i

bb.az:                                            ; preds = %bb.ax
  %i.jl = load i32, ptr %.062.lcssa.i, align 4
  %i.jm = lshr i32 %i.jl, 2
  %i.jn = zext nneg i32 %i.jm to i64
  br label %VARSIZE_ANY.exit78.i

VARSIZE_ANY.exit78.i:                             ; preds = %bb.az, %bb.ay, %bb.aw
  %.0.i75.i = phi i64 [ %i.jh, %bb.aw ], [ %i.jk, %bb.ay ], [ %i.jn, %bb.az ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 %.0.i75.i
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.jp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.062.lcssa.i) #18
  %i.jq = getelementptr i8, ptr %.062.lcssa.i, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %VARSIZE_ANY.exit78.i, %bb.at
  %i.js = phi ptr [ %i.iz, %bb.at ], [ %i.jo, %VARSIZE_ANY.exit78.i ], [ %i.jr, %bb.ba ]
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = add i64 %i.ga, %i.jt
  %i.jv = and i64 %i.ju, %i.gb
  %i.jw = inttoptr i64 %i.jv to ptr
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %fetch_att.exit.i47
  %.167.i = phi ptr [ %i.jw, %bb.bb ], [ %.06687.i, %fetch_att.exit.i47 ]
  %.165.i = phi i32 [ %i.iy, %bb.bb ], [ %.06490.i, %fetch_att.exit.i47 ] ; 3 uses
  %.1.i48 = phi i32 [ %.06393.i, %bb.bb ], [ %i.gk, %fetch_att.exit.i47 ] ; 2 uses
  %i.jx = icmp slt i32 %.165.i, %.1.i48
  br i1 %i.jx, label %bb.ag, label %width_bucket_array_variable.exit, !llvm.loop !96

width_bucket_array_variable.exit:                 ; preds = %bb.bc, %bb.af
  %.064.lcssa.i = phi i32 [ 0, %bb.af ], [ %.165.i, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %width_bucket_array_float8.exit

width_bucket_array_float8.exit:                   ; preds = %.lr.ph.i38, %.preheader.i37, %bb.m, %width_bucket_array_fixed.exit, %width_bucket_array_variable.exit
  %.1 = phi i32 [ %.064.lcssa.i, %width_bucket_array_variable.exit ], [ %.036.lcssa.i, %width_bucket_array_fixed.exit ], [ %i.bj, %bb.m ], [ 0, %.preheader.i37 ], [ %.122.i, %.lr.ph.i38 ]
  %i.jy = load i64, ptr %i.c, align 8
  %i.jz = inttoptr i64 %i.jy to ptr
  %.not35 = icmp eq ptr %i.f, %i.jz
  br i1 %.not35, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %width_bucket_array_float8.exit
  call void @pfree(ptr noundef %i.f) #16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %width_bucket_array_float8.exit
  %i.ka = sext i32 %.1 to i64
  ret i64 %i.ka
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @trim_array(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [6 x i32], align 16               ; 3 uses
  %i.e = alloca [6 x i32], align 16               ; 4 uses
  %i.f = alloca [6 x i8], align 1                 ; 4 uses
  %i.g = alloca [6 x i8], align 1                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @pg_detoast_datum(ptr noundef %i.j) #16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0                     ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.u = icmp slt i32 %i.n, 0
  %i.v = icmp slt i32 %i.t, %i.n
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46, i32 noundef %i.t) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 6968, ptr noundef nonnull @__func__.trim_array) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = zext nneg i32 %i.p to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = xor i32 %i.n, -1
  %i.af = add i32 %i.t, %i.ae
  %i.ag = add i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.e, align 16
  store i8 1, ptr %i.g, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.aj = ptrtoint ptr %i.k to i64
  %i.ak = load i16, ptr %i.a, align 2
  %i.al = sext i16 %i.ak to i32
  %i.am = load i8, ptr %i.c, align 1
  %i.an = call i64 @array_get_slice(i64 noundef %i.aj, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef -1, i32 noundef %i.al, i1 zeroext poison, i8 noundef signext %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ReadDimensionInt(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = tail call ptr @__ctype_b_loc() #19
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i8, ptr %i.a, align 1               ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  %.fr1 = freeze i16 %i.g
  %i.h = and i16 %.fr1, 2048
  %.not.not = icmp eq i16 %i.h, 0
  br i1 %.not.not, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.a
  switch i8 %i.d, label %bb.b [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
  store i32 0, ptr %1, align 4
  br label %bb.g

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %bb.a
  %i.i = tail call ptr @__errno_location() #19    ; 2 uses
  store i32 0, ptr %i.i, align 4
  %i.j = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef 10) #16 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4
  %i.l = icmp eq i32 %i.k, 34
  %i.m = add i64 %i.j, -2147483648
  %i.n = icmp ult i64 %i.m, -4294967296
  %or.cond3 = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 @errsave_start(ptr noundef %2, ptr noundef null) #16
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.54) #16 ; 0 uses
  tail call void @errsave_finish(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 542, ptr noundef nonnull @__func__.ReadDimensionInt) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = trunc nsw i64 %i.j to i32
  store i32 %i.r, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare ptr @repalloc_mul(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @InputFunctionCallSafe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @resetStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i64 @ReceiveFunctionCall(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

declare void @deconstruct_expanded_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #11

declare ptr @DatumGetExpandedArray(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @mda_get_prod(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mda_get_offset_values(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mda_next_tuple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = distinct !{!3, !10}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, i1 true, !"pq_writeint32"}
!34 = distinct !{!34, !33, !"pq_writeint32: argument 0"}
!35 = distinct !{!35, i1 true, !"pq_writeint32"}
!36 = distinct !{!36, !35, !"pq_writeint32: argument 0"}
!37 = distinct !{!37, i1 true, !"pq_writeint32"}
!38 = distinct !{!38, !37, !"pq_writeint32: argument 0"}
!39 = distinct !{!39, i1 true, !"pq_writeint32"}
!40 = distinct !{!40, !39, !"pq_writeint32: argument 0"}
!41 = distinct !{!41, i1 true, !"pq_writeint32"}
!42 = distinct !{!42, !41, !"pq_writeint32: argument 0"}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, i1 true, !"pq_writeint32"}
!45 = distinct !{!45, !44, !"pq_writeint32: argument 0"}
!46 = distinct !{!46, i1 true, !"pq_writeint32"}
!47 = distinct !{!47, !46, !"pq_writeint32: argument 0"}
!48 = distinct !{!48, !10}
!49 = !{!34}
!50 = !{!36}
!51 = !{!38}
!52 = !{!40}
!53 = !{!42}
!54 = !{!45}
!55 = !{!47}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{null}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{null}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !10}
!95 = distinct !{null}
!96 = distinct !{!96, !10}
end_hunk_9
