Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@rsplit:bb.a
  %i.ny = getelementptr i8, ptr %i.lr, i64 24
  %.val92.i234 = load ptr, ptr %i.ny, align 8, !tbaa !279
  %i.nz = getelementptr [8 x i8], ptr %.val92.i234, i64 %.0.lcssa.i217
  store ptr %i.nv, ptr %i.nz, align 8, !tbaa !227
  br label %Py_DECREF.exit81.i233

bb.eu:                                            ; preds = %bb.es
  %i.oa = tail call i32 @PyList_Append(ptr noundef nonnull %i.lr, ptr noundef nonnull %i.nv) #33, !inline_history !743
  %.not78.i229 = icmp eq i32 %i.oa, 0
  %i.ob = load i32, ptr %i.nv, align 8, !tbaa !237 ; 3 uses
  %.not.i80.i230 = icmp sgt i32 %i.ob, -1         ; 2 uses
  br i1 %.not78.i229, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %.not.i80.i230, label %bb.ew, label %Py_DECREF.exit87.i221

bb.ew:                                            ; preds = %bb.ev
  %i.oc = add nsw i32 %i.ob, -1                   ; 2 uses
  store i32 %i.oc, ptr %i.nv, align 8, !tbaa !237
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %Py_DECREF.exit87.sink.split.i231, label %Py_DECREF.exit87.i221

bb.ex:                                            ; preds = %bb.eu
  br i1 %.not.i80.i230, label %bb.ey, label %Py_DECREF.exit81.i233

bb.ey:                                            ; preds = %bb.ex
  %i.oe = add nsw i32 %i.ob, -1                   ; 2 uses
  store i32 %i.oe, ptr %i.nv, align 8, !tbaa !237
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %bb.ez, label %Py_DECREF.exit81.i233

bb.ez:                                            ; preds = %bb.ey
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.nv) #33, !inline_history !743
  br label %Py_DECREF.exit81.i233

Py_DECREF.exit81.i233:                            ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.et
  %i.og = add nuw i64 %.0.lcssa.i217, 1
  br label %.critedge79.i218

.critedge79.i218:                                 ; preds = %.preheader104.i236, %bb.eb, %bb.er, %Py_DECREF.exit81.i233, %._crit_edge.i215, %Py_INCREF.exit.i263
  %.2.i219 = phi i64 [ %i.og, %Py_DECREF.exit81.i233 ], [ %.0124.i237, %bb.eb ], [ %.0.lcssa.i217, %._crit_edge.i215 ], [ %i.mu, %Py_INCREF.exit.i263 ], [ %.0.lcssa.i217, %bb.er ], [ %.0124.i237, %.preheader104.i236 ]
  %i.oh = getelementptr i8, ptr %i.lr, i64 16
  store i64 %.2.i219, ptr %i.oh, align 8, !tbaa !262
  %i.oi = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.lr) #33, !inline_history !743
  %i.oj = icmp slt i32 %i.oi, 0
  br i1 %i.oj, label %Py_DECREF.exit87.i221, label %asciilib_rsplit_whitespace.exit

Py_DECREF.exit87.sink.split.i231:                 ; preds = %bb.ew, %bb.el
  %.sink.i232 = phi ptr [ %i.my, %bb.el ], [ %i.nv, %bb.ew ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i232) #33, !inline_history !743
  br label %Py_DECREF.exit87.i221

Py_DECREF.exit87.i221:                            ; preds = %.critedge2.thread.i252, %Py_DECREF.exit87.sink.split.i231, %.critedge79.i218, %bb.ew, %bb.ev, %.critedge5.i228, %bb.el, %bb.ek
  %i.ok = load i32, ptr %i.lr, align 8, !tbaa !237 ; 2 uses
  %.not.i.i222 = icmp sgt i32 %i.ok, -1
  br i1 %.not.i.i222, label %bb.fa, label %asciilib_rsplit_whitespace.exit

bb.fa:                                            ; preds = %Py_DECREF.exit87.i221
  %i.ol = add nsw i32 %i.ok, -1                   ; 2 uses
  store i32 %i.ol, ptr %i.lr, align 8, !tbaa !237
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.fb, label %asciilib_rsplit_whitespace.exit

bb.fb:                                            ; preds = %bb.fa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.lr) #33, !inline_history !743
  br label %asciilib_rsplit_whitespace.exit

bb.fc:                                            ; preds = %bb.d
  unreachable

bb.fd:                                            ; preds = %bb.a
  %i.on = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8            ; 3 uses
  %i.op = lshr i32 %i.oo, 2
  %i.oq = and i32 %i.op, 7                        ; 3 uses
  %i.or = getelementptr i8, ptr %1, i64 16
  %.val99 = load i64, ptr %i.or, align 8, !tbaa !239 ; 30 uses
  %i.os = icmp slt i64 %2, 0
  br i1 %i.os, label %bb.fe, label %.thread

bb.fe:                                            ; preds = %bb.fd
  %i.ot = icmp eq i64 %.val99, 0
  br i1 %i.ot, label %.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ou = sdiv i64 %.val100, %.val99
  %.fr494 = freeze i64 %i.ou
  %i.ov = add i64 %.fr494, 1                      ; 2 uses
  %i.ow = icmp slt i64 %i.ov, 0
  %spec.select = select i1 %i.ow, i64 %.val100, i64 %i.ov
  br label %.thread

.thread:                                          ; preds = %bb.ff, %bb.fe, %bb.fd
  %.1 = phi i64 [ %2, %bb.fd ], [ 0, %bb.fe ], [ %spec.select, %bb.ff ] ; 26 uses
  %i.ox = icmp samesign ult i32 %i.e, %i.oq
  %i.oy = icmp slt i64 %.val100, %.val99
  %or.cond = select i1 %i.ox, i1 true, i1 %i.oy
  br i1 %or.cond, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %.thread
  %i.oz = tail call ptr @PyList_New(i64 noundef 1) #33 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %asciilib_rsplit_whitespace.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.pb = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.pc = icmp ugt i32 %i.pb, -1073741825
  br i1 %i.pc, label %_Py_NewRef.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pd = add nuw i32 %i.pb, 1
  store i32 %i.pd, ptr %0, align 8, !tbaa !237
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.fh, %bb.fi
  %i.pe = getelementptr i8, ptr %i.oz, i64 24
  %.val101 = load ptr, ptr %i.pe, align 8, !tbaa !279
  store ptr %0, ptr %.val101, align 8, !tbaa !227
  br label %asciilib_rsplit_whitespace.exit

bb.fj:                                            ; preds = %.thread
  %i.pf = and i32 %i.c, 32
  %.not.i267 = icmp eq i32 %i.pf, 0
  br i1 %.not.i267, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.pg = and i32 %i.c, 64
  %.not.i.i268 = icmp eq i32 %i.pg, 0
  %.0.v.i.i269 = select i1 %.not.i.i268, i64 56, i64 40
  %.0.i.i270 = getelementptr i8, ptr %0, i64 %.0.v.i.i269
  br label %_PyUnicode_DATA.exit273

bb.fl:                                            ; preds = %bb.fj
  %i.ph = getelementptr i8, ptr %0, i64 56
  %.val4.i272 = load ptr, ptr %i.ph, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit273

_PyUnicode_DATA.exit273:                          ; preds = %bb.fk, %bb.fl
  %.0.i271 = phi ptr [ %.0.i.i270, %bb.fk ], [ %.val4.i272, %bb.fl ] ; 35 uses
  %i.pi = and i32 %i.oo, 32
  %.not.i275 = icmp eq i32 %i.pi, 0
  br i1 %.not.i275, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_PyUnicode_DATA.exit273
  %i.pj = and i32 %i.oo, 64
  %.not.i.i276 = icmp eq i32 %i.pj, 0
  %.0.v.i.i277 = select i1 %.not.i.i276, i64 56, i64 40
  %.0.i.i278 = getelementptr i8, ptr %1, i64 %.0.v.i.i277
  br label %_PyUnicode_DATA.exit281

bb.fn:                                            ; preds = %_PyUnicode_DATA.exit273
  %i.pk = getelementptr i8, ptr %1, i64 56
  %.val4.i280 = load ptr, ptr %i.pk, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit281

_PyUnicode_DATA.exit281:                          ; preds = %bb.fm, %bb.fn
  %.0.i279 = phi ptr [ %.0.i.i278, %bb.fm ], [ %.val4.i280, %bb.fn ] ; 2 uses
  %.not = icmp eq i32 %i.oq, %i.e                 ; 2 uses
  br i1 %.not, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_PyUnicode_DATA.exit281
  %i.pl = tail call fastcc ptr @unicode_askind(i32 noundef %i.oq, ptr noundef %.0.i279, i64 noundef %.val99, i32 noundef %i.e) ; 2 uses
  %.not93 = icmp eq ptr %i.pl, null
  br i1 %.not93, label %asciilib_rsplit_whitespace.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_PyUnicode_DATA.exit281
  %.080 = phi ptr [ %i.pl, %bb.fo ], [ %.0.i279, %_PyUnicode_DATA.exit281 ] ; 17 uses
  switch i32 %i.e, label %asciilib_rsplit.exit [
    i32 1, label %bb.fq
    i32 2, label %bb.lu
    i32 4, label %bb.nt
  ]

bb.fq:                                            ; preds = %bb.fp
  %.val97 = load i32, ptr %i.b, align 8
  %i.pm = and i32 %.val97, 64
  %.not94 = icmp eq i32 %i.pm, 0
  br i1 %.not94, label %bb.in, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.val = load i32, ptr %i.on, align 8
  %i.pn = and i32 %.val, 64
  %.not95 = icmp eq i32 %i.pn, 0
  br i1 %.not95, label %bb.in, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  switch i64 %.val99, label %bb.hc [
    i64 0, label %bb.ft
    i64 1, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.po = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.po, ptr noundef nonnull @.str.197) #33, !inline_history !748
  br label %asciilib_rsplit.exit

bb.fu:                                            ; preds = %bb.fs
  %i.pp = load i8, ptr %.080, align 1, !tbaa !237
  %i.pq = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.pr = add nsw i64 %i.pq, 1
  %i.ps = tail call ptr @PyList_New(i64 noundef %i.pr) #33, !inline_history !749 ; 10 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %asciilib_rsplit.exit, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %bb.fu
  %3 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 24     ; 3 uses
  %smin.i = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.pv = sub i64 %.1, %smin.i                    ; 4 uses
  %exitcond.not.i2831492 = icmp eq i64 %i.pv, 0
  br i1 %exitcond.not.i2831492, label %.critedge.i.i, label %.lr.ph.i.i.preheader

bb.fv:                                            ; preds = %.loopexit.i.i
  %exitcond.not.i283 = icmp eq i64 %i.rb, %i.pv
  br i1 %exitcond.not.i283, label %.critedge.i.i, label %.lr.ph.i.i.preheader, !llvm.loop !750

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph107.i.i, %bb.fv
  %.050105.i.i1494 = phi i64 [ %i.rc, %bb.fv ], [ %3, %.lr.ph107.i.i ] ; 3 uses
  %.0106.i.i1493 = phi i64 [ %i.rb, %bb.fv ], [ 0, %.lr.ph107.i.i ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.gj
  %.153102.i.i = phi i64 [ %i.qz, %bb.gj ], [ %.050105.i.i1494, %.lr.ph.i.i.preheader ] ; 7 uses
  %i.pw = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !237
  %i.py = icmp eq i8 %i.px, %i.pp
  br i1 %i.py, label %bb.fw, label %bb.gj

bb.fw:                                            ; preds = %.lr.ph.i.i
  %i.pz = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.qa = getelementptr i8, ptr %i.pz, i64 1      ; 2 uses
  %i.qb = sub nuw nsw i64 %.050105.i.i1494, %.153102.i.i ; 3 uses
  %i.qc = icmp eq i64 %i.qb, 1
  br i1 %i.qc, label %_PyUnicode_FromASCII.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.qd = tail call ptr @PyUnicode_New(i64 noundef %i.qb, i32 noundef 127), !inline_history !751 ; 5 uses
  %.not.i77.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i77.i.i, label %Py_DECREF.exit69.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qe = getelementptr i8, ptr %i.qd, i64 32
  %.val.i.i.i.i = load i32, ptr %i.qe, align 8    ; 2 uses
  %i.qf = and i32 %.val.i.i.i.i, 32
  %.not.i.i.i.i284 = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i.i.i284, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qg = and i32 %.val.i.i.i.i, 64
  %.not.i.i.i.i.i = icmp eq i32 %i.qg, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i = getelementptr i8, ptr %i.qd, i64 %.0.v.i.i.i.i.i
  br label %_PyUnicode_FromASCII.exit.thread90.i.i

bb.ga:                                            ; preds = %bb.fy
  %i.qh = getelementptr i8, ptr %i.qd, i64 56
  %.val4.i.i.i.i = load ptr, ptr %i.qh, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit.thread90.i.i

_PyUnicode_FromASCII.exit.thread90.i.i:           ; preds = %bb.ga, %bb.fz
  %.0.i.i.i.i285 = phi ptr [ %.0.i.i.i.i.i, %bb.fz ], [ %.val4.i.i.i.i, %bb.ga ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i285, ptr readonly align 1 %i.qa, i64 %i.qb, i1 false)
  br label %bb.gb

_PyUnicode_FromASCII.exit.i.i:                    ; preds = %bb.fw
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !237 ; 3 uses
  %i.qj = zext nneg i8 %i.qi to i64
  %i.qk = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.qj
  %i.ql = and i8 %i.qi, 127
  %i.qm = zext nneg i8 %i.ql to i64
  %i.qn = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.qm
  %i.qo = icmp slt i8 %i.qi, 0
  %i.qp = select i1 %i.qo, ptr %i.qn, ptr %i.qk   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, null
  br i1 %i.qq, label %Py_DECREF.exit69.i.i, label %bb.gb

bb.gb:                                            ; preds = %_PyUnicode_FromASCII.exit.i.i, %_PyUnicode_FromASCII.exit.thread90.i.i
  %.0.i92.i.i = phi ptr [ %i.qd, %_PyUnicode_FromASCII.exit.thread90.i.i ], [ %i.qp, %_PyUnicode_FromASCII.exit.i.i ] ; 7 uses
  %i.qr = icmp samesign ult i64 %.0106.i.i1493, 12
  br i1 %i.qr, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %.val76.i.i = load ptr, ptr %i.pu, align 8, !tbaa !279
  %i.qs = getelementptr [8 x i8], ptr %.val76.i.i, i64 %.0106.i.i1493
  store ptr %.0.i92.i.i, ptr %i.qs, align 8, !tbaa !227
  br label %.loopexit.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.qt = tail call i32 @PyList_Append(ptr noundef nonnull %i.ps, ptr noundef nonnull %.0.i92.i.i) #33, !inline_history !749
  %.not61.i.i = icmp eq i32 %i.qt, 0
  %i.qu = load i32, ptr %.0.i92.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i = icmp sgt i32 %i.qu, -1          ; 2 uses
  br i1 %.not61.i.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  br i1 %.not.i66.i.i, label %bb.gf, label %Py_DECREF.exit69.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.qv = add nsw i32 %i.qu, -1                   ; 2 uses
  store i32 %i.qv, ptr %.0.i92.i.i, align 8, !tbaa !237
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %Py_DECREF.exit69.sink.split.i.i, label %Py_DECREF.exit69.i.i

bb.gg:                                            ; preds = %bb.gd
  br i1 %.not.i66.i.i, label %bb.gh, label %.loopexit.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.qx = add nsw i32 %i.qu, -1                   ; 2 uses
  store i32 %i.qx, ptr %.0.i92.i.i, align 8, !tbaa !237
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.gi, label %.loopexit.i.i

bb.gi:                                            ; preds = %bb.gh
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i92.i.i) #33, !inline_history !749
  br label %.loopexit.i.i

