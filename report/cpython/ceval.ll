inline.NumInlined: 2618
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEvalFramePushAndInit:bb.a
  br i1 %i.az, label %.preheader398.i, label %bb.f

.preheader398.i:                                  ; preds = %bb.e
  %i.ba = icmp sgt i64 %4, 0
  br i1 %i.ba, label %.lr.ph.i61, label %.loopexit397.i

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !214
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.x, i64 %i.au
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.ay, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !121
  %i.bj = and i16 %i.bi, 1
  %i.bk = ptrtoint ptr %i.ay to i64
  %i.bl = zext nneg i16 %i.bj to i64
  %i.bm = or i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !121
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !267
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_PyFrame_Initialize.exit
  %i.bn = phi i32 [ %.pre.i, %bb.f ], [ %i.aq, %_PyFrame_Initialize.exit ]
  %.0248.i = phi ptr [ %i.ay, %bb.f ], [ null, %_PyFrame_Initialize.exit ] ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %i.bp = icmp sgt i64 %4, %i.bo                  ; 2 uses
  %..i = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.bo) ; 12 uses
  %i.bq = icmp sgt i64 %..i, 0
  br i1 %i.bq, label %.lr.ph440.i.preheader, label %._crit_edge.i

.lr.ph440.i.preheader:                            ; preds = %bb.g
  %min.iters.check = icmp ult i64 %..i, 10
  br i1 %min.iters.check, label %.lr.ph440.i.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph440.i.preheader
  %i.br = sub i64 %i.k, %i.a
  %i.bs = add i64 %i.br, 79
  %diff.check = icmp ult i64 %i.bs, 31
  br i1 %diff.check, label %.lr.ph440.i.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %..i, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !121
  %wide.load255 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !121
  %i.bw = getelementptr i8, ptr %i.bt, i64 16
  store <2 x i64> %wide.load, ptr %i.bt, align 8, !tbaa !121
  store <2 x i64> %wide.load255, ptr %i.bw, align 8, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %..i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph440.i.preheader322

.lr.ph440.i.preheader322:                         ; preds = %vector.memcheck, %.lr.ph440.i.preheader, %middle.block
  %.0253439.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph440.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %..i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph440.i.prol.loopexit, label %.lr.ph440.i.prol

.lr.ph440.i.prol:                                 ; preds = %.lr.ph440.i.preheader322, %.lr.ph440.i.prol
  %.0253439.i.prol = phi i64 [ %i.cb, %.lr.ph440.i.prol ], [ %.0253439.i.ph, %.lr.ph440.i.preheader322 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph440.i.prol ], [ 0, %.lr.ph440.i.preheader322 ]
  %i.by = getelementptr [8 x i8], ptr %i.x, i64 %.0253439.i.prol
  %i.bz = getelementptr [8 x i8], ptr %3, i64 %.0253439.i.prol
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !121
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !121
  %i.cb = add nuw nsw i64 %.0253439.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph440.i.prol.loopexit, label %.lr.ph440.i.prol, !llvm.loop !359

.lr.ph440.i.prol.loopexit:                        ; preds = %.lr.ph440.i.prol, %.lr.ph440.i.preheader322
  %.0253439.i.unr = phi i64 [ %.0253439.i.ph, %.lr.ph440.i.preheader322 ], [ %i.cb, %.lr.ph440.i.prol ]
  %i.cc = sub nsw i64 %.0253439.i.ph, %..i
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %._crit_edge.i, label %.lr.ph440.i

.lr.ph440.i:                                      ; preds = %.lr.ph440.i.prol.loopexit, %.lr.ph440.i
  %.0253439.i = phi i64 [ %i.ct, %.lr.ph440.i ], [ %.0253439.i.unr, %.lr.ph440.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr [8 x i8], ptr %i.x, i64 %.0253439.i
  %i.cf = getelementptr [8 x i8], ptr %3, i64 %.0253439.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !121
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !121
  %i.ch = add nuw nsw i64 %.0253439.i, 1          ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.x, i64 %i.ch
  %i.cj = getelementptr [8 x i8], ptr %3, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !121
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !121
  %i.cl = add nuw nsw i64 %.0253439.i, 2          ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.x, i64 %i.cl
  %i.cn = getelementptr [8 x i8], ptr %3, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !121
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !121
  %i.cp = add nuw nsw i64 %.0253439.i, 3          ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.x, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %3, i64 %i.cp
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !121
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !121
  %i.ct = add nuw nsw i64 %.0253439.i, 4          ; 2 uses
  %exitcond506.not.i.3 = icmp eq i64 %i.ct, %..i
  br i1 %exitcond506.not.i.3, label %._crit_edge.i, label %.lr.ph440.i, !llvm.loop !360

._crit_edge.i:                                    ; preds = %.lr.ph440.i.prol.loopexit, %.lr.ph440.i, %middle.block, %bb.g
  %i.cu = load i32, ptr %i.av, align 8, !tbaa !214
  %i.cv = and i32 %i.cu, 4
  %.not300.i = icmp eq i32 %i.cv, 0
  br i1 %.not300.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %i.bp, label %bb.i, label %.thread352.i

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr [8 x i8], ptr %3, i64 %..i
  %i.cx = sub i64 %4, %..i
  %i.cy = tail call ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef %i.cw, i64 noundef %i.cx) #21 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.lr.ph442.i, label %.thread352.i

.lr.ph442.i:                                      ; preds = %bb.i, %PyStackRef_CLOSE.exit.i
  %.0261441.i = phi i64 [ %i.dh, %PyStackRef_CLOSE.exit.i ], [ %..i, %bb.i ] ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %3, i64 %.0261441.i
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = and i64 %i.db, 1
  %.not.not.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.not.i.i, label %bb.j, label %PyStackRef_CLOSE.exit.i

bb.j:                                             ; preds = %.lr.ph442.i
  %i.dd = inttoptr i64 %i.db to ptr               ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !121
  %i.df = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !121
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.k, label %PyStackRef_CLOSE.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dd) #21
  br label %PyStackRef_CLOSE.exit.i

PyStackRef_CLOSE.exit.i:                          ; preds = %bb.k, %bb.j, %.lr.ph442.i
  %i.dh = add i64 %.0261441.i, 1                  ; 2 uses
  %exitcond507.not.i = icmp eq i64 %i.dh, %4
  br i1 %exitcond507.not.i, label %.loopexit397.i, label %.lr.ph442.i, !llvm.loop !361

.thread352.i:                                     ; preds = %bb.i, %bb.h
  %.0258.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.h ], [ %i.cy, %bb.i ] ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.x, i64 %i.au
  %i.dj = getelementptr i8, ptr %.0258.ph.i, i64 6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !121
  %i.dl = and i16 %i.dk, 1
  %i.dm = ptrtoint ptr %.0258.ph.i to i64
  %i.dn = zext nneg i16 %i.dl to i64
  %i.do = or i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.di, align 8, !tbaa !121
  br label %.loopexit394.i

