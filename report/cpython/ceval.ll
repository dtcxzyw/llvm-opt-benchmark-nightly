inline.NumInlined: 2623
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
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
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !270
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
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !361

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
  br i1 %prol.iter.cmp.not, label %.lr.ph440.i.prol.loopexit, label %.lr.ph440.i.prol, !llvm.loop !362

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
  br i1 %exitcond506.not.i.3, label %._crit_edge.i, label %.lr.ph440.i, !llvm.loop !363

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
  br i1 %exitcond507.not.i, label %.loopexit397.i, label %.lr.ph442.i, !llvm.loop !364

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
  br i1 %exitcond509.not.i, label %.loopexit394.i, label %.preheader393.i, !llvm.loop !365

.loopexit394.i:                                   ; preds = %PyStackRef_CLOSE.exit337.i, %bb.l, %.thread352.i
  %.not301.i = icmp eq ptr %5, null
  br i1 %.not301.i, label %PyStackRef_CLOSE.exit339.thread367.i, label %bb.o

bb.o:                                             ; preds = %.loopexit394.i
  %i.dx = getelementptr i8, ptr %5, i64 16
  %.val331.i = load i64, ptr %i.dx, align 8, !tbaa !119 ; 5 uses
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
  %.1453.i = phi i64 [ 0, %.lr.ph455.i ], [ %i.lq, %bb.bn ] ; 5 uses
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
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !366
  %i.em = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.ej, ptr noundef nonnull @.str.92, ptr noundef %i.el) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !297 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 32     ; 8 uses
  %i.ep = load i32, ptr %i.eb, align 8, !tbaa !367 ; 2 uses
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
  br i1 %exitcond510.not.i, label %.lr.ph451.i, label %.lr.ph449.i, !llvm.loop !368

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
  br i1 %exitcond511.not.i, label %._crit_edge452.i, label %.lr.ph451.i, !llvm.loop !369

._crit_edge452.i:                                 ; preds = %bb.u, %bb.s
  br i1 %i.ec, label %bb.v, label %bb.bf

bb.v:                                             ; preds = %._crit_edge452.i
  %i.fc = ptrtoaddr ptr %i.en to i64
  %i.fd = load i32, ptr %i.eb, align 8, !tbaa !367
  %.not303.i = icmp eq i32 %i.fd, 0
  br i1 %.not303.i, label %positional_only_passed_as_keyword.exit.thread357.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.d, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !366
  %i.fg = tail call ptr @PyList_New(i64 noundef 0) #21 ; 16 uses
  %cond.i.i = icmp eq ptr %i.fg, null
  br i1 %cond.i.i, label %positional_only_passed_as_keyword.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.fh = load i32, ptr %i.eb, align 8, !tbaa !367
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.us.i.i, label %._crit_edge155.thread.i.i

.lr.ph.us.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.084153.us.i.i = phi i32 [ %.4.us.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.i.i ]
  %i.fj = load ptr, ptr %i.ea, align 8, !tbaa !297
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
  br i1 %i.ga, label %bb.x, label %._crit_edge.us.i.i, !llvm.loop !370

._crit_edge.us.i.i:                               ; preds = %select.unfold127.us.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gb = load i32, ptr %i.eb, align 8, !tbaa !367
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next.i.i, %i.gc
  br i1 %i.gd, label %.lr.ph.us.i.i, label %._crit_edge155.i.i, !llvm.loop !371

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
  %i.gn = tail call i32 %i.gl(ptr noundef nonnull %i.gf, i32 noundef 1, ptr noundef %i.gm) #21, !inline_history !372 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.go = getelementptr i8, ptr %i.gf, i64 8
  %.val126.i.i = load ptr, ptr %i.go, align 8, !tbaa !122
  %i.gp = getelementptr i8, ptr %.val126.i.i, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135
  tail call void %i.gq(ptr noundef nonnull %i.gf) #21, !inline_history !372
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
  br i1 %i.in, label %middle.block269, label %vector.body264, !llvm.loop !374

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
  br i1 %prol.iter326.cmp.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol, !llvm.loop !375

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
  br i1 %exitcond518.not.i.3, label %._crit_edge459.i, label %scalar.ph259, !llvm.loop !376

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
  %i.jw = tail call i32 %i.ju(ptr noundef nonnull %i.hz, i32 noundef 1, ptr noundef %i.jv) #21, !inline_history !373 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jx = getelementptr i8, ptr %i.hz, i64 8
  %.val332.i = load ptr, ptr %i.jx, align 8, !tbaa !122
  %i.jy = getelementptr i8, ptr %.val332.i, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !135
  tail call void %i.jz(ptr noundef nonnull %i.hz) #21, !inline_history !373
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %._crit_edge459.i
  %.not308.i = icmp eq ptr %i.iw, null
  br i1 %.not308.i, label %.thread361.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.kb = getelementptr i8, ptr %i.d, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !366
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
  %i.kj = tail call i32 %i.kh(ptr noundef nonnull %i.iw, i32 noundef 1, ptr noundef %i.ki) #21, !inline_history !373 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kk = getelementptr i8, ptr %i.iw, i64 8
  %.1274.val.i = load ptr, ptr %i.kk, align 8, !tbaa !122
  %i.kl = getelementptr i8, ptr %.1274.val.i, i64 48
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !135
  tail call void %i.km(ptr noundef nonnull %i.iw) #21, !inline_history !373
  br label %positional_only_passed_as_keyword.exit.thread.i