bb.gj:                                            ; preds = %.lr.ph.i.i
  %i.qz = add nsw i64 %.153102.i.i, -1
  %i.ra = icmp sgt i64 %.153102.i.i, 0
  br i1 %i.ra, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !752

.loopexit.i.i:                                    ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.gc
  %i.rb = add nuw i64 %.0106.i.i1493, 1           ; 3 uses
  %i.rc = add nsw i64 %.153102.i.i, -1            ; 3 uses
  %i.rd = icmp sgt i64 %.153102.i.i, 0
  br i1 %i.rd, label %bb.fv, label %.critedge.i.thread.i, !llvm.loop !750

.critedge.i.i:                                    ; preds = %bb.fv, %bb.gj, %.lr.ph107.i.i
  %.050105.i.i1421 = phi i64 [ %.050105.i.i1494, %bb.gj ], [ %3, %.lr.ph107.i.i ], [ %i.rc, %bb.fv ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.0106.i.i1493, %bb.gj ], [ %i.pv, %.lr.ph107.i.i ], [ %i.pv, %bb.fv ] ; 2 uses
  %i.re = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %i.re, label %.critedge.thread.i.i, label %.critedge.i.thread.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i
  %i.rf = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.rf, align 8, !tbaa !229
  %.not.i82.i = icmp eq ptr %.val.i.i, @PyUnicode_Type
  br i1 %.not.i82.i, label %bb.gk, label %.critedge.i.thread.i

bb.gk:                                            ; preds = %.critedge.thread.i.i
  %i.rg = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.rh = icmp ugt i32 %i.rg, -1073741825
  br i1 %i.rh, label %Py_INCREF.exit.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ri = add nuw i32 %i.rg, 1
  store i32 %i.ri, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.gl, %bb.gk
  %.val75.i.i = load ptr, ptr %i.pu, align 8, !tbaa !279
  store ptr %0, ptr %.val75.i.i, align 8, !tbaa !227
  br label %bb.gz

.critedge.i.thread.i:                             ; preds = %.loopexit.i.i, %.critedge.thread.i.i, %.critedge.i.i
  %.0.lcssa133.i.i = phi i64 [ 0, %.critedge.thread.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.rb, %.loopexit.i.i ] ; 4 uses
  %.050.lcssa131.i.i = phi i64 [ %.050105.i.i1421, %.critedge.thread.i.i ], [ %.050105.i.i1421, %.critedge.i.i ], [ %i.rc, %.loopexit.i.i ] ; 3 uses
  %i.rj = icmp sgt i64 %.050.lcssa131.i.i, -2
  br i1 %i.rj, label %bb.gm, label %bb.gz

bb.gm:                                            ; preds = %.critedge.i.thread.i
  %i.rk = add nsw i64 %.050.lcssa131.i.i, 1       ; 2 uses
  %i.rl = icmp eq i64 %.050.lcssa131.i.i, 0
  br i1 %i.rl, label %_PyUnicode_FromASCII.exit88.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.rm = tail call ptr @PyUnicode_New(i64 noundef %i.rk, i32 noundef 127), !inline_history !751 ; 5 uses
  %.not.i78.i.i = icmp eq ptr %i.rm, null
  br i1 %.not.i78.i.i, label %Py_DECREF.exit69.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rn = getelementptr i8, ptr %i.rm, i64 32
  %.val.i.i79.i.i = load i32, ptr %i.rn, align 8  ; 2 uses
  %i.ro = and i32 %.val.i.i79.i.i, 32
  %.not.i.i80.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not.i.i80.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rp = and i32 %.val.i.i79.i.i, 64
  %.not.i.i.i81.i.i = icmp eq i32 %i.rp, 0
  %.0.v.i.i.i82.i.i = select i1 %.not.i.i.i81.i.i, i64 56, i64 40
  %.0.i.i.i83.i.i = getelementptr i8, ptr %i.rm, i64 %.0.v.i.i.i82.i.i
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

bb.gq:                                            ; preds = %bb.go
  %i.rq = getelementptr i8, ptr %i.rm, i64 56
  %.val4.i.i87.i.i = load ptr, ptr %i.rq, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

_PyUnicode_FromASCII.exit88.thread94.i.i:         ; preds = %bb.gq, %bb.gp
  %.0.i.i85.i.i = phi ptr [ %.0.i.i.i83.i.i, %bb.gp ], [ %.val4.i.i87.i.i, %bb.gq ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i85.i.i, ptr readonly align 1 %.0.i271, i64 %i.rk, i1 false)
  br label %bb.gr

_PyUnicode_FromASCII.exit88.i.i:                  ; preds = %bb.gm
  %i.rr = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 3 uses
  %i.rs = zext nneg i8 %i.rr to i64
  %i.rt = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.rs
  %i.ru = and i8 %i.rr, 127
  %i.rv = zext nneg i8 %i.ru to i64
  %i.rw = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.rv
  %i.rx = icmp slt i8 %i.rr, 0
  %i.ry = select i1 %i.rx, ptr %i.rw, ptr %i.rt   ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %Py_DECREF.exit69.i.i, label %bb.gr

bb.gr:                                            ; preds = %_PyUnicode_FromASCII.exit88.i.i, %_PyUnicode_FromASCII.exit88.thread94.i.i
  %.0.i8696.i.i = phi ptr [ %i.rm, %_PyUnicode_FromASCII.exit88.thread94.i.i ], [ %i.ry, %_PyUnicode_FromASCII.exit88.i.i ] ; 7 uses
  %i.sa = icmp slt i64 %.0.lcssa133.i.i, 12
  br i1 %i.sa, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %.val74.i.i = load ptr, ptr %i.pu, align 8, !tbaa !279
  %i.sb = getelementptr [8 x i8], ptr %.val74.i.i, i64 %.0.lcssa133.i.i
  store ptr %.0.i8696.i.i, ptr %i.sb, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.sc = tail call i32 @PyList_Append(ptr noundef nonnull %i.ps, ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !749
  %.not60.i.i = icmp eq i32 %i.sc, 0
  %i.sd = load i32, ptr %.0.i8696.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i = icmp sgt i32 %i.sd, -1          ; 2 uses
  br i1 %.not60.i.i, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %.not.i62.i.i, label %bb.gv, label %Py_DECREF.exit69.i.i

bb.gv:                                            ; preds = %bb.gu
  %i.se = add nsw i32 %i.sd, -1                   ; 2 uses
  store i32 %i.se, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %Py_DECREF.exit69.sink.split.i.i, label %Py_DECREF.exit69.i.i

bb.gw:                                            ; preds = %bb.gt
  br i1 %.not.i62.i.i, label %bb.gx, label %Py_DECREF.exit63.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.sg = add nsw i32 %i.sd, -1                   ; 2 uses
  store i32 %i.sg, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %bb.gy, label %Py_DECREF.exit63.i.i

bb.gy:                                            ; preds = %bb.gx
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !749
  br label %Py_DECREF.exit63.i.i

Py_DECREF.exit63.i.i:                             ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gs
  %i.si = add i64 %.0.lcssa133.i.i, 1
  br label %bb.gz

bb.gz:                                            ; preds = %Py_DECREF.exit63.i.i, %.critedge.i.thread.i, %Py_INCREF.exit.i.i
  %.2.i.i = phi i64 [ 1, %Py_INCREF.exit.i.i ], [ %i.si, %Py_DECREF.exit63.i.i ], [ %.0.lcssa133.i.i, %.critedge.i.thread.i ]
  %i.sj = getelementptr i8, ptr %i.ps, i64 16
  store i64 %.2.i.i, ptr %i.sj, align 8, !tbaa !262
  %i.sk = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.ps) #33, !inline_history !749
  %i.sl = icmp slt i32 %i.sk, 0
  br i1 %i.sl, label %Py_DECREF.exit69.i.i, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i:                  ; preds = %bb.gv, %bb.gf
  %.0.i8696.sink.i.i = phi ptr [ %.0.i92.i.i, %bb.gf ], [ %.0.i8696.i.i, %bb.gv ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.sink.i.i) #33, !inline_history !749
  br label %Py_DECREF.exit69.i.i

Py_DECREF.exit69.i.i:                             ; preds = %_PyUnicode_FromASCII.exit.i.i, %bb.fx, %Py_DECREF.exit69.sink.split.i.i, %bb.gz, %bb.gv, %bb.gu, %_PyUnicode_FromASCII.exit88.i.i, %bb.gn, %bb.gf, %bb.ge
  %i.sm = load i32, ptr %i.ps, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i282 = icmp sgt i32 %i.sm, -1
  br i1 %.not.i.i.i282, label %bb.ha, label %asciilib_rsplit.exit

bb.ha:                                            ; preds = %Py_DECREF.exit69.i.i
  %i.sn = add nsw i32 %i.sm, -1                   ; 2 uses
  store i32 %i.sn, ptr %i.ps, align 8, !tbaa !237
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %bb.hb, label %asciilib_rsplit.exit

bb.hb:                                            ; preds = %bb.ha
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ps) #33, !inline_history !749
  br label %asciilib_rsplit.exit

bb.hc:                                            ; preds = %bb.fs
  %i.sp = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.sq = add nsw i64 %i.sp, 1
  %i.sr = tail call ptr @PyList_New(i64 noundef %i.sq) #33, !inline_history !748 ; 12 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %asciilib_rsplit.exit, label %.preheader.i286

.preheader.i286:                                  ; preds = %bb.hc
  %i.st = icmp slt i64 %.1, 1
  br i1 %i.st, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %.preheader.i286
  %i.su = icmp slt i64 %.val99, 2
  %i.sv = add i64 %.val99, -1                     ; 6 uses
  %i.sw = getelementptr i8, ptr %i.sr, i64 24
  br i1 %i.su, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287.split.preheader

.lr.ph.i287.split.preheader:                      ; preds = %.lr.ph.i287
  %xtraiter = and i64 %i.sv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.sx = getelementptr i8, ptr %.080, i64 %i.sv
  %i.sy = add nsw i64 %.val99, -2                 ; 2 uses
  %i.sz = icmp eq i64 %.val99, 2
  br label %.lr.ph.i287.split

.lr.ph.i287.split:                                ; preds = %.lr.ph.i287.split.preheader, %Py_DECREF.exit72.i
  %.in.i = phi i64 [ %i.tk, %Py_DECREF.exit72.i ], [ %.1, %.lr.ph.i287.split.preheader ] ; 2 uses
  %.0137.i = phi i64 [ %i.we, %Py_DECREF.exit72.i ], [ 0, %.lr.ph.i287.split.preheader ] ; 5 uses
  %.057136.i = phi i64 [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ], [ %.val100, %.lr.ph.i287.split.preheader ] ; 4 uses
  %i.ta = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.tb = and i8 %i.ta, 63
  %i.tc = zext nneg i8 %i.tb to i64
  %i.td = shl nuw i64 1, %i.tc                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %.lr.ph.i287.split
  %i.te = load i8, ptr %i.sx, align 1, !tbaa !237 ; 2 uses
  %i.tf = and i8 %i.te, 63
  %i.tg = zext nneg i8 %i.tf to i64
  %i.th = shl nuw i64 1, %i.tg
  %i.ti = or i64 %i.th, %i.td                     ; 2 uses
  %i.tj = icmp eq i8 %i.te, %i.ta
  %spec.select.i.i.i.prol = select i1 %i.tj, i64 %i.sy, i64 %i.sv ; 2 uses
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %.lr.ph.i287.split
  %.060.i.i.i.unr = phi i64 [ %i.sv, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.sv, %.lr.ph.i287.split ], [ %i.sy, %.lr.ph.i70.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.td, %.lr.ph.i287.split ], [ %i.ti, %.lr.ph.i70.i.i.prol ]
  %.lcssa1634.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %i.ti, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  br i1 %i.sz, label %.preheader56.i.i.i, label %.lr.ph.i70.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa1634 = phi i64 [ %.lcssa1634.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.uz, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.tk = add nsw i64 %.in.i, -1
  %i.tl = sub i64 %.057136.i, %.val99             ; 2 uses
  %i.tm = icmp sgt i64 %i.tl, -1
  br i1 %i.tm, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.hi
  %.14865.us.i.i.i = phi i64 [ %i.uk, %bb.hi ], [ %i.tl, %.preheader56.i.i.i ] ; 9 uses
  %i.tn = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i ; 4 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !237
  %i.tp = icmp eq i8 %i.to, %i.ta
  br i1 %i.tp, label %.preheader.us.i72.i.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.tq = getelementptr i8, ptr %i.tn, i64 -1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !237
  %i.ts = and i8 %i.tr, 63
  %i.tt = zext nneg i8 %i.ts to i64
  %i.tu = shl nuw i64 1, %i.tt
  %i.tv = and i64 %i.tu, %.lcssa1634
  %.not51.us.i.i.i = icmp eq i64 %i.tv, 0
  %i.tw = select i1 %.not51.us.i.i.i, i64 %.val99, i64 0
  br label %bb.hi

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.hf
  %.04662.us.i.i.i = phi i64 [ %i.ub, %bb.hf ], [ %i.sv, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.tx = getelementptr i8, ptr %i.tn, i64 %.04662.us.i.i.i
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !237
  %i.tz = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !237
  %.not52.us.i.i.i = icmp eq i8 %i.ty, %i.ua
  br i1 %.not52.us.i.i.i, label %bb.hf, label %.thread.us.i73.i.i

bb.hf:                                            ; preds = %.preheader.us.i72.i.i
  %i.ub = add nsw i64 %.04662.us.i.i.i, -1
  %i.uc = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.uc, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !25

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.thread.us.i73.i.i
  %i.ud = getelementptr i8, ptr %i.tn, i64 -1
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !237
  %i.uf = and i8 %i.ue, 63
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = shl nuw i64 1, %i.ug
  %i.ui = and i64 %i.uh, %.lcssa1634
  %.not54.us.i.i.i = icmp eq i64 %i.ui, 0
  br i1 %.not54.us.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.thread.us.i73.i.i
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.he
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.hh ], [ %i.tw, %bb.he ], [ %.val99, %bb.hg ]
  %i.uj = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.uk = add nsw i64 %i.uj, -1
  %i.ul = icmp sgt i64 %i.uj, 0
  br i1 %i.ul, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !26

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.vb, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.uz, %.lr.ph.i70.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %i.um = getelementptr i8, ptr %.080, i64 %.04759.i.i.i
  %i.un = load i8, ptr %i.um, align 1, !tbaa !237 ; 2 uses
  %i.uo = and i8 %i.un, 63
  %i.up = zext nneg i8 %i.uo to i64
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = or i64 %i.uq, %.04958.i.i.i
  %i.us = icmp eq i8 %i.un, %i.ta
  %i.ut = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.us, i64 %i.ut, i64 %.060.i.i.i
  %i.uu = getelementptr i8, ptr %.080, i64 %i.ut
end_hunk_0
begin_hunk_1_@rsplit:bb.a
  br label %Py_DECREF.exit72.i

bb.hq:                                            ; preds = %bb.ho
  %i.vy = tail call i32 @PyList_Append(ptr noundef nonnull %i.sr, ptr noundef nonnull %.0.i88104.i) #33, !inline_history !748
  %.not.i293 = icmp eq i32 %i.vy, 0
  %i.vz = load i32, ptr %.0.i88104.i, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i = icmp sgt i32 %i.vz, -1            ; 2 uses
  br i1 %.not.i293, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hs, label %Py_DECREF.exit74.i

bb.hs:                                            ; preds = %bb.hr
  %i.wa = add nsw i32 %i.vz, -1                   ; 2 uses
  store i32 %i.wa, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ht:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hu, label %Py_DECREF.exit72.i

bb.hu:                                            ; preds = %bb.ht
  %i.wc = add nsw i32 %i.vz, -1                   ; 2 uses
  store i32 %i.wc, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %bb.hv, label %Py_DECREF.exit72.i

bb.hv:                                            ; preds = %bb.hu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i88104.i) #33, !inline_history !748
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hp
  %i.we = add nuw nsw i64 %.0137.i, 1             ; 2 uses
  %i.wf = icmp slt i64 %.in.i, 2
  %i.wg = icmp slt i64 %.14865.us.i.i.i, %.val99
  %or.cond.i = or i1 %i.wf, %i.wg
  br i1 %or.cond.i, label %asciilib_fastsearch.exit.thread.thread209.i, label %.lr.ph.i287.split, !llvm.loop !754