bb.l:                                             ; preds = %._crit_edge.i
  br i1 %i.bp, label %.preheader393.i, label %.loopexit394.i

.preheader393.i:                                  ; preds = %bb.l, %PyStackRef_CLOSE.exit337.i
  %.1254446.i = phi i64 [ %i.dw, %PyStackRef_CLOSE.exit337.i ], [ %i.bo, %bb.l ] ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %3, i64 %.1254446.i
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = and i64 %i.dq, 1
  %.not.not.i336.i = icmp eq i64 %i.dr, 0
  br i1 %.not.not.i336.i, label %bb.m, label %PyStackRef_CLOSE.exit337.i

bb.m:                                             ; preds = %.preheader393.i
  %i.ds = inttoptr i64 %i.dq to ptr               ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !121
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !121
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.n, label %PyStackRef_CLOSE.exit337.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ds) #21
  br label %PyStackRef_CLOSE.exit337.i

PyStackRef_CLOSE.exit337.i:                       ; preds = %bb.n, %bb.m, %.preheader393.i
  %i.dw = add i64 %.1254446.i, 1                  ; 2 uses
  %exitcond509.not.i = icmp eq i64 %i.dw, %4
  br i1 %exitcond509.not.i, label %.loopexit394.i, label %.preheader393.i, !llvm.loop !362

.loopexit394.i:                                   ; preds = %PyStackRef_CLOSE.exit337.i, %bb.l, %.thread352.i
  %.not301.i = icmp eq ptr %5, null
  br i1 %.not301.i, label %PyStackRef_CLOSE.exit339.thread367.i, label %bb.o

bb.o:                                             ; preds = %.loopexit394.i
  %i.dx = getelementptr i8, ptr %5, i64 16
  %.val331.i = load i64, ptr %i.dx, align 8, !tbaa !119 ; 4 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %3, i64 %4 ; 2 uses
  %i.dy = icmp sgt i64 %.val331.i, 0
  br i1 %i.dy, label %.lr.ph455.i, label %PyStackRef_CLOSE.exit339.thread367.i

.lr.ph455.i:                                      ; preds = %bb.o
  %i.dz = getelementptr i8, ptr %5, i64 32        ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ao, i64 96     ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ao, i64 56     ; 6 uses
  %i.ec = icmp eq ptr %.0248.i, null
  br label %bb.p

bb.p:                                             ; preds = %bb.bn, %.lr.ph455.i
  %.1453.i = phi i64 [ 0, %.lr.ph455.i ], [ %i.lq, %bb.bn ] ; 4 uses
  %i.ed = getelementptr [8 x i8], ptr %i.dz, i64 %.1453.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !117 ; 9 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.1453.i
  %.sroa.063.0.copyload.i = load i64, ptr %gep.i, align 8, !tbaa !121 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val333.i = load ptr, ptr %i.eg, align 8, !tbaa !122
  %i.eh = getelementptr i8, ptr %.val333.i, i64 168
  %.val334.i = load i64, ptr %i.eh, align 8, !tbaa !123
  %i.ei = and i64 %.val334.i, 268435456
  %.not302.i = icmp eq i64 %i.ei, 0
  br i1 %.not302.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ej = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ek = getelementptr i8, ptr %i.d, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !363
  %i.em = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.ej, ptr noundef nonnull @.str.92, ptr noundef %i.el) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !294 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 32     ; 8 uses
  %i.ep = load i32, ptr %i.eb, align 8, !tbaa !364 ; 2 uses
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.at
  br i1 %i.er, label %.lr.ph449.i, label %._crit_edge452.i

.lr.ph449.i:                                      ; preds = %bb.s, %bb.t
  %.0270447.i = phi i64 [ %i.ev, %bb.t ], [ %i.eq, %bb.s ] ; 3 uses
  %i.es = getelementptr [8 x i8], ptr %i.eo, i64 %.0270447.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !117
  %i.eu = icmp eq ptr %i.et, %i.ee
  br i1 %i.eu, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph449.i
  %i.ev = add nsw i64 %.0270447.i, 1              ; 2 uses
  %exitcond510.not.i = icmp eq i64 %i.ev, %i.au
  br i1 %exitcond510.not.i, label %.lr.ph451.i, label %.lr.ph449.i, !llvm.loop !365

.lr.ph451.i:                                      ; preds = %bb.t, %bb.u
  %.1271450.i = phi i64 [ %i.fb, %bb.u ], [ %i.eq, %bb.t ] ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.eo, i64 %.1271450.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !117
  %i.ey = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.ee, ptr noundef %i.ex, i32 noundef 2) #21 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  %i.fa = lshr i32 %i.ey, 27
  %.322.i = and i32 %i.fa, 16
  %.2264.i = select i1 %i.ez, i32 20, i32 %.322.i
  switch i32 %.2264.i, label %.unreachabledefault.i [
    i32 0, label %bb.u
    i32 16, label %positional_only_passed_as_keyword.exit.thread.i
    i32 20, label %.loopexit.i
  ]

bb.u:                                             ; preds = %.lr.ph451.i
  %i.fb = add nsw i64 %.1271450.i, 1              ; 2 uses
  %exitcond511.not.i = icmp eq i64 %i.fb, %i.au
  br i1 %exitcond511.not.i, label %._crit_edge452.i, label %.lr.ph451.i, !llvm.loop !366

._crit_edge452.i:                                 ; preds = %bb.u, %bb.s
  br i1 %i.ec, label %bb.v, label %bb.bf

bb.v:                                             ; preds = %._crit_edge452.i
  %i.fc = ptrtoaddr ptr %i.en to i64
  %i.fd = load i32, ptr %i.eb, align 8, !tbaa !364
  %.not303.i = icmp eq i32 %i.fd, 0
  br i1 %.not303.i, label %positional_only_passed_as_keyword.exit.thread357.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.d, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !363
  %i.fg = tail call ptr @PyList_New(i64 noundef 0) #21 ; 16 uses
  %cond.i.i = icmp eq ptr %i.fg, null
  br i1 %cond.i.i, label %positional_only_passed_as_keyword.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.fh = load i32, ptr %i.eb, align 8, !tbaa !364
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.us.i.i, label %._crit_edge155.thread.i.i