.thread361.i:                                     ; preds = %bb.az, %bb.at, %positional_only_passed_as_keyword.exit.thread357.i
  %i.kn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ko = getelementptr i8, ptr %i.d, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !366
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
  tail call void %i.lc(ptr noundef nonnull %i.fg) #21, !inline_history !372
  br label %positional_only_passed_as_keyword.exit.thread.i

positional_only_passed_as_keyword.exit.thread.i:  ; preds = %bb.bf, %.lr.ph451.i, %bb.bl, %positional_only_passed_as_keyword.exit.thread.critedge.i, %.thread361.i, %bb.be, %bb.bb, %bb.ba, %.sink.split.sink.split.i.i, %bb.aq, %.thread146.i.i, %bb.w, %bb.r
  %7 = icmp slt i64 %.1453.i, %.val331.i
  br i1 %7, label %.lr.ph463.i, label %.loopexit69

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
  br i1 %exitcond519.not.i, label %.loopexit69, label %.lr.ph463.i, !llvm.loop !377

.loopexit.i:                                      ; preds = %.lr.ph449.i, %.lr.ph451.i
  %.2272.i = phi i64 [ %.1271450.i, %.lr.ph451.i ], [ %.0270447.i, %.lr.ph449.i ]
  %i.lk = getelementptr [8 x i8], ptr %i.x, i64 %.2272.i ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8
  %.not311.i = icmp ult i64 %i.ll, 2
  br i1 %.not311.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i
  %i.lm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ln = getelementptr i8, ptr %i.d, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !366
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
  br i1 %exitcond512.not.i, label %PyStackRef_CLOSE.exit339.thread367.i, label %bb.p, !llvm.loop !378

PyStackRef_CLOSE.exit339.thread367.i:             ; preds = %bb.bn, %bb.o, %.loopexit394.i
  %i.lr = load i32, ptr %i.ap, align 4, !tbaa !270 ; 2 uses
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
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !379 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.d, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !366
  %i.ma = load i32, ptr %i.ar, align 4, !tbaa !336 ; 2 uses
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
  br i1 %i.mi, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !380

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
  %i.my = tail call i32 %i.mw(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.mx) #21, !inline_history !381 ; 0 uses
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
  %i.nj = tail call i32 %i.nh(ptr noundef nonnull %.068.i.i, i32 noundef 1, ptr noundef %i.ni) #21, !inline_history !381 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nk = getelementptr i8, ptr %.068.i.i, i64 8
  %.068.val.i.i = load ptr, ptr %i.nk, align 8, !tbaa !122
  %i.nl = getelementptr i8, ptr %.068.val.i.i, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !135
  tail call void %i.nm(ptr noundef nonnull %.068.i.i) #21, !inline_history !381
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
  br i1 %i.po, label %bb.cn, label %.thread371.i, !llvm.loop !384

bb.cs:                                            ; preds = %._crit_edge468.i
  %i.pp = getelementptr i8, ptr %i.d, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !366
  tail call fastcc void @missing_arguments(ptr noundef %0, ptr noundef nonnull %i.ao, i64 noundef %spec.select323.i.lcssa, i64 noundef %i.ob, ptr noundef nonnull %i.x, ptr noundef %i.pq)
  br label %.loopexit69