asciilib_fastsearch.exit.thread.i:                ; preds = %.preheader56.i.i.i, %asciilib_fastsearch.exit.i, %bb.hi, %bb.hd
  %i.wh = icmp eq i64 %.0137.i, 0
  br i1 %i.wh, label %asciilib_fastsearch.exit.thread.thread.i, label %asciilib_fastsearch.exit.thread.thread209.i

asciilib_fastsearch.exit.thread.thread.i:         ; preds = %.lr.ph.i287, %asciilib_fastsearch.exit.thread.i, %.preheader.i286
  %.057124206.i = phi i64 [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i286 ], [ %.val100, %.lr.ph.i287 ]
  %i.wi = getelementptr i8, ptr %0, i64 8
  %.val.i289 = load ptr, ptr %i.wi, align 8, !tbaa !229
  %.not109.i = icmp eq ptr %.val.i289, @PyUnicode_Type
  br i1 %.not109.i, label %bb.hw, label %asciilib_fastsearch.exit.thread.thread209.i

bb.hw:                                            ; preds = %asciilib_fastsearch.exit.thread.thread.i
  %i.wj = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.wk = icmp ugt i32 %i.wj, -1073741825
  br i1 %i.wk, label %Py_INCREF.exit.i290, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wl = add nuw i32 %i.wj, 1
  store i32 %i.wl, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i290

Py_INCREF.exit.i290:                              ; preds = %bb.hx, %bb.hw
  %i.wm = getelementptr i8, ptr %i.sr, i64 24
  %.val80.i = load ptr, ptr %i.wm, align 8, !tbaa !279
  store ptr %0, ptr %.val80.i, align 8, !tbaa !227
  br label %bb.ik

asciilib_fastsearch.exit.thread.thread209.i:      ; preds = %Py_DECREF.exit72.i, %asciilib_fastsearch.exit.thread.thread.i, %asciilib_fastsearch.exit.thread.i
  %.0119207.i = phi i64 [ 0, %asciilib_fastsearch.exit.thread.thread.i ], [ %.0137.i, %asciilib_fastsearch.exit.thread.i ], [ %i.we, %Py_DECREF.exit72.i ] ; 3 uses
  %.057124205.i = phi i64 [ %.057124206.i, %asciilib_fastsearch.exit.thread.thread.i ], [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ] ; 3 uses
  %i.wn = icmp eq i64 %.057124205.i, 1
  br i1 %i.wn, label %_PyUnicode_FromASCII.exit99.i, label %bb.hy

bb.hy:                                            ; preds = %asciilib_fastsearch.exit.thread.thread209.i
  %i.wo = tail call ptr @PyUnicode_New(i64 noundef %.057124205.i, i32 noundef 127), !inline_history !753 ; 5 uses
  %.not.i89.i = icmp eq ptr %i.wo, null
  br i1 %.not.i89.i, label %Py_DECREF.exit74.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wp = getelementptr i8, ptr %i.wo, i64 32
  %.val.i.i90.i = load i32, ptr %i.wp, align 8    ; 2 uses
  %i.wq = and i32 %.val.i.i90.i, 32
  %.not.i.i91.i = icmp eq i32 %i.wq, 0
  br i1 %.not.i.i91.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.wr = and i32 %.val.i.i90.i, 64
  %.not.i.i.i92.i = icmp eq i32 %i.wr, 0
  %.0.v.i.i.i93.i = select i1 %.not.i.i.i92.i, i64 56, i64 40
  %.0.i.i.i94.i = getelementptr i8, ptr %i.wo, i64 %.0.v.i.i.i93.i
  br label %_PyUnicode_FromASCII.exit99.thread106.i

bb.ib:                                            ; preds = %bb.hz
  %i.ws = getelementptr i8, ptr %i.wo, i64 56
  %.val4.i.i98.i = load ptr, ptr %i.ws, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit99.thread106.i

_PyUnicode_FromASCII.exit99.thread106.i:          ; preds = %bb.ib, %bb.ia
  %.0.i.i96.i = phi ptr [ %.0.i.i.i94.i, %bb.ia ], [ %.val4.i.i98.i, %bb.ib ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i96.i, ptr readonly align 1 %.0.i271, i64 %.057124205.i, i1 false)
  br label %bb.ic

_PyUnicode_FromASCII.exit99.i:                    ; preds = %asciilib_fastsearch.exit.thread.thread209.i
  %i.wt = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 3 uses
  %i.wu = zext nneg i8 %i.wt to i64
  %i.wv = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.wu
  %i.ww = and i8 %i.wt, 127
  %i.wx = zext nneg i8 %i.ww to i64
  %i.wy = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.wx
  %i.wz = icmp slt i8 %i.wt, 0
  %i.xa = select i1 %i.wz, ptr %i.wy, ptr %i.wv   ; 2 uses
  %i.xb = icmp eq ptr %i.xa, null
  br i1 %i.xb, label %Py_DECREF.exit74.i, label %bb.ic

bb.ic:                                            ; preds = %_PyUnicode_FromASCII.exit99.i, %_PyUnicode_FromASCII.exit99.thread106.i
  %.0.i97108.i = phi ptr [ %i.wo, %_PyUnicode_FromASCII.exit99.thread106.i ], [ %i.xa, %_PyUnicode_FromASCII.exit99.i ] ; 7 uses
  %i.xc = icmp slt i64 %.0119207.i, 12
  br i1 %i.xc, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.xd = getelementptr i8, ptr %i.sr, i64 24
  %.val79.i = load ptr, ptr %i.xd, align 8, !tbaa !279
  %i.xe = getelementptr [8 x i8], ptr %.val79.i, i64 %.0119207.i
  store ptr %.0.i97108.i, ptr %i.xe, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i

bb.ie:                                            ; preds = %bb.ic
  %i.xf = tail call i32 @PyList_Append(ptr noundef nonnull %i.sr, ptr noundef nonnull %.0.i97108.i) #33, !inline_history !748
  %.not66.i = icmp eq i32 %i.xf, 0
  %i.xg = load i32, ptr %.0.i97108.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i = icmp sgt i32 %i.xg, -1            ; 2 uses
  br i1 %.not66.i, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ig, label %Py_DECREF.exit74.i

bb.ig:                                            ; preds = %bb.if
  %i.xh = add nsw i32 %i.xg, -1                   ; 2 uses
  store i32 %i.xh, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ih:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ii, label %Py_DECREF.exit68.i

bb.ii:                                            ; preds = %bb.ih
  %i.xj = add nsw i32 %i.xg, -1                   ; 2 uses
  store i32 %i.xj, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.xk = icmp eq i32 %i.xj, 0
  br i1 %i.xk, label %bb.ij, label %Py_DECREF.exit68.i

bb.ij:                                            ; preds = %bb.ii
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.i) #33, !inline_history !748
  br label %Py_DECREF.exit68.i

Py_DECREF.exit68.i:                               ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.id
  %i.xl = add i64 %.0119207.i, 1
  br label %bb.ik

bb.ik:                                            ; preds = %Py_DECREF.exit68.i, %Py_INCREF.exit.i290
  %.1.i = phi i64 [ 1, %Py_INCREF.exit.i290 ], [ %i.xl, %Py_DECREF.exit68.i ]
  %i.xm = getelementptr i8, ptr %i.sr, i64 16
  store i64 %.1.i, ptr %i.xm, align 8, !tbaa !262
  %i.xn = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.sr) #33, !inline_history !748
  %i.xo = icmp slt i32 %i.xn, 0
  br i1 %i.xo, label %Py_DECREF.exit74.i, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i:                    ; preds = %bb.ig, %bb.hs
  %.0.i97108.sink.i = phi ptr [ %.0.i88104.i, %bb.hs ], [ %.0.i97108.i, %bb.ig ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.sink.i) #33, !inline_history !748
  br label %Py_DECREF.exit74.i

Py_DECREF.exit74.i:                               ; preds = %_PyUnicode_FromASCII.exit.i295, %bb.hk, %Py_DECREF.exit74.sink.split.i, %bb.ik, %bb.ig, %bb.if, %_PyUnicode_FromASCII.exit99.i, %bb.hy, %bb.hs, %bb.hr
  %i.xp = load i32, ptr %i.sr, align 8, !tbaa !237 ; 2 uses
  %.not.i.i288 = icmp sgt i32 %i.xp, -1
  br i1 %.not.i.i288, label %bb.il, label %asciilib_rsplit.exit

bb.il:                                            ; preds = %Py_DECREF.exit74.i
  %i.xq = add nsw i32 %i.xp, -1                   ; 2 uses
  store i32 %i.xq, ptr %i.sr, align 8, !tbaa !237
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.im, label %asciilib_rsplit.exit

bb.im:                                            ; preds = %bb.il
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sr) #33, !inline_history !748
  br label %asciilib_rsplit.exit

bb.in:                                            ; preds = %bb.fr, %bb.fq
  switch i64 %.val99, label %bb.kd [
    i64 0, label %bb.io
    i64 1, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.xs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.xs, ptr noundef nonnull @.str.197) #33, !inline_history !755
  br label %asciilib_rsplit.exit

bb.ip:                                            ; preds = %bb.in
  %i.xt = load i8, ptr %.080, align 1, !tbaa !237
  %i.xu = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.xv = add nsw i64 %i.xu, 1
  %i.xw = tail call ptr @PyList_New(i64 noundef %i.xv) #33, !inline_history !756 ; 10 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %asciilib_rsplit.exit, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %bb.ip
  %4 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xw, i64 24     ; 3 uses
  %smin.i311 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.xz = sub i64 %.1, %smin.i311                 ; 4 uses
  %exitcond.not.i3121496 = icmp eq i64 %i.xz, 0
  br i1 %exitcond.not.i3121496, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader

bb.iq:                                            ; preds = %.loopexit.i.i319
  %exitcond.not.i312 = icmp eq i64 %i.zo, %i.xz
  br i1 %exitcond.not.i312, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader, !llvm.loop !757

.lr.ph.i.i313.preheader:                          ; preds = %.lr.ph122.i.i, %bb.iq
  %.050120.i.i1498 = phi i64 [ %i.zp, %bb.iq ], [ %4, %.lr.ph122.i.i ] ; 3 uses
  %.0121.i.i1497 = phi i64 [ %i.zo, %bb.iq ], [ 0, %.lr.ph122.i.i ] ; 4 uses
  br label %.lr.ph.i.i313

.lr.ph.i.i313:                                    ; preds = %.lr.ph.i.i313.preheader, %bb.jh
  %.153117.i.i = phi i64 [ %i.zm, %bb.jh ], [ %.050120.i.i1498, %.lr.ph.i.i313.preheader ] ; 7 uses
  %i.ya = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !237
  %i.yc = icmp eq i8 %i.yb, %i.xt
  br i1 %i.yc, label %bb.ir, label %bb.jh

bb.ir:                                            ; preds = %.lr.ph.i.i313
  %i.yd = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.ye = getelementptr i8, ptr %i.yd, i64 1      ; 4 uses
  %i.yf = sub nuw nsw i64 %.050120.i.i1498, %.153117.i.i ; 4 uses
  switch i64 %i.yf, label %bb.is [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i.i
  ]

bb.is:                                            ; preds = %bb.ir
  %i.yg = getelementptr i8, ptr %i.ye, i64 %i.yf  ; 3 uses
  br label %bb.it

bb.it:                                            ; preds = %.thread31.i.i.i.i, %bb.is
  %.019.i.i.i.i = phi ptr [ %i.ye, %bb.is ], [ %i.yo, %.thread31.i.i.i.i ] ; 4 uses
  %i.yh = icmp ult ptr %.019.i.i.i.i, %i.yg
  br i1 %i.yh, label %bb.iu, label %ucs1lib_find_max_char.exit.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.yi = ptrtoint ptr %.019.i.i.i.i to i64
  %i.yj = and i64 %i.yi, 7
  %.not.i.i.i.i328 = icmp eq i64 %i.yj, 0
  br i1 %.not.i.i.i.i328, label %.preheader.i.i.i.i, label %.thread31.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.iu, %bb.iv
  %.017.i.i.i.i = phi ptr [ %i.yk, %bb.iv ], [ %.019.i.i.i.i, %bb.iu ] ; 4 uses
  %i.yk = getelementptr i8, ptr %.017.i.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i.i = icmp ugt ptr %i.yk, %i.yg
  br i1 %.not26.i.i.i.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %.preheader.i.i.i.i
  %i.yl = load i64, ptr %.017.i.i.i.i, align 8, !tbaa !226
  %i.ym = and i64 %i.yl, -9187201950435737472
  %.not27.i.i.i.i = icmp eq i64 %i.ym, 0
  br i1 %.not27.i.i.i.i, label %.preheader.i.i.i.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !0

bb.iw:                                            ; preds = %.preheader.i.i.i.i
  %i.yn = icmp eq ptr %.017.i.i.i.i, %i.yg
  br i1 %i.yn, label %ucs1lib_find_max_char.exit.i.i.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.iw, %bb.iu
  %.2.i.i.i.i = phi ptr [ %.019.i.i.i.i, %bb.iu ], [ %.017.i.i.i.i, %bb.iw ] ; 2 uses
  %i.yo = getelementptr i8, ptr %.2.i.i.i.i, i64 1
  %i.yp = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !237
  %.not28.i.i.i.i = icmp sgt i8 %i.yp, -1
  br i1 %.not28.i.i.i.i, label %bb.it, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i.i:                 ; preds = %.thread31.i.i.i.i, %bb.iw, %bb.it, %bb.iv
  %.5.i.i.i.i = phi i32 [ 255, %bb.iv ], [ 127, %bb.iw ], [ 127, %bb.it ], [ 255, %.thread31.i.i.i.i ]
  %i.yq = tail call ptr @PyUnicode_New(i64 noundef %i.yf, i32 noundef %.5.i.i.i.i), !inline_history !758 ; 5 uses
  %.not.i77.i.i321 = icmp eq ptr %i.yq, null
  br i1 %.not.i77.i.i321, label %Py_DECREF.exit69.i.i302, label %bb.ix