.lr.ph.us.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.084153.us.i.i = phi i32 [ %.4.us.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.i.i ]
  %i.fj = load ptr, ptr %i.ea, align 8, !tbaa !294
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %indvars.iv.i.i
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !117 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %select.unfold127.us.i.i, %.lr.ph.us.i.i
  %i.fn = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.fz, %select.unfold127.us.i.i ]
  %.1151.us.i.i = phi i32 [ %.084153.us.i.i, %.lr.ph.us.i.i ], [ %.4.us.i.i, %select.unfold127.us.i.i ] ; 3 uses
  %.092150.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %i.fy, %select.unfold127.us.i.i ]
  %i.fo = getelementptr [8 x i8], ptr %i.dz, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !117 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, %i.fm
  br i1 %i.fq, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.fm, ptr noundef %i.fp, i32 noundef 2) #21 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = icmp slt i32 %i.fr, 0
  br i1 %i.ft, label %.thread146.i.i, label %select.unfold127.us.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fu = tail call i32 @PyList_Append(ptr noundef nonnull %i.fg, ptr noundef %i.fp) #21
  %.not.us.i.i = icmp eq i32 %i.fu, 0
  %i.fv = add i32 %.1151.us.i.i, 1
  br i1 %.not.us.i.i, label %select.unfold127.us.i.i, label %.thread146.i.i

bb.ab:                                            ; preds = %bb.x
  %i.fw = tail call i32 @PyList_Append(ptr noundef nonnull %i.fg, ptr noundef %i.fp) #21
  %.not106.us.i.i = icmp eq i32 %i.fw, 0
  %i.fx = add i32 %.1151.us.i.i, 1
  br i1 %.not106.us.i.i, label %select.unfold127.us.i.i, label %.thread146.i.i

select.unfold127.us.i.i:                          ; preds = %bb.ab, %bb.aa, %bb.z
  %.4.us.i.i = phi i32 [ %.1151.us.i.i, %bb.z ], [ %i.fx, %bb.ab ], [ %i.fv, %bb.aa ] ; 3 uses
  %i.fy = add i32 %.092150.us.i.i, 1              ; 2 uses
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = icmp sgt i64 %.val331.i, %i.fz
  br i1 %i.ga, label %bb.x, label %._crit_edge.us.i.i, !llvm.loop !367

._crit_edge.us.i.i:                               ; preds = %select.unfold127.us.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gb = load i32, ptr %i.eb, align 8, !tbaa !364
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next.i.i, %i.gc
  br i1 %i.gd, label %.lr.ph.us.i.i, label %._crit_edge155.i.i, !llvm.loop !368

._crit_edge155.i.i:                               ; preds = %._crit_edge.us.i.i
  %i.ge = icmp eq i32 %.4.us.i.i, 0
  br i1 %i.ge, label %._crit_edge155.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge155.i.i
  %i.gf = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.96) #21 ; 7 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %.thread146.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = tail call ptr @PyUnicode_Join(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.fg) #21 ; 7 uses
  %i.gi = load i32, ptr %i.gf, align 8, !tbaa !121 ; 2 uses
  %.not110.i.i = icmp sgt i32 %i.gi, -1
  br i1 %.not110.i.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.gf, align 8, !tbaa !121
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not111.i.i = icmp eq ptr %i.gl, null
  br i1 %.not111.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.gn = tail call i32 %i.gl(ptr noundef nonnull %i.gf, i32 noundef 1, ptr noundef %i.gm) #21, !inline_history !369 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.go = getelementptr i8, ptr %i.gf, i64 8
  %.val126.i.i = load ptr, ptr %i.go, align 8, !tbaa !122
  %i.gp = getelementptr i8, ptr %.val126.i.i, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135
  tail call void %i.gq(ptr noundef nonnull %i.gf) #21, !inline_history !369
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.gr = icmp eq ptr %i.gh, null
  br i1 %i.gr, label %.thread146.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.gt = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.gs, ptr noundef nonnull @.str.97, ptr noundef %i.ff, ptr noundef nonnull %i.gh) #21 ; 0 uses
  %i.gu = load i32, ptr %i.gh, align 8, !tbaa !121 ; 2 uses
  %.not112.i.i = icmp sgt i32 %i.gu, -1
  br i1 %.not112.i.i, label %bb.ak, label %.thread146.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.gh, align 8, !tbaa !121
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.al, label %.thread146.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.gx, null
  br i1 %.not113.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
end_hunk_0
begin_hunk_1_@_PyEvalFramePushAndInit:bb.a
  %i.id = getelementptr i8, ptr %i.hz, i64 24
  %.val335.i = load ptr, ptr %i.id, align 8, !tbaa !252 ; 7 uses
  %i.ie = sub nsw i64 %i.au, %i.ib                ; 3 uses
  %min.iters.check260 = icmp ult i64 %i.ie, 12
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph458.i
  %.val335.i257 = ptrtoaddr ptr %.val335.i to i64
  %i.if = shl nsw i64 %i.ib, 3
  %i.ig = add i64 %i.if, %i.fc
  %i.ih = sub i64 %.val335.i257, %i.ig
  %i.ii = add i64 %i.ih, -33
  %diff.check258 = icmp ult i64 %i.ii, 31
  br i1 %diff.check258, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck256
  %n.vec263 = and i64 %i.ie, -4                   ; 3 uses
  %i.ij = add nsw i64 %n.vec263, %i.ib
  %invariant.gep362 = getelementptr [8 x i8], ptr %i.eo, i64 %i.ib
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next268, %vector.body264 ] ; 3 uses
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %index265 ; 2 uses
  %i.ik = getelementptr i8, ptr %gep363, i64 16
  %wide.load266 = load <2 x ptr>, ptr %gep363, align 8, !tbaa !117
  %wide.load267 = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !117
  %i.il = getelementptr [8 x i8], ptr %.val335.i, i64 %index265 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store <2 x ptr> %wide.load266, ptr %i.il, align 8, !tbaa !117
  store <2 x ptr> %wide.load267, ptr %i.im, align 8, !tbaa !117
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.in, label %middle.block269, label %vector.body264, !llvm.loop !371

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %i.ie, %n.vec263
  br i1 %cmp.n270, label %._crit_edge459.i, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %vector.memcheck256, %.lr.ph458.i, %middle.block269
  %.0275456.i.ph = phi i64 [ %i.ib, %vector.memcheck256 ], [ %i.ib, %.lr.ph458.i ], [ %i.ij, %middle.block269 ] ; 4 uses
  %i.io = sub nsw i64 %i.au, %.0275456.i.ph
  %xtraiter324 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol

scalar.ph259.prol:                                ; preds = %scalar.ph259.preheader, %scalar.ph259.prol
  %.0275456.i.prol = phi i64 [ %i.it, %scalar.ph259.prol ], [ %.0275456.i.ph, %scalar.ph259.preheader ] ; 3 uses
  %prol.iter326 = phi i64 [ %prol.iter326.next, %scalar.ph259.prol ], [ 0, %scalar.ph259.preheader ]
  %i.ip = sub nsw i64 %.0275456.i.prol, %i.ib
  %i.iq = getelementptr [8 x i8], ptr %i.eo, i64 %.0275456.i.prol
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !117
  %i.is = getelementptr [8 x i8], ptr %.val335.i, i64 %i.ip
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !117
  %i.it = add nsw i64 %.0275456.i.prol, 1         ; 2 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol, !llvm.loop !372