.thread371.i:                                     ; preds = %bb.cr, %bb.cm, %._crit_edge468.thread.i, %bb.ci
  %i.pr = load i32, ptr %i.ar, align 4, !tbaa !336
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %bb.ct, label %initialize_locals.exit

bb.ct:                                            ; preds = %.thread371.i
  %i.pt = load i32, ptr %i.ap, align 4, !tbaa !270 ; 2 uses
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
  %i.qa = load ptr, ptr %i.pw, align 8, !tbaa !385 ; 2 uses
  %.not317.i = icmp eq ptr %i.qa, null
  br i1 %.not317.i, label %.thread377.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qb = load ptr, ptr %i.px, align 8, !tbaa !297
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
  br i1 %exitcond520.not.i, label %._crit_edge477.i, label %bb.cu, !llvm.loop !386

._crit_edge477.i:                                 ; preds = %bb.da
  %.not315.i = icmp eq i64 %.2252.i, 0
  br i1 %.not315.i, label %initialize_locals.exit, label %bb.db

bb.db:                                            ; preds = %._crit_edge477.i
  %i.qq = getelementptr i8, ptr %i.d, i64 40
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !366
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
  br i1 %exitcond.not.i, label %.loopexit397.i, label %.lr.ph.i61, !llvm.loop !387

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
  br i1 %exitcond508.not.i, label %.loopexit69, label %.lr.ph445.i, !llvm.loop !388

.loopexit69:                                      ; preds = %PyStackRef_CLOSE.exit349.i, %PyStackRef_CLOSE.exit341.i, %.sink.split.i344.i, %positional_only_passed_as_keyword.exit.thread.i, %bb.cs, %.loopexit397.i, %bb.bs, %bb.bv, %bb.bw, %bb.ce, %bb.cf, %bb.db, %.thread380.i, %bb.de
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !389

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
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph100, !llvm.loop !390

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274
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
  %.val129 = load i64, ptr %i.b, align 8, !tbaa !391
  %i.c = icmp sgt i64 %.val129, 0
end_hunk_2
begin_hunk_3_@_PyEval_UnpackIterableStackRef:bb.a
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %i.dv = icmp sgt i64 %indvars.iv, 2
  br i1 %i.dv, label %.lr.ph177.new, label %._crit_edge178, !llvm.loop !408

._crit_edge178:                                   ; preds = %.prol.loopexit, %.lr.ph177.new, %.preheader
  %i.dw = sub i64 %.val161, %i.cc
  store i64 %i.dw, ptr %i.cb, align 8, !tbaa !119
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %.not = icmp sgt i32 %i.dx, -1
  br i1 %.not, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %._crit_edge178
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.a, align 8, !tbaa !121
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not138 = icmp eq ptr %i.ea, null
  br i1 %.not138, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.ec = tail call i32 %i.ea(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.eb) #21 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ed = getelementptr i8, ptr %i.a, i64 8
  %.val154 = load ptr, ptr %i.ed, align 8, !tbaa !122
  %i.ee = getelementptr i8, ptr %.val154, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !135
  tail call void %i.ef(ptr noundef nonnull %i.a) #21
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ab, %_PyErr_Occurred.exit164, %_PyErr_Occurred.exit, %bb.h, %bb.g, %bb.ad, %bb.aa, %bb.z
  %.2119 = phi i32 [ %.0117172, %_PyErr_Occurred.exit ], [ %.0117172, %bb.g ], [ %.0117172, %bb.h ], [ %.0117.lcssa, %_PyErr_Occurred.exit164 ], [ %.0117.lcssa, %bb.z ], [ %.0117.lcssa, %bb.aa ], [ %.0117.lcssa, %bb.ab ], [ %i.ct, %bb.ad ] ; 2 uses
  %.2 = phi ptr [ %.0116173, %_PyErr_Occurred.exit ], [ %.0116173, %bb.g ], [ %.0116173, %bb.h ], [ %.0116.lcssa, %_PyErr_Occurred.exit164 ], [ %.0116.lcssa, %bb.z ], [ %.0116.lcssa, %bb.aa ], [ %.0116.lcssa, %bb.ab ], [ %i.bu, %bb.ad ]
  %i.eg = icmp sgt i32 %.2119, 0
  br i1 %i.eg, label %.lr.ph182, label %._crit_edge183