bb.ix:                                            ; preds = %ucs1lib_find_max_char.exit.i.i.i
  %i.yr = getelementptr i8, ptr %i.yq, i64 32
  %.val.i.i.i.i322 = load i32, ptr %i.yr, align 8 ; 2 uses
  %i.ys = and i32 %.val.i.i.i.i322, 32
  %.not.i15.i.i.i = icmp eq i32 %i.ys, 0
  br i1 %.not.i15.i.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.yt = and i32 %.val.i.i.i.i322, 64
  %.not.i.i.i.i.i323 = icmp eq i32 %i.yt, 0
  %.0.v.i.i.i.i.i324 = select i1 %.not.i.i.i.i.i323, i64 56, i64 40
  %.0.i.i.i.i.i325 = getelementptr i8, ptr %i.yq, i64 %.0.v.i.i.i.i.i324
  br label %_PyUnicode_DATA.exit.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %i.yu = getelementptr i8, ptr %i.yq, i64 56
  %.val4.i.i.i.i327 = load ptr, ptr %i.yu, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.iz, %bb.iy
  %.0.i.i.i.i326 = phi ptr [ %.0.i.i.i.i.i325, %bb.iy ], [ %.val4.i.i.i.i327, %bb.iz ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i326, ptr align 1 %i.ye, i64 %i.yf, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.i.i:                     ; preds = %bb.ir
  %i.yv = load i8, ptr %i.ye, align 1, !tbaa !237 ; 3 uses
  %i.yw = zext nneg i8 %i.yv to i64
  %i.yx = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.yw
  %i.yy = and i8 %i.yv, 127
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.yz
  %i.zb = icmp slt i8 %i.yv, 0
  %i.zc = select i1 %i.zb, ptr %i.za, ptr %i.yx   ; 2 uses
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_FromUCS1.exit.i.i, %_PyUnicode_DATA.exit.i.i.i, %bb.ir
  %.0.i101.i.i = phi ptr [ %i.zc, %_PyUnicode_FromUCS1.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ir ], [ %i.yq, %_PyUnicode_DATA.exit.i.i.i ] ; 7 uses
  %i.ze = icmp samesign ult i64 %.0121.i.i1497, 12
  br i1 %i.ze, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %.val76.i.i320 = load ptr, ptr %i.xy, align 8, !tbaa !279
  %i.zf = getelementptr [8 x i8], ptr %.val76.i.i320, i64 %.0121.i.i1497
  store ptr %.0.i101.i.i, ptr %i.zf, align 8, !tbaa !227
  br label %.loopexit.i.i319

bb.jb:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %i.zg = tail call i32 @PyList_Append(ptr noundef nonnull %i.xw, ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !756
  %.not61.i.i316 = icmp eq i32 %i.zg, 0
  %i.zh = load i32, ptr %.0.i101.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i318 = icmp sgt i32 %i.zh, -1       ; 2 uses
  br i1 %.not61.i.i316, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jd, label %Py_DECREF.exit69.i.i302

bb.jd:                                            ; preds = %bb.jc
  %i.zi = add nsw i32 %i.zh, -1                   ; 2 uses
  store i32 %i.zi, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.je:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jf, label %.loopexit.i.i319

bb.jf:                                            ; preds = %bb.je
  %i.zk = add nsw i32 %i.zh, -1                   ; 2 uses
  store i32 %i.zk, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.jg, label %.loopexit.i.i319

bb.jg:                                            ; preds = %bb.jf
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !756
  br label %.loopexit.i.i319

bb.jh:                                            ; preds = %.lr.ph.i.i313
  %i.zm = add nsw i64 %.153117.i.i, -1
  %i.zn = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.zn, label %.lr.ph.i.i313, label %.critedge.i.i314, !llvm.loop !759

.loopexit.i.i319:                                 ; preds = %bb.jg, %bb.jf, %bb.je, %bb.ja
  %i.zo = add nuw i64 %.0121.i.i1497, 1           ; 3 uses
  %i.zp = add nsw i64 %.153117.i.i, -1            ; 3 uses
  %i.zq = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.zq, label %bb.iq, label %.critedge.i.thread.i299, !llvm.loop !757

.critedge.i.i314:                                 ; preds = %bb.iq, %bb.jh, %.lr.ph122.i.i
  %.050120.i.i1392 = phi i64 [ %.050120.i.i1498, %bb.jh ], [ %4, %.lr.ph122.i.i ], [ %i.zp, %bb.iq ] ; 2 uses
  %.0.lcssa.i.i315 = phi i64 [ %.0121.i.i1497, %bb.jh ], [ %i.xz, %.lr.ph122.i.i ], [ %i.xz, %bb.iq ] ; 2 uses
  %i.zr = icmp eq i64 %.0.lcssa.i.i315, 0
  br i1 %i.zr, label %.critedge.thread.i.i296, label %.critedge.i.thread.i299

.critedge.thread.i.i296:                          ; preds = %.critedge.i.i314
  %i.zs = getelementptr i8, ptr %0, i64 8
  %.val.i.i297 = load ptr, ptr %i.zs, align 8, !tbaa !229
  %.not.i82.i298 = icmp eq ptr %.val.i.i297, @PyUnicode_Type
  br i1 %.not.i82.i298, label %bb.ji, label %.critedge.i.thread.i299

bb.ji:                                            ; preds = %.critedge.thread.i.i296
  %i.zt = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.zu = icmp ugt i32 %i.zt, -1073741825
  br i1 %i.zu, label %Py_INCREF.exit.i.i309, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.zv = add nuw i32 %i.zt, 1
  store i32 %i.zv, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i309

Py_INCREF.exit.i.i309:                            ; preds = %bb.jj, %bb.ji
  %.val75.i.i310 = load ptr, ptr %i.xy, align 8, !tbaa !279
  store ptr %0, ptr %.val75.i.i310, align 8, !tbaa !227
  br label %bb.ka

.critedge.i.thread.i299:                          ; preds = %.loopexit.i.i319, %.critedge.thread.i.i296, %.critedge.i.i314
  %.0.lcssa155.i.i = phi i64 [ 0, %.critedge.thread.i.i296 ], [ %.0.lcssa.i.i315, %.critedge.i.i314 ], [ %i.zo, %.loopexit.i.i319 ] ; 4 uses
  %.050.lcssa153.i.i = phi i64 [ %.050120.i.i1392, %.critedge.thread.i.i296 ], [ %.050120.i.i1392, %.critedge.i.i314 ], [ %i.zp, %.loopexit.i.i319 ] ; 2 uses
  %i.zw = icmp sgt i64 %.050.lcssa153.i.i, -2
  br i1 %i.zw, label %bb.jk, label %bb.ka

bb.jk:                                            ; preds = %.critedge.i.thread.i299
  %i.zx = add nsw i64 %.050.lcssa153.i.i, 1       ; 4 uses
  switch i64 %i.zx, label %bb.jl [
    i64 0, label %_PyUnicode_FromUCS1.exit99.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit99.i.i
  ]

bb.jl:                                            ; preds = %bb.jk
  %i.zy = getelementptr i8, ptr %.0.i271, i64 %i.zx ; 3 uses
  br label %bb.jm

bb.jm:                                            ; preds = %.thread31.i.i92.i.i, %bb.jl
  %.019.i.i79.i.i = phi ptr [ %.0.i271, %bb.jl ], [ %i.aag, %.thread31.i.i92.i.i ] ; 4 uses
  %i.zz = icmp ult ptr %.019.i.i79.i.i, %i.zy
  br i1 %i.zz, label %bb.jn, label %ucs1lib_find_max_char.exit.i80.i.i

bb.jn:                                            ; preds = %bb.jm
  %i.aaa = ptrtoint ptr %.019.i.i79.i.i to i64
  %i.aab = and i64 %i.aaa, 7
  %.not.i.i91.i.i = icmp eq i64 %i.aab, 0
  br i1 %.not.i.i91.i.i, label %.preheader.i.i95.i.i, label %.thread31.i.i92.i.i

.preheader.i.i95.i.i:                             ; preds = %bb.jn, %bb.jo
  %.017.i.i96.i.i = phi ptr [ %i.aac, %bb.jo ], [ %.019.i.i79.i.i, %bb.jn ] ; 4 uses
  %i.aac = getelementptr i8, ptr %.017.i.i96.i.i, i64 8 ; 2 uses
  %.not26.i.i97.i.i = icmp ugt ptr %i.aac, %i.zy
  br i1 %.not26.i.i97.i.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %.preheader.i.i95.i.i
  %i.aad = load i64, ptr %.017.i.i96.i.i, align 8, !tbaa !226
  %i.aae = and i64 %i.aad, -9187201950435737472
  %.not27.i.i98.i.i = icmp eq i64 %i.aae, 0
  br i1 %.not27.i.i98.i.i, label %.preheader.i.i95.i.i, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !0

bb.jp:                                            ; preds = %.preheader.i.i95.i.i
  %i.aaf = icmp eq ptr %.017.i.i96.i.i, %i.zy
  br i1 %i.aaf, label %ucs1lib_find_max_char.exit.i80.i.i, label %.thread31.i.i92.i.i

.thread31.i.i92.i.i:                              ; preds = %bb.jp, %bb.jn
  %.2.i.i93.i.i = phi ptr [ %.019.i.i79.i.i, %bb.jn ], [ %.017.i.i96.i.i, %bb.jp ] ; 2 uses
  %i.aag = getelementptr i8, ptr %.2.i.i93.i.i, i64 1
  %i.aah = load i8, ptr %.2.i.i93.i.i, align 1, !tbaa !237
  %.not28.i.i94.i.i = icmp sgt i8 %i.aah, -1
  br i1 %.not28.i.i94.i.i, label %bb.jm, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i80.i.i:               ; preds = %.thread31.i.i92.i.i, %bb.jp, %bb.jm, %bb.jo
  %.5.i.i81.i.i = phi i32 [ 255, %bb.jo ], [ 127, %bb.jp ], [ 127, %bb.jm ], [ 255, %.thread31.i.i92.i.i ]
  %i.aai = tail call ptr @PyUnicode_New(i64 noundef %i.zx, i32 noundef %.5.i.i81.i.i), !inline_history !758 ; 5 uses
  %.not.i82.i.i = icmp eq ptr %i.aai, null
  br i1 %.not.i82.i.i, label %Py_DECREF.exit69.i.i302, label %bb.jq

bb.jq:                                            ; preds = %ucs1lib_find_max_char.exit.i80.i.i
  %i.aaj = getelementptr i8, ptr %i.aai, i64 32
  %.val.i.i83.i.i = load i32, ptr %i.aaj, align 8 ; 2 uses
  %i.aak = and i32 %.val.i.i83.i.i, 32
  %.not.i15.i84.i.i = icmp eq i32 %i.aak, 0
  br i1 %.not.i15.i84.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aal = and i32 %.val.i.i83.i.i, 64
  %.not.i.i.i85.i.i = icmp eq i32 %i.aal, 0
  %.0.v.i.i.i86.i.i = select i1 %.not.i.i.i85.i.i, i64 56, i64 40
  %.0.i.i.i87.i.i = getelementptr i8, ptr %i.aai, i64 %.0.v.i.i.i86.i.i
  br label %_PyUnicode_DATA.exit.i88.i.i

bb.js:                                            ; preds = %bb.jq
  %i.aam = getelementptr i8, ptr %i.aai, i64 56
  %.val4.i.i90.i.i = load ptr, ptr %i.aam, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i88.i.i

_PyUnicode_DATA.exit.i88.i.i:                     ; preds = %bb.js, %bb.jr
  %.0.i.i89.i.i = phi ptr [ %.0.i.i.i87.i.i, %bb.jr ], [ %.val4.i.i90.i.i, %bb.js ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i.i, ptr align 1 %.0.i271, i64 %i.zx, i1 false)
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.i.i:                   ; preds = %bb.jk
  %i.aan = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 3 uses
  %i.aao = zext nneg i8 %i.aan to i64
  %i.aap = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aao
  %i.aaq = and i8 %i.aan, 127
  %i.aar = zext nneg i8 %i.aaq to i64
  %i.aas = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aar
  %i.aat = icmp slt i8 %i.aan, 0
  %i.aau = select i1 %i.aat, ptr %i.aas, ptr %i.aap ; 2 uses
  %i.aav = icmp eq ptr %i.aau, null
  br i1 %i.aav, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_FromUCS1.exit99.i.i, %_PyUnicode_DATA.exit.i88.i.i, %bb.jk
  %.0.i78105.i.i = phi ptr [ %i.aau, %_PyUnicode_FromUCS1.exit99.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jk ], [ %i.aai, %_PyUnicode_DATA.exit.i88.i.i ] ; 7 uses
  %i.aaw = icmp slt i64 %.0.lcssa155.i.i, 12
  br i1 %i.aaw, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %.val74.i.i308 = load ptr, ptr %i.xy, align 8, !tbaa !279
  %i.aax = getelementptr [8 x i8], ptr %.val74.i.i308, i64 %.0.lcssa155.i.i
  store ptr %.0.i78105.i.i, ptr %i.aax, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i307

bb.ju:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aay = tail call i32 @PyList_Append(ptr noundef nonnull %i.xw, ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !756
  %.not60.i.i304 = icmp eq i32 %i.aay, 0
  %i.aaz = load i32, ptr %.0.i78105.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i305 = icmp sgt i32 %i.aaz, -1      ; 2 uses
  br i1 %.not60.i.i304, label %bb.jx, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jw, label %Py_DECREF.exit69.i.i302

bb.jw:                                            ; preds = %bb.jv
  %i.aba = add nsw i32 %i.aaz, -1                 ; 2 uses
  store i32 %i.aba, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.jx:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jy, label %Py_DECREF.exit63.i.i307

bb.jy:                                            ; preds = %bb.jx
  %i.abc = add nsw i32 %i.aaz, -1                 ; 2 uses
  store i32 %i.abc, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %bb.jz, label %Py_DECREF.exit63.i.i307

bb.jz:                                            ; preds = %bb.jy
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !756
  br label %Py_DECREF.exit63.i.i307

Py_DECREF.exit63.i.i307:                          ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt
  %i.abe = add i64 %.0.lcssa155.i.i, 1
  br label %bb.ka

bb.ka:                                            ; preds = %Py_DECREF.exit63.i.i307, %.critedge.i.thread.i299, %Py_INCREF.exit.i.i309
  %.2.i.i300 = phi i64 [ 1, %Py_INCREF.exit.i.i309 ], [ %i.abe, %Py_DECREF.exit63.i.i307 ], [ %.0.lcssa155.i.i, %.critedge.i.thread.i299 ]
  %i.abf = getelementptr i8, ptr %i.xw, i64 16
  store i64 %.2.i.i300, ptr %i.abf, align 8, !tbaa !262
  %i.abg = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.xw) #33, !inline_history !756
  %i.abh = icmp slt i32 %i.abg, 0
  br i1 %i.abh, label %Py_DECREF.exit69.i.i302, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i306:               ; preds = %bb.jw, %bb.jd
  %.0.i78105.sink.i.i = phi ptr [ %.0.i101.i.i, %bb.jd ], [ %.0.i78105.i.i, %bb.jw ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.sink.i.i) #33, !inline_history !756
  br label %Py_DECREF.exit69.i.i302

Py_DECREF.exit69.i.i302:                          ; preds = %_PyUnicode_FromUCS1.exit.i.i, %ucs1lib_find_max_char.exit.i.i.i, %Py_DECREF.exit69.sink.split.i.i306, %bb.ka, %bb.jw, %bb.jv, %_PyUnicode_FromUCS1.exit99.i.i, %ucs1lib_find_max_char.exit.i80.i.i, %bb.jd, %bb.jc
  %i.abi = load i32, ptr %i.xw, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i303 = icmp sgt i32 %i.abi, -1
  br i1 %.not.i.i.i303, label %bb.kb, label %asciilib_rsplit.exit

bb.kb:                                            ; preds = %Py_DECREF.exit69.i.i302
  %i.abj = add nsw i32 %i.abi, -1                 ; 2 uses
  store i32 %i.abj, ptr %i.xw, align 8, !tbaa !237
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %bb.kc, label %asciilib_rsplit.exit

bb.kc:                                            ; preds = %bb.kb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.xw) #33, !inline_history !756
  br label %asciilib_rsplit.exit

bb.kd:                                            ; preds = %bb.in
  %i.abl = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.abm = add nsw i64 %i.abl, 1
  %i.abn = tail call ptr @PyList_New(i64 noundef %i.abm) #33, !inline_history !755 ; 12 uses
  %i.abo = icmp eq ptr %i.abn, null
  br i1 %i.abo, label %asciilib_rsplit.exit, label %.preheader.i329

.preheader.i329:                                  ; preds = %bb.kd
  %i.abp = icmp slt i64 %.1, 1
  br i1 %i.abp, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %.preheader.i329
  %i.abq = icmp slt i64 %.val99, 2
  %i.abr = add i64 %.val99, -1                    ; 6 uses
  %i.abs = getelementptr i8, ptr %i.abn, i64 24
  br i1 %i.abq, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330.split.preheader

.lr.ph.i330.split.preheader:                      ; preds = %.lr.ph.i330
  %xtraiter1734 = and i64 %i.abr, 1
  %lcmp.mod1735.not = icmp eq i64 %xtraiter1734, 0
  %i.abt = getelementptr i8, ptr %.080, i64 %i.abr
  %i.abu = add nsw i64 %.val99, -2                ; 2 uses
  %i.abv = icmp eq i64 %.val99, 2
  br label %.lr.ph.i330.split

.lr.ph.i330.split:                                ; preds = %.lr.ph.i330.split.preheader, %Py_DECREF.exit72.i360
  %.in.i331 = phi i64 [ %i.acg, %Py_DECREF.exit72.i360 ], [ %.1, %.lr.ph.i330.split.preheader ] ; 2 uses
  %.0156.i = phi i64 [ %i.afj, %Py_DECREF.exit72.i360 ], [ 0, %.lr.ph.i330.split.preheader ] ; 5 uses
  %.057155.i = phi i64 [ %.14865.us.i.i.i348, %Py_DECREF.exit72.i360 ], [ %.val100, %.lr.ph.i330.split.preheader ] ; 5 uses
  %i.abw = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.abx = and i8 %i.abw, 63
  %i.aby = zext nneg i8 %i.abx to i64
  %i.abz = shl nuw i64 1, %i.aby                  ; 2 uses
  br i1 %lcmp.mod1735.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %.lr.ph.i330.split
  %i.aca = load i8, ptr %i.abt, align 1, !tbaa !237 ; 2 uses
  %i.acb = and i8 %i.aca, 63
  %i.acc = zext nneg i8 %i.acb to i64
  %i.acd = shl nuw i64 1, %i.acc
  %i.ace = or i64 %i.acd, %i.abz                  ; 2 uses
  %i.acf = icmp eq i8 %i.aca, %i.abw
  %spec.select.i76.i.i.prol = select i1 %i.acf, i64 %i.abu, i64 %i.abr ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %.lr.ph.i330.split
  %.060.i.i.i332.unr = phi i64 [ %i.abr, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i333.unr = phi i64 [ %i.abr, %.lr.ph.i330.split ], [ %i.abu, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i334.unr = phi i64 [ %i.abz, %.lr.ph.i330.split ], [ %i.ace, %.lr.ph.i75.i.i.prol ]
  %.lcssa1594.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %i.ace, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  br i1 %i.abv, label %.preheader56.i.i.i335, label %.lr.ph.i75.i.i

.preheader56.i.i.i335:                            ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa1594 = phi i64 [ %.lcssa1594.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.adv, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.acg = add nsw i64 %.in.i331, -1
  %i.ach = sub i64 %.057155.i, %.val99            ; 2 uses
  %i.aci = icmp sgt i64 %i.ach, -1
  br i1 %i.aci, label %.lr.ph66.split.us.i.i.i347, label %ucs1lib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i347:                       ; preds = %.preheader56.i.i.i335, %bb.kj
  %.14865.us.i.i.i348 = phi i64 [ %i.adg, %bb.kj ], [ %i.ach, %.preheader56.i.i.i335 ] ; 9 uses
  %i.acj = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i348 ; 4 uses
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !237
  %i.acl = icmp eq i8 %i.ack, %i.abw
  br i1 %i.acl, label %.preheader.us.i78.i.i, label %bb.ke

bb.ke:                                            ; preds = %.lr.ph66.split.us.i.i.i347
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i348, 0
  br i1 %.not.us.i77.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.acm = getelementptr i8, ptr %i.acj, i64 -1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !237
  %i.aco = and i8 %i.acn, 63
  %i.acp = zext nneg i8 %i.aco to i64
  %i.acq = shl nuw i64 1, %i.acp
  %i.acr = and i64 %i.acq, %.lcssa1594
  %.not51.us.i.i.i349 = icmp eq i64 %i.acr, 0
  %i.acs = select i1 %.not51.us.i.i.i349, i64 %.val99, i64 0
  br label %bb.kj

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i347, %bb.kg
  %.04662.us.i.i.i351 = phi i64 [ %i.acx, %bb.kg ], [ %i.abr, %.lr.ph66.split.us.i.i.i347 ] ; 4 uses
  %i.act = getelementptr i8, ptr %i.acj, i64 %.04662.us.i.i.i351
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !237
  %i.acv = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i351
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !237
  %.not52.us.i.i.i352 = icmp eq i8 %i.acu, %i.acw
  br i1 %.not52.us.i.i.i352, label %bb.kg, label %.thread.us.i.i.i

bb.kg:                                            ; preds = %.preheader.us.i78.i.i
  %i.acx = add nsw i64 %.04662.us.i.i.i351, -1
  %i.acy = icmp sgt i64 %.04662.us.i.i.i351, 1
  br i1 %i.acy, label %.preheader.us.i78.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !28

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i353 = icmp eq i64 %.14865.us.i.i.i348, 0
  br i1 %.not53.us.i.i.i353, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %.thread.us.i.i.i
  %i.acz = getelementptr i8, ptr %i.acj, i64 -1
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !237
  %i.adb = and i8 %i.ada, 63
  %i.adc = zext nneg i8 %i.adb to i64
  %i.add = shl nuw i64 1, %i.adc
  %i.ade = and i64 %i.add, %.lcssa1594
  %.not54.us.i.i.i354 = icmp eq i64 %i.ade, 0
  br i1 %.not54.us.i.i.i354, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread.us.i.i.i
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %bb.kf
  %spec.select.lcssa.sink.i.i.i350 = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.ki ], [ %i.acs, %bb.kf ], [ %.val99, %bb.kh ]
  %i.adf = sub nsw i64 %.14865.us.i.i.i348, %spec.select.lcssa.sink.i.i.i350 ; 2 uses
  %i.adg = add nsw i64 %i.adf, -1
  %i.adh = icmp sgt i64 %i.adf, 0
  br i1 %i.adh, label %.lr.ph66.split.us.i.i.i347, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i332 = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i332.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i333 = phi i64 [ %i.adx, %.lr.ph.i75.i.i ], [ %.04759.i.i.i333.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i334 = phi i64 [ %i.adv, %.lr.ph.i75.i.i ], [ %.04958.i.i.i334.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.adi = getelementptr i8, ptr %.080, i64 %.04759.i.i.i333
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !237 ; 2 uses
  %i.adk = and i8 %i.adj, 63
  %i.adl = zext nneg i8 %i.adk to i64
  %i.adm = shl nuw i64 1, %i.adl
  %i.adn = or i64 %i.adm, %.04958.i.i.i334
  %i.ado = icmp eq i8 %i.adj, %i.abw
  %i.adp = add nsw i64 %.04759.i.i.i333, -1       ; 2 uses
  %spec.select.i76.i.i = select i1 %i.ado, i64 %i.adp, i64 %.060.i.i.i332
  %i.adq = getelementptr i8, ptr %.080, i64 %i.adp
end_hunk_1
begin_hunk_2_@rsplit:bb.a

ucs1lib_fastsearch.exit.thread.thread.i:          ; preds = %.lr.ph.i330, %ucs1lib_fastsearch.exit.thread.i, %.preheader.i329
  %.057141239.i = phi i64 [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i329 ], [ %.val100, %.lr.ph.i330 ]
  %i.afn = getelementptr i8, ptr %0, i64 8
  %.val.i344 = load ptr, ptr %i.afn, align 8, !tbaa !229
  %.not120.i = icmp eq ptr %.val.i344, @PyUnicode_Type
  br i1 %.not120.i, label %bb.la, label %ucs1lib_fastsearch.exit.thread.thread242.i

bb.la:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread.i
  %i.afo = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.afp = icmp ugt i32 %i.afo, -1073741825
  br i1 %i.afp, label %Py_INCREF.exit.i345, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.afq = add nuw i32 %i.afo, 1
  store i32 %i.afq, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i345

Py_INCREF.exit.i345:                              ; preds = %bb.lb, %bb.la
  %i.afr = getelementptr i8, ptr %i.abn, i64 24
  %.val80.i346 = load ptr, ptr %i.afr, align 8, !tbaa !279
  store ptr %0, ptr %.val80.i346, align 8, !tbaa !227
  br label %bb.lr

ucs1lib_fastsearch.exit.thread.thread242.i:       ; preds = %Py_DECREF.exit72.i360, %ucs1lib_fastsearch.exit.thread.thread.i, %ucs1lib_fastsearch.exit.thread.i
  %.0136240.i = phi i64 [ 0, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.0156.i, %ucs1lib_fastsearch.exit.thread.i ], [ %i.afj, %Py_DECREF.exit72.i360 ] ; 3 uses
  %.057141238.i = phi i64 [ %.057141239.i, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i348, %Py_DECREF.exit72.i360 ] ; 4 uses
  switch i64 %.057141238.i, label %bb.lc [
    i64 0, label %_PyUnicode_FromUCS1.exit110.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit110.i
  ]

bb.lc:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread242.i
  %i.afs = getelementptr i8, ptr %.0.i271, i64 %.057141238.i ; 3 uses
  br label %bb.ld

bb.ld:                                            ; preds = %.thread31.i.i103.i, %bb.lc
  %.019.i.i90.i = phi ptr [ %.0.i271, %bb.lc ], [ %i.aga, %.thread31.i.i103.i ] ; 4 uses
  %i.aft = icmp ult ptr %.019.i.i90.i, %i.afs
  br i1 %i.aft, label %bb.le, label %ucs1lib_find_max_char.exit.i91.i

bb.le:                                            ; preds = %bb.ld
  %i.afu = ptrtoint ptr %.019.i.i90.i to i64
  %i.afv = and i64 %i.afu, 7
  %.not.i.i102.i = icmp eq i64 %i.afv, 0
  br i1 %.not.i.i102.i, label %.preheader.i.i106.i, label %.thread31.i.i103.i

.preheader.i.i106.i:                              ; preds = %bb.le, %bb.lf
  %.017.i.i107.i = phi ptr [ %i.afw, %bb.lf ], [ %.019.i.i90.i, %bb.le ] ; 4 uses
  %i.afw = getelementptr i8, ptr %.017.i.i107.i, i64 8 ; 2 uses
  %.not26.i.i108.i = icmp ugt ptr %i.afw, %i.afs
  br i1 %.not26.i.i108.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.preheader.i.i106.i
  %i.afx = load i64, ptr %.017.i.i107.i, align 8, !tbaa !226
  %i.afy = and i64 %i.afx, -9187201950435737472
  %.not27.i.i109.i = icmp eq i64 %i.afy, 0
  br i1 %.not27.i.i109.i, label %.preheader.i.i106.i, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !0

bb.lg:                                            ; preds = %.preheader.i.i106.i
  %i.afz = icmp eq ptr %.017.i.i107.i, %i.afs
  br i1 %i.afz, label %ucs1lib_find_max_char.exit.i91.i, label %.thread31.i.i103.i

.thread31.i.i103.i:                               ; preds = %bb.lg, %bb.le
  %.2.i.i104.i = phi ptr [ %.019.i.i90.i, %bb.le ], [ %.017.i.i107.i, %bb.lg ] ; 2 uses
  %i.aga = getelementptr i8, ptr %.2.i.i104.i, i64 1
  %i.agb = load i8, ptr %.2.i.i104.i, align 1, !tbaa !237
  %.not28.i.i105.i = icmp sgt i8 %i.agb, -1
  br i1 %.not28.i.i105.i, label %bb.ld, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i91.i:                 ; preds = %.thread31.i.i103.i, %bb.lg, %bb.ld, %bb.lf
  %.5.i.i92.i = phi i32 [ 255, %bb.lf ], [ 127, %bb.ld ], [ 127, %bb.lg ], [ 255, %.thread31.i.i103.i ]
  %i.agc = tail call ptr @PyUnicode_New(i64 noundef %.057141238.i, i32 noundef %.5.i.i92.i), !inline_history !760 ; 5 uses
  %.not.i93.i = icmp eq ptr %i.agc, null
  br i1 %.not.i93.i, label %Py_DECREF.exit74.i338, label %bb.lh

bb.lh:                                            ; preds = %ucs1lib_find_max_char.exit.i91.i
  %i.agd = getelementptr i8, ptr %i.agc, i64 32
  %.val.i.i94.i = load i32, ptr %i.agd, align 8   ; 2 uses
  %i.age = and i32 %.val.i.i94.i, 32
  %.not.i15.i95.i = icmp eq i32 %i.age, 0
  br i1 %.not.i15.i95.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.agf = and i32 %.val.i.i94.i, 64
  %.not.i.i.i96.i = icmp eq i32 %i.agf, 0
  %.0.v.i.i.i97.i = select i1 %.not.i.i.i96.i, i64 56, i64 40
  %.0.i.i.i98.i = getelementptr i8, ptr %i.agc, i64 %.0.v.i.i.i97.i
  br label %_PyUnicode_DATA.exit.i99.i

bb.lj:                                            ; preds = %bb.lh
  %i.agg = getelementptr i8, ptr %i.agc, i64 56
  %.val4.i.i101.i = load ptr, ptr %i.agg, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i99.i

_PyUnicode_DATA.exit.i99.i:                       ; preds = %bb.lj, %bb.li
  %.0.i.i100.i = phi ptr [ %.0.i.i.i98.i, %bb.li ], [ %.val4.i.i101.i, %bb.lj ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i100.i, ptr align 1 %.0.i271, i64 %.057141238.i, i1 false)
  br label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.i:                    ; preds = %ucs1lib_fastsearch.exit.thread.thread242.i
  %i.agh = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 3 uses
  %i.agi = zext nneg i8 %i.agh to i64
  %i.agj = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.agi
  %i.agk = and i8 %i.agh, 127
  %i.agl = zext nneg i8 %i.agk to i64
  %i.agm = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.agl
  %i.agn = icmp slt i8 %i.agh, 0
  %i.ago = select i1 %i.agn, ptr %i.agm, ptr %i.agj ; 2 uses
  %i.agp = icmp eq ptr %i.ago, null
  br i1 %i.agp, label %Py_DECREF.exit74.i338, label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.thread.i:             ; preds = %_PyUnicode_FromUCS1.exit110.i, %_PyUnicode_DATA.exit.i99.i, %ucs1lib_fastsearch.exit.thread.thread242.i
  %.0.i89117.i = phi ptr [ %i.ago, %_PyUnicode_FromUCS1.exit110.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %ucs1lib_fastsearch.exit.thread.thread242.i ], [ %i.agc, %_PyUnicode_DATA.exit.i99.i ] ; 7 uses
  %i.agq = icmp slt i64 %.0136240.i, 12
  br i1 %i.agq, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agr = getelementptr i8, ptr %i.abn, i64 24
  %.val79.i343 = load ptr, ptr %i.agr, align 8, !tbaa !279
  %i.ags = getelementptr [8 x i8], ptr %.val79.i343, i64 %.0136240.i
  store ptr %.0.i89117.i, ptr %i.ags, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i341

bb.ll:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agt = tail call i32 @PyList_Append(ptr noundef nonnull %i.abn, ptr noundef nonnull %.0.i89117.i) #33, !inline_history !755
  %.not66.i336 = icmp eq i32 %i.agt, 0
  %i.agu = load i32, ptr %.0.i89117.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i337 = icmp sgt i32 %i.agu, -1        ; 2 uses
  br i1 %.not66.i336, label %bb.lo, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  br i1 %.not.i67.i337, label %bb.ln, label %Py_DECREF.exit74.i338

bb.ln:                                            ; preds = %bb.lm
  %i.agv = add nsw i32 %i.agu, -1                 ; 2 uses
  store i32 %i.agv, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agw = icmp eq i32 %i.agv, 0
  br i1 %i.agw, label %Py_DECREF.exit74.sink.split.i340, label %Py_DECREF.exit74.i338

bb.lo:                                            ; preds = %bb.ll
  br i1 %.not.i67.i337, label %bb.lp, label %Py_DECREF.exit68.i341

bb.lp:                                            ; preds = %bb.lo
  %i.agx = add nsw i32 %i.agu, -1                 ; 2 uses
  store i32 %i.agx, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agy = icmp eq i32 %i.agx, 0
  br i1 %i.agy, label %bb.lq, label %Py_DECREF.exit68.i341

bb.lq:                                            ; preds = %bb.lp
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.i) #33, !inline_history !755
  br label %Py_DECREF.exit68.i341

Py_DECREF.exit68.i341:                            ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lk
  %i.agz = add i64 %.0136240.i, 1
  br label %bb.lr

bb.lr:                                            ; preds = %Py_DECREF.exit68.i341, %Py_INCREF.exit.i345
  %.1.i342 = phi i64 [ 1, %Py_INCREF.exit.i345 ], [ %i.agz, %Py_DECREF.exit68.i341 ]
  %i.aha = getelementptr i8, ptr %i.abn, i64 16
  store i64 %.1.i342, ptr %i.aha, align 8, !tbaa !262
  %i.ahb = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.abn) #33, !inline_history !755
  %i.ahc = icmp slt i32 %i.ahb, 0
  br i1 %i.ahc, label %Py_DECREF.exit74.i338, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i340:                 ; preds = %bb.ln, %bb.kw
  %.0.i89117.sink.i = phi ptr [ %.0.i83113.i, %bb.kw ], [ %.0.i89117.i, %bb.ln ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.sink.i) #33, !inline_history !755
  br label %Py_DECREF.exit74.i338

Py_DECREF.exit74.i338:                            ; preds = %_PyUnicode_FromUCS1.exit.i355, %ucs1lib_find_max_char.exit.i.i364, %Py_DECREF.exit74.sink.split.i340, %bb.lr, %bb.ln, %bb.lm, %_PyUnicode_FromUCS1.exit110.i, %ucs1lib_find_max_char.exit.i91.i, %bb.kw, %bb.kv
  %i.ahd = load i32, ptr %i.abn, align 8, !tbaa !237 ; 2 uses
  %.not.i.i339 = icmp sgt i32 %i.ahd, -1
  br i1 %.not.i.i339, label %bb.ls, label %asciilib_rsplit.exit

bb.ls:                                            ; preds = %Py_DECREF.exit74.i338
  %i.ahe = add nsw i32 %i.ahd, -1                 ; 2 uses
  store i32 %i.ahe, ptr %i.abn, align 8, !tbaa !237
  %i.ahf = icmp eq i32 %i.ahe, 0
  br i1 %i.ahf, label %bb.lt, label %asciilib_rsplit.exit

bb.lt:                                            ; preds = %bb.ls
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abn) #33, !inline_history !755
  br label %asciilib_rsplit.exit

bb.lu:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.mw [
    i64 0, label %bb.lv
    i64 1, label %bb.lw
  ]

bb.lv:                                            ; preds = %bb.lu
  %i.ahg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.ahg, ptr noundef nonnull @.str.197) #33, !inline_history !762
  br label %asciilib_rsplit.exit

bb.lw:                                            ; preds = %bb.lu
  %i.ahh = load i16, ptr %.080, align 2, !tbaa !240
  %i.ahi = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.ahj = add nsw i64 %i.ahi, 1
  %i.ahk = tail call ptr @PyList_New(i64 noundef %i.ahj) #33, !inline_history !763 ; 10 uses
  %i.ahl = icmp eq ptr %i.ahk, null
  br i1 %i.ahl, label %asciilib_rsplit.exit, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.lw
  %5 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahk, i64 24   ; 3 uses
  %smin.i397 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.ahn = sub i64 %.1, %smin.i397                ; 4 uses
  %exitcond.not.i3981488 = icmp eq i64 %i.ahn, 0
  br i1 %exitcond.not.i3981488, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader

bb.lx:                                            ; preds = %.loopexit.i.i405
  %exitcond.not.i398 = icmp eq i64 %i.aig, %i.ahn
  br i1 %exitcond.not.i398, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader, !llvm.loop !764

.lr.ph.i.i399.preheader:                          ; preds = %.lr.ph89.i.i, %bb.lx
  %.05087.i.i1490 = phi i64 [ %i.aih, %bb.lx ], [ %5, %.lr.ph89.i.i ] ; 3 uses
  %.088.i.i1489 = phi i64 [ %i.aig, %bb.lx ], [ 0, %.lr.ph89.i.i ] ; 4 uses
  br label %.lr.ph.i.i399

.lr.ph.i.i399:                                    ; preds = %.lr.ph.i.i399.preheader, %bb.mh
  %.15384.i.i = phi i64 [ %i.aie, %bb.mh ], [ %.05087.i.i1490, %.lr.ph.i.i399.preheader ] ; 7 uses
  %i.aho = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !240
  %i.ahq = icmp eq i16 %i.ahp, %i.ahh
  br i1 %i.ahq, label %bb.ly, label %bb.mh

bb.ly:                                            ; preds = %.lr.ph.i.i399
  %i.ahr = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 2
  %i.aht = sub nuw nsw i64 %.05087.i.i1490, %.15384.i.i
  %i.ahu = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.ahs, i64 noundef %i.aht), !inline_history !763 ; 8 uses
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %Py_DECREF.exit69.i.i388, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.ahw = icmp samesign ult i64 %.088.i.i1489, 12
  br i1 %i.ahw, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %.val76.i.i406 = load ptr, ptr %i.ahm, align 8, !tbaa !279
  %i.ahx = getelementptr [8 x i8], ptr %.val76.i.i406, i64 %.088.i.i1489
  store ptr %i.ahu, ptr %i.ahx, align 8, !tbaa !227
  br label %.loopexit.i.i405