scalar.ph259.prol.loopexit:                       ; preds = %scalar.ph259.prol, %scalar.ph259.preheader
  %.0275456.i.unr = phi i64 [ %.0275456.i.ph, %scalar.ph259.preheader ], [ %i.it, %scalar.ph259.prol ]
  %i.iu = sub nsw i64 %.0275456.i.ph, %i.au
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %._crit_edge459.i, label %scalar.ph259

._crit_edge459.i:                                 ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259, %middle.block269, %bb.au
  %i.iw = tail call ptr @_Py_CalculateSuggestions(ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ee) #21 ; 7 uses
  %i.ix = load i32, ptr %i.hz, align 8, !tbaa !121 ; 2 uses
  %.not306.i = icmp sgt i32 %i.ix, -1
  br i1 %.not306.i, label %bb.av, label %bb.az

scalar.ph259:                                     ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259
  %.0275456.i = phi i64 [ %i.jr, %scalar.ph259 ], [ %.0275456.i.unr, %scalar.ph259.prol.loopexit ] ; 6 uses
  %i.iy = sub nsw i64 %.0275456.i, %i.ib
  %i.iz = getelementptr [8 x i8], ptr %i.eo, i64 %.0275456.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !117
  %i.jb = getelementptr [8 x i8], ptr %.val335.i, i64 %i.iy
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !117
  %i.jc = add nsw i64 %.0275456.i, 1              ; 2 uses
  %i.jd = sub nsw i64 %i.jc, %i.ib
  %i.je = getelementptr [8 x i8], ptr %i.eo, i64 %i.jc
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !117
  %i.jg = getelementptr [8 x i8], ptr %.val335.i, i64 %i.jd
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !117
  %i.jh = add nsw i64 %.0275456.i, 2              ; 2 uses
  %i.ji = sub nsw i64 %i.jh, %i.ib
  %i.jj = getelementptr [8 x i8], ptr %i.eo, i64 %i.jh
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !117
  %i.jl = getelementptr [8 x i8], ptr %.val335.i, i64 %i.ji
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !117
  %i.jm = add nsw i64 %.0275456.i, 3              ; 2 uses
  %i.jn = sub nsw i64 %i.jm, %i.ib
  %i.jo = getelementptr [8 x i8], ptr %i.eo, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !117
  %i.jq = getelementptr [8 x i8], ptr %.val335.i, i64 %i.jn
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !117
  %i.jr = add nsw i64 %.0275456.i, 4              ; 2 uses
  %exitcond518.not.i.3 = icmp eq i64 %i.jr, %i.au
  br i1 %exitcond518.not.i.3, label %._crit_edge459.i, label %scalar.ph259, !llvm.loop !373

bb.av:                                            ; preds = %._crit_edge459.i
  %i.js = add nsw i32 %i.ix, -1                   ; 2 uses
  store i32 %i.js, ptr %i.hz, align 8, !tbaa !121
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not307.i = icmp eq ptr %i.ju, null
  br i1 %.not307.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jw = tail call i32 %i.ju(ptr noundef nonnull %i.hz, i32 noundef 1, ptr noundef %i.jv) #21, !inline_history !370 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jx = getelementptr i8, ptr %i.hz, i64 8
  %.val332.i = load ptr, ptr %i.jx, align 8, !tbaa !122
  %i.jy = getelementptr i8, ptr %.val332.i, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !135
  tail call void %i.jz(ptr noundef nonnull %i.hz) #21, !inline_history !370
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %._crit_edge459.i
  %.not308.i = icmp eq ptr %i.iw, null
  br i1 %.not308.i, label %.thread361.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.kb = getelementptr i8, ptr %i.d, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !363
  %i.kd = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.ka, ptr noundef nonnull @.str.93, ptr noundef %i.kc, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.iw) #21 ; 0 uses
  %i.ke = load i32, ptr %i.iw, align 8, !tbaa !121 ; 2 uses
  %.not309.i = icmp sgt i32 %i.ke, -1
  br i1 %.not309.i, label %bb.bb, label %positional_only_passed_as_keyword.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %i.iw, align 8, !tbaa !121
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bc, label %positional_only_passed_as_keyword.exit.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not310.i = icmp eq ptr %i.kh, null
  br i1 %.not310.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.kj = tail call i32 %i.kh(ptr noundef nonnull %i.iw, i32 noundef 1, ptr noundef %i.ki) #21, !inline_history !370 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kk = getelementptr i8, ptr %i.iw, i64 8
  %.1274.val.i = load ptr, ptr %i.kk, align 8, !tbaa !122
  %i.kl = getelementptr i8, ptr %.1274.val.i, i64 48
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !135
  tail call void %i.km(ptr noundef nonnull %i.iw) #21, !inline_history !370
  br label %positional_only_passed_as_keyword.exit.thread.i

.thread361.i:                                     ; preds = %bb.az, %bb.at, %positional_only_passed_as_keyword.exit.thread357.i
  %i.kn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ko = getelementptr i8, ptr %i.d, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !363
  %i.kq = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.kn, ptr noundef nonnull @.str.94, ptr noundef %i.kp, ptr noundef nonnull %i.ee) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.bf:                                            ; preds = %._crit_edge452.i
  %i.kr = and i64 %.sroa.063.0.copyload.i, -2
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = tail call i32 @PyDict_SetItem(ptr noundef nonnull %.0248.i, ptr noundef nonnull %i.ee, ptr noundef %i.ks) #21
  %i.ku = icmp eq i32 %i.kt, -1
  br i1 %i.ku, label %positional_only_passed_as_keyword.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kv = and i64 %.sroa.063.0.copyload.i, 1
  %.not.not.i338.i = icmp eq i64 %i.kv, 0
  br i1 %.not.not.i338.i, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.kw = inttoptr i64 %.sroa.063.0.copyload.i to ptr ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !121
  %i.ky = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !121
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kw) #21
  br label %bb.bn

positional_only_passed_as_keyword.exit.thread.critedge.i: ; preds = %bb.ar
  %i.la = getelementptr i8, ptr %i.fg, i64 8
  %.val.i.c388.i = load ptr, ptr %i.la, align 8, !tbaa !122
  %i.lb = getelementptr i8, ptr %.val.i.c388.i, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !135
  tail call void %i.lc(ptr noundef nonnull %i.fg) #21, !inline_history !369
  br label %positional_only_passed_as_keyword.exit.thread.i

positional_only_passed_as_keyword.exit.thread.i:  ; preds = %bb.bf, %.lr.ph451.i, %bb.r, %bb.w, %.thread146.i.i, %bb.aq, %.sink.split.sink.split.i.i, %bb.ba, %bb.bb, %bb.be, %.thread361.i, %positional_only_passed_as_keyword.exit.thread.critedge.i, %bb.bl
  br label %.lr.ph463.i