.lr.ph182:                                        ; preds = %bb.ai, %PyStackRef_CLOSE.exit
  %.3180 = phi ptr [ %i.eo, %PyStackRef_CLOSE.exit ], [ %.2, %bb.ai ] ; 2 uses
  %.3120179 = phi i32 [ %i.en, %PyStackRef_CLOSE.exit ], [ %.2119, %bb.ai ] ; 2 uses
  %i.eh = load i64, ptr %.3180, align 8           ; 2 uses
  %i.ei = and i64 %i.eh, 1
  %.not.not.i = icmp eq i64 %i.ei, 0
  br i1 %.not.not.i, label %bb.aj, label %PyStackRef_CLOSE.exit

bb.aj:                                            ; preds = %.lr.ph182
  %i.ej = inttoptr i64 %i.eh to ptr               ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !121
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !121
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ak, label %PyStackRef_CLOSE.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ej) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %.lr.ph182, %bb.aj, %bb.ak
  %i.en = add nsw i32 %.3120179, -1
  %i.eo = getelementptr i8, ptr %.3180, i64 8
  %i.ep = icmp sgt i32 %.3120179, 1
  br i1 %i.ep, label %.lr.ph182, label %._crit_edge183, !llvm.loop !409

._crit_edge183:                                   ; preds = %PyStackRef_CLOSE.exit, %bb.ai
  %i.eq = load i32, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %.not145 = icmp sgt i32 %i.eq, -1
  br i1 %.not145, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %._crit_edge183
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.a, align 8, !tbaa !121
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not146 = icmp eq ptr %i.et, null
  br i1 %.not146, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.ev = tail call i32 %i.et(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.eu) #21 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ew = getelementptr i8, ptr %i.a, i64 8
  %.val153 = load ptr, ptr %i.ew, align 8, !tbaa !122
  %i.ex = getelementptr i8, ptr %.val153, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !135
  tail call void %i.ey(ptr noundef nonnull %i.a) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao, %._crit_edge183, %._crit_edge178, %bb.ah, %bb.ae, %_PyErr_Occurred.exit164.thread, %bb.o, %bb.l, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 1, %_PyErr_Occurred.exit164.thread ], [ 1, %._crit_edge178 ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 0, %._crit_edge183 ], [ 0, %bb.ao ], [ 0, %bb.al ]
  ret i32 %.0
}