bb.mb:                                            ; preds = %bb.lz
  %i.ahy = tail call i32 @PyList_Append(ptr noundef nonnull %i.ahk, ptr noundef nonnull %i.ahu) #33, !inline_history !763
  %.not61.i.i402 = icmp eq i32 %i.ahy, 0
  %i.ahz = load i32, ptr %i.ahu, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i404 = icmp sgt i32 %i.ahz, -1      ; 2 uses
  br i1 %.not61.i.i402, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.md, label %Py_DECREF.exit69.i.i388

bb.md:                                            ; preds = %bb.mc
  %i.aia = add nsw i32 %i.ahz, -1                 ; 2 uses
  store i32 %i.aia, ptr %i.ahu, align 8, !tbaa !237
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.me:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.mf, label %.loopexit.i.i405

bb.mf:                                            ; preds = %bb.me
  %i.aic = add nsw i32 %i.ahz, -1                 ; 2 uses
  store i32 %i.aic, ptr %i.ahu, align 8, !tbaa !237
  %i.aid = icmp eq i32 %i.aic, 0
  br i1 %i.aid, label %bb.mg, label %.loopexit.i.i405

bb.mg:                                            ; preds = %bb.mf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ahu) #33, !inline_history !763
  br label %.loopexit.i.i405

bb.mh:                                            ; preds = %.lr.ph.i.i399
  %i.aie = add nsw i64 %.15384.i.i, -1
  %i.aif = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.aif, label %.lr.ph.i.i399, label %.critedge.i.i400, !llvm.loop !765