.lr.ph463.i:                                      ; preds = %positional_only_passed_as_keyword.exit.thread.i, %PyStackRef_CLOSE.exit341.i
  %.2462.i = phi i64 [ %i.lj, %PyStackRef_CLOSE.exit341.i ], [ %.1453.i, %positional_only_passed_as_keyword.exit.thread.i ] ; 2 uses
  %gep461.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.2462.i
  %i.ld = load i64, ptr %gep461.i, align 8        ; 2 uses
  %i.le = and i64 %i.ld, 1
  %.not.not.i340.i = icmp eq i64 %i.le, 0
  br i1 %.not.not.i340.i, label %bb.bj, label %PyStackRef_CLOSE.exit341.i

bb.bj:                                            ; preds = %.lr.ph463.i
  %i.lf = inttoptr i64 %i.ld to ptr               ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !121
  %i.lh = add i32 %i.lg, -1                       ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !121
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bk, label %PyStackRef_CLOSE.exit341.i

bb.bk:                                            ; preds = %bb.bj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.lf) #21
  br label %PyStackRef_CLOSE.exit341.i

PyStackRef_CLOSE.exit341.i:                       ; preds = %bb.bk, %bb.bj, %.lr.ph463.i
  %i.lj = add i64 %.2462.i, 1                     ; 2 uses
  %exitcond519.not.i = icmp eq i64 %i.lj, %.val331.i
  br i1 %exitcond519.not.i, label %.loopexit69, label %.lr.ph463.i, !llvm.loop !374

.loopexit.i:                                      ; preds = %.lr.ph449.i, %.lr.ph451.i
  %.2272.i = phi i64 [ %.1271450.i, %.lr.ph451.i ], [ %.0270447.i, %.lr.ph449.i ]
  %i.lk = getelementptr [8 x i8], ptr %i.x, i64 %.2272.i ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8
  %.not311.i = icmp ult i64 %i.ll, 2
  br i1 %.not311.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i
  %i.lm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ln = getelementptr i8, ptr %i.d, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !363
  %i.lp = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.lm, ptr noundef nonnull @.str.95, ptr noundef %i.lo, ptr noundef nonnull %i.ee) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.bm:                                            ; preds = %.loopexit.i
  store i64 %.sroa.063.0.copyload.i, ptr %i.lk, align 8, !tbaa !121
  br label %bb.bn

.unreachabledefault.i:                            ; preds = %.lr.ph451.i
  unreachable

bb.bn:                                            ; preds = %bb.bm, %bb.bi, %bb.bh, %bb.bg
  %i.lq = add nuw nsw i64 %.1453.i, 1             ; 2 uses
  %exitcond512.not.i = icmp eq i64 %i.lq, %.val331.i
  br i1 %exitcond512.not.i, label %PyStackRef_CLOSE.exit339.thread367.i, label %bb.p, !llvm.loop !375

PyStackRef_CLOSE.exit339.thread367.i:             ; preds = %bb.bn, %bb.o, %.loopexit394.i
  %i.lr = load i32, ptr %i.ap, align 4, !tbaa !267 ; 2 uses
  %i.ls = sext i32 %i.lr to i64                   ; 9 uses
  %i.lt = icmp sgt i64 %4, %i.ls
  br i1 %i.lt, label %bb.bo, label %bb.ci

bb.bo:                                            ; preds = %PyStackRef_CLOSE.exit339.thread367.i
  %i.lu = load i32, ptr %i.av, align 8, !tbaa !214
  %i.lv = and i32 %i.lu, 4
  %.not312.i = icmp eq i32 %i.lv, 0
  br i1 %.not312.i, label %bb.bp, label %bb.ci

bb.bp:                                            ; preds = %bb.bo
  %i.lw = getelementptr i8, ptr %i.d, i64 56
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !376 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.d, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !363
  %i.ma = load i32, ptr %i.ar, align 4, !tbaa !333 ; 2 uses
  %i.mb = sext i32 %i.ma to i64
  %i.mc = add nsw i64 %i.mb, %i.ls
  %i.md = icmp sgt i32 %i.ma, 0
  br i1 %i.md, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bp, %.lr.ph.i.i
  %.06695.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.bp ]
  %.06794.i.i = phi i64 [ %i.mh, %.lr.ph.i.i ], [ %i.ls, %bb.bp ] ; 2 uses
  %i.me = getelementptr [8 x i8], ptr %i.x, i64 %.06794.i.i
  %i.mf = load i64, ptr %i.me, align 8
  %.not88.i.i = icmp ugt i64 %i.mf, 1
  %i.mg = zext i1 %.not88.i.i to i64
  %spec.select.i.i = add i64 %.06695.i.i, %i.mg   ; 2 uses
  %i.mh = add nsw i64 %.06794.i.i, 1              ; 2 uses
  %i.mi = icmp slt i64 %i.mh, %i.mc
  br i1 %i.mi, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !377

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.bp
  %.066.lcssa.i.i = phi i64 [ 0, %bb.bp ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.mj = icmp eq ptr %i.lx, null
  br i1 %i.mj, label %.thread.i.i, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i.i
  %i.mk = getelementptr i8, ptr %i.lx, i64 16
  %.val.i342.i = load i64, ptr %i.mk, align 8, !tbaa !119 ; 2 uses
  %.not.i.i60 = icmp eq i64 %.val.i342.i, 0
  br i1 %.not.i.i60, label %.thread.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ml = sub i64 %i.ls, %.val.i342.i
  %i.mm = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.98, i64 noundef %i.ml, i64 noundef %i.ls) #21
  br label %bb.bs

.thread.i.i:                                      ; preds = %bb.bq, %._crit_edge.i.i
  %.not83.i.i = icmp eq i32 %i.lr, 1
  %i.mn = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.99, i64 noundef %i.ls) #21
  %i.mo = select i1 %.not83.i.i, ptr @.str.15, ptr @.str.16
  br label %bb.bs

bb.bs:                                            ; preds = %.thread.i.i, %bb.br
  %.068.i.i = phi ptr [ %i.mm, %bb.br ], [ %i.mn, %.thread.i.i ] ; 12 uses
  %.0.i343.i = phi ptr [ @.str.16, %bb.br ], [ %i.mo, %.thread.i.i ]
  %i.mp = icmp eq ptr %.068.i.i, null
  br i1 %i.mp, label %.loopexit69, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not76.i.i = icmp eq i64 %.066.lcssa.i.i, 0
  br i1 %.not76.i.i, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not77.i.i = icmp eq i64 %4, 1
  %i.mq = select i1 %.not77.i.i, ptr @.str.15, ptr @.str.16
  %.not78.i.i = icmp eq i64 %.066.lcssa.i.i, 1
  %i.mr = select i1 %.not78.i.i, ptr @.str.15, ptr @.str.16
  %i.ms = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.100, ptr noundef nonnull %i.mq, i64 noundef %.066.lcssa.i.i, ptr noundef nonnull %i.mr) #21 ; 2 uses
  %.not81.i.i = icmp eq ptr %i.ms, null
  br i1 %.not81.i.i, label %bb.bv, label %.critedge.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.mt = load i32, ptr %.068.i.i, align 8, !tbaa !121 ; 2 uses
  %.not79.i.i = icmp sgt i32 %i.mt, -1
  br i1 %.not79.i.i, label %bb.bw, label %.loopexit69