declare void @_Py_Specialize_UnpackSequence(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #3

declare i32 @PyUnstable_InterpreterFrame_GetLine(ptr noundef) local_unnamed_addr #3

declare i32 @PyTraceBack_Here(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @get_exception_handler(ptr %.40.val, i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %.40.val, i64 32   ; 5 uses
  %i.b = getelementptr i8, ptr %.40.val, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !119 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 %.val    ; 2 uses
  %i.d = icmp sgt i64 %.val, 40
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !tbaa !121   ; 2 uses
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = and i8 %i.e, 64
  %.not8.i = icmp eq i8 %i.h, 0
  br i1 %.not8.i, label %parse_varint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.g, %bb.b ]
  %.079.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.a, %bb.b ]
  %i.i = getelementptr i8, ptr %.079.i, i64 1     ; 2 uses
  %i.j = shl i32 %.010.i, 6
  %i.k = load i8, ptr %i.i, align 1, !tbaa !121   ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = zext nneg i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = and i8 %i.k, 64
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %parse_varint.exit, label %.lr.ph.i, !llvm.loop !410

parse_varint.exit:                                ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i32 [ %i.g, %bb.b ], [ %i.n, %.lr.ph.i ]
  %.not = icmp sgt i32 %.0.lcssa.i, %0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %parse_varint.exit, %parse_varint.exit53
  %.037 = phi ptr [ %.037., %parse_varint.exit53 ], [ %i.a, %parse_varint.exit ] ; 3 uses
  %.035 = phi ptr [ %..035, %parse_varint.exit53 ], [ %i.c, %parse_varint.exit ] ; 2 uses
  %i.p = ptrtoint ptr %.035 to i64
  %i.q = ptrtoint ptr %.037 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr i64 %i.r, 1
  %i.t = getelementptr i8, ptr %.037, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.0.i = phi ptr [ %i.t, %.preheader ], [ %i.w, %bb.c ] ; 5 uses
  %i.u = load i8, ptr %.0.i, align 1, !tbaa !121  ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  %i.w = getelementptr i8, ptr %.0.i, i64 -1
  br i1 %i.v, label %bb.c, label %scan_back_to_entry_start.exit, !llvm.loop !411

scan_back_to_entry_start.exit:                    ; preds = %bb.c
  %i.x = and i8 %i.u, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = and i8 %i.u, 64
  %.not8.i46 = icmp eq i8 %i.z, 0
  br i1 %.not8.i46, label %parse_varint.exit53, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %scan_back_to_entry_start.exit, %.lr.ph.i47
  %.010.i48 = phi i32 [ %i.af, %.lr.ph.i47 ], [ %i.y, %scan_back_to_entry_start.exit ]
  %.079.i49 = phi ptr [ %i.aa, %.lr.ph.i47 ], [ %.0.i, %scan_back_to_entry_start.exit ]
  %i.aa = getelementptr i8, ptr %.079.i49, i64 1  ; 2 uses
  %i.ab = shl i32 %.010.i48, 6
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !121 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 2 uses
  %i.ag = and i8 %i.ac, 64
  %.not.i50 = icmp eq i8 %i.ag, 0
  br i1 %.not.i50, label %parse_varint.exit53, label %.lr.ph.i47, !llvm.loop !410

parse_varint.exit53:                              ; preds = %.lr.ph.i47, %scan_back_to_entry_start.exit
  %.0.lcssa.i52 = phi i32 [ %i.y, %scan_back_to_entry_start.exit ], [ %i.af, %.lr.ph.i47 ]
  %i.ah = icmp sgt i32 %.0.lcssa.i52, %0          ; 2 uses
  %.037. = select i1 %i.ah, ptr %.037, ptr %.0.i  ; 3 uses
  %..035 = select i1 %i.ah, ptr %.0.i, ptr %.035  ; 3 uses
  %i.ai = ptrtoint ptr %..035 to i64
  %i.aj = ptrtoint ptr %.037. to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.ak, 40
  br i1 %i.al, label %.preheader, label %.loopexit, !llvm.loop !412

.loopexit:                                        ; preds = %parse_varint.exit53, %bb.a
  %.340 = phi ptr [ %i.a, %bb.a ], [ %.037., %parse_varint.exit53 ] ; 2 uses
  %.3 = phi ptr [ %i.c, %bb.a ], [ %..035, %parse_varint.exit53 ] ; 5 uses
  %i.am = icmp ult ptr %.340, %.3
  br i1 %i.am, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %4 = ptrtoint ptr %.3 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %skip_to_next_entry.exit
  %.022 = phi ptr [ %.340, %.lr.ph ], [ %.1, %skip_to_next_entry.exit ] ; 3 uses
  %i.an = load i8, ptr %.022, align 1, !tbaa !121 ; 2 uses
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i32               ; 2 uses
  %i.aq = and i8 %i.an, 64
  %.not8.i54 = icmp eq i8 %i.aq, 0
  br i1 %.not8.i54, label %parse_varint.exit61, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.d, %.lr.ph.i55
  %.010.i56 = phi i32 [ %i.aw, %.lr.ph.i55 ], [ %i.ap, %bb.d ]
  %.079.i57 = phi ptr [ %i.ar, %.lr.ph.i55 ], [ %.022, %bb.d ]
  %i.ar = getelementptr i8, ptr %.079.i57, i64 1  ; 3 uses
  %i.as = shl i32 %.010.i56, 6
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !121 ; 2 uses
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av            ; 2 uses
  %i.ax = and i8 %i.at, 64
  %.not.i58 = icmp eq i8 %i.ax, 0
  br i1 %.not.i58, label %parse_varint.exit61, label %.lr.ph.i55, !llvm.loop !410

parse_varint.exit61:                              ; preds = %.lr.ph.i55, %bb.d
  %.07.lcssa.i59 = phi ptr [ %.022, %bb.d ], [ %i.ar, %.lr.ph.i55 ] ; 2 uses
  %.0.lcssa.i60 = phi i32 [ %i.ap, %bb.d ], [ %i.aw, %.lr.ph.i55 ] ; 2 uses
  %i.ay = icmp sgt i32 %.0.lcssa.i60, %0
  br i1 %i.ay, label %.critedge, label %bb.e

bb.e:                                             ; preds = %parse_varint.exit61
  %i.az = getelementptr i8, ptr %.07.lcssa.i59, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !121 ; 2 uses
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = and i8 %i.ba, 64
  %.not8.i62 = icmp eq i8 %i.bd, 0
  br i1 %.not8.i62, label %parse_varint.exit69, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.e, %.lr.ph.i63
  %.010.i64 = phi i32 [ %i.bj, %.lr.ph.i63 ], [ %i.bc, %bb.e ]
  %.079.i65 = phi ptr [ %i.be, %.lr.ph.i63 ], [ %i.az, %bb.e ] ; 2 uses
  %i.be = getelementptr i8, ptr %.079.i65, i64 1  ; 2 uses
  %i.bf = shl i32 %.010.i64, 6
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !121 ; 2 uses
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi            ; 2 uses
  %i.bk = and i8 %i.bg, 64
  %.not.i66 = icmp eq i8 %i.bk, 0
  br i1 %.not.i66, label %parse_varint.exit69, label %.lr.ph.i63, !llvm.loop !410

parse_varint.exit69:                              ; preds = %.lr.ph.i63, %bb.e
  %i.bl = phi ptr [ %.07.lcssa.i59, %bb.e ], [ %.079.i65, %.lr.ph.i63 ]
  %.0.lcssa.i68 = phi i32 [ %i.bc, %bb.e ], [ %i.bj, %.lr.ph.i63 ]
  %i.bm = getelementptr i8, ptr %i.bl, i64 2      ; 8 uses
  %i.bn = add i32 %.0.lcssa.i68, %.0.lcssa.i60
  %i.bo = icmp sgt i32 %i.bn, %0
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %parse_varint.exit69
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !121 ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i32               ; 2 uses
  %i.bs = and i8 %i.bp, 64
  %.not8.i70 = icmp eq i8 %i.bs, 0
  br i1 %.not8.i70, label %parse_varint.exit77, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.f, %.lr.ph.i71
  %.010.i72 = phi i32 [ %i.by, %.lr.ph.i71 ], [ %i.br, %bb.f ]
  %.079.i73 = phi ptr [ %i.bt, %.lr.ph.i71 ], [ %i.bm, %bb.f ]
  %i.bt = getelementptr i8, ptr %.079.i73, i64 1  ; 3 uses
  %i.bu = shl i32 %.010.i72, 6
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !121 ; 2 uses
  %i.bw = and i8 %i.bv, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bu, %i.bx            ; 2 uses
  %i.bz = and i8 %i.bv, 64
  %.not.i74 = icmp eq i8 %i.bz, 0
  br i1 %.not.i74, label %parse_varint.exit77, label %.lr.ph.i71, !llvm.loop !410

parse_varint.exit77:                              ; preds = %.lr.ph.i71, %bb.f
  %.07.lcssa.i75 = phi ptr [ %i.bm, %bb.f ], [ %i.bt, %.lr.ph.i71 ]
  %.0.lcssa.i76 = phi i32 [ %i.br, %bb.f ], [ %i.by, %.lr.ph.i71 ]
  store i32 %.0.lcssa.i76, ptr %2, align 4, !tbaa !7
  %i.ca = getelementptr i8, ptr %.07.lcssa.i75, i64 1 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !121 ; 2 uses
  %i.cc = and i8 %i.cb, 63
  %i.cd = zext nneg i8 %i.cc to i32               ; 2 uses
  %i.ce = and i8 %i.cb, 64
  %.not8.i78 = icmp eq i8 %i.ce, 0
  br i1 %.not8.i78, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %parse_varint.exit77, %.lr.ph.i79
  %.010.i80 = phi i32 [ %i.ck, %.lr.ph.i79 ], [ %i.cd, %parse_varint.exit77 ]
  %.079.i81 = phi ptr [ %i.cf, %.lr.ph.i79 ], [ %i.ca, %parse_varint.exit77 ]
  %i.cf = getelementptr i8, ptr %.079.i81, i64 1  ; 2 uses
  %i.cg = shl i32 %.010.i80, 6
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !121 ; 2 uses
  %i.ci = and i8 %i.ch, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj            ; 2 uses
  %i.cl = and i8 %i.ch, 64
  %.not.i82 = icmp eq i8 %i.cl, 0
  br i1 %.not.i82, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79, !llvm.loop !410

skip_to_next_entry.exit.thread:                   ; preds = %.lr.ph.i79, %parse_varint.exit77
  %.0.lcssa.i84 = phi i32 [ %i.cd, %parse_varint.exit77 ], [ %i.ck, %.lr.ph.i79 ] ; 2 uses
  %i.cm = ashr i32 %.0.lcssa.i84, 1
  store i32 %i.cm, ptr %1, align 4, !tbaa !7
  %i.cn = and i32 %.0.lcssa.i84, 1
  store i32 %i.cn, ptr %3, align 4, !tbaa !7
  br label %.critedge

bb.g:                                             ; preds = %parse_varint.exit69
  %i.co = icmp ult ptr %i.bm, %.3
  br i1 %i.co, label %.lr.ph.preheader.i, label %skip_to_next_entry.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %5 = ptrtoint ptr %i.bm to i64
  %i.cp = sub i64 %4, %5
  %scevgep.i = getelementptr i8, ptr %i.bm, i64 %i.cp
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.h, %.lr.ph.preheader.i
  %.05.i = phi ptr [ %i.cs, %bb.h ], [ %i.bm, %.lr.ph.preheader.i ] ; 3 uses
  %i.cq = load i8, ptr %.05.i, align 1, !tbaa !121
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.h, label %skip_to_next_entry.exit

bb.h:                                             ; preds = %.lr.ph.i87
  %i.cs = getelementptr i8, ptr %.05.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.cs, %.3
  br i1 %exitcond.not.i, label %skip_to_next_entry.exit, label %.lr.ph.i87, !llvm.loop !413

skip_to_next_entry.exit:                          ; preds = %bb.h, %.lr.ph.i87, %bb.g
  %.1 = phi ptr [ %i.bm, %bb.g ], [ %.05.i, %.lr.ph.i87 ], [ %scevgep.i, %bb.h ] ; 2 uses
  %i.ct = icmp ult ptr %.1, %.3
  br i1 %i.ct, label %bb.d, label %.critedge

.critedge:                                        ; preds = %skip_to_next_entry.exit, %parse_varint.exit61, %.loopexit, %parse_varint.exit, %skip_to_next_entry.exit.thread
  %.5 = phi i32 [ 1, %skip_to_next_entry.exit.thread ], [ 0, %parse_varint.exit ], [ 0, %.loopexit ], [ 0, %parse_varint.exit61 ], [ 0, %skip_to_next_entry.exit ]
  ret i32 %.5
}

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #3