.loopexit.i.i405:                                 ; preds = %bb.mg, %bb.mf, %bb.me, %bb.ma
  %i.aig = add nuw i64 %.088.i.i1489, 1           ; 3 uses
  %i.aih = add nsw i64 %.15384.i.i, -1            ; 3 uses
  %i.aii = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.aii, label %bb.lx, label %.critedge.i.thread.i385, !llvm.loop !764

.critedge.i.i400:                                 ; preds = %bb.lx, %bb.mh, %.lr.ph89.i.i
  %.05087.i.i1447 = phi i64 [ %.05087.i.i1490, %bb.mh ], [ %5, %.lr.ph89.i.i ], [ %i.aih, %bb.lx ] ; 2 uses
  %.0.lcssa.i.i401 = phi i64 [ %.088.i.i1489, %bb.mh ], [ %i.ahn, %.lr.ph89.i.i ], [ %i.ahn, %bb.lx ] ; 2 uses
  %i.aij = icmp eq i64 %.0.lcssa.i.i401, 0
  br i1 %i.aij, label %.critedge.thread.i.i382, label %.critedge.i.thread.i385

.critedge.thread.i.i382:                          ; preds = %.critedge.i.i400
  %i.aik = getelementptr i8, ptr %0, i64 8
  %.val.i.i383 = load ptr, ptr %i.aik, align 8, !tbaa !229
  %.not.i82.i384 = icmp eq ptr %.val.i.i383, @PyUnicode_Type
  br i1 %.not.i82.i384, label %bb.mi, label %.critedge.i.thread.i385

bb.mi:                                            ; preds = %.critedge.thread.i.i382
  %i.ail = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.aim = icmp ugt i32 %i.ail, -1073741825
  br i1 %i.aim, label %Py_INCREF.exit.i.i395, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.ain = add nuw i32 %i.ail, 1
  store i32 %i.ain, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i395

Py_INCREF.exit.i.i395:                            ; preds = %bb.mj, %bb.mi
  %.val75.i.i396 = load ptr, ptr %i.ahm, align 8, !tbaa !279
  store ptr %0, ptr %.val75.i.i396, align 8, !tbaa !227
  br label %bb.mt

.critedge.i.thread.i385:                          ; preds = %.loopexit.i.i405, %.critedge.thread.i.i382, %.critedge.i.i400
  %.0.lcssa113.i.i = phi i64 [ 0, %.critedge.thread.i.i382 ], [ %.0.lcssa.i.i401, %.critedge.i.i400 ], [ %i.aig, %.loopexit.i.i405 ] ; 4 uses
  %.050.lcssa111.i.i = phi i64 [ %.05087.i.i1447, %.critedge.thread.i.i382 ], [ %.05087.i.i1447, %.critedge.i.i400 ], [ %i.aih, %.loopexit.i.i405 ] ; 2 uses
  %i.aio = icmp sgt i64 %.050.lcssa111.i.i, -2
  br i1 %i.aio, label %bb.mk, label %bb.mt

bb.mk:                                            ; preds = %.critedge.i.thread.i385
  %i.aip = add nsw i64 %.050.lcssa111.i.i, 1
  %i.aiq = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %.0.i271, i64 noundef %i.aip), !inline_history !763 ; 8 uses
  %i.air = icmp eq ptr %i.aiq, null
  br i1 %i.air, label %Py_DECREF.exit69.i.i388, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.ais = icmp slt i64 %.0.lcssa113.i.i, 12
  br i1 %i.ais, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %.val74.i.i394 = load ptr, ptr %i.ahm, align 8, !tbaa !279
  %i.ait = getelementptr [8 x i8], ptr %.val74.i.i394, i64 %.0.lcssa113.i.i
  store ptr %i.aiq, ptr %i.ait, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i393

bb.mn:                                            ; preds = %bb.ml
  %i.aiu = tail call i32 @PyList_Append(ptr noundef nonnull %i.ahk, ptr noundef nonnull %i.aiq) #33, !inline_history !763
  %.not60.i.i390 = icmp eq i32 %i.aiu, 0
  %i.aiv = load i32, ptr %i.aiq, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i391 = icmp sgt i32 %i.aiv, -1      ; 2 uses
  br i1 %.not60.i.i390, label %bb.mq, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mp, label %Py_DECREF.exit69.i.i388

bb.mp:                                            ; preds = %bb.mo
  %i.aiw = add nsw i32 %i.aiv, -1                 ; 2 uses
  store i32 %i.aiw, ptr %i.aiq, align 8, !tbaa !237
  %i.aix = icmp eq i32 %i.aiw, 0
  br i1 %i.aix, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.mq:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mr, label %Py_DECREF.exit63.i.i393

bb.mr:                                            ; preds = %bb.mq
  %i.aiy = add nsw i32 %i.aiv, -1                 ; 2 uses
  store i32 %i.aiy, ptr %i.aiq, align 8, !tbaa !237
  %i.aiz = icmp eq i32 %i.aiy, 0
  br i1 %i.aiz, label %bb.ms, label %Py_DECREF.exit63.i.i393

bb.ms:                                            ; preds = %bb.mr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aiq) #33, !inline_history !763
  br label %Py_DECREF.exit63.i.i393

Py_DECREF.exit63.i.i393:                          ; preds = %bb.ms, %bb.mr, %bb.mq, %bb.mm
  %i.aja = add i64 %.0.lcssa113.i.i, 1
  br label %bb.mt

bb.mt:                                            ; preds = %Py_DECREF.exit63.i.i393, %.critedge.i.thread.i385, %Py_INCREF.exit.i.i395
  %.2.i.i386 = phi i64 [ 1, %Py_INCREF.exit.i.i395 ], [ %i.aja, %Py_DECREF.exit63.i.i393 ], [ %.0.lcssa113.i.i, %.critedge.i.thread.i385 ]
  %i.ajb = getelementptr i8, ptr %i.ahk, i64 16
  store i64 %.2.i.i386, ptr %i.ajb, align 8, !tbaa !262
  %i.ajc = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.ahk) #33, !inline_history !763
  %i.ajd = icmp slt i32 %i.ajc, 0
  br i1 %i.ajd, label %Py_DECREF.exit69.i.i388, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i392:               ; preds = %bb.mp, %bb.md
  %.sink.i.i = phi ptr [ %i.ahu, %bb.md ], [ %i.aiq, %bb.mp ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i) #33, !inline_history !763
  br label %Py_DECREF.exit69.i.i388