bb.bw:                                            ; preds = %bb.bv
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %.068.i.i, align 8, !tbaa !121
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.bx, label %.loopexit69

bb.bx:                                            ; preds = %bb.bw
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.mw, null
  br i1 %.not80.i.i, label %.sink.split.i344.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.my = tail call i32 %i.mw(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.mx) #21, !inline_history !378 ; 0 uses
  br label %.sink.split.i344.i

bb.bz:                                            ; preds = %bb.bt
  %i.mz = tail call ptr @Py_GetConstant(i32 noundef 7) #21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bz, %bb.bu
  %i.na = phi ptr [ @.str.103, %bb.bu ], [ @.str.102, %bb.bz ]
  %.069.i.i = phi ptr [ %i.ms, %bb.bu ], [ %i.mz, %bb.bz ] ; 6 uses
  %i.nb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.nc = icmp eq i64 %4, 1
  %spec.select89.i.i = select i1 %i.nc, ptr %i.na, ptr @.str.103
  %i.nd = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.nb, ptr noundef nonnull @.str.101, ptr noundef %i.lz, ptr noundef nonnull %.068.i.i, ptr noundef nonnull %.0.i343.i, i64 noundef range(i64 -2147483647, -9223372036854775808) %4, ptr noundef %.069.i.i, ptr noundef nonnull %spec.select89.i.i) #21 ; 0 uses
  %i.ne = load i32, ptr %.068.i.i, align 8, !tbaa !121 ; 2 uses
  %.not84.i.i = icmp sgt i32 %i.ne, -1
  br i1 %.not84.i.i, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %.critedge.i.i
  %i.nf = add nsw i32 %i.ne, -1                   ; 2 uses
  store i32 %i.nf, ptr %.068.i.i, align 8, !tbaa !121
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not85.i.i = icmp eq ptr %i.nh, null
  br i1 %.not85.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.nj = tail call i32 %i.nh(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.ni) #21, !inline_history !378 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nk = getelementptr i8, ptr %.068.i.i, i64 8
  %.068.val.i.i = load ptr, ptr %i.nk, align 8, !tbaa !122
  %i.nl = getelementptr i8, ptr %.068.val.i.i, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !135
  tail call void %i.nm(ptr noundef nonnull %.068.i.i) #21, !inline_history !378
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %.critedge.i.i
  %i.nn = load i32, ptr %.069.i.i, align 8, !tbaa !121 ; 2 uses
  %.not86.i.i = icmp sgt i32 %i.nn, -1
  br i1 %.not86.i.i, label %bb.cf, label %.loopexit69

bb.cf:                                            ; preds = %bb.ce
  %i.no = add nsw i32 %i.nn, -1                   ; 2 uses
  store i32 %i.no, ptr %.069.i.i, align 8, !tbaa !121
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.cg, label %.loopexit69

bb.cg:                                            ; preds = %bb.cf
end_hunk_1
begin_hunk_2_@_PyEvalFramePushAndInit:bb.a
  %.not314.i = icmp eq i64 %i.ob, 0
  br i1 %.not314.i, label %.thread371.i, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge468.thread.i
  %i.oy = icmp sgt i64 %..i, %i.oc
  %i.oz = sub i64 %..i, %i.oc
  %.5.i = select i1 %i.oy, i64 %i.oz, i64 0       ; 2 uses
  %i.pa = getelementptr i8, ptr %i.ny, i64 32
  %i.pb = icmp slt i64 %.5.i, %i.ob
  br i1 %i.pb, label %.lr.ph471.i, label %.thread371.i

.lr.ph471.i:                                      ; preds = %bb.cm
  %i.pc = getelementptr [8 x i8], ptr %i.x, i64 %i.oc
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %.lr.ph471.i
  %.6469.i = phi i64 [ %.5.i, %.lr.ph471.i ], [ %i.pn, %bb.cr ] ; 3 uses
  %i.pd = getelementptr [8 x i8], ptr %i.pc, i64 %.6469.i ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8
  %i.pf = icmp ult i64 %i.pe, 2
  br i1 %i.pf, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.pg = getelementptr [8 x i8], ptr %i.pa, i64 %.6469.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !117 ; 4 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !121 ; 2 uses
  %.not.i345.i = icmp sgt i32 %i.pi, -1
  br i1 %.not.i345.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = or i64 %i.pj, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i58

bb.cq:                                            ; preds = %bb.co
  %i.pl = add nuw i32 %i.pi, 1
  store i32 %i.pl, ptr %i.ph, align 8, !tbaa !121
  %i.pm = ptrtoint ptr %i.ph to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i58

_PyStackRef_FromPyObjectNew.exit.i58:             ; preds = %bb.cq, %bb.cp
  %.sroa.0.0.i.i59 = phi i64 [ %i.pk, %bb.cp ], [ %i.pm, %bb.cq ]
  store i64 %.sroa.0.0.i.i59, ptr %i.pd, align 8, !tbaa !121
  br label %bb.cr

bb.cr:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit.i58, %bb.cn
  %i.pn = add nsw i64 %.6469.i, 1                 ; 2 uses
  %i.po = icmp slt i64 %i.pn, %i.ob
  br i1 %i.po, label %bb.cn, label %.thread371.i, !llvm.loop !381

bb.cs:                                            ; preds = %._crit_edge468.i
  %i.pp = getelementptr i8, ptr %i.d, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !363
  tail call fastcc void @missing_arguments(ptr noundef %0, ptr noundef nonnull %i.ao, i64 noundef %spec.select323.i.lcssa, i64 noundef %i.ob, ptr noundef nonnull %i.x, ptr noundef %i.pq)
  br label %.loopexit69

.thread371.i:                                     ; preds = %bb.cr, %bb.cm, %._crit_edge468.thread.i, %bb.ci
  %i.pr = load i32, ptr %i.ar, align 4, !tbaa !333
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %bb.ct, label %initialize_locals.exit

bb.ct:                                            ; preds = %.thread371.i
  %i.pt = load i32, ptr %i.ap, align 4, !tbaa !267 ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %i.at
  br i1 %i.pu, label %.lr.ph476.i, label %initialize_locals.exit

.lr.ph476.i:                                      ; preds = %bb.ct
  %i.pv = sext i32 %i.pt to i64
  %i.pw = getelementptr i8, ptr %i.d, i64 64
  %i.px = getelementptr i8, ptr %i.ao, i64 96
  br label %bb.cu

