Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@PyUnicode_RPartition:bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.dp

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val.i66 = load ptr, ptr %i.f, align 8, !tbaa !229
  %i.g = getelementptr i8, ptr %.val.i66, i64 168
  %.val2.i67 = load i64, ptr %i.g, align 8, !tbaa !234
  %i.h = and i64 %.val2.i67, 268435456
  %.not.i68 = icmp eq i64 %i.h, 0
  br i1 %.not.i68, label %_PyUnicode_EnsureUnicode.exit70.thread, label %_PyUnicode_EnsureUnicode.exit70

_PyUnicode_EnsureUnicode.exit70.thread:           ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.193, ptr noundef nonnull %1) #33 ; 0 uses
  br label %bb.dp

_PyUnicode_EnsureUnicode.exit70:                  ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = lshr i32 %i.l, 2
  %i.n = and i32 %i.m, 7                          ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 7                          ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val65 = load i64, ptr %i.s, align 8, !tbaa !239 ; 16 uses
  %i.t = getelementptr i8, ptr %1, i64 16
  %.val64 = load i64, ptr %i.t, align 8, !tbaa !239 ; 28 uses
  %i.u = icmp samesign ult i32 %i.n, %i.r
  %i.v = icmp slt i64 %.val65, %.val64
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit70
  %i.w = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr noundef nonnull %0) #33
  br label %bb.dp

bb.c:                                             ; preds = %_PyUnicode_EnsureUnicode.exit70
  %i.x = and i32 %i.l, 32
  %.not.i72 = icmp eq i32 %i.x, 0
  br i1 %.not.i72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.l, 64
  %.not.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.z, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i73 = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 29 uses
  %i.aa = and i32 %i.p, 32
  %.not.i75 = icmp eq i32 %i.aa, 0
  br i1 %.not.i75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ab = and i32 %i.p, 64
  %.not.i.i76 = icmp eq i32 %i.ab, 0
  %.0.v.i.i77 = select i1 %.not.i.i76, i64 56, i64 40
  %.0.i.i78 = getelementptr i8, ptr %1, i64 %.0.v.i.i77
  br label %_PyUnicode_DATA.exit81

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ac = getelementptr i8, ptr %1, i64 56
  %.val4.i80 = load ptr, ptr %i.ac, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit81

_PyUnicode_DATA.exit81:                           ; preds = %bb.f, %bb.g
  %.0.i79 = phi ptr [ %.0.i.i78, %bb.f ], [ %.val4.i80, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %i.r, %i.n                  ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit81
  %i.ad = tail call fastcc ptr @unicode_askind(i32 noundef %i.r, ptr noundef %.0.i79, i64 noundef %.val64, i32 noundef %i.n) ; 2 uses
  %.not60 = icmp eq ptr %i.ad, null
  br i1 %.not60, label %bb.dp, label %bb.i

bb.i:                                             ; preds = %bb.h, %_PyUnicode_DATA.exit81
  %.053 = phi ptr [ %i.ad, %bb.h ], [ %.0.i79, %_PyUnicode_DATA.exit81 ] ; 15 uses
  switch i32 %i.n, label %bb.dn [
    i32 1, label %bb.j
    i32 2, label %bb.cn
    i32 4, label %bb.da
  ]

bb.j:                                             ; preds = %bb.i
  %.val63 = load i32, ptr %i.k, align 8
  %i.ae = and i32 %.val63, 64
  %.not61 = icmp eq i32 %i.ae, 0
  br i1 %.not61, label %bb.av, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load i32, ptr %i.o, align 8
  %i.af = and i32 %.val, 64
  %.not62 = icmp eq i32 %i.af, 0
  br i1 %.not62, label %bb.av, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %.val64, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.197) #33, !inline_history !721
  br label %asciilib_rpartition.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !721 ; 12 uses
  %.not.i82 = icmp eq ptr %i.ai, null
  br i1 %.not.i82, label %asciilib_rpartition.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %.val64, 2
  br i1 %i.aj, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.not66.i.i = icmp eq i64 %.val64, 1
  br i1 %.not66.i.i, label %bb.q, label %asciilib_fastsearch.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %.053, align 1, !tbaa !237 ; 2 uses
  %i.al = icmp sgt i64 %.val65, 15
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = zext i8 %i.ak to i32
  %i.an = tail call ptr @memrchr(ptr noundef %.0.i73, i32 noundef %i.am, i64 noundef %.val65) #34, !inline_history !721 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i67.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %.0.i73 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  br label %asciilib_fastsearch.exit.i

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.0.i73, i64 %.val65 ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %.0.i73
  br i1 %i.as, label %.lr.ph, label %asciilib_fastsearch.exit.thread.i

bb.u:                                             ; preds = %.lr.ph
  %i.at = icmp ugt ptr %i.au, %.0.i73
  br i1 %i.at, label %.lr.ph, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.0.i.i.i219 = phi ptr [ %i.au, %bb.u ], [ %i.ar, %bb.t ]
  %i.au = getelementptr i8, ptr %.0.i.i.i219, i64 -1 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !237
  %i.aw = icmp eq i8 %i.av, %i.ak
  br i1 %i.aw, label %bb.v, label %bb.u, !llvm.loop !24

bb.v:                                             ; preds = %.lr.ph
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %.0.i73 to i64
  %i.az = sub i64 %i.ax, %i.ay
  br label %asciilib_fastsearch.exit.i

bb.w:                                             ; preds = %bb.o
  %i.ba = add nsw i64 %.val64, -1                 ; 6 uses
  %i.bb = load i8, ptr %.053, align 1, !tbaa !237 ; 5 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %.053, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !237 ; 2 uses
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.be                     ; 2 uses
  %i.bl = icmp eq i8 %i.bg, %i.bb
  %i.bm = add nsw i64 %.val64, -2                 ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.bl, i64 %i.bm, i64 %i.ba ; 2 uses
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %bb.w
  %.060.i.i.i.unr = phi i64 [ %i.ba, %bb.w ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.ba, %bb.w ], [ %i.bm, %.lr.ph.i70.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.be, %bb.w ], [ %i.bk, %.lr.ph.i70.i.i.prol ]
  %.lcssa234.unr = phi i64 [ poison, %bb.w ], [ %i.bk, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %bb.w ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %i.bn = icmp eq i64 %.val64, 2
  br i1 %i.bn, label %.lr.ph66.split.us.i.preheader.i.i, label %.lr.ph.i70.i.i

.lr.ph66.split.us.i.preheader.i.i:                ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa234 = phi i64 [ %.lcssa234.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.db, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.bo = sub nsw i64 %.val65, %.val64
  br label %.lr.ph66.split.us.i.i.i

.lr.ph66.split.us.i.i.i:                          ; preds = %bb.ac, %.lr.ph66.split.us.i.preheader.i.i
  %.14865.us.i.i.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bo, %.lr.ph66.split.us.i.preheader.i.i ] ; 5 uses
  %i.bp = getelementptr i8, ptr %.0.i73, i64 %.14865.us.i.i.i ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !237
  %i.br = icmp eq i8 %i.bq, %i.bb
  br i1 %i.br, label %.preheader.us.i72.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr i8, ptr %i.bp, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !237
  %i.bu = and i8 %i.bt, 63
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %.lcssa234
  %.not51.us.i.i.i = icmp eq i64 %i.bx, 0
  %i.by = select i1 %.not51.us.i.i.i, i64 %.val64, i64 0
  br label %bb.ac

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.z
  %.04662.us.i.i.i = phi i64 [ %i.cd, %bb.z ], [ %i.ba, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.bz = getelementptr i8, ptr %i.bp, i64 %.04662.us.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !237
  %i.cb = getelementptr i8, ptr %.053, i64 %.04662.us.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !237
  %.not52.us.i.i.i = icmp eq i8 %i.ca, %i.cc
  br i1 %.not52.us.i.i.i, label %bb.z, label %.thread.us.i73.i.i

bb.z:                                             ; preds = %.preheader.us.i72.i.i
  %i.cd = add nsw i64 %.04662.us.i.i.i, -1
  %i.ce = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.ce, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !25

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread.us.i73.i.i
  %i.cf = getelementptr i8, ptr %i.bp, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !237
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %.lcssa234
  %.not54.us.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not54.us.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.us.i73.i.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.ab ], [ %i.by, %bb.y ], [ %.val64, %bb.aa ]
  %i.cl = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = icmp sgt i64 %i.cl, 0
  br i1 %i.cn, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !26

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.dd, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.db, %.lr.ph.i70.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %i.co = getelementptr i8, ptr %.053, i64 %.04759.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !237 ; 2 uses
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = or i64 %i.cs, %.04958.i.i.i
  %i.cu = icmp eq i8 %i.cp, %i.bb
  %i.cv = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.cu, i64 %i.cv, i64 %.060.i.i.i
  %i.cw = getelementptr i8, ptr %.053, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !237 ; 2 uses
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = or i64 %i.da, %i.ct                     ; 2 uses
  %i.dc = icmp eq i8 %i.cx, %i.bb
  %i.dd = add nsw i64 %.04759.i.i.i, -2           ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.dc, i64 %i.dd, i64 %spec.select.i.i.i ; 2 uses
  %i.de = icmp sgt i64 %.04759.i.i.i, 2
  br i1 %i.de, label %.lr.ph.i70.i.i, label %.lr.ph66.split.us.i.preheader.i.i, !llvm.loop !27

asciilib_fastsearch.exit.i:                       ; preds = %bb.z, %bb.v, %bb.s
  %.0.i.i84 = phi i64 [ %i.az, %bb.v ], [ %i.aq, %bb.s ], [ %.14865.us.i.i.i, %bb.z ] ; 5 uses
  %i.df = icmp slt i64 %.0.i.i84, 0
  br i1 %i.df, label %asciilib_fastsearch.exit.thread.i, label %bb.ag

asciilib_fastsearch.exit.thread.i:                ; preds = %bb.ac, %bb.x, %bb.u, %bb.t, %asciilib_fastsearch.exit.i, %bb.r, %bb.p
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237 ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, -1073741825
  br i1 %i.dh, label %Py_INCREF.exit38.i, label %bb.ad

bb.ad:                                            ; preds = %asciilib_fastsearch.exit.thread.i
  %i.di = add nuw i32 %i.dg, 1
  store i32 %i.di, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237
  br label %Py_INCREF.exit38.i

Py_INCREF.exit38.i:                               ; preds = %bb.ad, %asciilib_fastsearch.exit.thread.i
  %i.dj = getelementptr i8, ptr %i.ai, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.dj, align 8, !tbaa !227
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237 ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, -1073741825
  br i1 %i.dl, label %Py_INCREF.exit37.i, label %bb.ae

bb.ae:                                            ; preds = %Py_INCREF.exit38.i
  %i.dm = add nuw i32 %i.dk, 1
  store i32 %i.dm, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237
  br label %Py_INCREF.exit37.i

Py_INCREF.exit37.i:                               ; preds = %bb.ae, %Py_INCREF.exit38.i
  %i.dn = getelementptr i8, ptr %i.ai, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.dn, align 8, !tbaa !227
  %i.do = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.dp = icmp ugt i32 %i.do, -1073741825
  br i1 %i.dp, label %Py_INCREF.exit36.i, label %bb.af

bb.af:                                            ; preds = %Py_INCREF.exit37.i
  %i.dq = add nuw i32 %i.do, 1
  store i32 %i.dq, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit36.i

Py_INCREF.exit36.i:                               ; preds = %bb.af, %Py_INCREF.exit37.i
  %i.dr = getelementptr i8, ptr %i.ai, i64 48
  store ptr %0, ptr %i.dr, align 8, !tbaa !227
  br label %asciilib_rpartition.exit

bb.ag:                                            ; preds = %asciilib_fastsearch.exit.i
  %i.ds = icmp eq i64 %.0.i.i84, 1
  br i1 %i.ds, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr %.0.i73, align 1, !tbaa !237 ; 2 uses
  %i.du = zext i8 %i.dt to i64                    ; 2 uses
  %i.dv = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.du
  %i.dw = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8192
  %i.dy = icmp slt i8 %i.dt, 0
  %i.dz = select i1 %i.dy, ptr %i.dx, ptr %i.dv
  br label %_PyUnicode_FromASCII.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ea = tail call ptr @PyUnicode_New(i64 noundef %.0.i.i84, i32 noundef 127), !inline_history !722 ; 5 uses
  %.not.i39.i = icmp eq ptr %i.ea, null
  br i1 %.not.i39.i, label %_PyUnicode_FromASCII.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr i8, ptr %i.ea, i64 32
  %.val.i.i.i = load i32, ptr %i.eb, align 8      ; 2 uses
  %i.ec = and i32 %.val.i.i.i, 32
  %.not.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = and i32 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.ed, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ea, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ee = getelementptr i8, ptr %i.ea, i64 56
  %.val4.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.al, %bb.ak
  %.0.i.i40.i = phi ptr [ %.0.i.i.i.i, %bb.ak ], [ %.val4.i.i.i, %bb.al ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i40.i, ptr readonly align 1 %.0.i73, i64 %.0.i.i84, i1 false)
  br label %_PyUnicode_FromASCII.exit.i

_PyUnicode_FromASCII.exit.i:                      ; preds = %_PyUnicode_DATA.exit.i.i, %bb.ai, %bb.ah
  %.0.i41.i = phi ptr [ %i.dz, %bb.ah ], [ %i.ea, %_PyUnicode_DATA.exit.i.i ], [ null, %bb.ai ]
  %i.ef = getelementptr i8, ptr %i.ai, i64 32
  store ptr %.0.i41.i, ptr %i.ef, align 8, !tbaa !227
  %i.eg = load i32, ptr %1, align 8, !tbaa !237   ; 2 uses
  %i.eh = icmp ugt i32 %i.eg, -1073741825
  br i1 %i.eh, label %Py_INCREF.exit.i, label %bb.am

bb.am:                                            ; preds = %_PyUnicode_FromASCII.exit.i
  %i.ei = add nuw i32 %i.eg, 1
  store i32 %i.ei, ptr %1, align 8, !tbaa !237
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.am, %_PyUnicode_FromASCII.exit.i
  %i.ej = getelementptr i8, ptr %i.ai, i64 40
  store ptr %1, ptr %i.ej, align 8, !tbaa !227
  %i.ek = add i64 %.0.i.i84, %.val64              ; 2 uses
  %i.el = getelementptr i8, ptr %.0.i73, i64 %i.ek ; 2 uses
  %i.em = sub i64 %.val65, %i.ek                  ; 3 uses
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %Py_INCREF.exit.i
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !237 ; 2 uses
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.ep
  %i.er = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.ep
  %i.es = getelementptr i8, ptr %i.er, i64 -8192
  %i.et = icmp slt i8 %i.eo, 0
  %i.eu = select i1 %i.et, ptr %i.es, ptr %i.eq
  br label %_PyUnicode_FromASCII.exit52.i

bb.ao:                                            ; preds = %Py_INCREF.exit.i
  %i.ev = tail call ptr @PyUnicode_New(i64 noundef %i.em, i32 noundef 127), !inline_history !722 ; 5 uses
  %.not.i42.i = icmp eq ptr %i.ev, null
  br i1 %.not.i42.i, label %_PyUnicode_FromASCII.exit52.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr i8, ptr %i.ev, i64 32
  %.val.i.i43.i = load i32, ptr %i.ew, align 8    ; 2 uses
  %i.ex = and i32 %.val.i.i43.i, 32
  %.not.i.i44.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i44.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = and i32 %.val.i.i43.i, 64
  %.not.i.i.i45.i = icmp eq i32 %i.ey, 0
  %.0.v.i.i.i46.i = select i1 %.not.i.i.i45.i, i64 56, i64 40
  %.0.i.i.i47.i = getelementptr i8, ptr %i.ev, i64 %.0.v.i.i.i46.i
  br label %_PyUnicode_DATA.exit.i48.i

bb.ar:                                            ; preds = %bb.ap
  %i.ez = getelementptr i8, ptr %i.ev, i64 56
  %.val4.i.i51.i = load ptr, ptr %i.ez, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i48.i

_PyUnicode_DATA.exit.i48.i:                       ; preds = %bb.ar, %bb.aq
  %.0.i.i49.i = phi ptr [ %.0.i.i.i47.i, %bb.aq ], [ %.val4.i.i51.i, %bb.ar ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i49.i, ptr readonly align 1 %i.el, i64 %i.em, i1 false)
  br label %_PyUnicode_FromASCII.exit52.i

_PyUnicode_FromASCII.exit52.i:                    ; preds = %_PyUnicode_DATA.exit.i48.i, %bb.ao, %bb.an
  %.0.i50.i = phi ptr [ %i.eu, %bb.an ], [ %i.ev, %_PyUnicode_DATA.exit.i48.i ], [ null, %bb.ao ]
  %i.fa = getelementptr i8, ptr %i.ai, i64 48
  store ptr %.0.i50.i, ptr %i.fa, align 8, !tbaa !227
  %i.fb = tail call ptr @PyErr_Occurred() #33, !inline_history !721
  %.not35.i = icmp eq ptr %i.fb, null
  br i1 %.not35.i, label %asciilib_rpartition.exit, label %bb.as

bb.as:                                            ; preds = %_PyUnicode_FromASCII.exit52.i
  %i.fc = load i32, ptr %i.ai, align 8, !tbaa !237 ; 2 uses
  %.not.i.i85 = icmp sgt i32 %i.fc, -1
  br i1 %.not.i.i85, label %bb.at, label %asciilib_rpartition.exit

bb.at:                                            ; preds = %bb.as
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.ai, align 8, !tbaa !237
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.au, label %asciilib_rpartition.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #33, !inline_history !721
  br label %asciilib_rpartition.exit

bb.av:                                            ; preds = %bb.k, %bb.j
  %i.ff = icmp eq i64 %.val64, 0
  br i1 %i.ff, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.fg, ptr noundef nonnull @.str.197) #33, !inline_history !723
  br label %asciilib_rpartition.exit

bb.ax:                                            ; preds = %bb.av
  %i.fh = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !723 ; 12 uses
  %.not.i86 = icmp eq ptr %i.fh, null
  br i1 %.not.i86, label %asciilib_rpartition.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = icmp slt i64 %.val64, 2
  br i1 %i.fi, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %.not66.i.i114 = icmp eq i64 %.val64, 1
  br i1 %.not66.i.i114, label %bb.ba, label %ucs1lib_fastsearch.exit.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.fj = load i8, ptr %.053, align 1, !tbaa !237 ; 2 uses
  %i.fk = icmp sgt i64 %.val65, 15
  br i1 %i.fk, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fl = zext i8 %i.fj to i32
  %i.fm = tail call ptr @memrchr(ptr noundef %.0.i73, i32 noundef %i.fl, i64 noundef %.val65) #34, !inline_history !723 ; 2 uses
  %.not.i67.i.i116 = icmp eq ptr %i.fm, null
  br i1 %.not.i67.i.i116, label %ucs1lib_fastsearch.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %.0.i73 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  br label %ucs1lib_fastsearch.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.fq = getelementptr i8, ptr %.0.i73, i64 %.val65 ; 2 uses
  %i.fr = icmp ugt ptr %i.fq, %.0.i73
  br i1 %i.fr, label %.lr.ph221, label %ucs1lib_fastsearch.exit.thread.i

bb.be:                                            ; preds = %.lr.ph221
  %i.fs = icmp ugt ptr %i.ft, %.0.i73
  br i1 %i.fs, label %.lr.ph221, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !17

.lr.ph221:                                        ; preds = %bb.bd, %bb.be
  %.0.i.i.i115220 = phi ptr [ %i.ft, %bb.be ], [ %i.fq, %bb.bd ]
  %i.ft = getelementptr i8, ptr %.0.i.i.i115220, i64 -1 ; 4 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !237
  %i.fv = icmp eq i8 %i.fu, %i.fj
  br i1 %i.fv, label %bb.bf, label %bb.be, !llvm.loop !17