Py_DECREF.exit69.i.i388:                          ; preds = %bb.ly, %Py_DECREF.exit69.sink.split.i.i392, %bb.mt, %bb.mp, %bb.mo, %bb.mk, %bb.md, %bb.mc
  %i.aje = load i32, ptr %i.ahk, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i389 = icmp sgt i32 %i.aje, -1
  br i1 %.not.i.i.i389, label %bb.mu, label %asciilib_rsplit.exit

bb.mu:                                            ; preds = %Py_DECREF.exit69.i.i388
  %i.ajf = add nsw i32 %i.aje, -1                 ; 2 uses
  store i32 %i.ajf, ptr %i.ahk, align 8, !tbaa !237
  %i.ajg = icmp eq i32 %i.ajf, 0
  br i1 %i.ajg, label %bb.mv, label %asciilib_rsplit.exit

bb.mv:                                            ; preds = %bb.mu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ahk) #33, !inline_history !763
  br label %asciilib_rsplit.exit

bb.mw:                                            ; preds = %bb.lu
  %i.ajh = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.aji = add nsw i64 %i.ajh, 1
  %i.ajj = tail call ptr @PyList_New(i64 noundef %i.aji) #33, !inline_history !762 ; 12 uses
  %i.ajk = icmp eq ptr %i.ajj, null
  br i1 %i.ajk, label %asciilib_rsplit.exit, label %.preheader.i407

.preheader.i407:                                  ; preds = %bb.mw
  %i.ajl = icmp sgt i64 %.1, 0
  br i1 %i.ajl, label %.lr.ph.i416, label %._crit_edge.thread.i

.lr.ph.i416:                                      ; preds = %.preheader.i407
  %i.ajm = getelementptr i8, ptr %i.ajj, i64 24
  br label %bb.mx

bb.mx:                                            ; preds = %Py_DECREF.exit72.i422, %.lr.ph.i416
  %.0103.i = phi i64 [ 0, %.lr.ph.i416 ], [ %i.akc, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057102.i = phi i64 [ %.val100, %.lr.ph.i416 ], [ %i.ajn, %Py_DECREF.exit72.i422 ] ; 4 uses
  %i.ajn = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !762 ; 4 uses
  %i.ajo = icmp slt i64 %i.ajn, 0
  br i1 %i.ajo, label %._crit_edge.i426, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ajp = add i64 %i.ajn, %.val99                ; 2 uses
  %i.ajq = getelementptr [2 x i8], ptr %.0.i271, i64 %i.ajp
  %i.ajr = sub i64 %.057102.i, %i.ajp
  %i.ajs = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %i.ajq, i64 noundef %i.ajr), !inline_history !762 ; 8 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %Py_DECREF.exit74.i412, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aju = icmp samesign ult i64 %.0103.i, 12
  br i1 %i.aju, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %.val81.i425 = load ptr, ptr %i.ajm, align 8, !tbaa !279
  %i.ajv = getelementptr [8 x i8], ptr %.val81.i425, i64 %.0103.i
  store ptr %i.ajs, ptr %i.ajv, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i422

bb.nb:                                            ; preds = %bb.mz
  %i.ajw = tail call i32 @PyList_Append(ptr noundef nonnull %i.ajj, ptr noundef nonnull %i.ajs) #33, !inline_history !762
  %.not.i417 = icmp eq i32 %i.ajw, 0
  %i.ajx = load i32, ptr %i.ajs, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i421 = icmp sgt i32 %i.ajx, -1        ; 2 uses
  br i1 %.not.i417, label %bb.ne, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nd, label %Py_DECREF.exit74.i412

bb.nd:                                            ; preds = %bb.nc
  %i.ajy = add nsw i32 %i.ajx, -1                 ; 2 uses
  store i32 %i.ajy, ptr %i.ajs, align 8, !tbaa !237
  %i.ajz = icmp eq i32 %i.ajy, 0
  br i1 %i.ajz, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.ne:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nf, label %Py_DECREF.exit72.i422

bb.nf:                                            ; preds = %bb.ne
  %i.aka = add nsw i32 %i.ajx, -1                 ; 2 uses
  store i32 %i.aka, ptr %i.ajs, align 8, !tbaa !237
  %i.akb = icmp eq i32 %i.aka, 0
  br i1 %i.akb, label %bb.ng, label %Py_DECREF.exit72.i422

bb.ng:                                            ; preds = %bb.nf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ajs) #33, !inline_history !762
  br label %Py_DECREF.exit72.i422

Py_DECREF.exit72.i422:                            ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.na
  %i.akc = add nuw nsw i64 %.0103.i, 1            ; 2 uses
  %exitcond118.not.i = icmp eq i64 %i.akc, %.1
  br i1 %exitcond118.not.i, label %._crit_edge.thread151.i, label %bb.mx, !llvm.loop !766

._crit_edge.i426:                                 ; preds = %bb.mx
  %i.akd = icmp eq i64 %.0103.i, 0
  br i1 %i.akd, label %._crit_edge.thread.i, label %._crit_edge.thread151.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i426, %.preheader.i407
  %.057.lcssa147.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %.val100, %.preheader.i407 ]
  %i.ake = getelementptr i8, ptr %0, i64 8
  %.val.i408 = load ptr, ptr %i.ake, align 8, !tbaa !229
  %.not84.i = icmp eq ptr %.val.i408, @PyUnicode_Type
  br i1 %.not84.i, label %bb.nh, label %.thread.i

bb.nh:                                            ; preds = %._crit_edge.thread.i
  %i.akf = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.akg = icmp ugt i32 %i.akf, -1073741825
  br i1 %i.akg, label %Py_INCREF.exit.i414, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.akh = add nuw i32 %i.akf, 1
  store i32 %i.akh, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i414

Py_INCREF.exit.i414:                              ; preds = %bb.ni, %bb.nh
  %i.aki = getelementptr i8, ptr %i.ajj, i64 24
  %.val80.i415 = load ptr, ptr %i.aki, align 8, !tbaa !279
  store ptr %0, ptr %.val80.i415, align 8, !tbaa !227
  br label %bb.nq

._crit_edge.thread151.i:                          ; preds = %Py_DECREF.exit72.i422, %._crit_edge.i426
  %.0.lcssa155.i = phi i64 [ %.0103.i, %._crit_edge.i426 ], [ %.1, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057.lcssa154.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %i.ajn, %Py_DECREF.exit72.i422 ]
  %i.akj = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i), !inline_history !762 ; 8 uses
  %i.akk = icmp eq ptr %i.akj, null
  br i1 %i.akk, label %Py_DECREF.exit74.i412, label %bb.nj

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.akl = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i), !inline_history !762 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, null
  br i1 %i.akm, label %Py_DECREF.exit74.i412, label %.thread83.i

bb.nj:                                            ; preds = %._crit_edge.thread151.i
  %i.akn = icmp slt i64 %.0.lcssa155.i, 12
  br i1 %i.akn, label %.thread83.i, label %bb.nk

.thread83.i:                                      ; preds = %bb.nj, %.thread.i
  %.0.lcssa148.i = phi i64 [ %.0.lcssa155.i, %bb.nj ], [ 0, %.thread.i ] ; 2 uses
  %i.ako = phi ptr [ %i.akj, %bb.nj ], [ %i.akl, %.thread.i ]
  %i.akp = getelementptr i8, ptr %i.ajj, i64 24
  %.val79.i409 = load ptr, ptr %i.akp, align 8, !tbaa !279
  %i.akq = getelementptr [8 x i8], ptr %.val79.i409, i64 %.0.lcssa148.i
  store ptr %i.ako, ptr %i.akq, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i410

bb.nk:                                            ; preds = %bb.nj
  %i.akr = tail call i32 @PyList_Append(ptr noundef nonnull %i.ajj, ptr noundef nonnull %i.akj) #33, !inline_history !762
  %.not66.i423 = icmp eq i32 %i.akr, 0
  %i.aks = load i32, ptr %i.akj, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i424 = icmp sgt i32 %i.aks, -1        ; 2 uses
  br i1 %.not66.i423, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.nm, label %Py_DECREF.exit74.i412

bb.nm:                                            ; preds = %bb.nl
  %i.akt = add nsw i32 %i.aks, -1                 ; 2 uses
  store i32 %i.akt, ptr %i.akj, align 8, !tbaa !237
  %i.aku = icmp eq i32 %i.akt, 0
  br i1 %i.aku, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.nn:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.no, label %Py_DECREF.exit68.i410

bb.no:                                            ; preds = %bb.nn
  %i.akv = add nsw i32 %i.aks, -1                 ; 2 uses
  store i32 %i.akv, ptr %i.akj, align 8, !tbaa !237
  %i.akw = icmp eq i32 %i.akv, 0
  br i1 %i.akw, label %bb.np, label %Py_DECREF.exit68.i410

bb.np:                                            ; preds = %bb.no
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.akj) #33, !inline_history !762
  br label %Py_DECREF.exit68.i410

Py_DECREF.exit68.i410:                            ; preds = %bb.np, %bb.no, %bb.nn, %.thread83.i
  %.0.lcssa150.i = phi i64 [ %.0.lcssa155.i, %bb.np ], [ %.0.lcssa155.i, %bb.no ], [ %.0.lcssa155.i, %bb.nn ], [ %.0.lcssa148.i, %.thread83.i ]
  %i.akx = add i64 %.0.lcssa150.i, 1
  br label %bb.nq

bb.nq:                                            ; preds = %Py_DECREF.exit68.i410, %Py_INCREF.exit.i414
  %.1.i411 = phi i64 [ 1, %Py_INCREF.exit.i414 ], [ %i.akx, %Py_DECREF.exit68.i410 ]
  %i.aky = getelementptr i8, ptr %i.ajj, i64 16
  store i64 %.1.i411, ptr %i.aky, align 8, !tbaa !262
  %i.akz = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.ajj) #33, !inline_history !762
  %i.ala = icmp slt i32 %i.akz, 0
  br i1 %i.ala, label %Py_DECREF.exit74.i412, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i419:                 ; preds = %bb.nm, %bb.nd
  %.sink.i420 = phi ptr [ %i.ajs, %bb.nd ], [ %i.akj, %bb.nm ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i420) #33, !inline_history !762
  br label %Py_DECREF.exit74.i412

Py_DECREF.exit74.i412:                            ; preds = %bb.my, %Py_DECREF.exit74.sink.split.i419, %bb.nq, %bb.nm, %bb.nl, %.thread.i, %._crit_edge.thread151.i, %bb.nd, %bb.nc
  %i.alb = load i32, ptr %i.ajj, align 8, !tbaa !237 ; 2 uses
  %.not.i.i413 = icmp sgt i32 %i.alb, -1
  br i1 %.not.i.i413, label %bb.nr, label %asciilib_rsplit.exit

bb.nr:                                            ; preds = %Py_DECREF.exit74.i412
  %i.alc = add nsw i32 %i.alb, -1                 ; 2 uses
  store i32 %i.alc, ptr %i.ajj, align 8, !tbaa !237
  %i.ald = icmp eq i32 %i.alc, 0
  br i1 %i.ald, label %bb.ns, label %asciilib_rsplit.exit

bb.ns:                                            ; preds = %bb.nr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ajj) #33, !inline_history !762
  br label %asciilib_rsplit.exit

bb.nt:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.ov [
    i64 0, label %bb.nu
    i64 1, label %bb.nv
  ]

bb.nu:                                            ; preds = %bb.nt
  %i.ale = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.ale, ptr noundef nonnull @.str.197) #33, !inline_history !767
  br label %asciilib_rsplit.exit

bb.nv:                                            ; preds = %bb.nt
  %i.alf = load i32, ptr %.080, align 4, !tbaa !43
  %i.alg = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.alh = add nsw i64 %i.alg, 1
  %i.ali = tail call ptr @PyList_New(i64 noundef %i.alh) #33, !inline_history !768 ; 10 uses
  %i.alj = icmp eq ptr %i.ali, null
  br i1 %i.alj, label %asciilib_rsplit.exit, label %.lr.ph89.i.i446

.lr.ph89.i.i446:                                  ; preds = %bb.nv
  %6 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.alk = getelementptr i8, ptr %i.ali, i64 24   ; 3 uses
  %smin.i447 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.all = sub i64 %.1, %smin.i447                ; 4 uses
  %exitcond.not.i4501485 = icmp eq i64 %i.all, 0
  br i1 %exitcond.not.i4501485, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader

bb.nw:                                            ; preds = %.loopexit.i.i458
  %exitcond.not.i450 = icmp eq i64 %i.ame, %i.all
  br i1 %exitcond.not.i450, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader, !llvm.loop !769

.lr.ph.i.i451.preheader:                          ; preds = %.lr.ph89.i.i446, %bb.nw
  %.05087.i.i4491487 = phi i64 [ %i.amf, %bb.nw ], [ %6, %.lr.ph89.i.i446 ] ; 3 uses
  %.088.i.i4481486 = phi i64 [ %i.ame, %bb.nw ], [ 0, %.lr.ph89.i.i446 ] ; 4 uses
  br label %.lr.ph.i.i451

.lr.ph.i.i451:                                    ; preds = %.lr.ph.i.i451.preheader, %bb.og
  %.15384.i.i452 = phi i64 [ %i.amc, %bb.og ], [ %.05087.i.i4491487, %.lr.ph.i.i451.preheader ] ; 7 uses
  %i.alm = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !43
  %i.alo = icmp eq i32 %i.aln, %i.alf
  br i1 %i.alo, label %bb.nx, label %bb.og

bb.nx:                                            ; preds = %.lr.ph.i.i451
  %i.alp = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.alq = getelementptr i8, ptr %i.alp, i64 4
  %i.alr = sub nuw nsw i64 %.05087.i.i4491487, %.15384.i.i452
  %i.als = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.alq, i64 noundef %i.alr), !inline_history !768 ; 8 uses
  %i.alt = icmp eq ptr %i.als, null
  br i1 %i.alt, label %Py_DECREF.exit69.i.i436, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.alu = icmp samesign ult i64 %.088.i.i4481486, 12
  br i1 %i.alu, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %.val76.i.i459 = load ptr, ptr %i.alk, align 8, !tbaa !279
  %i.alv = getelementptr [8 x i8], ptr %.val76.i.i459, i64 %.088.i.i4481486
  store ptr %i.als, ptr %i.alv, align 8, !tbaa !227
  br label %.loopexit.i.i458

bb.oa:                                            ; preds = %bb.ny
  %i.alw = tail call i32 @PyList_Append(ptr noundef nonnull %i.ali, ptr noundef nonnull %i.als) #33, !inline_history !768
  %.not61.i.i455 = icmp eq i32 %i.alw, 0
  %i.alx = load i32, ptr %i.als, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i457 = icmp sgt i32 %i.alx, -1      ; 2 uses
  br i1 %.not61.i.i455, label %bb.od, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oc, label %Py_DECREF.exit69.i.i436

bb.oc:                                            ; preds = %bb.ob
  %i.aly = add nsw i32 %i.alx, -1                 ; 2 uses
  store i32 %i.aly, ptr %i.als, align 8, !tbaa !237
  %i.alz = icmp eq i32 %i.aly, 0
  br i1 %i.alz, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.od:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oe, label %.loopexit.i.i458