bb.cu:                                            ; preds = %bb.da, %.lr.ph476.i
  %.7473.i = phi i64 [ %i.pv, %.lr.ph476.i ], [ %i.qp, %bb.da ] ; 3 uses
  %.0250472.i = phi i64 [ 0, %.lr.ph476.i ], [ %.2252.i, %bb.da ] ; 3 uses
  %i.py = getelementptr [8 x i8], ptr %i.x, i64 %.7473.i ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8
  %.not316.i = icmp ult i64 %i.pz, 2
  br i1 %.not316.i, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.qa = load ptr, ptr %i.pw, align 8, !tbaa !382 ; 2 uses
  %.not317.i = icmp eq ptr %i.qa, null
  br i1 %.not317.i, label %.thread377.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qb = load ptr, ptr %i.px, align 8, !tbaa !294
  %i.qc = getelementptr i8, ptr %i.qb, i64 32
  %i.qd = getelementptr [8 x i8], ptr %i.qc, i64 %.7473.i
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.qf = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.qa, ptr noundef %i.qe, ptr noundef nonnull %i.b) #21
  %i.qg = icmp slt i32 %i.qf, 0
  br i1 %i.qg, label %.thread380.i, label %bb.cx

.thread380.i:                                     ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit69

bb.cx:                                            ; preds = %bb.cw
  %i.qh = load ptr, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  %.not318.i = icmp eq ptr %i.qh, null
  br i1 %.not318.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread377.i

.thread377.i:                                     ; preds = %bb.cy, %bb.cv
  %i.qi = add i64 %.0250472.i, 1
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.qj = getelementptr i8, ptr %i.qh, i64 6
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !121
  %i.ql = and i16 %i.qk, 1
  %i.qm = ptrtoint ptr %i.qh to i64
  %i.qn = zext nneg i16 %i.ql to i64
  %i.qo = or i64 %i.qn, %i.qm
  store i64 %i.qo, ptr %i.py, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread377.i, %bb.cu
  %.2252.i = phi i64 [ %.0250472.i, %bb.cu ], [ %i.qi, %.thread377.i ], [ %.0250472.i, %bb.cz ] ; 3 uses
  %i.qp = add nsw i64 %.7473.i, 1                 ; 2 uses
  %exitcond520.not.i = icmp eq i64 %i.qp, %i.au
  br i1 %exitcond520.not.i, label %._crit_edge477.i, label %bb.cu, !llvm.loop !383

._crit_edge477.i:                                 ; preds = %bb.da
  %.not315.i = icmp eq i64 %.2252.i, 0
  br i1 %.not315.i, label %initialize_locals.exit, label %bb.db

bb.db:                                            ; preds = %._crit_edge477.i
  %i.qq = getelementptr i8, ptr %i.d, i64 40
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !363
  call fastcc void @missing_arguments(ptr noundef %0, ptr noundef %i.ao, i64 noundef %.2252.i, i64 noundef -1, ptr noundef nonnull %i.x, ptr noundef %i.qr)
  br label %.loopexit69

.lr.ph.i61:                                       ; preds = %.preheader398.i, %PyStackRef_CLOSE.exit347.i
  %.2255438.i = phi i64 [ %i.qz, %PyStackRef_CLOSE.exit347.i ], [ 0, %.preheader398.i ] ; 2 uses
  %i.qs = getelementptr [8 x i8], ptr %3, i64 %.2255438.i
  %i.qt = load i64, ptr %i.qs, align 8            ; 2 uses
  %i.qu = and i64 %i.qt, 1
  %.not.not.i346.i = icmp eq i64 %i.qu, 0
  br i1 %.not.not.i346.i, label %bb.dc, label %PyStackRef_CLOSE.exit347.i

bb.dc:                                            ; preds = %.lr.ph.i61
  %i.qv = inttoptr i64 %i.qt to ptr               ; 3 uses
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !121
  %i.qx = add i32 %i.qw, -1                       ; 2 uses
  store i32 %i.qx, ptr %i.qv, align 8, !tbaa !121
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.dd, label %PyStackRef_CLOSE.exit347.i

bb.dd:                                            ; preds = %bb.dc
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.qv) #21
  br label %PyStackRef_CLOSE.exit347.i

PyStackRef_CLOSE.exit347.i:                       ; preds = %bb.dd, %bb.dc, %.lr.ph.i61
  %i.qz = add nuw nsw i64 %.2255438.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.qz, %4
  br i1 %exitcond.not.i, label %.loopexit397.i, label %.lr.ph.i61, !llvm.loop !384

.loopexit397.i:                                   ; preds = %PyStackRef_CLOSE.exit347.i, %PyStackRef_CLOSE.exit.i, %.preheader398.i
  %.not319.i = icmp eq ptr %5, null
  br i1 %.not319.i, label %.loopexit69, label %bb.de

bb.de:                                            ; preds = %.loopexit397.i
  %i.ra = getelementptr i8, ptr %5, i64 16
  %.val.i = load i64, ptr %i.ra, align 8, !tbaa !119
  %i.rb = add i64 %.val.i, %4                     ; 2 uses
  %i.rc = icmp slt i64 %4, %i.rb
  br i1 %i.rc, label %.lr.ph445.i, label %.loopexit69

.lr.ph445.i:                                      ; preds = %bb.de, %PyStackRef_CLOSE.exit349.i
  %.3256443.i = phi i64 [ %i.rk, %PyStackRef_CLOSE.exit349.i ], [ %4, %bb.de ] ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %3, i64 %.3256443.i
  %i.re = load i64, ptr %i.rd, align 8            ; 2 uses
  %i.rf = and i64 %i.re, 1
  %.not.not.i348.i = icmp eq i64 %i.rf, 0
  br i1 %.not.not.i348.i, label %bb.df, label %PyStackRef_CLOSE.exit349.i

bb.df:                                            ; preds = %.lr.ph445.i
  %i.rg = inttoptr i64 %i.re to ptr               ; 3 uses
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !121
  %i.ri = add i32 %i.rh, -1                       ; 2 uses
  store i32 %i.ri, ptr %i.rg, align 8, !tbaa !121
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.dg, label %PyStackRef_CLOSE.exit349.i

bb.dg:                                            ; preds = %bb.df
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.rg) #21
  br label %PyStackRef_CLOSE.exit349.i

PyStackRef_CLOSE.exit349.i:                       ; preds = %bb.dg, %bb.df, %.lr.ph445.i
  %i.rk = add i64 %.3256443.i, 1                  ; 2 uses
  %exitcond508.not.i = icmp eq i64 %i.rk, %i.rb
  br i1 %exitcond508.not.i, label %.loopexit69, label %.lr.ph445.i, !llvm.loop !385