bb.bf:                                            ; preds = %.lr.ph221
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = ptrtoint ptr %.0.i73 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  br label %ucs1lib_fastsearch.exit.i

bb.bg:                                            ; preds = %bb.ay
  %i.fz = add nsw i64 %.val64, -1                 ; 6 uses
  %i.ga = load i8, ptr %.053, align 1, !tbaa !237 ; 5 uses
  %i.gb = and i8 %i.ga, 63
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = shl nuw i64 1, %i.gc                    ; 2 uses
  %xtraiter236 = and i64 %i.fz, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %bb.bg
  %i.ge = getelementptr i8, ptr %.053, i64 %i.fz
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !237 ; 2 uses
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = or i64 %i.gi, %i.gd                     ; 2 uses
  %i.gk = icmp eq i8 %i.gf, %i.ga
  %i.gl = add nsw i64 %.val64, -2                 ; 2 uses
  %spec.select.i76.i.i.prol = select i1 %i.gk, i64 %i.gl, i64 %i.fz ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %bb.bg
  %.060.i.i.i87.unr = phi i64 [ %i.fz, %bb.bg ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i88.unr = phi i64 [ %i.fz, %bb.bg ], [ %i.gl, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i89.unr = phi i64 [ %i.gd, %bb.bg ], [ %i.gj, %.lr.ph.i75.i.i.prol ]
  %.lcssa229.unr = phi i64 [ poison, %bb.bg ], [ %i.gj, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %bb.bg ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %i.gm = icmp eq i64 %.val64, 2
  br i1 %i.gm, label %.lr.ph66.split.us.i.preheader.i.i90, label %.lr.ph.i75.i.i

.lr.ph66.split.us.i.preheader.i.i90:              ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa229 = phi i64 [ %.lcssa229.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.ia, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.gn = sub nsw i64 %.val65, %.val64
  br label %.lr.ph66.split.us.i.i.i91

.lr.ph66.split.us.i.i.i91:                        ; preds = %bb.bm, %.lr.ph66.split.us.i.preheader.i.i90
  %.14865.us.i.i.i92 = phi i64 [ %i.hl, %bb.bm ], [ %i.gn, %.lr.ph66.split.us.i.preheader.i.i90 ] ; 5 uses
  %i.go = getelementptr i8, ptr %.0.i73, i64 %.14865.us.i.i.i92 ; 4 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !237
  %i.gq = icmp eq i8 %i.gp, %i.ga
  br i1 %i.gq, label %.preheader.us.i78.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph66.split.us.i.i.i91
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i92, 0
  br i1 %.not.us.i77.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = getelementptr i8, ptr %i.go, i64 -1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !237
  %i.gt = and i8 %i.gs, 63
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, %.lcssa229
  %.not51.us.i.i.i93 = icmp eq i64 %i.gw, 0
  %i.gx = select i1 %.not51.us.i.i.i93, i64 %.val64, i64 0
  br label %bb.bm

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i91, %bb.bj
  %.04662.us.i.i.i99 = phi i64 [ %i.hc, %bb.bj ], [ %i.fz, %.lr.ph66.split.us.i.i.i91 ] ; 4 uses
  %i.gy = getelementptr i8, ptr %i.go, i64 %.04662.us.i.i.i99
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !237
  %i.ha = getelementptr i8, ptr %.053, i64 %.04662.us.i.i.i99
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !237
  %.not52.us.i.i.i100 = icmp eq i8 %i.gz, %i.hb
  br i1 %.not52.us.i.i.i100, label %bb.bj, label %.thread.us.i.i.i

bb.bj:                                            ; preds = %.preheader.us.i78.i.i
  %i.hc = add nsw i64 %.04662.us.i.i.i99, -1
  %i.hd = icmp sgt i64 %.04662.us.i.i.i99, 1
  br i1 %i.hd, label %.preheader.us.i78.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !28

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i101 = icmp eq i64 %.14865.us.i.i.i92, 0
  br i1 %.not53.us.i.i.i101, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread.us.i.i.i
  %i.he = getelementptr i8, ptr %i.go, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !237
  %i.hg = and i8 %i.hf, 63
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i64 %i.hi, %.lcssa229
  %.not54.us.i.i.i102 = icmp eq i64 %i.hj, 0
  br i1 %.not54.us.i.i.i102, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.us.i.i.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bi
  %spec.select.lcssa.sink.i.i.i94 = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.bl ], [ %i.gx, %bb.bi ], [ %.val64, %bb.bk ]
  %i.hk = sub nsw i64 %.14865.us.i.i.i92, %spec.select.lcssa.sink.i.i.i94 ; 2 uses
  %i.hl = add nsw i64 %i.hk, -1
  %i.hm = icmp sgt i64 %i.hk, 0
  br i1 %i.hm, label %.lr.ph66.split.us.i.i.i91, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i87 = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i87.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i88 = phi i64 [ %i.ic, %.lr.ph.i75.i.i ], [ %.04759.i.i.i88.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i89 = phi i64 [ %i.ia, %.lr.ph.i75.i.i ], [ %.04958.i.i.i89.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.hn = getelementptr i8, ptr %.053, i64 %.04759.i.i.i88
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !237 ; 2 uses
  %i.hp = and i8 %i.ho, 63
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = shl nuw i64 1, %i.hq
  %i.hs = or i64 %i.hr, %.04958.i.i.i89
  %i.ht = icmp eq i8 %i.ho, %i.ga
  %i.hu = add nsw i64 %.04759.i.i.i88, -1         ; 2 uses
  %spec.select.i76.i.i = select i1 %i.ht, i64 %i.hu, i64 %.060.i.i.i87
  %i.hv = getelementptr i8, ptr %.053, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !237 ; 2 uses
  %i.hx = and i8 %i.hw, 63
  %i.hy = zext nneg i8 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy
  %i.ia = or i64 %i.hz, %i.hs                     ; 2 uses
  %i.ib = icmp eq i8 %i.hw, %i.ga
  %i.ic = add nsw i64 %.04759.i.i.i88, -2         ; 2 uses
  %spec.select.i76.i.i.1 = select i1 %i.ib, i64 %i.ic, i64 %spec.select.i76.i.i ; 2 uses
  %i.id = icmp sgt i64 %.04759.i.i.i88, 2
  br i1 %i.id, label %.lr.ph.i75.i.i, label %.lr.ph66.split.us.i.preheader.i.i90, !llvm.loop !30

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.bj, %bb.bf, %bb.bc
  %.0.i.i103 = phi i64 [ %i.fy, %bb.bf ], [ %i.fp, %bb.bc ], [ %.14865.us.i.i.i92, %bb.bj ] ; 6 uses
  %i.ie = icmp slt i64 %.0.i.i103, 0
  br i1 %i.ie, label %ucs1lib_fastsearch.exit.thread.i, label %bb.bq

ucs1lib_fastsearch.exit.thread.i:                 ; preds = %bb.bm, %bb.bh, %bb.be, %bb.bd, %ucs1lib_fastsearch.exit.i, %bb.bb, %bb.az
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237 ; 2 uses
  %i.ig = icmp ugt i32 %i.if, -1073741825
  br i1 %i.ig, label %Py_INCREF.exit38.i95, label %bb.bn

bb.bn:                                            ; preds = %ucs1lib_fastsearch.exit.thread.i
  %i.ih = add nuw i32 %i.if, 1
  store i32 %i.ih, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237
  br label %Py_INCREF.exit38.i95

Py_INCREF.exit38.i95:                             ; preds = %bb.bn, %ucs1lib_fastsearch.exit.thread.i
  %i.ii = getelementptr i8, ptr %i.fh, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.ii, align 8, !tbaa !227
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237 ; 2 uses
  %i.ik = icmp ugt i32 %i.ij, -1073741825
  br i1 %i.ik, label %Py_INCREF.exit37.i96, label %bb.bo

bb.bo:                                            ; preds = %Py_INCREF.exit38.i95
  %i.il = add nuw i32 %i.ij, 1
  store i32 %i.il, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !237
  br label %Py_INCREF.exit37.i96

Py_INCREF.exit37.i96:                             ; preds = %bb.bo, %Py_INCREF.exit38.i95
  %i.im = getelementptr i8, ptr %i.fh, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.im, align 8, !tbaa !227
  %i.in = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.io = icmp ugt i32 %i.in, -1073741825
  br i1 %i.io, label %Py_INCREF.exit36.i97, label %bb.bp

bb.bp:                                            ; preds = %Py_INCREF.exit37.i96
  %i.ip = add nuw i32 %i.in, 1
  store i32 %i.ip, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit36.i97

Py_INCREF.exit36.i97:                             ; preds = %bb.bp, %Py_INCREF.exit37.i96
  %i.iq = getelementptr i8, ptr %i.fh, i64 48
  store ptr %0, ptr %i.iq, align 8, !tbaa !227
  br label %asciilib_rpartition.exit

bb.bq:                                            ; preds = %ucs1lib_fastsearch.exit.i
  switch i64 %.0.i.i103, label %bb.bs [
    i64 0, label %_PyUnicode_FromUCS1.exit.i
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ir = load i8, ptr %.0.i73, align 1, !tbaa !237 ; 2 uses
  %i.is = zext i8 %i.ir to i64                    ; 2 uses
  %i.it = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.is
  %i.iu = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.is
  %i.iv = getelementptr i8, ptr %i.iu, i64 -8192
  %i.iw = icmp slt i8 %i.ir, 0
  %i.ix = select i1 %i.iw, ptr %i.iv, ptr %i.it
  br label %_PyUnicode_FromUCS1.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.iy = getelementptr i8, ptr %.0.i73, i64 %.0.i.i103 ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.thread31.i.i.i, %bb.bs
  %.019.i.i.i = phi ptr [ %.0.i73, %bb.bs ], [ %i.jg, %.thread31.i.i.i ] ; 4 uses
  %i.iz = icmp ult ptr %.019.i.i.i, %i.iy
  br i1 %i.iz, label %bb.bu, label %ucs1lib_find_max_char.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ja = ptrtoint ptr %.019.i.i.i to i64
  %i.jb = and i64 %i.ja, 7
  %.not.i.i.i113 = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i113, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bu, %bb.bv
  %.017.i.i.i = phi ptr [ %i.jc, %bb.bv ], [ %.019.i.i.i, %bb.bu ] ; 4 uses
  %i.jc = getelementptr i8, ptr %.017.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.jc, %i.iy
  br i1 %.not26.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.preheader.i.i.i
  %i.jd = load i64, ptr %.017.i.i.i, align 8, !tbaa !226
  %i.je = and i64 %i.jd, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.je, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !0

bb.bw:                                            ; preds = %.preheader.i.i.i
  %i.jf = icmp eq ptr %.017.i.i.i, %i.iy
  br i1 %i.jf, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.bw, %bb.bu
  %.2.i.i.i = phi ptr [ %.019.i.i.i, %bb.bu ], [ %.017.i.i.i, %bb.bw ] ; 2 uses
  %i.jg = getelementptr i8, ptr %.2.i.i.i, i64 1
  %i.jh = load i8, ptr %.2.i.i.i, align 1, !tbaa !237
  %.not28.i.i.i = icmp sgt i8 %i.jh, -1
  br i1 %.not28.i.i.i, label %bb.bt, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.bw, %bb.bt, %bb.bv
  %.5.i.i.i = phi i32 [ 255, %bb.bv ], [ 127, %bb.bt ], [ 127, %bb.bw ], [ 255, %.thread31.i.i.i ]
  %i.ji = tail call ptr @PyUnicode_New(i64 noundef %.0.i.i103, i32 noundef %.5.i.i.i), !inline_history !724 ; 5 uses
  %.not.i40.i = icmp eq ptr %i.ji, null
  br i1 %.not.i40.i, label %_PyUnicode_FromUCS1.exit.i, label %bb.bx

bb.bx:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.jj = getelementptr i8, ptr %i.ji, i64 32
  %.val.i.i.i107 = load i32, ptr %i.jj, align 8   ; 2 uses
  %i.jk = and i32 %.val.i.i.i107, 32
  %.not.i15.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i15.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jl = and i32 %.val.i.i.i107, 64
end_hunk_0
begin_hunk_1_@rsplit:bb.a
  %.not.i82.i = icmp eq ptr %.val.i.i, @PyUnicode_Type
  br i1 %.not.i82.i, label %bb.gl, label %.critedge.i.thread.i

bb.gl:                                            ; preds = %.critedge.thread.i.i
  %i.rd = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.re = icmp ugt i32 %i.rd, -1073741825
  br i1 %i.re, label %Py_INCREF.exit.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.rf = add nuw i32 %i.rd, 1
  store i32 %i.rf, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.gm, %bb.gl
  %i.rg = getelementptr i8, ptr %i.po, i64 24
  %.val75.i.i = load ptr, ptr %i.rg, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i, align 8, !tbaa !227
  br label %bb.ha

.critedge.i.thread.i:                             ; preds = %.loopexit.i.i, %.critedge.thread.i.i, %.critedge.i.i
  %.0.lcssa133.i.i = phi i64 [ 0, %.critedge.thread.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.qy, %.loopexit.i.i ] ; 4 uses
  %.050.lcssa131.i.i = phi i64 [ %.050.lcssa132.i.i, %.critedge.thread.i.i ], [ %.050105.i.i1422, %.critedge.i.i ], [ %i.qz, %.loopexit.i.i ] ; 3 uses
  %i.rh = icmp sgt i64 %.050.lcssa131.i.i, -2
  br i1 %i.rh, label %bb.gn, label %bb.ha

bb.gn:                                            ; preds = %.critedge.i.thread.i
  %i.ri = add i64 %.050.lcssa131.i.i, 1           ; 2 uses
  %i.rj = icmp eq i64 %.050.lcssa131.i.i, 0
  br i1 %i.rj, label %_PyUnicode_FromASCII.exit88.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rk = tail call ptr @PyUnicode_New(i64 noundef %i.ri, i32 noundef 127), !inline_history !752 ; 5 uses
  %.not.i78.i.i = icmp eq ptr %i.rk, null
  br i1 %.not.i78.i.i, label %Py_DECREF.exit69.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rl = getelementptr i8, ptr %i.rk, i64 32
  %.val.i.i79.i.i = load i32, ptr %i.rl, align 8  ; 2 uses
  %i.rm = and i32 %.val.i.i79.i.i, 32
  %.not.i.i80.i.i = icmp eq i32 %i.rm, 0
  br i1 %.not.i.i80.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.rn = and i32 %.val.i.i79.i.i, 64
  %.not.i.i.i81.i.i = icmp eq i32 %i.rn, 0
  %.0.v.i.i.i82.i.i = select i1 %.not.i.i.i81.i.i, i64 56, i64 40
  %.0.i.i.i83.i.i = getelementptr i8, ptr %i.rk, i64 %.0.v.i.i.i82.i.i
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.ro = getelementptr i8, ptr %i.rk, i64 56
  %.val4.i.i87.i.i = load ptr, ptr %i.ro, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

_PyUnicode_FromASCII.exit88.thread94.i.i:         ; preds = %bb.gr, %bb.gq
  %.0.i.i85.i.i = phi ptr [ %.0.i.i.i83.i.i, %bb.gq ], [ %.val4.i.i87.i.i, %bb.gr ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i85.i.i, ptr readonly align 1 %.0.i271, i64 %i.ri, i1 false)
  br label %bb.gs

_PyUnicode_FromASCII.exit88.i.i:                  ; preds = %bb.gn
  %i.rp = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.rq = zext i8 %i.rp to i64                    ; 2 uses
  %i.rr = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.rq
  %i.rs = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.rq
  %i.rt = getelementptr i8, ptr %i.rs, i64 -8192
  %i.ru = icmp slt i8 %i.rp, 0
  %i.rv = select i1 %i.ru, ptr %i.rt, ptr %i.rr   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %Py_DECREF.exit69.i.i, label %bb.gs

bb.gs:                                            ; preds = %_PyUnicode_FromASCII.exit88.i.i, %_PyUnicode_FromASCII.exit88.thread94.i.i
  %.0.i8696.i.i = phi ptr [ %i.rk, %_PyUnicode_FromASCII.exit88.thread94.i.i ], [ %i.rv, %_PyUnicode_FromASCII.exit88.i.i ] ; 7 uses
  %i.rx = icmp slt i64 %.0.lcssa133.i.i, 12
  br i1 %i.rx, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.ry = getelementptr i8, ptr %i.po, i64 24
  %.val74.i.i = load ptr, ptr %i.ry, align 8, !tbaa !280
  %i.rz = getelementptr [8 x i8], ptr %.val74.i.i, i64 %.0.lcssa133.i.i
  store ptr %.0.i8696.i.i, ptr %i.rz, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.sa = tail call i32 @PyList_Append(ptr noundef nonnull %i.po, ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !750
  %.not60.i.i = icmp eq i32 %i.sa, 0
  %i.sb = load i32, ptr %.0.i8696.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i = icmp sgt i32 %i.sb, -1          ; 2 uses
  br i1 %.not60.i.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  br i1 %.not.i62.i.i, label %bb.gw, label %Py_DECREF.exit69.i.i

bb.gw:                                            ; preds = %bb.gv
  %i.sc = add nsw i32 %i.sb, -1                   ; 2 uses
  store i32 %i.sc, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %Py_DECREF.exit69.sink.split.i.i, label %Py_DECREF.exit69.i.i

bb.gx:                                            ; preds = %bb.gu
  br i1 %.not.i62.i.i, label %bb.gy, label %Py_DECREF.exit63.i.i

bb.gy:                                            ; preds = %bb.gx
  %i.se = add nsw i32 %i.sb, -1                   ; 2 uses
  store i32 %i.se, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.gz, label %Py_DECREF.exit63.i.i

bb.gz:                                            ; preds = %bb.gy
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !750
  br label %Py_DECREF.exit63.i.i

Py_DECREF.exit63.i.i:                             ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gt
  %i.sg = add i64 %.0.lcssa133.i.i, 1
  br label %bb.ha

bb.ha:                                            ; preds = %Py_DECREF.exit63.i.i, %.critedge.i.thread.i, %Py_INCREF.exit.i.i
  %.2.i.i = phi i64 [ 1, %Py_INCREF.exit.i.i ], [ %i.sg, %Py_DECREF.exit63.i.i ], [ %.0.lcssa133.i.i, %.critedge.i.thread.i ]
  %i.sh = getelementptr i8, ptr %i.po, i64 16
  store i64 %.2.i.i, ptr %i.sh, align 8, !tbaa !263
  %i.si = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.po) #33, !inline_history !750
  %i.sj = icmp slt i32 %i.si, 0
  br i1 %i.sj, label %Py_DECREF.exit69.i.i, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i:                  ; preds = %bb.gw, %bb.gg
  %.0.i8696.sink.i.i = phi ptr [ %.0.i92.i.i, %bb.gg ], [ %.0.i8696.i.i, %bb.gw ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.sink.i.i) #33, !inline_history !750
  br label %Py_DECREF.exit69.i.i

Py_DECREF.exit69.i.i:                             ; preds = %_PyUnicode_FromASCII.exit.i.i, %bb.fy, %Py_DECREF.exit69.sink.split.i.i, %bb.ha, %bb.gw, %bb.gv, %_PyUnicode_FromASCII.exit88.i.i, %bb.go, %bb.gg, %bb.gf
  %i.sk = load i32, ptr %i.po, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i282 = icmp sgt i32 %i.sk, -1
  br i1 %.not.i.i.i282, label %bb.hb, label %asciilib_rsplit.exit

bb.hb:                                            ; preds = %Py_DECREF.exit69.i.i
  %i.sl = add nsw i32 %i.sk, -1                   ; 2 uses
  store i32 %i.sl, ptr %i.po, align 8, !tbaa !237
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.hc, label %asciilib_rsplit.exit

bb.hc:                                            ; preds = %bb.hb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.po) #33, !inline_history !750
  br label %asciilib_rsplit.exit

bb.hd:                                            ; preds = %bb.fs
  %i.sn = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.so = add nsw i64 %i.sn, 1
  %i.sp = tail call ptr @PyList_New(i64 noundef %i.so) #33, !inline_history !749 ; 12 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %asciilib_rsplit.exit, label %.preheader.i286

.preheader.i286:                                  ; preds = %bb.hd
  %i.sr = icmp slt i64 %.1, 1
  br i1 %i.sr, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %.preheader.i286
  %i.ss = icmp slt i64 %.val99, 2
  %i.st = add i64 %.val99, -1                     ; 6 uses
  %i.su = getelementptr i8, ptr %i.sp, i64 24
  br i1 %i.ss, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287.split.preheader

.lr.ph.i287.split.preheader:                      ; preds = %.lr.ph.i287
  %xtraiter = and i64 %i.st, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.sv = getelementptr i8, ptr %.080, i64 %i.st
  %i.sw = add nsw i64 %.val99, -2                 ; 2 uses
  %i.sx = icmp eq i64 %.val99, 2
  br label %.lr.ph.i287.split

.lr.ph.i287.split:                                ; preds = %.lr.ph.i287.split.preheader, %Py_DECREF.exit72.i
  %.in.i = phi i64 [ %i.ti, %Py_DECREF.exit72.i ], [ %.1, %.lr.ph.i287.split.preheader ] ; 2 uses
  %.0137.i = phi i64 [ %i.wa, %Py_DECREF.exit72.i ], [ 0, %.lr.ph.i287.split.preheader ] ; 5 uses
  %.057136.i = phi i64 [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ], [ %.val100, %.lr.ph.i287.split.preheader ] ; 4 uses
  %i.sy = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.sz = and i8 %i.sy, 63
  %i.ta = zext nneg i8 %i.sz to i64
  %i.tb = shl nuw i64 1, %i.ta                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %.lr.ph.i287.split
  %i.tc = load i8, ptr %i.sv, align 1, !tbaa !237 ; 2 uses
  %i.td = and i8 %i.tc, 63
  %i.te = zext nneg i8 %i.td to i64
  %i.tf = shl nuw i64 1, %i.te
  %i.tg = or i64 %i.tf, %i.tb                     ; 2 uses
  %i.th = icmp eq i8 %i.tc, %i.sy
  %spec.select.i.i.i.prol = select i1 %i.th, i64 %i.sw, i64 %i.st ; 2 uses
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %.lr.ph.i287.split
  %.060.i.i.i.unr = phi i64 [ %i.st, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.st, %.lr.ph.i287.split ], [ %i.sw, %.lr.ph.i70.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.tb, %.lr.ph.i287.split ], [ %i.tg, %.lr.ph.i70.i.i.prol ]
  %.lcssa1636.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %i.tg, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  br i1 %i.sx, label %.lr.ph66.split.us.i.preheader.i.i, label %.lr.ph.i70.i.i

.lr.ph66.split.us.i.preheader.i.i:                ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa1636 = phi i64 [ %.lcssa1636.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.uw, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.ti = add nsw i64 %.in.i, -1
  %i.tj = sub nsw i64 %.057136.i, %.val99
  br label %.lr.ph66.split.us.i.i.i

.lr.ph66.split.us.i.i.i:                          ; preds = %bb.hj, %.lr.ph66.split.us.i.preheader.i.i
  %.14865.us.i.i.i = phi i64 [ %i.uh, %bb.hj ], [ %i.tj, %.lr.ph66.split.us.i.preheader.i.i ] ; 9 uses
  %i.tk = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i ; 4 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !237
  %i.tm = icmp eq i8 %i.tl, %i.sy
  br i1 %i.tm, label %.preheader.us.i72.i.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.tn = getelementptr i8, ptr %i.tk, i64 -1
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !237
  %i.tp = and i8 %i.to, 63
  %i.tq = zext nneg i8 %i.tp to i64
  %i.tr = shl nuw i64 1, %i.tq
  %i.ts = and i64 %i.tr, %.lcssa1636
  %.not51.us.i.i.i = icmp eq i64 %i.ts, 0
  %i.tt = select i1 %.not51.us.i.i.i, i64 %.val99, i64 0
  br label %bb.hj

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.hg
  %.04662.us.i.i.i = phi i64 [ %i.ty, %bb.hg ], [ %i.st, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.tu = getelementptr i8, ptr %i.tk, i64 %.04662.us.i.i.i
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !237
  %i.tw = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !237
  %.not52.us.i.i.i = icmp eq i8 %i.tv, %i.tx
  br i1 %.not52.us.i.i.i, label %bb.hg, label %.thread.us.i73.i.i

bb.hg:                                            ; preds = %.preheader.us.i72.i.i
  %i.ty = add nsw i64 %.04662.us.i.i.i, -1
  %i.tz = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.tz, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !25

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %.thread.us.i73.i.i
  %i.ua = getelementptr i8, ptr %i.tk, i64 -1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !237
  %i.uc = and i8 %i.ub, 63
  %i.ud = zext nneg i8 %i.uc to i64
  %i.ue = shl nuw i64 1, %i.ud
  %i.uf = and i64 %i.ue, %.lcssa1636
  %.not54.us.i.i.i = icmp eq i64 %i.uf, 0
  br i1 %.not54.us.i.i.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.thread.us.i73.i.i
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hf
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.hi ], [ %i.tt, %bb.hf ], [ %.val99, %bb.hh ]
  %i.ug = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.uh = add nsw i64 %i.ug, -1
  %i.ui = icmp sgt i64 %i.ug, 0
  br i1 %i.ui, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !26

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.uy, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.uw, %.lr.ph.i70.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %i.uj = getelementptr i8, ptr %.080, i64 %.04759.i.i.i
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !237 ; 2 uses
  %i.ul = and i8 %i.uk, 63
  %i.um = zext nneg i8 %i.ul to i64
  %i.un = shl nuw i64 1, %i.um
  %i.uo = or i64 %i.un, %.04958.i.i.i
  %i.up = icmp eq i8 %i.uk, %i.sy
  %i.uq = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.up, i64 %i.uq, i64 %.060.i.i.i
  %i.ur = getelementptr i8, ptr %.080, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !237 ; 2 uses
  %i.ut = and i8 %i.us, 63
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = shl nuw i64 1, %i.uu
  %i.uw = or i64 %i.uv, %i.uo                     ; 2 uses
  %i.ux = icmp eq i8 %i.us, %i.sy
  %i.uy = add nsw i64 %.04759.i.i.i, -2           ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.ux, i64 %i.uy, i64 %spec.select.i.i.i ; 2 uses
  %i.uz = icmp sgt i64 %.04759.i.i.i, 2
  br i1 %i.uz, label %.lr.ph.i70.i.i, label %.lr.ph66.split.us.i.preheader.i.i, !llvm.loop !27

asciilib_fastsearch.exit.i:                       ; preds = %bb.hg
  %i.va = icmp slt i64 %.14865.us.i.i.i, 0
  br i1 %i.va, label %asciilib_fastsearch.exit.thread.i, label %bb.hk

bb.hk:                                            ; preds = %asciilib_fastsearch.exit.i
  %i.vb = add nuw i64 %.14865.us.i.i.i, %.val99   ; 2 uses
  %i.vc = getelementptr i8, ptr %.0.i271, i64 %i.vb ; 2 uses
  %i.vd = sub i64 %.057136.i, %i.vb               ; 3 uses
  %i.ve = icmp eq i64 %i.vd, 1
  br i1 %i.ve, label %_PyUnicode_FromASCII.exit.i295, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.vf = tail call ptr @PyUnicode_New(i64 noundef %i.vd, i32 noundef 127), !inline_history !754 ; 5 uses
  %.not.i83.i = icmp eq ptr %i.vf, null
  br i1 %.not.i83.i, label %Py_DECREF.exit74.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.vg = getelementptr i8, ptr %i.vf, i64 32
  %.val.i.i.i291 = load i32, ptr %i.vg, align 8   ; 2 uses
  %i.vh = and i32 %.val.i.i.i291, 32
  %.not.i.i84.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i.i84.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.vi = and i32 %.val.i.i.i291, 64
  %.not.i.i.i85.i = icmp eq i32 %i.vi, 0
  %.0.v.i.i.i.i292 = select i1 %.not.i.i.i85.i, i64 56, i64 40
  %.0.i.i.i86.i = getelementptr i8, ptr %i.vf, i64 %.0.v.i.i.i.i292
  br label %_PyUnicode_FromASCII.exit.thread102.i

bb.ho:                                            ; preds = %bb.hm
  %i.vj = getelementptr i8, ptr %i.vf, i64 56
  %.val4.i.i.i294 = load ptr, ptr %i.vj, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit.thread102.i

_PyUnicode_FromASCII.exit.thread102.i:            ; preds = %bb.ho, %bb.hn
  %.0.i.i87.i = phi ptr [ %.0.i.i.i86.i, %bb.hn ], [ %.val4.i.i.i294, %bb.ho ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i87.i, ptr readonly align 1 %i.vc, i64 %i.vd, i1 false)
  br label %bb.hp

_PyUnicode_FromASCII.exit.i295:                   ; preds = %bb.hk
  %i.vk = load i8, ptr %i.vc, align 1, !tbaa !237 ; 2 uses
  %i.vl = zext i8 %i.vk to i64                    ; 2 uses
  %i.vm = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.vl
  %i.vn = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.vl
  %i.vo = getelementptr i8, ptr %i.vn, i64 -8192
  %i.vp = icmp slt i8 %i.vk, 0
  %i.vq = select i1 %i.vp, ptr %i.vo, ptr %i.vm   ; 2 uses
  %i.vr = icmp eq ptr %i.vq, null
  br i1 %i.vr, label %Py_DECREF.exit74.i, label %bb.hp

bb.hp:                                            ; preds = %_PyUnicode_FromASCII.exit.i295, %_PyUnicode_FromASCII.exit.thread102.i
  %.0.i88104.i = phi ptr [ %i.vf, %_PyUnicode_FromASCII.exit.thread102.i ], [ %i.vq, %_PyUnicode_FromASCII.exit.i295 ] ; 7 uses
  %i.vs = icmp samesign ult i64 %.0137.i, 12
  br i1 %i.vs, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %.val81.i = load ptr, ptr %i.su, align 8, !tbaa !280
  %i.vt = getelementptr [8 x i8], ptr %.val81.i, i64 %.0137.i
  store ptr %.0.i88104.i, ptr %i.vt, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i

bb.hr:                                            ; preds = %bb.hp
  %i.vu = tail call i32 @PyList_Append(ptr noundef nonnull %i.sp, ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  %.not.i293 = icmp eq i32 %i.vu, 0
  %i.vv = load i32, ptr %.0.i88104.i, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i = icmp sgt i32 %i.vv, -1            ; 2 uses
  br i1 %.not.i293, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  br i1 %.not.i71.i, label %bb.ht, label %Py_DECREF.exit74.i

bb.ht:                                            ; preds = %bb.hs
  %i.vw = add nsw i32 %i.vv, -1                   ; 2 uses
  store i32 %i.vw, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.hu:                                            ; preds = %bb.hr
  br i1 %.not.i71.i, label %bb.hv, label %Py_DECREF.exit72.i

bb.hv:                                            ; preds = %bb.hu
  %i.vy = add nsw i32 %i.vv, -1                   ; 2 uses
  store i32 %i.vy, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %bb.hw, label %Py_DECREF.exit72.i

bb.hw:                                            ; preds = %bb.hv
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %bb.hw, %bb.hv, %bb.hu, %bb.hq
  %i.wa = add nuw nsw i64 %.0137.i, 1             ; 2 uses
  %i.wb = icmp slt i64 %.in.i, 2
  %i.wc = icmp slt i64 %.14865.us.i.i.i, %.val99
  %or.cond.i = or i1 %i.wb, %i.wc
  br i1 %or.cond.i, label %asciilib_fastsearch.exit.thread.thread206.i, label %.lr.ph.i287.split, !llvm.loop !755

asciilib_fastsearch.exit.thread.i:                ; preds = %asciilib_fastsearch.exit.i, %bb.hj, %bb.he
  %i.wd = icmp eq i64 %.0137.i, 0
  br i1 %i.wd, label %asciilib_fastsearch.exit.thread.thread.i, label %asciilib_fastsearch.exit.thread.thread206.i

asciilib_fastsearch.exit.thread.thread.i:         ; preds = %.lr.ph.i287, %asciilib_fastsearch.exit.thread.i, %.preheader.i286
  %.057124203.i = phi i64 [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i286 ], [ %.val100, %.lr.ph.i287 ]
  %i.we = getelementptr i8, ptr %0, i64 8
  %.val.i289 = load ptr, ptr %i.we, align 8, !tbaa !229
  %.not109.i = icmp eq ptr %.val.i289, @PyUnicode_Type
  br i1 %.not109.i, label %bb.hx, label %asciilib_fastsearch.exit.thread.thread206.i

bb.hx:                                            ; preds = %asciilib_fastsearch.exit.thread.thread.i
  %i.wf = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.wg = icmp ugt i32 %i.wf, -1073741825
  br i1 %i.wg, label %Py_INCREF.exit.i290, label %bb.hy
end_hunk_1
begin_hunk_2_@rsplit:bb.a
bb.jp:                                            ; preds = %bb.jo
  %i.zx = ptrtoint ptr %.019.i.i79.i.i to i64
  %i.zy = and i64 %i.zx, 7
  %.not.i.i91.i.i = icmp eq i64 %i.zy, 0
  br i1 %.not.i.i91.i.i, label %.preheader.i.i95.i.i, label %.thread31.i.i92.i.i

.preheader.i.i95.i.i:                             ; preds = %bb.jp, %bb.jq
  %.017.i.i96.i.i = phi ptr [ %i.zz, %bb.jq ], [ %.019.i.i79.i.i, %bb.jp ] ; 4 uses
  %i.zz = getelementptr i8, ptr %.017.i.i96.i.i, i64 8 ; 2 uses
  %.not26.i.i97.i.i = icmp ugt ptr %i.zz, %i.zv
  br i1 %.not26.i.i97.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %.preheader.i.i95.i.i
  %i.aaa = load i64, ptr %.017.i.i96.i.i, align 8, !tbaa !226
  %i.aab = and i64 %i.aaa, -9187201950435737472
  %.not27.i.i98.i.i = icmp eq i64 %i.aab, 0
  br i1 %.not27.i.i98.i.i, label %.preheader.i.i95.i.i, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !0

bb.jr:                                            ; preds = %.preheader.i.i95.i.i
  %i.aac = icmp eq ptr %.017.i.i96.i.i, %i.zv
  br i1 %i.aac, label %ucs1lib_find_max_char.exit.i80.i.i, label %.thread31.i.i92.i.i

.thread31.i.i92.i.i:                              ; preds = %bb.jr, %bb.jp
  %.2.i.i93.i.i = phi ptr [ %.019.i.i79.i.i, %bb.jp ], [ %.017.i.i96.i.i, %bb.jr ] ; 2 uses
  %i.aad = getelementptr i8, ptr %.2.i.i93.i.i, i64 1
  %i.aae = load i8, ptr %.2.i.i93.i.i, align 1, !tbaa !237
  %.not28.i.i94.i.i = icmp sgt i8 %i.aae, -1
  br i1 %.not28.i.i94.i.i, label %bb.jo, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i80.i.i:               ; preds = %.thread31.i.i92.i.i, %bb.jr, %bb.jo, %bb.jq
  %.5.i.i81.i.i = phi i32 [ 255, %bb.jq ], [ 127, %bb.jr ], [ 127, %bb.jo ], [ 255, %.thread31.i.i92.i.i ]
  %i.aaf = tail call ptr @PyUnicode_New(i64 noundef %i.zu, i32 noundef %.5.i.i81.i.i), !inline_history !759 ; 5 uses
  %.not.i82.i.i = icmp eq ptr %i.aaf, null
  br i1 %.not.i82.i.i, label %Py_DECREF.exit69.i.i302, label %bb.js

bb.js:                                            ; preds = %ucs1lib_find_max_char.exit.i80.i.i
  %i.aag = getelementptr i8, ptr %i.aaf, i64 32
  %.val.i.i83.i.i = load i32, ptr %i.aag, align 8 ; 2 uses
  %i.aah = and i32 %.val.i.i83.i.i, 32
  %.not.i15.i84.i.i = icmp eq i32 %i.aah, 0
  br i1 %.not.i15.i84.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aai = and i32 %.val.i.i83.i.i, 64
  %.not.i.i.i85.i.i = icmp eq i32 %i.aai, 0
  %.0.v.i.i.i86.i.i = select i1 %.not.i.i.i85.i.i, i64 56, i64 40
  %.0.i.i.i87.i.i = getelementptr i8, ptr %i.aaf, i64 %.0.v.i.i.i86.i.i
  br label %_PyUnicode_DATA.exit.i88.i.i

bb.ju:                                            ; preds = %bb.js
  %i.aaj = getelementptr i8, ptr %i.aaf, i64 56
  %.val4.i.i90.i.i = load ptr, ptr %i.aaj, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i88.i.i

_PyUnicode_DATA.exit.i88.i.i:                     ; preds = %bb.ju, %bb.jt
  %.0.i.i89.i.i = phi ptr [ %.0.i.i.i87.i.i, %bb.jt ], [ %.val4.i.i90.i.i, %bb.ju ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i.i, ptr align 1 %.0.i271, i64 %i.zu, i1 false)
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.i.i:                   ; preds = %bb.jm
  %i.aak = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.aal = zext i8 %i.aak to i64                  ; 2 uses
  %i.aam = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aal
  %i.aan = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aal
  %i.aao = getelementptr i8, ptr %i.aan, i64 -8192
  %i.aap = icmp slt i8 %i.aak, 0
  %i.aaq = select i1 %i.aap, ptr %i.aao, ptr %i.aam ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_FromUCS1.exit99.i.i, %_PyUnicode_DATA.exit.i88.i.i, %bb.jm
  %.0.i78105.i.i = phi ptr [ %i.aaq, %_PyUnicode_FromUCS1.exit99.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jm ], [ %i.aaf, %_PyUnicode_DATA.exit.i88.i.i ] ; 7 uses
  %i.aas = icmp slt i64 %.0.lcssa155.i.i, 12
  br i1 %i.aas, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aat = getelementptr i8, ptr %i.xr, i64 24
  %.val74.i.i308 = load ptr, ptr %i.aat, align 8, !tbaa !280
  %i.aau = getelementptr [8 x i8], ptr %.val74.i.i308, i64 %.0.lcssa155.i.i
  store ptr %.0.i78105.i.i, ptr %i.aau, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i307

bb.jw:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aav = tail call i32 @PyList_Append(ptr noundef nonnull %i.xr, ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  %.not60.i.i304 = icmp eq i32 %i.aav, 0
  %i.aaw = load i32, ptr %.0.i78105.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i305 = icmp sgt i32 %i.aaw, -1      ; 2 uses
  br i1 %.not60.i.i304, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  br i1 %.not.i62.i.i305, label %bb.jy, label %Py_DECREF.exit69.i.i302

bb.jy:                                            ; preds = %bb.jx
  %i.aax = add nsw i32 %i.aaw, -1                 ; 2 uses
  store i32 %i.aax, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.jz:                                            ; preds = %bb.jw
  br i1 %.not.i62.i.i305, label %bb.ka, label %Py_DECREF.exit63.i.i307

bb.ka:                                            ; preds = %bb.jz
  %i.aaz = add nsw i32 %i.aaw, -1                 ; 2 uses
  store i32 %i.aaz, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.kb, label %Py_DECREF.exit63.i.i307

bb.kb:                                            ; preds = %bb.ka
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit63.i.i307

Py_DECREF.exit63.i.i307:                          ; preds = %bb.kb, %bb.ka, %bb.jz, %bb.jv
  %i.abb = add i64 %.0.lcssa155.i.i, 1
  br label %bb.kc

bb.kc:                                            ; preds = %Py_DECREF.exit63.i.i307, %.critedge.i.thread.i299, %Py_INCREF.exit.i.i309
  %.2.i.i300 = phi i64 [ 1, %Py_INCREF.exit.i.i309 ], [ %i.abb, %Py_DECREF.exit63.i.i307 ], [ %.0.lcssa155.i.i, %.critedge.i.thread.i299 ]
  %i.abc = getelementptr i8, ptr %i.xr, i64 16
  store i64 %.2.i.i300, ptr %i.abc, align 8, !tbaa !263
  %i.abd = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.xr) #33, !inline_history !757
  %i.abe = icmp slt i32 %i.abd, 0
  br i1 %i.abe, label %Py_DECREF.exit69.i.i302, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i306:               ; preds = %bb.jy, %bb.jf
  %.0.i78105.sink.i.i = phi ptr [ %.0.i101.i.i, %bb.jf ], [ %.0.i78105.i.i, %bb.jy ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.sink.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit69.i.i302

Py_DECREF.exit69.i.i302:                          ; preds = %_PyUnicode_FromUCS1.exit.i.i, %ucs1lib_find_max_char.exit.i.i.i, %Py_DECREF.exit69.sink.split.i.i306, %bb.kc, %bb.jy, %bb.jx, %_PyUnicode_FromUCS1.exit99.i.i, %ucs1lib_find_max_char.exit.i80.i.i, %bb.jf, %bb.je
  %i.abf = load i32, ptr %i.xr, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i303 = icmp sgt i32 %i.abf, -1
  br i1 %.not.i.i.i303, label %bb.kd, label %asciilib_rsplit.exit

bb.kd:                                            ; preds = %Py_DECREF.exit69.i.i302
  %i.abg = add nsw i32 %i.abf, -1                 ; 2 uses
  store i32 %i.abg, ptr %i.xr, align 8, !tbaa !237
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.ke, label %asciilib_rsplit.exit

bb.ke:                                            ; preds = %bb.kd
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.xr) #33, !inline_history !757
  br label %asciilib_rsplit.exit

bb.kf:                                            ; preds = %bb.io
  %i.abi = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.abj = add nsw i64 %i.abi, 1
  %i.abk = tail call ptr @PyList_New(i64 noundef %i.abj) #33, !inline_history !756 ; 12 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %asciilib_rsplit.exit, label %.preheader.i329

.preheader.i329:                                  ; preds = %bb.kf
  %i.abm = icmp slt i64 %.1, 1
  br i1 %i.abm, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %.preheader.i329
  %i.abn = icmp slt i64 %.val99, 2
  %i.abo = add i64 %.val99, -1                    ; 6 uses
  %i.abp = getelementptr i8, ptr %i.abk, i64 24
  br i1 %i.abn, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330.split.preheader

.lr.ph.i330.split.preheader:                      ; preds = %.lr.ph.i330
  %xtraiter1737 = and i64 %i.abo, 1
  %lcmp.mod1738.not = icmp eq i64 %xtraiter1737, 0
  %i.abq = getelementptr i8, ptr %.080, i64 %i.abo
  %i.abr = add nsw i64 %.val99, -2                ; 2 uses
  %i.abs = icmp eq i64 %.val99, 2
  br label %.lr.ph.i330.split

.lr.ph.i330.split:                                ; preds = %.lr.ph.i330.split.preheader, %Py_DECREF.exit72.i360
  %.in.i331 = phi i64 [ %i.acd, %Py_DECREF.exit72.i360 ], [ %.1, %.lr.ph.i330.split.preheader ] ; 2 uses
  %.0156.i = phi i64 [ %i.afe, %Py_DECREF.exit72.i360 ], [ 0, %.lr.ph.i330.split.preheader ] ; 5 uses
  %.057155.i = phi i64 [ %.14865.us.i.i.i337, %Py_DECREF.exit72.i360 ], [ %.val100, %.lr.ph.i330.split.preheader ] ; 5 uses
  %i.abt = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.abu = and i8 %i.abt, 63
  %i.abv = zext nneg i8 %i.abu to i64
  %i.abw = shl nuw i64 1, %i.abv                  ; 2 uses
  br i1 %lcmp.mod1738.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %.lr.ph.i330.split
  %i.abx = load i8, ptr %i.abq, align 1, !tbaa !237 ; 2 uses
  %i.aby = and i8 %i.abx, 63
  %i.abz = zext nneg i8 %i.aby to i64
  %i.aca = shl nuw i64 1, %i.abz
  %i.acb = or i64 %i.aca, %i.abw                  ; 2 uses
  %i.acc = icmp eq i8 %i.abx, %i.abt
  %spec.select.i76.i.i.prol = select i1 %i.acc, i64 %i.abr, i64 %i.abo ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %.lr.ph.i330.split
  %.060.i.i.i332.unr = phi i64 [ %i.abo, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i333.unr = phi i64 [ %i.abo, %.lr.ph.i330.split ], [ %i.abr, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i334.unr = phi i64 [ %i.abw, %.lr.ph.i330.split ], [ %i.acb, %.lr.ph.i75.i.i.prol ]
  %.lcssa1595.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %i.acb, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  br i1 %i.abs, label %.lr.ph66.split.us.i.preheader.i.i335, label %.lr.ph.i75.i.i

.lr.ph66.split.us.i.preheader.i.i335:             ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa1595 = phi i64 [ %.lcssa1595.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.adr, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.acd = add nsw i64 %.in.i331, -1
  %i.ace = sub nsw i64 %.057155.i, %.val99
  br label %.lr.ph66.split.us.i.i.i336

.lr.ph66.split.us.i.i.i336:                       ; preds = %bb.kl, %.lr.ph66.split.us.i.preheader.i.i335
  %.14865.us.i.i.i337 = phi i64 [ %i.adc, %bb.kl ], [ %i.ace, %.lr.ph66.split.us.i.preheader.i.i335 ] ; 9 uses
  %i.acf = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i337 ; 4 uses
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !237
  %i.ach = icmp eq i8 %i.acg, %i.abt
  br i1 %i.ach, label %.preheader.us.i78.i.i, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph66.split.us.i.i.i336
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i337, 0
  br i1 %.not.us.i77.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aci = getelementptr i8, ptr %i.acf, i64 -1
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !237
  %i.ack = and i8 %i.acj, 63
  %i.acl = zext nneg i8 %i.ack to i64
  %i.acm = shl nuw i64 1, %i.acl
  %i.acn = and i64 %i.acm, %.lcssa1595
  %.not51.us.i.i.i338 = icmp eq i64 %i.acn, 0
  %i.aco = select i1 %.not51.us.i.i.i338, i64 %.val99, i64 0
  br label %bb.kl

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i336, %bb.ki
  %.04662.us.i.i.i351 = phi i64 [ %i.act, %bb.ki ], [ %i.abo, %.lr.ph66.split.us.i.i.i336 ] ; 4 uses
  %i.acp = getelementptr i8, ptr %i.acf, i64 %.04662.us.i.i.i351
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !237
  %i.acr = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i351
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !237
  %.not52.us.i.i.i352 = icmp eq i8 %i.acq, %i.acs
  br i1 %.not52.us.i.i.i352, label %bb.ki, label %.thread.us.i.i.i

bb.ki:                                            ; preds = %.preheader.us.i78.i.i
  %i.act = add nsw i64 %.04662.us.i.i.i351, -1
  %i.acu = icmp sgt i64 %.04662.us.i.i.i351, 1
  br i1 %i.acu, label %.preheader.us.i78.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !28

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i353 = icmp eq i64 %.14865.us.i.i.i337, 0
  br i1 %.not53.us.i.i.i353, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %.thread.us.i.i.i
  %i.acv = getelementptr i8, ptr %i.acf, i64 -1
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !237
  %i.acx = and i8 %i.acw, 63
  %i.acy = zext nneg i8 %i.acx to i64
  %i.acz = shl nuw i64 1, %i.acy
  %i.ada = and i64 %i.acz, %.lcssa1595
  %.not54.us.i.i.i354 = icmp eq i64 %i.ada, 0
  br i1 %.not54.us.i.i.i354, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %.thread.us.i.i.i
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj, %bb.kh
  %spec.select.lcssa.sink.i.i.i339 = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.kk ], [ %i.aco, %bb.kh ], [ %.val99, %bb.kj ]
  %i.adb = sub nsw i64 %.14865.us.i.i.i337, %spec.select.lcssa.sink.i.i.i339 ; 2 uses
  %i.adc = add nsw i64 %i.adb, -1
  %i.add = icmp sgt i64 %i.adb, 0
  br i1 %i.add, label %.lr.ph66.split.us.i.i.i336, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i332 = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i332.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i333 = phi i64 [ %i.adt, %.lr.ph.i75.i.i ], [ %.04759.i.i.i333.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i334 = phi i64 [ %i.adr, %.lr.ph.i75.i.i ], [ %.04958.i.i.i334.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.ade = getelementptr i8, ptr %.080, i64 %.04759.i.i.i333
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !237 ; 2 uses
  %i.adg = and i8 %i.adf, 63
  %i.adh = zext nneg i8 %i.adg to i64
  %i.adi = shl nuw i64 1, %i.adh
  %i.adj = or i64 %i.adi, %.04958.i.i.i334
  %i.adk = icmp eq i8 %i.adf, %i.abt
  %i.adl = add nsw i64 %.04759.i.i.i333, -1       ; 2 uses
  %spec.select.i76.i.i = select i1 %i.adk, i64 %i.adl, i64 %.060.i.i.i332
  %i.adm = getelementptr i8, ptr %.080, i64 %i.adl
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !237 ; 2 uses
  %i.ado = and i8 %i.adn, 63
  %i.adp = zext nneg i8 %i.ado to i64
  %i.adq = shl nuw i64 1, %i.adp
  %i.adr = or i64 %i.adq, %i.adj                  ; 2 uses
  %i.ads = icmp eq i8 %i.adn, %i.abt
  %i.adt = add nsw i64 %.04759.i.i.i333, -2       ; 2 uses
  %spec.select.i76.i.i.1 = select i1 %i.ads, i64 %i.adt, i64 %spec.select.i76.i.i ; 2 uses
  %i.adu = icmp sgt i64 %.04759.i.i.i333, 2
  br i1 %i.adu, label %.lr.ph.i75.i.i, label %.lr.ph66.split.us.i.preheader.i.i335, !llvm.loop !30

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.ki
  %i.adv = icmp slt i64 %.14865.us.i.i.i337, 0
  br i1 %i.adv, label %ucs1lib_fastsearch.exit.thread.i, label %bb.km

bb.km:                                            ; preds = %ucs1lib_fastsearch.exit.i
  %i.adw = add nuw i64 %.14865.us.i.i.i337, %.val99 ; 2 uses
  %i.adx = getelementptr i8, ptr %.0.i271, i64 %i.adw ; 3 uses
  %i.ady = sub i64 %.057155.i, %i.adw             ; 3 uses
  switch i64 %i.ady, label %bb.kn [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i356
    i64 1, label %_PyUnicode_FromUCS1.exit.i355
  ]

bb.kn:                                            ; preds = %bb.km
  %i.adz = getelementptr i8, ptr %.0.i271, i64 %.057155.i ; 3 uses
  br label %bb.ko

bb.ko:                                            ; preds = %.thread31.i.i.i375, %bb.kn
  %.019.i.i.i363 = phi ptr [ %i.adx, %bb.kn ], [ %i.aeh, %.thread31.i.i.i375 ] ; 4 uses
  %i.aea = icmp ult ptr %.019.i.i.i363, %i.adz
  br i1 %i.aea, label %bb.kp, label %ucs1lib_find_max_char.exit.i.i364

bb.kp:                                            ; preds = %bb.ko
  %i.aeb = ptrtoint ptr %.019.i.i.i363 to i64
  %i.aec = and i64 %i.aeb, 7
  %.not.i.i88.i = icmp eq i64 %i.aec, 0
  br i1 %.not.i.i88.i, label %.preheader.i.i.i378, label %.thread31.i.i.i375

.preheader.i.i.i378:                              ; preds = %bb.kp, %bb.kq
  %.017.i.i.i379 = phi ptr [ %i.aed, %bb.kq ], [ %.019.i.i.i363, %bb.kp ] ; 4 uses
  %i.aed = getelementptr i8, ptr %.017.i.i.i379, i64 8 ; 2 uses
  %.not26.i.i.i380 = icmp ugt ptr %i.aed, %i.adz
  br i1 %.not26.i.i.i380, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %.preheader.i.i.i378
  %i.aee = load i64, ptr %.017.i.i.i379, align 8, !tbaa !226
  %i.aef = and i64 %i.aee, -9187201950435737472
  %.not27.i.i.i381 = icmp eq i64 %i.aef, 0
  br i1 %.not27.i.i.i381, label %.preheader.i.i.i378, label %ucs1lib_find_max_char.exit.i.i364, !llvm.loop !0

bb.kr:                                            ; preds = %.preheader.i.i.i378
  %i.aeg = icmp eq ptr %.017.i.i.i379, %i.adz
  br i1 %i.aeg, label %ucs1lib_find_max_char.exit.i.i364, label %.thread31.i.i.i375

.thread31.i.i.i375:                               ; preds = %bb.kr, %bb.kp
  %.2.i.i.i376 = phi ptr [ %.019.i.i.i363, %bb.kp ], [ %.017.i.i.i379, %bb.kr ] ; 2 uses
  %i.aeh = getelementptr i8, ptr %.2.i.i.i376, i64 1
  %i.aei = load i8, ptr %.2.i.i.i376, align 1, !tbaa !237
  %.not28.i.i.i377 = icmp sgt i8 %i.aei, -1
  br i1 %.not28.i.i.i377, label %bb.ko, label %ucs1lib_find_max_char.exit.i.i364, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i364:                ; preds = %.thread31.i.i.i375, %bb.kr, %bb.ko, %bb.kq
  %.5.i.i.i365 = phi i32 [ 255, %bb.kq ], [ 127, %bb.ko ], [ 127, %bb.kr ], [ 255, %.thread31.i.i.i375 ]
  %i.aej = tail call ptr @PyUnicode_New(i64 noundef %i.ady, i32 noundef %.5.i.i.i365), !inline_history !761 ; 5 uses
  %.not.i84.i366 = icmp eq ptr %i.aej, null
  br i1 %.not.i84.i366, label %Py_DECREF.exit74.i342, label %bb.ks

bb.ks:                                            ; preds = %ucs1lib_find_max_char.exit.i.i364
  %i.aek = getelementptr i8, ptr %i.aej, i64 32
  %.val.i.i.i367 = load i32, ptr %i.aek, align 8  ; 2 uses
  %i.ael = and i32 %.val.i.i.i367, 32
  %.not.i15.i.i368 = icmp eq i32 %i.ael, 0
  br i1 %.not.i15.i.i368, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aem = and i32 %.val.i.i.i367, 64
  %.not.i.i.i85.i369 = icmp eq i32 %i.aem, 0
  %.0.v.i.i.i.i370 = select i1 %.not.i.i.i85.i369, i64 56, i64 40
  %.0.i.i.i86.i371 = getelementptr i8, ptr %i.aej, i64 %.0.v.i.i.i.i370
  br label %_PyUnicode_DATA.exit.i.i372

bb.ku:                                            ; preds = %bb.ks
  %i.aen = getelementptr i8, ptr %i.aej, i64 56
  %.val4.i.i.i374 = load ptr, ptr %i.aen, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i372

_PyUnicode_DATA.exit.i.i372:                      ; preds = %bb.ku, %bb.kt
  %.0.i.i87.i373 = phi ptr [ %.0.i.i.i86.i371, %bb.kt ], [ %.val4.i.i.i374, %bb.ku ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i87.i373, ptr align 1 %i.adx, i64 %i.ady, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i356

_PyUnicode_FromUCS1.exit.i355:                    ; preds = %bb.km
  %i.aeo = load i8, ptr %i.adx, align 1, !tbaa !237 ; 2 uses
  %i.aep = zext i8 %i.aeo to i64                  ; 2 uses
  %i.aeq = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aep
  %i.aer = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aep
  %i.aes = getelementptr i8, ptr %i.aer, i64 -8192
  %i.aet = icmp slt i8 %i.aeo, 0
  %i.aeu = select i1 %i.aet, ptr %i.aes, ptr %i.aeq ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %Py_DECREF.exit74.i342, label %_PyUnicode_FromUCS1.exit.thread.i356

_PyUnicode_FromUCS1.exit.thread.i356:             ; preds = %_PyUnicode_FromUCS1.exit.i355, %_PyUnicode_DATA.exit.i.i372, %bb.km
  %.0.i83113.i = phi ptr [ %i.aeu, %_PyUnicode_FromUCS1.exit.i355 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.km ], [ %i.aej, %_PyUnicode_DATA.exit.i.i372 ] ; 7 uses
  %i.aew = icmp samesign ult i64 %.0156.i, 12
  br i1 %i.aew, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i356
  %.val81.i362 = load ptr, ptr %i.abp, align 8, !tbaa !280
  %i.aex = getelementptr [8 x i8], ptr %.val81.i362, i64 %.0156.i
  store ptr %.0.i83113.i, ptr %i.aex, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i360

bb.kw:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i356
  %i.aey = tail call i32 @PyList_Append(ptr noundef nonnull %i.abk, ptr noundef nonnull %.0.i83113.i) #33, !inline_history !756
  %.not.i357 = icmp eq i32 %i.aey, 0
  %i.aez = load i32, ptr %.0.i83113.i, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i359 = icmp sgt i32 %i.aez, -1        ; 2 uses
  br i1 %.not.i357, label %bb.kz, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  br i1 %.not.i71.i359, label %bb.ky, label %Py_DECREF.exit74.i342

end_hunk_2
begin_hunk_3_@ucs1lib_rfind_slice:bb.a
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %.lcssa
  %.not54.us.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not54.us.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.us.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.h ], [ %i.ad, %bb.e ], [ %2, %bb.g ]
  %i.aq = sub nsw i64 %.14865.us.i.i.fr.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = icmp sgt i64 %i.aq, 0
  br i1 %i.as, label %.lr.ph66.split.us.i.i.i, label %ucs1lib_rfind.exit, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bi, %.lr.ph.i75.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.bg, %.lr.ph.i75.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.at = getelementptr i8, ptr %1, i64 %.04759.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !237 ; 2 uses
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = or i64 %i.ax, %.04958.i.i.i
  %i.az = icmp eq i8 %i.au, %i.g
  %i.ba = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i76.i.i = select i1 %i.az, i64 %i.ba, i64 %.060.i.i.i
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !237 ; 2 uses
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = or i64 %i.bf, %i.ay                     ; 2 uses
  %i.bh = icmp eq i8 %i.bc, %i.g
  %i.bi = add nsw i64 %.04759.i.i.i, -2           ; 2 uses
  %spec.select.i76.i.i.1 = select i1 %i.bh, i64 %i.bi, i64 %spec.select.i76.i.i ; 2 uses
  %i.bj = icmp sgt i64 %.04759.i.i.i, 2
  br i1 %i.bj, label %.lr.ph.i75.i.i, label %.lr.ph66.split.us.i.preheader.i.i, !llvm.loop !30

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.f
  %i.bk = icmp slt i64 %.14865.us.i.i.fr.i, 0
  %i.bl = select i1 %i.bk, i64 0, i64 %3
  %spec.select.i = add i64 %i.bl, %.14865.us.i.i.fr.i
  br label %ucs1lib_rfind.exit

ucs1lib_rfind.exit:                               ; preds = %bb.d, %bb.i, %bb.a, %bb.b, %ucs1lib_fastsearch.exit.i
  %.011.i = phi i64 [ %4, %bb.a ], [ -1, %bb.b ], [ %spec.select.i, %ucs1lib_fastsearch.exit.i ], [ -1, %bb.i ], [ -1, %bb.d ]
  ret i64 %.011.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib_fastsearch(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef range(i64 1, 0) %3, i32 noundef range(i32 1, 3) %4) unnamed_addr #23 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %asciilib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %asciilib_find_char.exit

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %4, 1
  %i.d = load i8, ptr %2, align 1, !tbaa !237     ; 4 uses
  br i1 %i.c, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.g = icmp ult ptr %0, %i.e
  br i1 %i.g, label %.lr.ph.i, label %asciilib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.h = zext i8 %i.d to i32
  %i.i = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.h, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %asciilib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  br label %asciilib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.021.i = phi ptr [ %i.r, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.021.i, align 1, !tbaa !237
  %i.n = icmp eq i8 %i.m, %i.d
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %.021.i to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  br label %asciilib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.r, %i.e
  br i1 %exitcond.not.i, label %asciilib_find_char.exit, label %.lr.ph.i, !llvm.loop !819

bb.j:                                             ; preds = %bb.d
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.d to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i67 = icmp eq ptr %i.u, null
  br i1 %.not.i67, label %asciilib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %asciilib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %asciilib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %asciilib_find_char.exit, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i11 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i11, i64 -1   ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !237
  %i.ad = icmp eq i8 %i.ac, %i.d
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !24

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %asciilib_find_char.exit

bb.p:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %1, 2500
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp samesign ult i64 %3, 100
  %i.aj = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.aj, %i.ai
  %i.ak = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.ak, %or.cond3
  br i1 %or.cond5, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = add nsw i64 %3, -1                      ; 11 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !237 ; 5 uses
  %xtraiter = and i64 %i.al, 1
  %i.ao = icmp eq i64 %3, 2
  br i1 %i.ao, label %.lr.ph.i68.epil.preheader, label %.new

.new:                                             ; preds = %bb.s
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i68

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i68
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.s
  %.068100.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cs, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.al, %bb.s ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ap = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !237 ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %.06999.i.epil.init
  %i.av = icmp eq i8 %i.aq, %i.an
  %i.aw = xor i64 %.068100.i.epil.init, -1
  %i.ax = add nsw i64 %i.al, %i.aw
  %.171.i.epil = select i1 %i.av, i64 %i.ax, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i68.epil.preheader
  %.lcssa22 = phi i64 [ %i.cs, %._crit_edge.i.unr-lcssa ], [ %i.au, %.lr.ph.i68.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i68.epil.preheader ]
  %i.ay = sub nsw i64 %1, %3                      ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.al     ; 3 uses
  %i.ba = and i8 %i.an, 63
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %.lcssa22, %i.bc                 ; 2 uses
  br label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %._crit_edge.i, %bb.z
  %.066109.us.i = phi i64 [ %i.cb, %bb.z ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.be = getelementptr i8, ptr %i.az, i64 %.066109.us.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !237
  %i.bg = icmp eq i8 %i.bf, %i.an
  br i1 %i.bg, label %.preheader.us.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph111.split.us.i
  %i.bh = add i64 %.066109.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.bh, %i.ay
  br i1 %.not88.us.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !237
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bd
  %.not89.us.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.bo, %.066109.us.i
  br label %bb.z

bb.v:                                             ; preds = %.preheader.us.i, %bb.w
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.bt, %bb.w ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.cc, i64 %.0102.us.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !237
  %i.br = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !237
  %.not90.us.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not90.us.i, label %bb.w, label %._crit_edge104.us.i

bb.w:                                             ; preds = %bb.v
  %i.bt = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.bt, %i.al
  br i1 %exitcond132.not.i, label %asciilib_find_char.exit, label %bb.v, !llvm.loop !820

._crit_edge104.us.i:                              ; preds = %bb.v
  %i.bu = add i64 %.066109.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.bu, %i.ay
  br i1 %.not91.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge104.us.i
  %i.bv = getelementptr i8, ptr %i.az, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !237
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bd
  %.not92.us.i = icmp eq i64 %i.ca, 0
  br i1 %.not92.us.i, label %.thread.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge104.us.i
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.y, %bb.x
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.y ], [ %3, %bb.x ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066109.us.i
  br label %bb.z

bb.z:                                             ; preds = %.thread.us.i, %bb.u, %bb.t
  %.3.us.i = phi i64 [ %.066109.us.i, %bb.t ], [ %.167.us.i, %.thread.us.i ], [ %spec.select.us.i, %bb.u ]
  %i.cb = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.cb, %i.ay
  br i1 %.not.us.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i, !llvm.loop !821

.preheader.us.i:                                  ; preds = %.lr.ph111.split.us.i
  %i.cc = getelementptr i8, ptr %0, i64 %.066109.us.i
  br label %bb.v

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.cw, %.lr.ph.i68 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.cs, %.lr.ph.i68 ]
  %.07098.i = phi i64 [ %i.al, %.new ], [ %.171.i.1, %.lr.ph.i68 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i68 ]
  %i.cd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !237 ; 2 uses
  %i.cf = and i8 %i.ce, 63
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = or i64 %i.ch, %.06999.i
  %i.cj = icmp eq i8 %i.ce, %i.an
  %i.ck = xor i64 %.068100.i, -1
  %i.cl = add nsw i64 %i.al, %i.ck
  %.171.i = select i1 %i.cj, i64 %i.cl, i64 %.07098.i
  %i.cm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !237 ; 2 uses
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %i.cr, %i.ci                     ; 3 uses
  %i.ct = icmp eq i8 %i.co, %i.an
  %i.cu = xor i64 %.068100.i, -2
  %i.cv = add nsw i64 %i.al, %i.cu
  %.171.i.1 = select i1 %i.ct, i64 %i.cv, i64 %.171.i ; 3 uses
  %i.cw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i68, !llvm.loop !822

bb.aa:                                            ; preds = %bb.r
  %i.cx = lshr i64 %3, 2
  %i.cy = mul nuw nsw i64 %i.cx, 3
  %i.cz = lshr i64 %1, 2
  %i.da = icmp samesign ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = tail call fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dc = tail call fastcc i64 @asciilib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ad:                                            ; preds = %bb.p
  %i.dd = add nsw i64 %3, -1                      ; 6 uses
  %i.de = load i8, ptr %2, align 1, !tbaa !237    ; 5 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg                    ; 2 uses
  %xtraiter27 = and i64 %i.dd, 1
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i70.prol.loopexit, label %.lr.ph.i70.prol

.lr.ph.i70.prol:                                  ; preds = %bb.ad
  %i.di = getelementptr i8, ptr %2, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !237 ; 2 uses
  %i.dk = and i8 %i.dj, 63
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = or i64 %i.dm, %i.dh                     ; 2 uses
  %i.do = icmp eq i8 %i.dj, %i.de
  %i.dp = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i.prol = select i1 %i.do, i64 %i.dp, i64 %i.dd ; 2 uses
  br label %.lr.ph.i70.prol.loopexit

.lr.ph.i70.prol.loopexit:                         ; preds = %.lr.ph.i70.prol, %bb.ad
  %.060.i.unr = phi i64 [ %i.dd, %bb.ad ], [ %spec.select.i.prol, %.lr.ph.i70.prol ]
  %.04759.i.unr = phi i64 [ %i.dd, %bb.ad ], [ %i.dp, %.lr.ph.i70.prol ]
  %.04958.i.unr = phi i64 [ %i.dh, %bb.ad ], [ %i.dn, %.lr.ph.i70.prol ]
  %.lcssa18.unr = phi i64 [ poison, %bb.ad ], [ %i.dn, %.lr.ph.i70.prol ]
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.ad ], [ %spec.select.i.prol, %.lr.ph.i70.prol ]
  %i.dq = icmp eq i64 %3, 2
  br i1 %i.dq, label %.lr.ph66.split.us.i.preheader, label %.lr.ph.i70

.lr.ph66.split.us.i.preheader:                    ; preds = %.lr.ph.i70, %.lr.ph.i70.prol.loopexit
  %.lcssa18 = phi i64 [ %.lcssa18.unr, %.lr.ph.i70.prol.loopexit ], [ %i.fe, %.lr.ph.i70 ] ; 2 uses
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.lcssa.unr, %.lr.ph.i70.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i70 ]
  %i.dr = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.split.us.i.preheader, %bb.aj
  %.14865.us.i = phi i64 [ %i.ep, %bb.aj ], [ %i.dr, %.lr.ph66.split.us.i.preheader ] ; 5 uses
  %i.ds = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !237
  %i.du = icmp eq i8 %i.dt, %i.de
  br i1 %i.du, label %.preheader.us.i72, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i71 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i71, label %asciilib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr i8, ptr %i.ds, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !237
  %i.dx = and i8 %i.dw, 63
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %.lcssa18
  %.not51.us.i = icmp eq i64 %i.ea, 0
  %i.eb = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.aj

.preheader.us.i72:                                ; preds = %.lr.ph66.split.us.i, %bb.ag
  %.04662.us.i = phi i64 [ %i.eg, %bb.ag ], [ %i.dd, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ec = getelementptr i8, ptr %i.ds, i64 %.04662.us.i
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !237
  %i.ee = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !237
  %.not52.us.i = icmp eq i8 %i.ed, %i.ef
  br i1 %.not52.us.i, label %bb.ag, label %.thread.us.i73

bb.ag:                                            ; preds = %.preheader.us.i72
  %i.eg = add nsw i64 %.04662.us.i, -1
  %i.eh = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.eh, label %.preheader.us.i72, label %asciilib_find_char.exit, !llvm.loop !25

.thread.us.i73:                                   ; preds = %.preheader.us.i72
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread.us.i73
  %i.ei = getelementptr i8, ptr %i.ds, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !237
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = and i64 %i.em, %.lcssa18
  %.not54.us.i = icmp eq i64 %i.en, 0
  br i1 %.not54.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.us.i73
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i.lcssa, %bb.ai ], [ %i.eb, %bb.af ], [ %3, %bb.ah ]
  %i.eo = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.ep = add nsw i64 %i.eo, -1
  %i.eq = icmp sgt i64 %i.eo, 0
  br i1 %i.eq, label %.lr.ph66.split.us.i, label %asciilib_find_char.exit, !llvm.loop !26

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.prol.loopexit, %.lr.ph.i70
  %.060.i = phi i64 [ %spec.select.i.1, %.lr.ph.i70 ], [ %.060.i.unr, %.lr.ph.i70.prol.loopexit ]
  %.04759.i = phi i64 [ %i.fg, %.lr.ph.i70 ], [ %.04759.i.unr, %.lr.ph.i70.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.fe, %.lr.ph.i70 ], [ %.04958.i.unr, %.lr.ph.i70.prol.loopexit ]
  %i.er = getelementptr i8, ptr %2, i64 %.04759.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !237 ; 2 uses
  %i.et = and i8 %i.es, 63
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = or i64 %i.ev, %.04958.i
  %i.ex = icmp eq i8 %i.es, %i.de
  %i.ey = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i = select i1 %i.ex, i64 %i.ey, i64 %.060.i
  %i.ez = getelementptr i8, ptr %2, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !237 ; 2 uses
  %i.fb = and i8 %i.fa, 63
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = or i64 %i.fd, %i.ew                     ; 2 uses
  %i.ff = icmp eq i8 %i.fa, %i.de
  %i.fg = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i.1 = select i1 %i.ff, i64 %i.fg, i64 %spec.select.i ; 2 uses
  %i.fh = icmp sgt i64 %.04759.i, 2
  br i1 %i.fh, label %.lr.ph.i70, label %.lr.ph66.split.us.i.preheader, !llvm.loop !27

asciilib_find_char.exit:                          ; preds = %bb.z, %bb.w, %bb.aj, %bb.ae, %bb.ag, %bb.n, %bb.i, %bb.m, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i64 [ %i.db, %bb.ab ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.aj ], [ %.14865.us.i, %bb.ag ], [ %i.dc, %bb.ac ], [ -1, %bb.i ], [ %i.l, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.066109.us.i, %bb.w ], [ -1, %bb.ae ], [ -1, %bb.z ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #24 {
bb.a:
  %4 = alloca %struct.asciilib__pre, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %2, ptr %4, align 8, !tbaa !831
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !832
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i.i = phi i64 [ %.130.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i.i = phi i64 [ %.132.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i.i = phi i64 [ %.134.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !237   ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %.03339.us.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !237   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i.i, 1              ; 2 uses
  %.not37.us.i.i.i = icmp eq i64 %i.k, %.042.us.i.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i.i, i64 %.042.us.i.i.i, i64 0
  %spec.select.us.i.i.i = add i64 %i.l, %.03140.us.i.i.i
  %spec.select38.us.i.i.i = select i1 %.not37.us.i.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i.i
  %i.m = add i64 %.02941.us.i.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i.i           ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i.i = phi i64 [ %.03339.us.i.i.i, %bb.e ], [ %.03140.us.i.i.i, %bb.c ], [ %.03339.us.i.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i.i, %.132.us.i.i.i   ; 2 uses
  %i.q = icmp slt i64 %i.p, %3
  br i1 %i.q, label %.split.us.i.i.i, label %.split.i.i.i, !llvm.loop !823

.split.i.i.i:                                     ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i.i = phi i64 [ %.1.i.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i.i = phi i64 [ %.130.i.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i.i = phi i64 [ %.132.i.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i.i = phi i64 [ %.134.i.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !237   ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %.03339.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !237   ; 2 uses
  %i.x = icmp ult i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i.i
  %i.y = add i64 %.02941.i.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i.i              ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i.i, 1                ; 2 uses
  %.not37.i.i.i = icmp eq i64 %i.ac, %.042.i.i.i  ; 2 uses
  %i.ad = select i1 %.not37.i.i.i, i64 %.042.i.i.i, i64 0
  %spec.select.i.i.i = add i64 %i.ad, %.03140.i.i.i
  %spec.select38.i.i.i = select i1 %.not37.i.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i.i = phi i64 [ %.03339.i.i.i, %bb.g ], [ %.03140.i.i.i, %bb.j ], [ %.03339.i.i.i, %bb.i ] ; 3 uses
  %.132.i.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i.i, %bb.i ] ; 2 uses
  %.130.i.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i.i, %bb.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i.i, %.132.i.i.i        ; 2 uses
  %i.ag = icmp slt i64 %i.af, %3
  br i1 %i.ag, label %.split.i.i.i, label %asciilib__factorize.exit.i, !llvm.loop !823

asciilib__factorize.exit.i:                       ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i.i, %.134.i.i.i
  %..i.i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i.i, i64 %.134.i.i.i)
  %.fr239.i = freeze i64 %..i.i                   ; 17 uses
  %.0.sroa.speculated.i.i = select i1 %i.ai, i64 %.1.us.i.i.i, i64 %.1.i.i.i ; 3 uses
  store i64 %.0.sroa.speculated.i.i, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.fr239.i, ptr %i.aj, align 8, !tbaa !833
  %i.ak = getelementptr i8, ptr %2, i64 %.0.sroa.speculated.i.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %2, ptr %i.ak, i64 %.fr239.i)
  %i.al = icmp eq i32 %bcmp.i, 0                  ; 3 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !834
  br i1 %i.al, label %.lr.ph.preheader.i, label %bb.l

bb.l:                                             ; preds = %asciilib__factorize.exit.i
  %i.ao = sub i64 %3, %.fr239.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.fr239.i, i64 %i.ao)
  %i.ap = add i64 %..i, 1                         ; 2 uses
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !835
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l, %asciilib__factorize.exit.i
  %i.aq = phi i64 [ %i.ap, %bb.l ], [ %.0.sroa.speculated.i.i, %asciilib__factorize.exit.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %3, ptr %i.ar, align 8, !tbaa !836
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !237
  %i.av = add nsw i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %.05559.i = phi i64 [ %i.bb, %.critedge.i ], [ %i.av, %.lr.ph.preheader.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %2, i64 %.05559.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !237
  %i.ay = xor i8 %i.ax, %i.au
  %i.az = and i8 %i.ay, 63
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ba = sub nsw i64 %i.as, %.05559.i            ; 2 uses
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !836
  br label %.lr.ph62.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bb = add nsw i64 %.05559.i, -1
  %i.bc = icmp sgt i64 %.05559.i, 0
  br i1 %i.bc, label %.lr.ph.i, label %.lr.ph62.i, !llvm.loop !824

.lr.ph62.i:                                       ; preds = %.critedge.i, %bb.m
  %i.bd = phi i64 [ %i.ba, %bb.m ], [ %3, %.critedge.i ] ; 4 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 range(i64 6, -9223372036854775808) %3, i64 255) ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, i8 %i.bf, i64 64, i1 false), !tbaa !237
  %i.bh = sub nuw nsw i64 %3, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph62.i
  %.061.i = phi i64 [ %i.bh, %.lr.ph62.i ], [ %i.bp, %bb.n ] ; 3 uses
  %i.bi = sub nuw nsw i64 %i.as, %.061.i
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr i8, ptr %2, i64 %.061.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !237
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !237
  %i.bp = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %i.bq = icmp samesign ult i64 %i.bp, %3
  br i1 %i.bq, label %bb.n, label %asciilib__preprocess.exit, !llvm.loop !825

asciilib__preprocess.exit:                        ; preds = %bb.n
  %i.br = getelementptr i8, ptr %0, i64 %3
  %i.bs = getelementptr i8, ptr %i.br, i64 -1     ; 5 uses
  %i.bt = getelementptr i8, ptr %0, i64 %1        ; 9 uses
  %i.bu = add i64 %i.bd, %.fr239.i
  %i.bv = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.bu) ; 2 uses
  br i1 %i.al, label %.preheader184.i, label %bb.t

.preheader184.i:                                  ; preds = %asciilib__preprocess.exit
  %i.bw = icmp ult ptr %i.bs, %i.bt
  br i1 %i.bw, label %.preheader182.lr.ph.i, label %asciilib__two_way.exit

.preheader182.lr.ph.i:                            ; preds = %.preheader184.i
  %i.bx = sub nsw i64 0, %3
  %i.by = sub i64 %3, %i.aq                       ; 2 uses
  %i.bz = tail call i64 @llvm.smax.i64(i64 %.fr239.i, i64 %i.by)
  %reass.sub = sub i64 %i.bz, %.fr239.i
  %i.ca = add i64 %reass.sub, 1
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %.preheader182.i.backedge, %.preheader182.lr.ph.i
  %.1138.i = phi ptr [ %i.bs, %.preheader182.lr.ph.i ], [ %.1138.i.be, %.preheader182.i.backedge ] ; 2 uses
  %i.cb = load i8, ptr %.1138.i, align 1, !tbaa !237
  %i.cc = and i8 %i.cb, 63
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !237 ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr i8, ptr %.1138.i, i64 %i.cg ; 3 uses
  %i.ci = icmp eq i8 %i.cf, 0
  %.not154.i = icmp uge ptr %i.ch, %i.bt
  %..i4 = zext i1 %.not154.i to i32
  %.0128.i = select i1 %i.ci, i32 5, i32 %..i4
  switch i32 %.0128.i, label %asciilib__two_way.exit [
    i32 0, label %.preheader182.i.backedge
    i32 5, label %.preheader180.i
  ]

.preheader182.i.backedge:                         ; preds = %.preheader182.i, %.backedge.i
  %.1138.i.be = phi ptr [ %i.ch, %.preheader182.i ], [ %.0137.be.i, %.backedge.i ]
  br label %.preheader182.i

.preheader180.i:                                  ; preds = %.preheader182.i, %bb.s
  %.2139.i = phi ptr [ %.4141.i, %bb.s ], [ %i.ch, %.preheader182.i ] ; 4 uses
  %.1135.i = phi i64 [ %i.by, %bb.s ], [ 0, %.preheader182.i ] ; 3 uses
  %i.cj = getelementptr i8, ptr %.2139.i, i64 %i.bx
  %i.ck = getelementptr i8, ptr %i.cj, i64 1      ; 3 uses
  %i.cl = tail call i64 @llvm.smax.i64(i64 %.fr239.i, i64 %.1135.i) ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %3
  br i1 %i.cm, label %.lr.ph.i5, label %.preheader179.i

.preheader179.i:                                  ; preds = %bb.p, %.preheader180.i
  %i.cn = icmp slt i64 %.1135.i, %.fr239.i
  br i1 %i.cn, label %.lr.ph201.i, label %.preheader179._crit_edge.i

.lr.ph.i5:                                        ; preds = %.preheader180.i, %bb.p
  %.0126199.i = phi i64 [ %i.cy, %bb.p ], [ %i.cl, %.preheader180.i ] ; 5 uses
  %i.co = getelementptr i8, ptr %2, i64 %.0126199.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !237
  %i.cq = getelementptr i8, ptr %i.ck, i64 %.0126199.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !237
  %.not158.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not158.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i5
  %i.cs = icmp slt i64 %.0126199.i, %i.bv
  %i.ct = getelementptr i8, ptr %.2139.i, i64 %i.bd
  %i.cu = sub i64 %.0126199.i, %.fr239.i
  %i.cv = getelementptr i8, ptr %.2139.i, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %.3140.i = select i1 %i.cs, ptr %i.ct, ptr %i.cw
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.s, %bb.o
  %.0137.be.i = phi ptr [ %.3140.i, %bb.o ], [ %.4141.i, %bb.s ] ; 2 uses
  %i.cx = icmp ult ptr %.0137.be.i, %i.bt
  br i1 %i.cx, label %.preheader182.i.backedge, label %asciilib__two_way.exit

bb.p:                                             ; preds = %.lr.ph.i5
  %i.cy = add i64 %.0126199.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %.preheader179.i, label %.lr.ph.i5, !llvm.loop !826

bb.q:                                             ; preds = %.lr.ph201.i
  %i.cz = add i64 %.1127200.i, 1                  ; 2 uses
  %exitcond278.not.i = icmp eq i64 %i.cz, %.fr239.i
  br i1 %exitcond278.not.i, label %.preheader179._crit_edge.i, label %.lr.ph201.i, !llvm.loop !827

.lr.ph201.i:                                      ; preds = %.preheader179.i, %bb.q
  %.1127200.i = phi i64 [ %i.cz, %bb.q ], [ %.1135.i, %.preheader179.i ] ; 3 uses
  %i.da = getelementptr i8, ptr %2, i64 %.1127200.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !237
  %i.dc = getelementptr i8, ptr %i.ck, i64 %.1127200.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !237
  %.not155.i = icmp eq i8 %i.db, %i.dd
  br i1 %.not155.i, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph201.i
  %i.de = getelementptr i8, ptr %.2139.i, i64 %i.aq ; 3 uses
  %.not156.i = icmp ult ptr %i.de, %i.bt
  br i1 %.not156.i, label %bb.s, label %asciilib__two_way.exit

bb.s:                                             ; preds = %bb.r
  %i.df = load i8, ptr %i.de, align 1, !tbaa !237
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.bg, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !237 ; 2 uses
  %.not157.not.i = icmp eq i8 %i.dj, 0            ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %i.dk)
  %.4141.idx.i = select i1 %.not157.not.i, i64 0, i64 %i.dl
  %.4141.i = getelementptr i8, ptr %i.de, i64 %.4141.idx.i ; 2 uses
  br i1 %.not157.not.i, label %.preheader180.i, label %.backedge.i

.preheader179._crit_edge.i:                       ; preds = %.preheader179.i, %bb.q
  %i.dm = ptrtoint ptr %i.ck to i64
  %i.dn = ptrtoint ptr %0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %asciilib__two_way.exit

bb.t:                                             ; preds = %asciilib__preprocess.exit
  %i.dp = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 %i.aq) ; 2 uses
  %i.dq = icmp ult ptr %i.bs, %i.bt
  br i1 %i.dq, label %.preheader177.lr.ph.i, label %asciilib__two_way.exit

.preheader177.lr.ph.i:                            ; preds = %bb.t
  %i.dr = sub nsw i64 0, %3                       ; 2 uses
  %i.ds = icmp slt i64 %.fr239.i, %3
  %.not152208.i = icmp sgt i64 %.fr239.i, 0
  br i1 %i.ds, label %.preheader177.us.i, label %.preheader177.us217.i

.preheader177.us.i:                               ; preds = %.preheader177.lr.ph.i, %.preheader177.us.i.backedge
  %.6143.us.i = phi ptr [ %.6143.us.i.be, %.preheader177.us.i.backedge ], [ %i.bs, %.preheader177.lr.ph.i ] ; 2 uses
  %i.dt = load i8, ptr %.6143.us.i, align 1, !tbaa !237
  %i.du = and i8 %i.dt, 63
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = getelementptr i8, ptr %i.bg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !237 ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr i8, ptr %.6143.us.i, i64 %i.dy ; 6 uses
  %.not294.i = icmp eq i8 %i.dx, 0
  %.not150.us.i = icmp uge ptr %i.dz, %i.bt
  %.159.us.i = zext i1 %.not150.us.i to i32
  %.3131.us.i = select i1 %.not294.i, i32 17, i32 %.159.us.i
  switch i32 %.3131.us.i, label %asciilib__two_way.exit [
    i32 0, label %.preheader177.us.i.backedge
    i32 17, label %.lr.ph207.us.i
  ]

.preheader177.us.i.backedge:                      ; preds = %.preheader177.us.i, %bb.y
  %.6143.us.i.be = phi ptr [ %i.dz, %.preheader177.us.i ], [ %.9.us.i, %bb.y ]
  br label %.preheader177.us.i

.lr.ph207.us.i:                                   ; preds = %.preheader177.us.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dr
  %i.eb = getelementptr i8, ptr %i.ea, i64 1      ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph207.us.i
  %.0124205.us.i = phi i64 [ %.fr239.i, %.lr.ph207.us.i ], [ %i.eg, %bb.v ] ; 5 uses
  %i.ec = getelementptr i8, ptr %2, i64 %.0124205.us.i
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !237
  %i.ee = getelementptr i8, ptr %i.eb, i64 %.0124205.us.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !237
  %.not153.us.i = icmp eq i8 %i.ed, %i.ef
  br i1 %.not153.us.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
end_hunk_3
begin_hunk_4_@ucs1lib_fastsearch:bb.a
.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %ucs1lib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = zext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ucs1lib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %ucs1lib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.021.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.021.i, align 1, !tbaa !237
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.021.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %ucs1lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %ucs1lib_find_char.exit, label %.lr.ph.i, !llvm.loop !14

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !237     ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i67 = icmp eq ptr %i.u, null
  br i1 %.not.i67, label %ucs1lib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %ucs1lib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %ucs1lib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %ucs1lib_find_char.exit, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i140 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i140, i64 -1  ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !237
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !17

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %ucs1lib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !237    ; 3 uses
  br i1 %i.ah, label %.lr.ph.i68.preheader, label %.lr.ph.i70

.lr.ph.i68.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i68.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i68.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !237
  %wide.load142 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !237
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load142, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi141, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_char.exit, label %.lr.ph.i68.preheader143

.lr.ph.i68.preheader143:                          ; preds = %.lr.ph.i68.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader143, %.lr.ph.i68
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i68 ], [ %.09.i.ph, %.lr.ph.i68.preheader143 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i68 ], [ %.078.i.ph, %.lr.ph.i68.preheader143 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !237
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i69, label %ucs1lib_find_char.exit, label %.lr.ph.i68, !llvm.loop !842

.lr.ph.i70:                                       ; preds = %bb.p, %bb.r
  %.016.i71 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !237
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i70
  %i.bb = add i64 %.016.i71, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %ucs1lib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i71, %.lr.ph.i70 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i72, label %ucs1lib_find_char.exit, label %.lr.ph.i70, !llvm.loop !843

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.al, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 12 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !237 ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i73.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i73

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.ds, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod160 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !237 ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.171.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i73.epil.preheader
  %.lcssa157 = phi i64 [ %i.ds, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i73.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i73.epil.preheader ]
  %i.bv = sub nsw i64 %1, %3                      ; 3 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa157, %i.bz                ; 2 uses
  %.not93.i = icmp eq i32 %5, 0                   ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %._crit_edge.i
  %.066110.us.i = phi i64 [ %i.db, %bb.af ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.af ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !237
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !237
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.z
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cq, %bb.z ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.dc, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !237
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !237
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %bb.z, label %._crit_edge104.us.i

bb.z:                                             ; preds = %bb.y
  %i.cq = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.cq, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.y, !llvm.loop !844

._crit_edge104.us.i:                              ; preds = %bb.y
  %i.cr = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cr, %i.bv
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge104.us.i
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !237
  %i.cu = and i8 %i.ct, 63
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.ca
  %.not92.us.i = icmp eq i64 %i.cx, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge104.us.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.z
  br i1 %.not93.i, label %bb.ad, label %ucs1lib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cy = add i64 %.072109.us.i, 1                ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %4
  br i1 %i.cz, label %ucs1lib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add i64 %.066110.us.i, %i.bi
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.x, %bb.w
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.w ], [ %.072109.us.i, %bb.x ], [ %.072109.us.i, %bb.ac ], [ %i.cy, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ac ], [ %i.da, %bb.ae ]
  %i.db = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.db, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !845

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dc = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dw, %.lr.ph.i73 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i73 ]
  %.07098.i = phi i64 [ %i.bi, %.new ], [ %.171.i.1, %.lr.ph.i73 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i73 ]
  %i.dd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !237 ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %.06999.i
  %i.dj = icmp eq i8 %i.de, %i.bk
  %i.dk = xor i64 %.068100.i, -1
  %i.dl = add nsw i64 %i.bi, %i.dk
  %.171.i = select i1 %i.dj, i64 %i.dl, i64 %.07098.i
  %i.dm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !237 ; 2 uses
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.di                     ; 3 uses
  %i.dt = icmp eq i8 %i.do, %i.bk
  %i.du = xor i64 %.068100.i, -2
  %i.dv = add nsw i64 %i.bi, %i.du
  %.171.i.1 = select i1 %i.dt, i64 %i.dv, i64 %.171.i ; 3 uses
  %i.dw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i73, !llvm.loop !846

.loopexit.i:                                      ; preds = %bb.af
  %i.dx = select i1 %.not93.i, i64 %.274.us.i, i64 -1
  br label %ucs1lib_find_char.exit

bb.ag:                                            ; preds = %bb.u
  %i.dy = lshr i64 %3, 2
  %i.dz = mul nuw nsw i64 %i.dy, 3
  %i.ea = lshr i64 %1, 2
  %i.eb = icmp samesign ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ec = icmp eq i32 %5, 1
  br i1 %i.ec, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ed = tail call fastcc i64 @ucs1lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs1lib_find_char.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ee = tail call fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs1lib_find_char.exit

bb.ak:                                            ; preds = %bb.ag
  %i.ef = tail call fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs1lib_find_char.exit

bb.al:                                            ; preds = %bb.s
  %i.eg = add nsw i64 %3, -1                      ; 6 uses
  %i.eh = load i8, ptr %2, align 1, !tbaa !237    ; 5 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej                    ; 2 uses
  %xtraiter162 = and i64 %i.eg, 1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.al
  %i.el = getelementptr i8, ptr %2, i64 %i.eg
  %i.em = load i8, ptr %i.el, align 1, !tbaa !237 ; 2 uses
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = or i64 %i.ep, %i.ek                     ; 2 uses
  %i.er = icmp eq i8 %i.em, %i.eh
  %i.es = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.er, i64 %i.es, i64 %i.eg ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.al
  %.060.i.unr = phi i64 [ %i.eg, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.eg, %bb.al ], [ %i.es, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.ek, %bb.al ], [ %i.eq, %.lr.ph.i75.prol ]
  %.lcssa154.unr = phi i64 [ poison, %bb.al ], [ %i.eq, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.et = icmp eq i64 %3, 2
  br i1 %i.et, label %.lr.ph66.split.us.i.preheader, label %.lr.ph.i75

.lr.ph66.split.us.i.preheader:                    ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa154 = phi i64 [ %.lcssa154.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gh, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.eu = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.split.us.i.preheader, %bb.ar
  %.14865.us.i = phi i64 [ %i.fs, %bb.ar ], [ %i.eu, %.lr.ph66.split.us.i.preheader ] ; 5 uses
  %i.ev = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !237
  %i.ex = icmp eq i8 %i.ew, %i.eh
  br i1 %i.ex, label %.preheader.us.i78, label %bb.am

bb.am:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %ucs1lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr i8, ptr %i.ev, i64 -1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !237
  %i.fa = and i8 %i.ez, 63
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fc, %.lcssa154
  %.not51.us.i = icmp eq i64 %i.fd, 0
  %i.fe = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ao
  %.04662.us.i = phi i64 [ %i.fj, %bb.ao ], [ %i.eg, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ff = getelementptr i8, ptr %i.ev, i64 %.04662.us.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !237
  %i.fh = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !237
  %.not52.us.i = icmp eq i8 %i.fg, %i.fi
  br i1 %.not52.us.i, label %bb.ao, label %.thread.us.i

bb.ao:                                            ; preds = %.preheader.us.i78
  %i.fj = add nsw i64 %.04662.us.i, -1
  %i.fk = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fk, label %.preheader.us.i78, label %ucs1lib_find_char.exit, !llvm.loop !28

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ev, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !237
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa154
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.aq ], [ %i.fe, %bb.an ], [ %3, %bb.ap ]
  %i.fr = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit, !llvm.loop !29

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gh, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fu = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !237 ; 2 uses
  %i.fw = and i8 %i.fv, 63
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = or i64 %i.fy, %.04958.i
  %i.ga = icmp eq i8 %i.fv, %i.eh
  %i.gb = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.ga, i64 %i.gb, i64 %.060.i
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !237 ; 2 uses
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = or i64 %i.gg, %i.fz                     ; 2 uses
  %i.gi = icmp eq i8 %i.gd, %i.eh
  %i.gj = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gi, i64 %i.gj, i64 %spec.select.i76 ; 2 uses
  %i.gk = icmp sgt i64 %.04759.i, 2
  br i1 %i.gk, label %.lr.ph.i75, label %.lr.ph66.split.us.i.preheader, !llvm.loop !30

ucs1lib_find_char.exit:                           ; preds = %bb.ad, %._crit_edge104.us.thread.i.loopexit, %bb.ar, %bb.am, %bb.ao, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i68, %bb.m, %middle.block, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ak, %bb.aj, %bb.ai
  %.0 = phi i64 [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.14865.us.i, %bb.ao ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ed, %bb.ai ], [ %i.ee, %bb.aj ], [ %i.ef, %bb.ak ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ %i.dx, %.loopexit.i ], [ -1, %bb.i ], [ %i.as, %middle.block ], [ -1, %bb.ar ], [ %.1.i, %bb.r ], [ -1, %bb.am ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.ad ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !237   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !237 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !237 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !847

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
end_hunk_4
begin_hunk_5_@ucs1lib_adaptive_find:.lr.ph.preheader
  %i.bv = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc i64 @ucs1lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs1lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs1lib__two_way_count.exit, label %.lr.ph.i

ucs1lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs1lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs1lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs1lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !295
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !296
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !237   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !237   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !851

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !237   ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !237   ; 2 uses
  %i.x = icmp ult i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs1lib__factorize.exit, !llvm.loop !851

ucs1lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !297
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !298
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs1lib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !299
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs1lib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !300
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !237
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.05559
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !237
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.05559
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !300
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.05559, -1
  %i.bb = icmp sgt i64 %.05559, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !852

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !237
  %i.bf = sub nuw nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub nuw nsw i64 %i.ar, %.061
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.061
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !237
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !237
  %i.bn = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !853
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !296
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !297
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !299  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !295    ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !300  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !298
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1138, align 1, !tbaa !237
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !237  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0126199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !237
  %i.al = getelementptr i8, ptr %i.af, i64 %.0126199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !237
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr i8, ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr i8, ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !854

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !855

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1127200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !237
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1127200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !237
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2139, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !237
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !237 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr i8, ptr %i.az, i64 %.4141.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr240                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6143.us, align 1, !tbaa !237
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !237 ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6143.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]
end_hunk_5
begin_hunk_6_@ucs2lib_fastsearch:bb.a
  %i.y = getelementptr i8, ptr %i.q, i64 -80
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.039.i = phi ptr [ %i.q, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %i.z = icmp ugt ptr %.039.i, %i.y
  br i1 %i.z, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %.039.i, i64 -2   ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !240
  %i.ac = icmp eq i16 %i.ab, %i.g
  br i1 %i.ac, label %bb.p, label %bb.n, !llvm.loop !18

bb.p:                                             ; preds = %bb.o
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.k
  %i.af = ashr exact i64 %i.ae, 1
  br label %ucs2lib_rfind_char.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = ptrtoint ptr %.039.i to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.144.ph59.i = phi i64 [ %i.s, %bb.k ], [ %i.ai, %bb.q ] ; 3 uses
  %i.aj = icmp sgt i64 %.144.ph59.i, 40
  br i1 %i.aj, label %bb.i, label %.thread67.i, !llvm.loop !19

.thread67.i:                                      ; preds = %bb.r, %bb.l, %bb.h, %bb.g
  %.447.i = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.s, %bb.l ], [ %.144.ph59.i, %bb.r ]
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.447.i
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.thread67.i
  %.140.i = phi ptr [ %i.ak, %.thread67.i ], [ %i.am, %bb.t ] ; 2 uses
  %i.al = icmp ugt ptr %.140.i, %0
  br i1 %i.al, label %bb.t, label %ucs2lib_rfind_char.exit

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %.140.i, i64 -2   ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !240
  %i.ao = icmp eq i16 %i.an, %i.g
  br i1 %i.ao, label %bb.u, label %bb.s, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 1
  br label %ucs2lib_rfind_char.exit

bb.v:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %4, 9223372036854775807
  %i.au = load i16, ptr %2, align 2, !tbaa !240   ; 3 uses
  br i1 %i.at, label %.lr.ph.i.preheader, label %.lr.ph.i67

.lr.ph.i.preheader:                               ; preds = %bb.v
  %min.iters.check176 = icmp ult i64 %1, 4
  br i1 %min.iters.check176, label %.lr.ph.i.preheader195, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.preheader
  %n.vec178 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert179 = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat180 = shufflevector <2 x i16> %broadcast.splatinsert179, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph177 ], [ %i.bb, %vector.body181 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph177 ], [ %i.bc, %vector.body181 ]
  %i.av = getelementptr [2 x i8], ptr %0, i64 %index182 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %wide.load185 = load <2 x i16>, ptr %i.av, align 2, !tbaa !240
  %wide.load186 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !240
  %i.ax = icmp eq <2 x i16> %wide.load185, %broadcast.splat180
  %i.ay = icmp eq <2 x i16> %wide.load186, %broadcast.splat180
  %i.az = zext <2 x i1> %i.ax to <2 x i64>
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi183, %i.az        ; 2 uses
  %i.bc = add <2 x i64> %vec.phi184, %i.ba        ; 2 uses
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.bd, label %middle.block188, label %vector.body181, !llvm.loop !858

middle.block188:                                  ; preds = %vector.body181
  %bin.rdx189 = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx189) ; 2 uses
  %cmp.n190 = icmp eq i64 %1, %n.vec178
  br i1 %cmp.n190, label %ucs2lib_rfind_char.exit, label %.lr.ph.i.preheader195

.lr.ph.i.preheader195:                            ; preds = %.lr.ph.i.preheader, %middle.block188
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec178, %middle.block188 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.be, %middle.block188 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader195, %.lr.ph.i
  %.09.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader195 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader195 ]
  %i.bf = getelementptr [2 x i8], ptr %0, i64 %.09.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !240
  %i.bh = icmp eq i16 %i.bg, %i.au
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i = add i64 %.078.i, %i.bi         ; 2 uses
  %i.bj = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %1
  br i1 %exitcond.not.i, label %ucs2lib_rfind_char.exit, label %.lr.ph.i, !llvm.loop !859

.lr.ph.i67:                                       ; preds = %bb.v, %bb.x
  %.016.i = phi i64 [ %.1.i, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01115.i = phi i64 [ %i.bp, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %.01115.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !240
  %i.bm = icmp eq i16 %i.bl, %i.au
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i67
  %i.bn = add i64 %.016.i, 1                      ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %4
  br i1 %i.bo, label %ucs2lib_rfind_char.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i67
  %.1.i = phi i64 [ %i.bn, %bb.w ], [ %.016.i, %.lr.ph.i67 ] ; 2 uses
  %i.bp = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i68, label %ucs2lib_rfind_char.exit, label %.lr.ph.i67, !llvm.loop !860

bb.y:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp slt i64 %1, 2500
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = icmp samesign ult i64 %3, 100
  %i.bs = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bs, %i.br
  %i.bt = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bt, %or.cond3
  br i1 %or.cond5, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = add nsw i64 %3, -1                      ; 11 uses
  %i.bv = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !240 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 15
  br i1 %min.iters.check, label %.lr.ph.i69.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ab
  %n.vec = and i64 %i.bu, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert143 = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat144 = shufflevector <2 x i16> %broadcast.splatinsert143, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi145 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %i.bx = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %i.by = getelementptr [2 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i16>, ptr %i.by, align 2, !tbaa !240 ; 2 uses
  %i.bz = and <2 x i16> %wide.load, splat (i16 63)
  %i.ca = zext nneg <2 x i16> %i.bz to <2 x i64>
  %i.cb = shl nuw <2 x i64> splat (i64 1), %i.ca
  %i.cc = or <2 x i64> %i.cb, %vec.phi            ; 2 uses
  %i.cd = icmp eq <2 x i16> %wide.load, %broadcast.splat144
  %i.ce = freeze <2 x i1> %i.cd                   ; 2 uses
  %i.cf = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cg = add nsw <2 x i64> %broadcast.splat, %i.cf
  %i.ch = bitcast <2 x i1> %i.ce to i2
  %.not193 = icmp eq i2 %i.ch, 0                  ; 2 uses
  %i.ci = select i1 %.not193, <2 x i1> %i.bx, <2 x i1> %i.ce ; 2 uses
  %i.cj = select i1 %.not193, <2 x i64> %vec.phi145, <2 x i64> %i.cg ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !861

middle.block:                                     ; preds = %vector.body
  %i.cl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cc) ; 2 uses
  %i.cm = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cj, <2 x i1> %i.ci, i64 %i.bu) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.ab, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ab ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ab ], [ %i.cl, %middle.block ]
  %.07098.i.ph = phi i64 [ %i.bu, %bb.ab ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i69

._crit_edge.i:                                    ; preds = %.lr.ph.i69, %middle.block
  %.lcssa142 = phi i64 [ %i.cl, %middle.block ], [ %i.ea, %.lr.ph.i69 ]
  %.171.i.lcssa = phi i64 [ %i.cm, %middle.block ], [ %.171.i, %.lr.ph.i69 ]
  %i.cn = sub nsw i64 %1, %3                      ; 3 uses
  %i.co = getelementptr [2 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.cp = and i16 %i.bw, 63
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %.lcssa142, %i.cr                ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.al
  %.066110.us.i = phi i64 [ %i.dt, %bb.al ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.al ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.ct = getelementptr [2 x i8], ptr %i.co, i64 %.066110.us.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !240
  %i.cv = icmp eq i16 %i.cu, %i.bw
  br i1 %i.cv, label %.preheader.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph113.split.us.i
  %i.cw = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cw, %i.cn
  br i1 %.not88.us.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr [2 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !240
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cs
  %.not89.us.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dd, %.066110.us.i
  br label %bb.al

bb.ae:                                            ; preds = %.preheader.us.i, %bb.af
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.di, %bb.af ] ; 3 uses
  %i.de = getelementptr [2 x i8], ptr %i.du, i64 %.0102.us.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !240
  %i.dg = getelementptr [2 x i8], ptr %2, i64 %.0102.us.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !240
  %.not90.us.i = icmp eq i16 %i.df, %i.dh
  br i1 %.not90.us.i, label %bb.af, label %._crit_edge104.us.i

bb.af:                                            ; preds = %bb.ae
  %i.di = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.di, %i.bu
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.ae, !llvm.loop !862

._crit_edge104.us.i:                              ; preds = %bb.ae
  %i.dj = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dj, %i.cn
  br i1 %.not91.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge104.us.i
  %i.dk = getelementptr [2 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !240
  %i.dm = and i16 %i.dl, 63
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.cs
  %.not92.us.i = icmp eq i64 %i.dp, 0
  br i1 %.not92.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge104.us.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ah ], [ %3, %bb.ag ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.al

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.af
  br i1 %i.b, label %bb.aj, label %ucs2lib_rfind_char.exit

bb.aj:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.dq = add i64 %.072109.us.i, 1                ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %4
  br i1 %i.dr, label %ucs2lib_rfind_char.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = add i64 %.066110.us.i, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ad, %bb.ac
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.ac ], [ %.072109.us.i, %bb.ad ], [ %.072109.us.i, %bb.ai ], [ %i.dq, %bb.ak ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.ac ], [ %spec.select.us.i, %bb.ad ], [ %.167.us.i, %bb.ai ], [ %i.ds, %bb.ak ]
  %i.dt = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dt, %i.cn
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !863

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.du = getelementptr [2 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ae

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.068100.i = phi i64 [ %i.ee, %.lr.ph.i69 ], [ %.068100.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.ea, %.lr.ph.i69 ], [ %.06999.i.ph, %.lr.ph.i69.preheader ]
  %.07098.i = phi i64 [ %.171.i, %.lr.ph.i69 ], [ %.07098.i.ph, %.lr.ph.i69.preheader ]
  %i.dv = getelementptr [2 x i8], ptr %2, i64 %.068100.i
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !240 ; 2 uses
  %i.dx = and i16 %i.dw, 63
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = or i64 %i.dz, %.06999.i                 ; 2 uses
  %i.eb = icmp eq i16 %i.dw, %i.bw
  %i.ec = xor i64 %.068100.i, -1
  %i.ed = add nsw i64 %i.bu, %i.ec
  %.171.i = select i1 %i.eb, i64 %i.ed, i64 %.07098.i ; 2 uses
  %i.ee = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ee, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !864

.loopexit.i:                                      ; preds = %bb.al
  %i.ef = select i1 %i.b, i64 %.274.us.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.am:                                            ; preds = %bb.aa
  %i.eg = lshr i64 %3, 2
  %i.eh = mul nuw nsw i64 %i.eg, 3
  %i.ei = lshr i64 %1, 2
  %i.ej = icmp samesign ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ek = icmp eq i32 %5, 1
  br i1 %i.ek, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.ap:                                            ; preds = %bb.an
  %i.em = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.am
  %i.en = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.y
  %i.eo = add nsw i64 %3, -1                      ; 9 uses
  %i.ep = load i16, ptr %2, align 2, !tbaa !240   ; 4 uses
  %i.eq = and i16 %i.ep, 63
  %i.er = zext nneg i16 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er                    ; 2 uses
  %min.iters.check148 = icmp ult i64 %3, 7
  br i1 %min.iters.check148, label %.lr.ph.i71.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %bb.ar
  %n.vec150 = and i64 %i.eo, -4                   ; 2 uses
  %i.et = and i64 %i.eo, 3
  %i.eu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.es, i64 0
  %broadcast.splatinsert151 = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %broadcast.splat152 = shufflevector <2 x i16> %broadcast.splatinsert151, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert153 = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %broadcast.splat154 = shufflevector <2 x i64> %broadcast.splatinsert153, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ev = add nsw <2 x i64> %broadcast.splat154, <i64 0, i64 -1>
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph149
  %index156 = phi i64 [ 0, %vector.ph149 ], [ %index.next167, %vector.body155 ] ; 2 uses
  %vec.phi157 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph149 ], [ %i.fk, %vector.body155 ]
  %vec.phi158 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph149 ], [ %i.fl, %vector.body155 ]
  %vec.phi159 = phi <2 x i1> [ zeroinitializer, %vector.ph149 ], [ %i.fm, %vector.body155 ]
  %vec.phi160 = phi <2 x i1> [ zeroinitializer, %vector.ph149 ], [ %i.fn, %vector.body155 ]
  %vec.ind161 = phi <2 x i64> [ %i.ev, %vector.ph149 ], [ %vec.ind.next168, %vector.body155 ] ; 3 uses
  %vec.phi162 = phi <2 x i64> [ %i.eu, %vector.ph149 ], [ %i.fg, %vector.body155 ]
  %vec.phi163 = phi <2 x i64> [ zeroinitializer, %vector.ph149 ], [ %i.fh, %vector.body155 ]
  %step.add = add nsw <2 x i64> %vec.ind161, splat (i64 -2)
  %i.ew = sub i64 %i.eo, %index156
  %i.ex = getelementptr [2 x i8], ptr %2, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 -2
  %i.ez = getelementptr i8, ptr %i.ex, i64 -6
  %wide.load164 = load <2 x i16>, ptr %i.ey, align 2, !tbaa !240
  %wide.load165 = load <2 x i16>, ptr %i.ez, align 2, !tbaa !240
  %reverse = shufflevector <2 x i16> %wide.load164, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse166 = shufflevector <2 x i16> %wide.load165, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fa = and <2 x i16> %reverse, splat (i16 63)
  %i.fb = and <2 x i16> %reverse166, splat (i16 63)
  %i.fc = zext nneg <2 x i16> %i.fa to <2 x i64>
  %i.fd = zext nneg <2 x i16> %i.fb to <2 x i64>
  %i.fe = shl nuw <2 x i64> splat (i64 1), %i.fc
  %i.ff = shl nuw <2 x i64> splat (i64 1), %i.fd
  %i.fg = or <2 x i64> %i.fe, %vec.phi162         ; 2 uses
  %i.fh = or <2 x i64> %i.ff, %vec.phi163         ; 2 uses
  %i.fi = icmp eq <2 x i16> %reverse, %broadcast.splat152 ; 2 uses
  %i.fj = icmp eq <2 x i16> %reverse166, %broadcast.splat152 ; 2 uses
  %i.fk = select <2 x i1> %i.fi, <2 x i64> %vec.ind161, <2 x i64> %vec.phi157 ; 2 uses
  %i.fl = select <2 x i1> %i.fj, <2 x i64> %step.add, <2 x i64> %vec.phi158 ; 2 uses
  %i.fm = or <2 x i1> %vec.phi159, %i.fi          ; 2 uses
  %i.fn = or <2 x i1> %vec.phi160, %i.fj          ; 2 uses
  %index.next167 = add nuw i64 %index156, 4       ; 2 uses
  %vec.ind.next168 = add nsw <2 x i64> %vec.ind161, splat (i64 -4)
  %i.fo = icmp eq i64 %index.next167, %n.vec150
  br i1 %i.fo, label %middle.block169, label %vector.body155, !llvm.loop !865

middle.block169:                                  ; preds = %vector.body155
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fk, <2 x i64> %i.fl)
  %i.fp = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.fq = add nsw i64 %i.fp, -1
  %bin.rdx = or <2 x i1> %i.fn, %i.fm
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fr = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not194 = icmp eq i2 %i.fr, 0
  %rdx.select = select i1 %.not194, i64 %i.eo, i64 %i.fq ; 2 uses
  %bin.rdx170 = or <2 x i64> %i.fh, %i.fg
  %i.fs = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %i.eo, %n.vec150
  br i1 %cmp.n171, label %.lr.ph66.split.us.i.preheader, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.ar, %middle.block169
  %.060.i.ph = phi i64 [ %i.eo, %bb.ar ], [ %rdx.select, %middle.block169 ]
  %.04759.i.ph = phi i64 [ %i.eo, %bb.ar ], [ %i.et, %middle.block169 ]
  %.04958.i.ph = phi i64 [ %i.es, %bb.ar ], [ %i.fs, %middle.block169 ]
  br label %.lr.ph.i71

.lr.ph66.split.us.i.preheader:                    ; preds = %.lr.ph.i71, %middle.block169
  %.lcssa141 = phi i64 [ %i.fs, %middle.block169 ], [ %i.gy, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block169 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.ft = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.split.us.i.preheader, %bb.ax
  %.14865.us.i = phi i64 [ %i.gr, %bb.ax ], [ %i.ft, %.lr.ph66.split.us.i.preheader ] ; 5 uses
  %i.fu = getelementptr [2 x i8], ptr %0, i64 %.14865.us.i ; 4 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !240
  %i.fw = icmp eq i16 %i.fv, %i.ep
  br i1 %i.fw, label %.preheader.us.i74, label %bb.as

bb.as:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = getelementptr i8, ptr %i.fu, i64 -2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !240
  %i.fz = and i16 %i.fy, 63
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = and i64 %i.gb, %.lcssa141
  %.not51.us.i = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.au
  %.04662.us.i = phi i64 [ %i.gi, %bb.au ], [ %i.eo, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ge = getelementptr [2 x i8], ptr %i.fu, i64 %.04662.us.i
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !240
  %i.gg = getelementptr [2 x i8], ptr %2, i64 %.04662.us.i
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !240
  %.not52.us.i = icmp eq i16 %i.gf, %i.gh
  br i1 %.not52.us.i, label %bb.au, label %.thread.us.i

bb.au:                                            ; preds = %.preheader.us.i74
  %i.gi = add nsw i64 %.04662.us.i, -1
  %i.gj = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.gj, label %.preheader.us.i74, label %ucs2lib_rfind_char.exit, !llvm.loop !866

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gk = getelementptr i8, ptr %i.fu, i64 -2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !240
  %i.gm = and i16 %i.gl, 63
  %i.gn = zext nneg i16 %i.gm to i64
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %.lcssa141
  %.not54.us.i = icmp eq i64 %i.gp, 0
  br i1 %.not54.us.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.us.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i72.lcssa, %bb.aw ], [ %i.gd, %bb.at ], [ %3, %bb.av ]
  %i.gq = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = icmp sgt i64 %i.gq, 0
  br i1 %i.gs, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit, !llvm.loop !867

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.060.i = phi i64 [ %spec.select.i72, %.lr.ph.i71 ], [ %.060.i.ph, %.lr.ph.i71.preheader ]
  %.04759.i = phi i64 [ %i.ha, %.lr.ph.i71 ], [ %.04759.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %.04958.i = phi i64 [ %i.gy, %.lr.ph.i71 ], [ %.04958.i.ph, %.lr.ph.i71.preheader ]
  %i.gt = getelementptr [2 x i8], ptr %2, i64 %.04759.i
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !240 ; 2 uses
  %i.gv = and i16 %i.gu, 63
  %i.gw = zext nneg i16 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = or i64 %i.gx, %.04958.i                 ; 2 uses
  %i.gz = icmp eq i16 %i.gu, %i.ep
  %i.ha = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i72 = select i1 %i.gz, i64 %i.ha, i64 %.060.i ; 2 uses
  %i.hb = icmp samesign ugt i64 %.04759.i, 1
  br i1 %i.hb, label %.lr.ph.i71, label %.lr.ph66.split.us.i.preheader, !llvm.loop !868

ucs2lib_rfind_char.exit:                          ; preds = %bb.aj, %._crit_edge104.us.thread.i.loopexit, %bb.ax, %bb.as, %bb.au, %bb.j, %bb.i, %bb.s, %bb.x, %bb.w, %.lr.ph.i, %middle.block188, %.loopexit.i, %bb.u, %bb.p, %bb.d, %bb.a, %bb.b, %bb.aq, %bb.ap, %bb.ao, %bb.f
  %.0 = phi i64 [ %4, %bb.w ], [ -1, %bb.a ], [ %i.f, %bb.f ], [ -1, %bb.d ], [ -1, %bb.ax ], [ %spec.select.i, %.lr.ph.i ], [ -1, %bb.s ], [ %i.el, %bb.ao ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ], [ -1, %bb.b ], [ %i.as, %bb.u ], [ -1, %bb.i ], [ %i.af, %bb.p ], [ %.14865.us.i, %bb.au ], [ %i.ef, %.loopexit.i ], [ %i.be, %middle.block188 ], [ %.1.i, %bb.x ], [ %i.s, %bb.j ], [ -1, %bb.as ], [ %4, %bb.aj ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !240  ; 4 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i16> %broadcast.splatinsert252, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !tbaa !240 ; 2 uses
  %wide.load257 = load <2 x i16>, ptr %i.g, align 2, !tbaa !240 ; 2 uses
  %i.h = and <2 x i16> %wide.load, splat (i16 63)
  %i.i = and <2 x i16> %wide.load257, splat (i16 63)
  %i.j = zext nneg <2 x i16> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i16> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i16> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i16> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
  %i.aa = and i16 %i.d, 63
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

end_hunk_6
begin_hunk_7_@ucs2lib_adaptive_find:.lr.ph.preheader
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs2lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs2lib__two_way_count.exit, label %.lr.ph.i

ucs2lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs2lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs2lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs2lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !303
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !304
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !240  ; 2 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr [2 x i8], ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !240  ; 2 uses
  %i.h = icmp ult i16 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i16 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !873

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !240  ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %0, i64 %.03339.i.i
  %i.v = getelementptr [2 x i8], ptr %i.u, i64 %.02941.i.i
  %i.w = load i16, ptr %i.v, align 2, !tbaa !240  ; 2 uses
  %i.x = icmp ult i16 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i16 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs2lib__factorize.exit, !llvm.loop !873

ucs2lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !305
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.0.sroa.speculated.i
  %i.al = shl i64 %..i, 1
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %i.al)
  %i.am = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = getelementptr i8, ptr %2, i64 40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !306
  br i1 %i.am, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs2lib__factorize.exit
  %i.ap = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ap)
  %i.aq = add i64 %., 1
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !307
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs2lib__factorize.exit
  %i.ar = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.ar, align 8, !tbaa !308
  %i.as = add nsw i64 %1, -1                      ; 3 uses
  %i.at = getelementptr [2 x i8], ptr %0, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !240
  %i.av = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.bb, %.critedge ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr [2 x i8], ptr %0, i64 %.05559
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !240
  %i.ay = xor i16 %i.ax, %i.au
  %i.az = and i16 %i.ay, 63
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.ba = sub nsw i64 %i.as, %.05559
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !308
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.bb = add nsw i64 %.05559, -1
  %i.bc = icmp sgt i64 %.05559, 0
  br i1 %i.bc, label %.lr.ph, label %.lr.ph62, !llvm.loop !874

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bd = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !237
  %i.bg = sub nuw nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bg, %.lr.ph62 ], [ %i.bo, %bb.n ] ; 3 uses
  %i.bh = sub nuw nsw i64 %i.as, %.061
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr [2 x i8], ptr %0, i64 %.061
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !240
  %i.bl = and i16 %i.bk, 63
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !237
  %i.bo = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bp = icmp samesign ult i64 %i.bo, %1
  br i1 %i.bp, label %bb.n, label %._crit_edge, !llvm.loop !875
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !304
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !305
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !307  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !303    ; 5 uses
  %i.h = getelementptr [2 x i8], ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -2       ; 6 uses
  %i.j = getelementptr [2 x i8], ptr %0, i64 %1   ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !308  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !306
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i16, ptr %.1138, align 2, !tbaa !240
  %i.x = and i16 %i.w, 63
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !237  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr [2 x i8], ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 2      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr [2 x i8], ptr %i.g, i64 %.0126199
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !240
  %i.al = getelementptr [2 x i8], ptr %i.af, i64 %.0126199
  %i.am = load i16, ptr %i.al, align 2, !tbaa !240
  %.not158 = icmp eq i16 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr [2 x i8], ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr [2 x i8], ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !876

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !877

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr [2 x i8], ptr %i.g, i64 %.1127200
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !240
  %i.ax = getelementptr [2 x i8], ptr %i.af, i64 %.1127200
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !240
  %.not155 = icmp eq i16 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr [2 x i8], ptr %.2139, i64 %i.f ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !240
  %i.bb = and i16 %i.ba, 63
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !237 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr [2 x i8], ptr %i.az, i64 %.4141.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 1
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bm = icmp ult ptr %i.i, %i.j
  br i1 %i.bm, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bn = sub i64 0, %.fr240                      ; 3 uses
  %i.bo = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bo, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bp = load i16, ptr %.6143.us, align 2, !tbaa !240
  %i.bq = and i16 %i.bp, 63
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !237 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr [2 x i8], ptr %.6143.us, i64 %i.bu ; 6 uses
  %.not294 = icmp eq i8 %i.bt, 0
  %.not150.us = icmp uge ptr %i.bv, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
end_hunk_7
begin_hunk_8_@ucs4lib_fastsearch:bb.a
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.w
  %i.ae = ashr exact i64 %i.ad, 2                 ; 5 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.ag = icmp eq i32 %i.af, %i.t
  br i1 %i.ag, label %ucs4lib_find_char.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = sub i64 %.043.i, %i.ae
  %i.ai = icmp sgt i64 %i.ah, 40
  br i1 %i.ai, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %i.ae, 41
  br i1 %i.aj, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %i.ac, i64 -160
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.039.i = phi ptr [ %i.ac, %bb.p ], [ %i.am, %bb.r ] ; 3 uses
  %i.al = icmp ugt ptr %.039.i, %i.ak
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.039.i, i64 -4   ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = icmp eq i32 %i.an, %i.t
  br i1 %i.ao, label %bb.s, label %bb.q, !llvm.loop !21

bb.s:                                             ; preds = %bb.r
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.w
  %i.ar = ashr exact i64 %i.aq, 2
  br label %ucs4lib_find_char.exit

bb.t:                                             ; preds = %bb.q
  %i.as = ptrtoint ptr %.039.i to i64
  %i.at = sub i64 %i.as, %i.w
  %i.au = ashr exact i64 %i.at, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.144.ph59.i = phi i64 [ %i.ae, %bb.n ], [ %i.au, %bb.t ] ; 3 uses
  %i.av = icmp sgt i64 %.144.ph59.i, 40
  br i1 %i.av, label %bb.l, label %.thread67.i, !llvm.loop !22

.thread67.i:                                      ; preds = %bb.u, %bb.o, %bb.k, %bb.j
  %.447.i = phi i64 [ %1, %bb.j ], [ %1, %bb.k ], [ %i.ae, %bb.o ], [ %.144.ph59.i, %bb.u ]
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.447.i
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.thread67.i
  %.140.i = phi ptr [ %i.aw, %.thread67.i ], [ %i.ay, %bb.w ] ; 2 uses
  %i.ax = icmp ugt ptr %.140.i, %0
  br i1 %i.ax, label %bb.w, label %ucs4lib_find_char.exit

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr i8, ptr %.140.i, i64 -4   ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !43
  %i.ba = icmp eq i32 %i.az, %i.t
  br i1 %i.ba, label %bb.x, label %bb.v, !llvm.loop !23

bb.x:                                             ; preds = %bb.w
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  br label %ucs4lib_find_char.exit

bb.y:                                             ; preds = %bb.d
  %i.bf = icmp eq i64 %4, 9223372036854775807
  %i.bg = load i32, ptr %2, align 4, !tbaa !43    ; 3 uses
  br i1 %i.bf, label %.lr.ph.i69.preheader, label %.lr.ph.i70

.lr.ph.i69.preheader:                             ; preds = %bb.y
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader160, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi158 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %wide.load = load <2 x i32>, ptr %i.bh, align 4, !tbaa !43
  %wide.load159 = load <2 x i32>, ptr %i.bi, align 4, !tbaa !43
  %i.bj = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.bk = icmp eq <2 x i32> %wide.load159, %broadcast.splat
  %i.bl = zext <2 x i1> %i.bj to <2 x i64>
  %i.bm = zext <2 x i1> %i.bk to <2 x i64>
  %i.bn = add <2 x i64> %vec.phi, %i.bl           ; 2 uses
  %i.bo = add <2 x i64> %vec.phi158, %i.bm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !880

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ucs4lib_find_char.exit, label %.lr.ph.i69.preheader160

.lr.ph.i69.preheader160:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader160, %.lr.ph.i69
  %.09.i = phi i64 [ %i.bv, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader160 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader160 ]
  %i.br = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = icmp eq i32 %i.bs, %i.bg
  %i.bu = zext i1 %i.bt to i64
  %spec.select.i = add i64 %.078.i, %i.bu         ; 2 uses
  %i.bv = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %1
  br i1 %exitcond.not.i, label %ucs4lib_find_char.exit, label %.lr.ph.i69, !llvm.loop !881

.lr.ph.i70:                                       ; preds = %bb.y, %bb.aa
  %.016.i = phi i64 [ %.1.i, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.01115.i = phi i64 [ %i.cb, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %.01115.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !43
  %i.by = icmp eq i32 %i.bx, %i.bg
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i70
  %i.bz = add i64 %.016.i, 1                      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %4
  br i1 %i.ca, label %ucs4lib_find_char.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bz, %bb.z ], [ %.016.i, %.lr.ph.i70 ] ; 2 uses
  %i.cb = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %i.cb, %1
  br i1 %exitcond.not.i71, label %ucs4lib_find_char.exit, label %.lr.ph.i70, !llvm.loop !882

bb.ab:                                            ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.au, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = icmp slt i64 %1, 2500
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = icmp samesign ult i64 %3, 100
  %i.ce = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.ce, %i.cd
  %i.cf = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.cf, %or.cond3
  br i1 %or.cond5, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = add nsw i64 %3, -1                      ; 12 uses
  %i.ch = getelementptr [4 x i8], ptr %2, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !43 ; 5 uses
  %xtraiter = and i64 %i.cg, 1
  %i.cj = icmp eq i64 %3, 2
  br i1 %i.cj, label %.lr.ph.i72.epil.preheader, label %.new

.new:                                             ; preds = %bb.ae
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph.i72

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i72.epil.preheader

.lr.ph.i72.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.ae
  %.068100.i.epil.init = phi i64 [ 0, %bb.ae ], [ %i.eu, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.ae ], [ %i.eq, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.cg, %bb.ae ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod180 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %.068100.i.epil.init
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43 ; 2 uses
  %i.cm = and i32 %i.cl, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = or i64 %i.co, %.06999.i.epil.init
  %i.cq = icmp eq i32 %i.cl, %i.ci
  %i.cr = xor i64 %.068100.i.epil.init, -1
  %i.cs = add nsw i64 %i.cg, %i.cr
  %.171.i.epil = select i1 %i.cq, i64 %i.cs, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i72.epil.preheader
  %.lcssa177 = phi i64 [ %i.eq, %._crit_edge.i.unr-lcssa ], [ %i.cp, %.lr.ph.i72.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i72.epil.preheader ]
  %i.ct = sub nsw i64 %1, %3                      ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.cv = and i32 %i.ci, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = or i64 %.lcssa177, %i.cx                ; 2 uses
  %.not93.i = icmp eq i32 %5, 0                   ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ao, %._crit_edge.i
  %.066110.us.i = phi i64 [ %i.dz, %bb.ao ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.ao ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cu, i64 %.066110.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43
  %i.db = icmp eq i32 %i.da, %i.ci
  br i1 %i.db, label %.preheader.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph113.split.us.i
  %i.dc = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.dc, %i.ct
  br i1 %.not88.us.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr [4 x i8], ptr %i.cu, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.dh, %i.cy
  %.not89.us.i = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dj, %.066110.us.i
  br label %bb.ao

bb.ah:                                            ; preds = %.preheader.us.i, %bb.ai
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.do, %bb.ai ] ; 3 uses
  %i.dk = getelementptr [4 x i8], ptr %i.ea, i64 %.0102.us.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !43
  %i.dm = getelementptr [4 x i8], ptr %2, i64 %.0102.us.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !43
  %.not90.us.i = icmp eq i32 %i.dl, %i.dn
  br i1 %.not90.us.i, label %bb.ai, label %._crit_edge104.us.i

bb.ai:                                            ; preds = %bb.ah
  %i.do = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.do, %i.cg
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.ah, !llvm.loop !883

._crit_edge104.us.i:                              ; preds = %bb.ah
  %i.dp = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dp, %i.ct
  br i1 %.not91.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge104.us.i
  %i.dq = getelementptr [4 x i8], ptr %i.cu, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !43
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.cy
  %.not92.us.i = icmp eq i64 %i.dv, 0
  br i1 %.not92.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge104.us.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ak ], [ %3, %bb.aj ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.ao

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.ai
  br i1 %.not93.i, label %bb.am, label %ucs4lib_find_char.exit

bb.am:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.dw = add i64 %.072109.us.i, 1                ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %4
  br i1 %i.dx, label %ucs4lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = add i64 %.066110.us.i, %i.cg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ag, %bb.af
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.af ], [ %.072109.us.i, %bb.ag ], [ %.072109.us.i, %bb.al ], [ %i.dw, %bb.an ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.af ], [ %spec.select.us.i, %bb.ag ], [ %.167.us.i, %bb.al ], [ %i.dy, %bb.an ]
  %i.dz = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dz, %i.ct
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !884

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.ea = getelementptr [4 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ah

.lr.ph.i72:                                       ; preds = %.lr.ph.i72, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.eu, %.lr.ph.i72 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.eq, %.lr.ph.i72 ]
  %.07098.i = phi i64 [ %i.cg, %.new ], [ %.171.i.1, %.lr.ph.i72 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i72 ]
  %i.eb = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !43 ; 2 uses
  %i.ed = and i32 %i.ec, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = or i64 %i.ef, %.06999.i
  %i.eh = icmp eq i32 %i.ec, %i.ci
  %i.ei = xor i64 %.068100.i, -1
  %i.ej = add nsw i64 %i.cg, %i.ei
  %.171.i = select i1 %i.eh, i64 %i.ej, i64 %.07098.i
  %i.ek = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !43 ; 2 uses
  %i.en = and i32 %i.em, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = or i64 %i.ep, %i.eg                     ; 3 uses
  %i.er = icmp eq i32 %i.em, %i.ci
  %i.es = xor i64 %.068100.i, -2
  %i.et = add nsw i64 %i.cg, %i.es
  %.171.i.1 = select i1 %i.er, i64 %i.et, i64 %.171.i ; 3 uses
  %i.eu = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i72, !llvm.loop !885

.loopexit.i:                                      ; preds = %bb.ao
  %i.ev = select i1 %.not93.i, i64 %.274.us.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.ap:                                            ; preds = %bb.ad
  %i.ew = lshr i64 %3, 2
  %i.ex = mul nuw nsw i64 %i.ew, 3
  %i.ey = lshr i64 %1, 2
  %i.ez = icmp samesign ult i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.fa = icmp eq i32 %5, 1
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.as:                                            ; preds = %bb.aq
  %i.fc = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ap
  %i.fd = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.ab
  %i.fe = add nsw i64 %3, -1                      ; 6 uses
  %i.ff = load i32, ptr %2, align 4, !tbaa !43    ; 5 uses
  %i.fg = and i32 %i.ff, 63
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh                    ; 2 uses
  %xtraiter182 = and i64 %i.fe, 1
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol

.lr.ph.i74.prol:                                  ; preds = %bb.au
  %i.fj = getelementptr [4 x i8], ptr %2, i64 %i.fe
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !43 ; 2 uses
  %i.fl = and i32 %i.fk, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = or i64 %i.fn, %i.fi                     ; 2 uses
  %i.fp = icmp eq i32 %i.fk, %i.ff
  %i.fq = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i75.prol = select i1 %i.fp, i64 %i.fq, i64 %i.fe ; 2 uses
  br label %.lr.ph.i74.prol.loopexit

.lr.ph.i74.prol.loopexit:                         ; preds = %.lr.ph.i74.prol, %bb.au
  %.060.i.unr = phi i64 [ %i.fe, %bb.au ], [ %spec.select.i75.prol, %.lr.ph.i74.prol ]
  %.04759.i.unr = phi i64 [ %i.fe, %bb.au ], [ %i.fq, %.lr.ph.i74.prol ]
  %.04958.i.unr = phi i64 [ %i.fi, %bb.au ], [ %i.fo, %.lr.ph.i74.prol ]
  %.lcssa174.unr = phi i64 [ poison, %bb.au ], [ %i.fo, %.lr.ph.i74.prol ]
  %spec.select.i75.lcssa.unr = phi i64 [ poison, %bb.au ], [ %spec.select.i75.prol, %.lr.ph.i74.prol ]
  %i.fr = icmp eq i64 %3, 2
  br i1 %i.fr, label %.lr.ph66.split.us.i.preheader, label %.lr.ph.i74

.lr.ph66.split.us.i.preheader:                    ; preds = %.lr.ph.i74, %.lr.ph.i74.prol.loopexit
  %.lcssa174 = phi i64 [ %.lcssa174.unr, %.lr.ph.i74.prol.loopexit ], [ %i.hf, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %spec.select.i75.lcssa.unr, %.lr.ph.i74.prol.loopexit ], [ %spec.select.i75.1, %.lr.ph.i74 ]
  %i.fs = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.split.us.i.preheader, %bb.ba
  %.14865.us.i = phi i64 [ %i.gq, %bb.ba ], [ %i.fs, %.lr.ph66.split.us.i.preheader ] ; 5 uses
  %i.ft = getelementptr [4 x i8], ptr %0, i64 %.14865.us.i ; 4 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !43
  %i.fv = icmp eq i32 %i.fu, %i.ff
  br i1 %i.fv, label %.preheader.us.i77, label %bb.av

bb.av:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i76 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i76, label %ucs4lib_find_char.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr i8, ptr %i.ft, i64 -4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !43
  %i.fy = and i32 %i.fx, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %.lcssa174
  %.not51.us.i = icmp eq i64 %i.gb, 0
  %i.gc = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i77:                                ; preds = %.lr.ph66.split.us.i, %bb.ax
  %.04662.us.i = phi i64 [ %i.gh, %bb.ax ], [ %i.fe, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gd = getelementptr [4 x i8], ptr %i.ft, i64 %.04662.us.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !43
  %i.gf = getelementptr [4 x i8], ptr %2, i64 %.04662.us.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !43
  %.not52.us.i = icmp eq i32 %i.ge, %i.gg
  br i1 %.not52.us.i, label %bb.ax, label %.thread.us.i

bb.ax:                                            ; preds = %.preheader.us.i77
  %i.gh = add nsw i64 %.04662.us.i, -1
  %i.gi = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.gi, label %.preheader.us.i77, label %ucs4lib_find_char.exit, !llvm.loop !886

.thread.us.i:                                     ; preds = %.preheader.us.i77
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gj = getelementptr i8, ptr %i.ft, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !43
  %i.gl = and i32 %i.gk, 63
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %.lcssa174
  %.not54.us.i = icmp eq i64 %i.go, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gc, %bb.aw ], [ %3, %bb.ay ]
  %i.gp = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gq = add nsw i64 %i.gp, -1
  %i.gr = icmp sgt i64 %i.gp, 0
  br i1 %i.gr, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !887

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74
  %.060.i = phi i64 [ %spec.select.i75.1, %.lr.ph.i74 ], [ %.060.i.unr, %.lr.ph.i74.prol.loopexit ]
  %.04759.i = phi i64 [ %i.hh, %.lr.ph.i74 ], [ %.04759.i.unr, %.lr.ph.i74.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.hf, %.lr.ph.i74 ], [ %.04958.i.unr, %.lr.ph.i74.prol.loopexit ]
  %i.gs = getelementptr [4 x i8], ptr %2, i64 %.04759.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !43 ; 2 uses
  %i.gu = and i32 %i.gt, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = or i64 %i.gw, %.04958.i
  %i.gy = icmp eq i32 %i.gt, %i.ff
  %i.gz = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.gy, i64 %i.gz, i64 %.060.i
  %i.ha = getelementptr [4 x i8], ptr %2, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !43 ; 2 uses
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw i64 1, %i.hd
  %i.hf = or i64 %i.he, %i.gx                     ; 2 uses
  %i.hg = icmp eq i32 %i.hb, %i.ff
  %i.hh = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i75.1 = select i1 %i.hg, i64 %i.hh, i64 %spec.select.i75 ; 2 uses
  %i.hi = icmp sgt i64 %.04759.i, 2
  br i1 %i.hi, label %.lr.ph.i74, label %.lr.ph66.split.us.i.preheader, !llvm.loop !888

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i.loopexit, %bb.ba, %bb.av, %bb.ax, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.at, %bb.as, %bb.ar
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %bb.v ], [ -1, %bb.l ], [ %i.fb, %bb.ar ], [ %i.fc, %bb.as ], [ %i.fd, %bb.at ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.14865.us.i, %bb.ax ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.ev, %.loopexit.i ], [ %i.bq, %middle.block ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.av ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 4 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i32> %broadcast.splatinsert252, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !43 ; 2 uses
  %wide.load257 = load <2 x i32>, ptr %i.g, align 4, !tbaa !43 ; 2 uses
  %i.h = and <2 x i32> %wide.load, splat (i32 63)
  %i.i = and <2 x i32> %wide.load257, splat (i32 63)
  %i.j = zext nneg <2 x i32> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i32> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i32> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i32> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !889

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
end_hunk_8
begin_hunk_9_@ucs4lib_adaptive_find:.lr.ph.preheader
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs4lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs4lib__two_way_count.exit, label %.lr.ph.i

ucs4lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs4lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs4lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs4lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !310
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !311
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 2 uses
  %i.h = icmp ult i32 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i32 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !893

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43   ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %.03339.i.i
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.02941.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i32 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs4lib__factorize.exit, !llvm.loop !893

ucs4lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !312
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %.0.sroa.speculated.i
  %i.al = shl i64 %..i, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %i.al)
  %i.am = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = getelementptr i8, ptr %2, i64 40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !313
  br i1 %i.am, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs4lib__factorize.exit
  %i.ap = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ap)
  %i.aq = add i64 %., 1
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !314
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs4lib__factorize.exit
  %i.ar = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.ar, align 8, !tbaa !315
  %i.as = add nsw i64 %1, -1                      ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  %i.av = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.bb, %.critedge ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.05559
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = xor i32 %i.ax, %i.au
  %i.az = and i32 %i.ay, 63
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.ba = sub nsw i64 %i.as, %.05559
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !315
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.bb = add nsw i64 %.05559, -1
  %i.bc = icmp sgt i64 %.05559, 0
  br i1 %i.bc, label %.lr.ph, label %.lr.ph62, !llvm.loop !894

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bd = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !237
  %i.bg = sub nuw nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bg, %.lr.ph62 ], [ %i.bo, %bb.n ] ; 3 uses
  %i.bh = sub nuw nsw i64 %i.as, %.061
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr [4 x i8], ptr %0, i64 %.061
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !237
  %i.bo = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bp = icmp samesign ult i64 %i.bo, %1
  br i1 %i.bp, label %bb.n, label %._crit_edge, !llvm.loop !895
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !311
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !312
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !310    ; 5 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -4       ; 6 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %1   ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !315  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !313
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i32, ptr %.1138, align 4, !tbaa !43
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !237  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr [4 x i8], ptr %i.g, i64 %.0126199
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.al = getelementptr [4 x i8], ptr %i.af, i64 %.0126199
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  %.not158 = icmp eq i32 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr [4 x i8], ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr [4 x i8], ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !896

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !897

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.g, i64 %.1127200
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %i.ax = getelementptr [4 x i8], ptr %i.af, i64 %.1127200
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43
  %.not155 = icmp eq i32 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr [4 x i8], ptr %.2139, i64 %i.f ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !237 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr [4 x i8], ptr %i.az, i64 %.4141.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bm = icmp ult ptr %i.i, %i.j
  br i1 %i.bm, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bn = sub i64 0, %.fr240                      ; 3 uses
  %i.bo = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bo, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bp = load i32, ptr %.6143.us, align 4, !tbaa !43
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !237 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %.6143.us, i64 %i.bu ; 6 uses
  %.not294 = icmp eq i8 %i.bt, 0
  %.not150.us = icmp uge ptr %i.bv, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
end_hunk_9