bb.oe:                                            ; preds = %bb.od
  %i.ama = add nsw i32 %i.alx, -1                 ; 2 uses
  store i32 %i.ama, ptr %i.als, align 8, !tbaa !237
  %i.amb = icmp eq i32 %i.ama, 0
  br i1 %i.amb, label %bb.of, label %.loopexit.i.i458

bb.of:                                            ; preds = %bb.oe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.als) #33, !inline_history !768
  br label %.loopexit.i.i458

bb.og:                                            ; preds = %.lr.ph.i.i451
  %i.amc = add nsw i64 %.15384.i.i452, -1
  %i.amd = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.amd, label %.lr.ph.i.i451, label %.critedge.i.i453, !llvm.loop !770

.loopexit.i.i458:                                 ; preds = %bb.of, %bb.oe, %bb.od, %bb.nz
  %i.ame = add nuw i64 %.088.i.i4481486, 1        ; 3 uses
  %i.amf = add nsw i64 %.15384.i.i452, -1         ; 3 uses
  %i.amg = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.amg, label %bb.nw, label %.critedge.i.thread.i431, !llvm.loop !769

.critedge.i.i453:                                 ; preds = %bb.nw, %bb.og, %.lr.ph89.i.i446
  %.05087.i.i4491475 = phi i64 [ %.05087.i.i4491487, %bb.og ], [ %6, %.lr.ph89.i.i446 ], [ %i.amf, %bb.nw ] ; 2 uses
  %.0.lcssa.i.i454 = phi i64 [ %.088.i.i4481486, %bb.og ], [ %i.all, %.lr.ph89.i.i446 ], [ %i.all, %bb.nw ] ; 2 uses
  %i.amh = icmp eq i64 %.0.lcssa.i.i454, 0
  br i1 %i.amh, label %.critedge.thread.i.i427, label %.critedge.i.thread.i431

.critedge.thread.i.i427:                          ; preds = %.critedge.i.i453
  %i.ami = getelementptr i8, ptr %0, i64 8
  %.val.i.i429 = load ptr, ptr %i.ami, align 8, !tbaa !229
  %.not.i82.i430 = icmp eq ptr %.val.i.i429, @PyUnicode_Type
  br i1 %.not.i82.i430, label %bb.oh, label %.critedge.i.thread.i431

bb.oh:                                            ; preds = %.critedge.thread.i.i427
  %i.amj = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.amk = icmp ugt i32 %i.amj, -1073741825
  br i1 %i.amk, label %Py_INCREF.exit.i.i444, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.aml = add nuw i32 %i.amj, 1
  store i32 %i.aml, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i444

Py_INCREF.exit.i.i444:                            ; preds = %bb.oi, %bb.oh
  %.val75.i.i445 = load ptr, ptr %i.alk, align 8, !tbaa !279
  store ptr %0, ptr %.val75.i.i445, align 8, !tbaa !227
  br label %bb.os

.critedge.i.thread.i431:                          ; preds = %.loopexit.i.i458, %.critedge.thread.i.i427, %.critedge.i.i453
  %.0.lcssa113.i.i432 = phi i64 [ 0, %.critedge.thread.i.i427 ], [ %.0.lcssa.i.i454, %.critedge.i.i453 ], [ %i.ame, %.loopexit.i.i458 ] ; 4 uses
  %.050.lcssa111.i.i433 = phi i64 [ %.05087.i.i4491475, %.critedge.thread.i.i427 ], [ %.05087.i.i4491475, %.critedge.i.i453 ], [ %i.amf, %.loopexit.i.i458 ] ; 2 uses
  %i.amm = icmp sgt i64 %.050.lcssa111.i.i433, -2
  br i1 %i.amm, label %bb.oj, label %bb.os

bb.oj:                                            ; preds = %.critedge.i.thread.i431
  %i.amn = add nsw i64 %.050.lcssa111.i.i433, 1
  %i.amo = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %i.amn), !inline_history !768 ; 8 uses
  %i.amp = icmp eq ptr %i.amo, null
  br i1 %i.amp, label %Py_DECREF.exit69.i.i436, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.amq = icmp slt i64 %.0.lcssa113.i.i432, 12
  br i1 %i.amq, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %.val74.i.i443 = load ptr, ptr %i.alk, align 8, !tbaa !279
  %i.amr = getelementptr [8 x i8], ptr %.val74.i.i443, i64 %.0.lcssa113.i.i432
  store ptr %i.amo, ptr %i.amr, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i442

bb.om:                                            ; preds = %bb.ok
  %i.ams = tail call i32 @PyList_Append(ptr noundef nonnull %i.ali, ptr noundef nonnull %i.amo) #33, !inline_history !768
  %.not60.i.i438 = icmp eq i32 %i.ams, 0
  %i.amt = load i32, ptr %i.amo, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i439 = icmp sgt i32 %i.amt, -1      ; 2 uses
  br i1 %.not60.i.i438, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oo, label %Py_DECREF.exit69.i.i436

bb.oo:                                            ; preds = %bb.on
  %i.amu = add nsw i32 %i.amt, -1                 ; 2 uses
  store i32 %i.amu, ptr %i.amo, align 8, !tbaa !237
  %i.amv = icmp eq i32 %i.amu, 0
  br i1 %i.amv, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.op:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oq, label %Py_DECREF.exit63.i.i442

bb.oq:                                            ; preds = %bb.op
  %i.amw = add nsw i32 %i.amt, -1                 ; 2 uses
  store i32 %i.amw, ptr %i.amo, align 8, !tbaa !237
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %bb.or, label %Py_DECREF.exit63.i.i442

bb.or:                                            ; preds = %bb.oq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.amo) #33, !inline_history !768
  br label %Py_DECREF.exit63.i.i442

Py_DECREF.exit63.i.i442:                          ; preds = %bb.or, %bb.oq, %bb.op, %bb.ol
  %i.amy = add i64 %.0.lcssa113.i.i432, 1
  br label %bb.os

bb.os:                                            ; preds = %Py_DECREF.exit63.i.i442, %.critedge.i.thread.i431, %Py_INCREF.exit.i.i444
  %.2.i.i434 = phi i64 [ 1, %Py_INCREF.exit.i.i444 ], [ %i.amy, %Py_DECREF.exit63.i.i442 ], [ %.0.lcssa113.i.i432, %.critedge.i.thread.i431 ]
  %i.amz = getelementptr i8, ptr %i.ali, i64 16
  store i64 %.2.i.i434, ptr %i.amz, align 8, !tbaa !262
  %i.ana = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.ali) #33, !inline_history !768
  %i.anb = icmp slt i32 %i.ana, 0
  br i1 %i.anb, label %Py_DECREF.exit69.i.i436, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i440:               ; preds = %bb.oo, %bb.oc
  %.sink.i.i441 = phi ptr [ %i.als, %bb.oc ], [ %i.amo, %bb.oo ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i441) #33, !inline_history !768
  br label %Py_DECREF.exit69.i.i436

Py_DECREF.exit69.i.i436:                          ; preds = %bb.nx, %Py_DECREF.exit69.sink.split.i.i440, %bb.os, %bb.oo, %bb.on, %bb.oj, %bb.oc, %bb.ob
  %i.anc = load i32, ptr %i.ali, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i437 = icmp sgt i32 %i.anc, -1
  br i1 %.not.i.i.i437, label %bb.ot, label %asciilib_rsplit.exit

bb.ot:                                            ; preds = %Py_DECREF.exit69.i.i436
  %i.and = add nsw i32 %i.anc, -1                 ; 2 uses
  store i32 %i.and, ptr %i.ali, align 8, !tbaa !237
  %i.ane = icmp eq i32 %i.and, 0
  br i1 %i.ane, label %bb.ou, label %asciilib_rsplit.exit

bb.ou:                                            ; preds = %bb.ot
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ali) #33, !inline_history !768
  br label %asciilib_rsplit.exit

bb.ov:                                            ; preds = %bb.nt
  %i.anf = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.ang = add nsw i64 %i.anf, 1
  %i.anh = tail call ptr @PyList_New(i64 noundef %i.ang) #33, !inline_history !767 ; 12 uses
  %i.ani = icmp eq ptr %i.anh, null
  br i1 %i.ani, label %asciilib_rsplit.exit, label %.preheader.i460

.preheader.i460:                                  ; preds = %bb.ov
  %i.anj = icmp sgt i64 %.1, 0
  br i1 %i.anj, label %.lr.ph.i476, label %._crit_edge.thread.i461

.lr.ph.i476:                                      ; preds = %.preheader.i460
  %i.ank = getelementptr i8, ptr %i.anh, i64 24
  br label %bb.ow

bb.ow:                                            ; preds = %Py_DECREF.exit72.i484, %.lr.ph.i476
  %.0103.i477 = phi i64 [ 0, %.lr.ph.i476 ], [ %i.aoa, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057102.i478 = phi i64 [ %.val100, %.lr.ph.i476 ], [ %i.anl, %Py_DECREF.exit72.i484 ] ; 4 uses
  %i.anl = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i478, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !767 ; 4 uses
  %i.anm = icmp slt i64 %i.anl, 0
  br i1 %i.anm, label %._crit_edge.i492, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.ann = add i64 %i.anl, %.val99                ; 2 uses
  %i.ano = getelementptr [4 x i8], ptr %.0.i271, i64 %i.ann
  %i.anp = sub i64 %.057102.i478, %i.ann
  %i.anq = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.ano, i64 noundef %i.anp), !inline_history !767 ; 8 uses
  %i.anr = icmp eq ptr %i.anq, null
  br i1 %i.anr, label %Py_DECREF.exit74.i472, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ans = icmp samesign ult i64 %.0103.i477, 12
  br i1 %i.ans, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %.val81.i491 = load ptr, ptr %i.ank, align 8, !tbaa !279
  %i.ant = getelementptr [8 x i8], ptr %.val81.i491, i64 %.0103.i477
  store ptr %i.anq, ptr %i.ant, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i484

bb.pa:                                            ; preds = %bb.oy
  %i.anu = tail call i32 @PyList_Append(ptr noundef nonnull %i.anh, ptr noundef nonnull %i.anq) #33, !inline_history !767
  %.not.i479 = icmp eq i32 %i.anu, 0
  %i.anv = load i32, ptr %i.anq, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i483 = icmp sgt i32 %i.anv, -1        ; 2 uses
  br i1 %.not.i479, label %bb.pd, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pc, label %Py_DECREF.exit74.i472

bb.pc:                                            ; preds = %bb.pb
  %i.anw = add nsw i32 %i.anv, -1                 ; 2 uses
  store i32 %i.anw, ptr %i.anq, align 8, !tbaa !237
  %i.anx = icmp eq i32 %i.anw, 0
  br i1 %i.anx, label %Py_DECREF.exit74.sink.split.i481, label %Py_DECREF.exit74.i472

bb.pd:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pe, label %Py_DECREF.exit72.i484

bb.pe:                                            ; preds = %bb.pd
  %i.any = add nsw i32 %i.anv, -1                 ; 2 uses
  store i32 %i.any, ptr %i.anq, align 8, !tbaa !237
  %i.anz = icmp eq i32 %i.any, 0
  br i1 %i.anz, label %bb.pf, label %Py_DECREF.exit72.i484

bb.pf:                                            ; preds = %bb.pe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.anq) #33, !inline_history !767
  br label %Py_DECREF.exit72.i484

Py_DECREF.exit72.i484:                            ; preds = %bb.pf, %bb.pe, %bb.pd, %bb.oz
  %i.aoa = add nuw nsw i64 %.0103.i477, 1         ; 2 uses
  %exitcond118.not.i485 = icmp eq i64 %i.aoa, %.1
  br i1 %exitcond118.not.i485, label %._crit_edge.thread151.i486, label %bb.ow, !llvm.loop !771

._crit_edge.i492:                                 ; preds = %bb.ow
  %i.aob = icmp eq i64 %.0103.i477, 0
  br i1 %i.aob, label %._crit_edge.thread.i461, label %._crit_edge.thread151.i486

._crit_edge.thread.i461:                          ; preds = %._crit_edge.i492, %.preheader.i460
  %.057.lcssa147.i462 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %.val100, %.preheader.i460 ]
  %i.aoc = getelementptr i8, ptr %0, i64 8
  %.val.i463 = load ptr, ptr %i.aoc, align 8, !tbaa !229
  %.not84.i464 = icmp eq ptr %.val.i463, @PyUnicode_Type
  br i1 %.not84.i464, label %bb.pg, label %.thread.i465

bb.pg:                                            ; preds = %._crit_edge.thread.i461
  %i.aod = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.aoe = icmp ugt i32 %i.aod, -1073741825
  br i1 %i.aoe, label %Py_INCREF.exit.i474, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.aof = add nuw i32 %i.aod, 1
  store i32 %i.aof, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i474

Py_INCREF.exit.i474:                              ; preds = %bb.ph, %bb.pg
  %i.aog = getelementptr i8, ptr %i.anh, i64 24
  %.val80.i475 = load ptr, ptr %i.aog, align 8, !tbaa !279
  store ptr %0, ptr %.val80.i475, align 8, !tbaa !227
  br label %bb.pp

._crit_edge.thread151.i486:                       ; preds = %Py_DECREF.exit72.i484, %._crit_edge.i492
  %.0.lcssa155.i487 = phi i64 [ %.0103.i477, %._crit_edge.i492 ], [ %.1, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057.lcssa154.i488 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %i.anl, %Py_DECREF.exit72.i484 ]
  %i.aoh = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i488), !inline_history !767 ; 8 uses
  %i.aoi = icmp eq ptr %i.aoh, null
  br i1 %i.aoi, label %Py_DECREF.exit74.i472, label %bb.pi

.thread.i465:                                     ; preds = %._crit_edge.thread.i461
  %i.aoj = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i462), !inline_history !767 ; 2 uses
  %i.aok = icmp eq ptr %i.aoj, null
  br i1 %i.aok, label %Py_DECREF.exit74.i472, label %.thread83.i466

bb.pi:                                            ; preds = %._crit_edge.thread151.i486
  %i.aol = icmp slt i64 %.0.lcssa155.i487, 12
  br i1 %i.aol, label %.thread83.i466, label %bb.pj

.thread83.i466:                                   ; preds = %bb.pi, %.thread.i465
  %.0.lcssa148.i467 = phi i64 [ %.0.lcssa155.i487, %bb.pi ], [ 0, %.thread.i465 ] ; 2 uses
  %i.aom = phi ptr [ %i.aoh, %bb.pi ], [ %i.aoj, %.thread.i465 ]
  %i.aon = getelementptr i8, ptr %i.anh, i64 24
  %.val79.i468 = load ptr, ptr %i.aon, align 8, !tbaa !279
  %i.aoo = getelementptr [8 x i8], ptr %.val79.i468, i64 %.0.lcssa148.i467
  store ptr %i.aom, ptr %i.aoo, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i469

bb.pj:                                            ; preds = %bb.pi
  %i.aop = tail call i32 @PyList_Append(ptr noundef nonnull %i.anh, ptr noundef nonnull %i.aoh) #33, !inline_history !767
  %.not66.i489 = icmp eq i32 %i.aop, 0
  %i.aoq = load i32, ptr %i.aoh, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i490 = icmp sgt i32 %i.aoq, -1        ; 2 uses
  br i1 %.not66.i489, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  br i1 %.not.i67.i490, label %bb.pl, label %Py_DECREF.exit74.i472
end_hunk_2