.loopexit69:                                      ; preds = %PyStackRef_CLOSE.exit349.i, %PyStackRef_CLOSE.exit341.i, %.sink.split.i344.i, %bb.cs, %.loopexit397.i, %bb.bs, %bb.bv, %bb.bw, %bb.ce, %bb.cf, %bb.db, %.thread380.i, %bb.de
  call void @_PyFrame_ClearExceptCode(ptr noundef nonnull %i.j) #21
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.j, align 8, !tbaa !121
  %i.rl = and i64 %.sroa.0.0.copyload.i, 1
  %.not.not.i.i62 = icmp eq i64 %i.rl, 0
  br i1 %.not.not.i.i62, label %bb.dh, label %clear_thread_frame.exit

bb.dh:                                            ; preds = %.loopexit69
  %i.rm = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !121
  %i.ro = add i32 %i.rn, -1                       ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 8, !tbaa !121
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.di, label %clear_thread_frame.exit

bb.di:                                            ; preds = %bb.dh
  call void @_Py_Dealloc(ptr noundef nonnull %i.rm) #21
  br label %clear_thread_frame.exit

clear_thread_frame.exit:                          ; preds = %.loopexit69, %bb.dh, %bb.di
  call void @_PyThreadState_PopFrame(ptr noundef %0, ptr noundef nonnull %i.j) #21
  br label %initialize_locals.exit

bb.dj:                                            ; preds = %bb.a
  %i.rq = and i64 %1, 1
  %.not.not.i = icmp eq i64 %i.rq, 0
  br i1 %.not.not.i, label %bb.dk, label %PyStackRef_CLOSE.exit

bb.dk:                                            ; preds = %bb.dj
  %i.rr = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !121
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 8, !tbaa !121
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.dl, label %PyStackRef_CLOSE.exit

bb.dl:                                            ; preds = %bb.dk
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.rr) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %bb.dj, %bb.dk, %bb.dl
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %PyStackRef_CLOSE.exit
  %i.rv = load i32, ptr %2, align 8, !tbaa !121   ; 2 uses
  %.not54 = icmp sgt i32 %i.rv, -1
  br i1 %.not54, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %i.rw = add nsw i32 %i.rv, -1                   ; 2 uses
  store i32 %i.rw, ptr %2, align 8, !tbaa !121
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not55 = icmp eq ptr %i.ry, null
  br i1 %.not55, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.sa = tail call i32 %i.ry(ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.rz) #21 ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.sb = getelementptr i8, ptr %2, i64 8
  %.val57 = load ptr, ptr %i.sb, align 8, !tbaa !122
  %i.sc = getelementptr i8, ptr %.val57, i64 48
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !135
  tail call void %i.sd(ptr noundef nonnull %2) #21
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dm, %bb.dq, %bb.dn, %PyStackRef_CLOSE.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit64, %bb.dr
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %.loopexit, label %bb.du

.lr.ph:                                           ; preds = %bb.dr, %PyStackRef_CLOSE.exit64
  %.04797 = phi i64 [ %i.sl, %PyStackRef_CLOSE.exit64 ], [ 0, %bb.dr ] ; 2 uses
  %i.se = getelementptr [8 x i8], ptr %3, i64 %.04797
  %i.sf = load i64, ptr %i.se, align 8            ; 2 uses
  %i.sg = and i64 %i.sf, 1
  %.not.not.i63 = icmp eq i64 %i.sg, 0
  br i1 %.not.not.i63, label %bb.ds, label %PyStackRef_CLOSE.exit64

bb.ds:                                            ; preds = %.lr.ph
  %i.sh = inttoptr i64 %i.sf to ptr               ; 3 uses
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !121
  %i.sj = add i32 %i.si, -1                       ; 2 uses
  store i32 %i.sj, ptr %i.sh, align 8, !tbaa !121
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.dt, label %PyStackRef_CLOSE.exit64

bb.dt:                                            ; preds = %bb.ds
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sh) #21
  br label %PyStackRef_CLOSE.exit64

PyStackRef_CLOSE.exit64:                          ; preds = %.lr.ph, %bb.ds, %bb.dt
  %i.sl = add nuw i64 %.04797, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.sl, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !386

bb.du:                                            ; preds = %._crit_edge
  %i.sm = getelementptr i8, ptr %5, i64 16
  %.val = load i64, ptr %i.sm, align 8, !tbaa !119 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %4
  %i.sn = icmp sgt i64 %.val, 0
  br i1 %i.sn, label %.lr.ph100, label %.loopexit

.lr.ph100:                                        ; preds = %bb.du, %PyStackRef_CLOSE.exit66
  %.098 = phi i64 [ %i.su, %PyStackRef_CLOSE.exit66 ], [ 0, %bb.du ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.098
  %i.so = load i64, ptr %gep, align 8             ; 2 uses
  %i.sp = and i64 %i.so, 1
  %.not.not.i65 = icmp eq i64 %i.sp, 0
  br i1 %.not.not.i65, label %bb.dv, label %PyStackRef_CLOSE.exit66

bb.dv:                                            ; preds = %.lr.ph100
  %i.sq = inttoptr i64 %i.so to ptr               ; 3 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !121
  %i.ss = add i32 %i.sr, -1                       ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 8, !tbaa !121
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.dw, label %PyStackRef_CLOSE.exit66

bb.dw:                                            ; preds = %bb.dv
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sq) #21
  br label %PyStackRef_CLOSE.exit66

PyStackRef_CLOSE.exit66:                          ; preds = %.lr.ph100, %bb.dv, %bb.dw
  %i.su = add nuw nsw i64 %.098, 1                ; 2 uses
  %exitcond133.not = icmp eq i64 %i.su, %.val
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph100, !llvm.loop !387

.loopexit:                                        ; preds = %PyStackRef_CLOSE.exit66, %bb.du, %._crit_edge
  %i.sv = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %initialize_locals.exit

initialize_locals.exit:                           ; preds = %._crit_edge477.i, %bb.ct, %.thread371.i, %.loopexit, %clear_thread_frame.exit
  %.046 = phi ptr [ null, %.loopexit ], [ null, %clear_thread_frame.exit ], [ %i.j, %.thread371.i ], [ %i.j, %bb.ct ], [ %i.j, %._crit_edge477.i ]
  ret ptr %.046
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_Check_ArgsIterable(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = getelementptr i8, ptr %.val4, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @PySequence_Check(ptr noundef nonnull %2) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %.val = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.g = getelementptr i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.i = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull @.str.31, ptr noundef %i.h) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @PySequence_Tuple(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEvalFramePushAndInit_Ex(ptr noundef %0, i64 %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %7 = alloca [8 x %union._PyStackRef], align 16  ; 7 uses
  %.not = icmp eq ptr %5, null                    ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %5, i64 16         ; 2 uses
  %.val129 = load i64, ptr %i.b, align 8, !tbaa !388
  %i.c = icmp sgt i64 %.val129, 0
end_hunk_2