declare ptr @_PyThreadState_PushFrame(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @_PyStack_UnpackDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyStack_UnpackDict_FreeNoDecRef(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyEval_EvalCodeEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %11 = alloca %struct.PyFrameConstructor, align 8 ; 9 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = sext i32 %8 to i64
  %i.e = tail call ptr @PyTuple_FromArray(ptr noundef %7, i64 noundef %i.d) #21 ; 12 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyDict_LoadBuiltinsFromGlobals(ptr noundef %1) #21 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not145 = icmp sgt i32 %i.i, -1
  br i1 %.not145, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !121
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.ae

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not146 = icmp eq ptr %i.l, null
  br i1 %.not146, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.n = tail call i32 %i.l(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %i.m) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %.val152 = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %.val152, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !135
  tail call void %i.q(ptr noundef nonnull %i.e) #21
  br label %bb.ae

bb.h:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %2, null
  %spec.select = select i1 %i.r, ptr %1, ptr %2
  %i.s = icmp eq i32 %6, 0
  br i1 %i.s, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = sext i32 %6 to i64
  %i.u = tail call ptr @PyTuple_New(i64 noundef %i.t) #21 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %6, %4
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call ptr @PyMem_Malloc(i64 noundef %i.y) #21 ; 13 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %.thread.thread167, label %.preheader175

.preheader175:                                    ; preds = %bb.j
  %i.ac = icmp sgt i32 %4, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader175
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %i.ad = sub i64 %i.a, %i.aa
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader203, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !117
  %wide.load202 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !117
  %i.ag = getelementptr [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !117
  store <2 x ptr> %wide.load202, ptr %i.ah, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader203

.lr.ph.preheader203:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader203, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader203 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader203 ]
  %i.aj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.prol
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !415

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader203
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader203 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader175
  %i.ao = icmp sgt i32 %6, 0
  br i1 %i.ao, label %.lr.ph178, label %.loopexit

.lr.ph178:                                        ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %i.u, i64 32
  %wide.trip.count183 = zext nneg i32 %6 to i64
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.as = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store ptr %i.au, ptr %i.av, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.ay = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.1
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117
  %i.bb = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.2
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !416

bb.k:                                             ; preds = %.lr.ph178, %_Py_NewRef.exit
  %indvars.iv180 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next181, %_Py_NewRef.exit ] ; 4 uses
  %indvars.iv180.tr = trunc i64 %indvars.iv180 to i32
end_hunk_3
