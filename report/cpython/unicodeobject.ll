Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@rsplit:bb.a
  %i.nu = getelementptr i8, ptr %i.ln, i64 24
  %.val92.i234 = load ptr, ptr %i.nu, align 8, !tbaa !280
  %i.nv = getelementptr [8 x i8], ptr %.val92.i234, i64 %.0.lcssa.i217
  store ptr %i.nr, ptr %i.nv, align 8, !tbaa !227
  br label %Py_DECREF.exit81.i233

bb.eu:                                            ; preds = %bb.es
  %i.nw = tail call i32 @PyList_Append(ptr noundef nonnull %i.ln, ptr noundef nonnull %i.nr) #33, !inline_history !744
  %.not78.i229 = icmp eq i32 %i.nw, 0
  %i.nx = load i32, ptr %i.nr, align 8, !tbaa !237 ; 3 uses
  %.not.i80.i230 = icmp sgt i32 %i.nx, -1         ; 2 uses
  br i1 %.not78.i229, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %.not.i80.i230, label %bb.ew, label %Py_DECREF.exit87.i221

bb.ew:                                            ; preds = %bb.ev
  %i.ny = add nsw i32 %i.nx, -1                   ; 2 uses
  store i32 %i.ny, ptr %i.nr, align 8, !tbaa !237
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %Py_DECREF.exit87.sink.split.i231, label %Py_DECREF.exit87.i221

bb.ex:                                            ; preds = %bb.eu
  br i1 %.not.i80.i230, label %bb.ey, label %Py_DECREF.exit81.i233

bb.ey:                                            ; preds = %bb.ex
  %i.oa = add nsw i32 %i.nx, -1                   ; 2 uses
  store i32 %i.oa, ptr %i.nr, align 8, !tbaa !237
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.ez, label %Py_DECREF.exit81.i233

bb.ez:                                            ; preds = %bb.ey
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.nr) #33, !inline_history !744
  br label %Py_DECREF.exit81.i233

Py_DECREF.exit81.i233:                            ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.et
  %i.oc = add nuw i64 %.0.lcssa.i217, 1
  br label %.critedge79.i218

.critedge79.i218:                                 ; preds = %.preheader104.i236, %bb.eb, %bb.er, %Py_DECREF.exit81.i233, %._crit_edge.i215, %Py_INCREF.exit.i263
  %.2.i219 = phi i64 [ %i.oc, %Py_DECREF.exit81.i233 ], [ %.0124.i237, %bb.eb ], [ %.0.lcssa.i217, %._crit_edge.i215 ], [ %i.mq, %Py_INCREF.exit.i263 ], [ %.0.lcssa.i217, %bb.er ], [ %.0124.i237, %.preheader104.i236 ]
  %i.od = getelementptr i8, ptr %i.ln, i64 16
  store i64 %.2.i219, ptr %i.od, align 8, !tbaa !263
  %i.oe = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.ln) #33, !inline_history !744
  %i.of = icmp slt i32 %i.oe, 0
  br i1 %i.of, label %Py_DECREF.exit87.i221, label %asciilib_rsplit_whitespace.exit

Py_DECREF.exit87.sink.split.i231:                 ; preds = %bb.ew, %bb.el
  %.sink.i232 = phi ptr [ %i.mu, %bb.el ], [ %i.nr, %bb.ew ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i232) #33, !inline_history !744
  br label %Py_DECREF.exit87.i221

Py_DECREF.exit87.i221:                            ; preds = %.critedge2.thread.i252, %Py_DECREF.exit87.sink.split.i231, %.critedge79.i218, %bb.ew, %bb.ev, %.critedge5.i228, %bb.el, %bb.ek
  %i.og = load i32, ptr %i.ln, align 8, !tbaa !237 ; 2 uses
  %.not.i.i222 = icmp sgt i32 %i.og, -1
  br i1 %.not.i.i222, label %bb.fa, label %asciilib_rsplit_whitespace.exit

bb.fa:                                            ; preds = %Py_DECREF.exit87.i221
  %i.oh = add nsw i32 %i.og, -1                   ; 2 uses
  store i32 %i.oh, ptr %i.ln, align 8, !tbaa !237
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.fb, label %asciilib_rsplit_whitespace.exit

bb.fb:                                            ; preds = %bb.fa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ln) #33, !inline_history !744
  br label %asciilib_rsplit_whitespace.exit

bb.fc:                                            ; preds = %bb.d
  unreachable

bb.fd:                                            ; preds = %bb.a
  %i.oj = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8            ; 3 uses
  %i.ol = lshr i32 %i.ok, 2
  %i.om = and i32 %i.ol, 7                        ; 3 uses
  %i.on = getelementptr i8, ptr %1, i64 16
  %.val99 = load i64, ptr %i.on, align 8, !tbaa !239 ; 30 uses
  %i.oo = icmp slt i64 %2, 0
  br i1 %i.oo, label %bb.fe, label %.thread

bb.fe:                                            ; preds = %bb.fd
  %i.op = icmp eq i64 %.val99, 0
  br i1 %i.op, label %.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.oq = sdiv i64 %.val100, %.val99
  %.fr494 = freeze i64 %i.oq
  %i.or = add i64 %.fr494, 1                      ; 2 uses
  %i.os = icmp slt i64 %i.or, 0
  %spec.select = select i1 %i.os, i64 %.val100, i64 %i.or
  br label %.thread

.thread:                                          ; preds = %bb.ff, %bb.fe, %bb.fd
  %.1 = phi i64 [ %2, %bb.fd ], [ 0, %bb.fe ], [ %spec.select, %bb.ff ] ; 26 uses
  %i.ot = icmp samesign ult i32 %i.e, %i.om
  %i.ou = icmp slt i64 %.val100, %.val99
  %or.cond = select i1 %i.ot, i1 true, i1 %i.ou
  br i1 %or.cond, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %.thread
  %i.ov = tail call ptr @PyList_New(i64 noundef 1) #33 ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %asciilib_rsplit_whitespace.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ox = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.oy = icmp ugt i32 %i.ox, -1073741825
  br i1 %i.oy, label %_Py_NewRef.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.oz = add nuw i32 %i.ox, 1
  store i32 %i.oz, ptr %0, align 8, !tbaa !237
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.fh, %bb.fi
  %i.pa = getelementptr i8, ptr %i.ov, i64 24
  %.val101 = load ptr, ptr %i.pa, align 8, !tbaa !280
  store ptr %0, ptr %.val101, align 8, !tbaa !227
  br label %asciilib_rsplit_whitespace.exit

bb.fj:                                            ; preds = %.thread
  %i.pb = and i32 %i.c, 32
  %.not.i267 = icmp eq i32 %i.pb, 0
  br i1 %.not.i267, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.pc = and i32 %i.c, 64
  %.not.i.i268 = icmp eq i32 %i.pc, 0
  %.0.v.i.i269 = select i1 %.not.i.i268, i64 56, i64 40
  %.0.i.i270 = getelementptr i8, ptr %0, i64 %.0.v.i.i269
  br label %_PyUnicode_DATA.exit273

bb.fl:                                            ; preds = %bb.fj
  %i.pd = getelementptr i8, ptr %0, i64 56
  %.val4.i272 = load ptr, ptr %i.pd, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit273

_PyUnicode_DATA.exit273:                          ; preds = %bb.fk, %bb.fl
  %.0.i271 = phi ptr [ %.0.i.i270, %bb.fk ], [ %.val4.i272, %bb.fl ] ; 35 uses
  %i.pe = and i32 %i.ok, 32
  %.not.i275 = icmp eq i32 %i.pe, 0
  br i1 %.not.i275, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_PyUnicode_DATA.exit273
  %i.pf = and i32 %i.ok, 64
  %.not.i.i276 = icmp eq i32 %i.pf, 0
  %.0.v.i.i277 = select i1 %.not.i.i276, i64 56, i64 40
  %.0.i.i278 = getelementptr i8, ptr %1, i64 %.0.v.i.i277
  br label %_PyUnicode_DATA.exit281

bb.fn:                                            ; preds = %_PyUnicode_DATA.exit273
  %i.pg = getelementptr i8, ptr %1, i64 56
  %.val4.i280 = load ptr, ptr %i.pg, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit281

_PyUnicode_DATA.exit281:                          ; preds = %bb.fm, %bb.fn
  %.0.i279 = phi ptr [ %.0.i.i278, %bb.fm ], [ %.val4.i280, %bb.fn ] ; 2 uses
  %.not = icmp eq i32 %i.om, %i.e                 ; 2 uses
  br i1 %.not, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_PyUnicode_DATA.exit281
  %i.ph = tail call fastcc ptr @unicode_askind(i32 noundef %i.om, ptr noundef %.0.i279, i64 noundef %.val99, i32 noundef %i.e) ; 2 uses
  %.not93 = icmp eq ptr %i.ph, null
  br i1 %.not93, label %asciilib_rsplit_whitespace.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_PyUnicode_DATA.exit281
  %.080 = phi ptr [ %i.ph, %bb.fo ], [ %.0.i279, %_PyUnicode_DATA.exit281 ] ; 17 uses
  switch i32 %i.e, label %asciilib_rsplit.exit [
    i32 1, label %bb.fq
    i32 2, label %bb.lu
    i32 4, label %bb.nt
  ]

bb.fq:                                            ; preds = %bb.fp
  %.val97 = load i32, ptr %i.b, align 8
  %i.pi = and i32 %.val97, 64
  %.not94 = icmp eq i32 %i.pi, 0
  br i1 %.not94, label %bb.in, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.val = load i32, ptr %i.oj, align 8
  %i.pj = and i32 %.val, 64
  %.not95 = icmp eq i32 %i.pj, 0
  br i1 %.not95, label %bb.in, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  switch i64 %.val99, label %bb.hc [
    i64 0, label %bb.ft
    i64 1, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.pk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.pk, ptr noundef nonnull @.str.197) #33, !inline_history !749
  br label %asciilib_rsplit.exit

bb.fu:                                            ; preds = %bb.fs
  %i.pl = load i8, ptr %.080, align 1, !tbaa !237
  %i.pm = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.pn = add nsw i64 %i.pm, 1
  %i.po = tail call ptr @PyList_New(i64 noundef %i.pn) #33, !inline_history !750 ; 12 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %asciilib_rsplit.exit, label %3

3:                                                ; preds = %bb.fu
  %4 = add i64 %.val100, -1                       ; 4 uses
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %.lr.ph107.i.i, label %.critedge.thread.i.i

.lr.ph107.i.i:                                    ; preds = %3
  %i.pq = getelementptr i8, ptr %i.po, i64 24
  %smin.i = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.pr = sub i64 %.1, %smin.i                    ; 4 uses
  %exitcond.not.i2831493 = icmp eq i64 %i.pr, 0
  br i1 %exitcond.not.i2831493, label %.critedge.i.i, label %.lr.ph.i.i.preheader

bb.fv:                                            ; preds = %.loopexit.i.i
  %exitcond.not.i283 = icmp eq i64 %i.qw, %i.pr
  br i1 %exitcond.not.i283, label %.critedge.i.i, label %.lr.ph.i.i.preheader, !llvm.loop !751

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph107.i.i, %bb.fv
  %.050105.i.i1495 = phi i64 [ %i.qx, %bb.fv ], [ %4, %.lr.ph107.i.i ] ; 3 uses
  %.0106.i.i1494 = phi i64 [ %i.qw, %bb.fv ], [ 0, %.lr.ph107.i.i ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.gj
  %.153102.i.i = phi i64 [ %i.qu, %bb.gj ], [ %.050105.i.i1495, %.lr.ph.i.i.preheader ] ; 7 uses
  %i.ps = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !237
  %i.pu = icmp eq i8 %i.pt, %i.pl
  br i1 %i.pu, label %bb.fw, label %bb.gj

bb.fw:                                            ; preds = %.lr.ph.i.i
  %i.pv = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.pw = getelementptr i8, ptr %i.pv, i64 1      ; 2 uses
  %i.px = sub nuw nsw i64 %.050105.i.i1495, %.153102.i.i ; 3 uses
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %_PyUnicode_FromASCII.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pz = tail call ptr @PyUnicode_New(i64 noundef %i.px, i32 noundef 127), !inline_history !752 ; 5 uses
  %.not.i77.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i77.i.i, label %Py_DECREF.exit69.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qa = getelementptr i8, ptr %i.pz, i64 32
  %.val.i.i.i.i = load i32, ptr %i.qa, align 8    ; 2 uses
  %i.qb = and i32 %.val.i.i.i.i, 32
  %.not.i.i.i.i284 = icmp eq i32 %i.qb, 0
  br i1 %.not.i.i.i.i284, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qc = and i32 %.val.i.i.i.i, 64
  %.not.i.i.i.i.i = icmp eq i32 %i.qc, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i = getelementptr i8, ptr %i.pz, i64 %.0.v.i.i.i.i.i
  br label %_PyUnicode_FromASCII.exit.thread90.i.i

bb.ga:                                            ; preds = %bb.fy
  %i.qd = getelementptr i8, ptr %i.pz, i64 56
  %.val4.i.i.i.i = load ptr, ptr %i.qd, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit.thread90.i.i

_PyUnicode_FromASCII.exit.thread90.i.i:           ; preds = %bb.ga, %bb.fz
  %.0.i.i.i.i285 = phi ptr [ %.0.i.i.i.i.i, %bb.fz ], [ %.val4.i.i.i.i, %bb.ga ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i285, ptr readonly align 1 %i.pw, i64 %i.px, i1 false)
  br label %bb.gb

_PyUnicode_FromASCII.exit.i.i:                    ; preds = %bb.fw
  %i.qe = load i8, ptr %i.pw, align 1, !tbaa !237 ; 2 uses
  %i.qf = zext i8 %i.qe to i64                    ; 2 uses
  %i.qg = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.qf
  %i.qh = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.qf
  %i.qi = getelementptr i8, ptr %i.qh, i64 -8192
  %i.qj = icmp slt i8 %i.qe, 0
  %i.qk = select i1 %i.qj, ptr %i.qi, ptr %i.qg   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %Py_DECREF.exit69.i.i, label %bb.gb

bb.gb:                                            ; preds = %_PyUnicode_FromASCII.exit.i.i, %_PyUnicode_FromASCII.exit.thread90.i.i
  %.0.i92.i.i = phi ptr [ %i.pz, %_PyUnicode_FromASCII.exit.thread90.i.i ], [ %i.qk, %_PyUnicode_FromASCII.exit.i.i ] ; 7 uses
  %i.qm = icmp samesign ult i64 %.0106.i.i1494, 12
  br i1 %i.qm, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %.val76.i.i = load ptr, ptr %i.pq, align 8, !tbaa !280
  %i.qn = getelementptr [8 x i8], ptr %.val76.i.i, i64 %.0106.i.i1494
  store ptr %.0.i92.i.i, ptr %i.qn, align 8, !tbaa !227
  br label %.loopexit.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.qo = tail call i32 @PyList_Append(ptr noundef nonnull %i.po, ptr noundef nonnull %.0.i92.i.i) #33, !inline_history !750
  %.not61.i.i = icmp eq i32 %i.qo, 0
  %i.qp = load i32, ptr %.0.i92.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i = icmp sgt i32 %i.qp, -1          ; 2 uses
  br i1 %.not61.i.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  br i1 %.not.i66.i.i, label %bb.gf, label %Py_DECREF.exit69.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.qq = add nsw i32 %i.qp, -1                   ; 2 uses
  store i32 %i.qq, ptr %.0.i92.i.i, align 8, !tbaa !237
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %Py_DECREF.exit69.sink.split.i.i, label %Py_DECREF.exit69.i.i

bb.gg:                                            ; preds = %bb.gd
  br i1 %.not.i66.i.i, label %bb.gh, label %.loopexit.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.qs = add nsw i32 %i.qp, -1                   ; 2 uses
  store i32 %i.qs, ptr %.0.i92.i.i, align 8, !tbaa !237
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %bb.gi, label %.loopexit.i.i

bb.gi:                                            ; preds = %bb.gh
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i92.i.i) #33, !inline_history !750
  br label %.loopexit.i.i

bb.gj:                                            ; preds = %.lr.ph.i.i
  %i.qu = add nsw i64 %.153102.i.i, -1
  %i.qv = icmp sgt i64 %.153102.i.i, 0
  br i1 %i.qv, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !753

.loopexit.i.i:                                    ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.gc
  %i.qw = add nuw i64 %.0106.i.i1494, 1           ; 3 uses
  %i.qx = add nsw i64 %.153102.i.i, -1            ; 3 uses
  %i.qy = icmp sgt i64 %.153102.i.i, 0
  br i1 %i.qy, label %bb.fv, label %.critedge.i.thread.i, !llvm.loop !751

.critedge.i.i:                                    ; preds = %bb.fv, %bb.gj, %.lr.ph107.i.i
  %.050105.i.i1422 = phi i64 [ %.050105.i.i1495, %bb.gj ], [ %4, %.lr.ph107.i.i ], [ %i.qx, %bb.fv ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.0106.i.i1494, %bb.gj ], [ %i.pr, %.lr.ph107.i.i ], [ %i.pr, %bb.fv ] ; 2 uses
  %i.qz = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %i.qz, label %.critedge.thread.i.i, label %.critedge.i.thread.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %3
  %.050.lcssa132.i.i = phi i64 [ %.050105.i.i1422, %.critedge.i.i ], [ %4, %3 ]
  %i.ra = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.ra, align 8, !tbaa !229
  %.not.i82.i = icmp eq ptr %.val.i.i, @PyUnicode_Type
  br i1 %.not.i82.i, label %bb.gk, label %.critedge.i.thread.i

bb.gk:                                            ; preds = %.critedge.thread.i.i
  %i.rb = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.rc = icmp ugt i32 %i.rb, -1073741825
  br i1 %i.rc, label %Py_INCREF.exit.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.rd = add nuw i32 %i.rb, 1
  store i32 %i.rd, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.gl, %bb.gk
  %6 = getelementptr i8, ptr %i.po, i64 24
  %.val75.i.i = load ptr, ptr %6, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i, align 8, !tbaa !227
  br label %bb.gz

.critedge.i.thread.i:                             ; preds = %.loopexit.i.i, %.critedge.thread.i.i, %.critedge.i.i
  %.0.lcssa133.i.i = phi i64 [ 0, %.critedge.thread.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.qw, %.loopexit.i.i ] ; 4 uses
  %.050.lcssa131.i.i = phi i64 [ %.050.lcssa132.i.i, %.critedge.thread.i.i ], [ %.050105.i.i1422, %.critedge.i.i ], [ %i.qx, %.loopexit.i.i ] ; 3 uses
  %i.re = icmp sgt i64 %.050.lcssa131.i.i, -2
  br i1 %i.re, label %bb.gm, label %bb.gz

bb.gm:                                            ; preds = %.critedge.i.thread.i
  %i.rf = add i64 %.050.lcssa131.i.i, 1           ; 2 uses
  %i.rg = icmp eq i64 %.050.lcssa131.i.i, 0
  br i1 %i.rg, label %_PyUnicode_FromASCII.exit88.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.rh = tail call ptr @PyUnicode_New(i64 noundef %i.rf, i32 noundef 127), !inline_history !752 ; 5 uses
  %.not.i78.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i78.i.i, label %Py_DECREF.exit69.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ri = getelementptr i8, ptr %i.rh, i64 32
  %.val.i.i79.i.i = load i32, ptr %i.ri, align 8  ; 2 uses
  %i.rj = and i32 %.val.i.i79.i.i, 32
  %.not.i.i80.i.i = icmp eq i32 %i.rj, 0
  br i1 %.not.i.i80.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rk = and i32 %.val.i.i79.i.i, 64
  %.not.i.i.i81.i.i = icmp eq i32 %i.rk, 0
  %.0.v.i.i.i82.i.i = select i1 %.not.i.i.i81.i.i, i64 56, i64 40
  %.0.i.i.i83.i.i = getelementptr i8, ptr %i.rh, i64 %.0.v.i.i.i82.i.i
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

bb.gq:                                            ; preds = %bb.go
  %i.rl = getelementptr i8, ptr %i.rh, i64 56
  %.val4.i.i87.i.i = load ptr, ptr %i.rl, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit88.thread94.i.i

_PyUnicode_FromASCII.exit88.thread94.i.i:         ; preds = %bb.gq, %bb.gp
  %.0.i.i85.i.i = phi ptr [ %.0.i.i.i83.i.i, %bb.gp ], [ %.val4.i.i87.i.i, %bb.gq ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i85.i.i, ptr readonly align 1 %.0.i271, i64 %i.rf, i1 false)
  br label %bb.gr

_PyUnicode_FromASCII.exit88.i.i:                  ; preds = %bb.gm
  %i.rm = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.rn = zext i8 %i.rm to i64                    ; 2 uses
  %i.ro = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.rn
  %i.rp = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.rn
  %i.rq = getelementptr i8, ptr %i.rp, i64 -8192
  %i.rr = icmp slt i8 %i.rm, 0
  %i.rs = select i1 %i.rr, ptr %i.rq, ptr %i.ro   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %Py_DECREF.exit69.i.i, label %bb.gr

bb.gr:                                            ; preds = %_PyUnicode_FromASCII.exit88.i.i, %_PyUnicode_FromASCII.exit88.thread94.i.i
  %.0.i8696.i.i = phi ptr [ %i.rh, %_PyUnicode_FromASCII.exit88.thread94.i.i ], [ %i.rs, %_PyUnicode_FromASCII.exit88.i.i ] ; 7 uses
  %i.ru = icmp slt i64 %.0.lcssa133.i.i, 12
  br i1 %i.ru, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %7 = getelementptr i8, ptr %i.po, i64 24
  %.val74.i.i = load ptr, ptr %7, align 8, !tbaa !280
  %i.rv = getelementptr [8 x i8], ptr %.val74.i.i, i64 %.0.lcssa133.i.i
  store ptr %.0.i8696.i.i, ptr %i.rv, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.rw = tail call i32 @PyList_Append(ptr noundef nonnull %i.po, ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !750
  %.not60.i.i = icmp eq i32 %i.rw, 0
  %i.rx = load i32, ptr %.0.i8696.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i = icmp sgt i32 %i.rx, -1          ; 2 uses
  br i1 %.not60.i.i, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %.not.i62.i.i, label %bb.gv, label %Py_DECREF.exit69.i.i

bb.gv:                                            ; preds = %bb.gu
  %i.ry = add nsw i32 %i.rx, -1                   ; 2 uses
  store i32 %i.ry, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %Py_DECREF.exit69.sink.split.i.i, label %Py_DECREF.exit69.i.i

bb.gw:                                            ; preds = %bb.gt
  br i1 %.not.i62.i.i, label %bb.gx, label %Py_DECREF.exit63.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.sa = add nsw i32 %i.rx, -1                   ; 2 uses
  store i32 %i.sa, ptr %.0.i8696.i.i, align 8, !tbaa !237
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.gy, label %Py_DECREF.exit63.i.i

bb.gy:                                            ; preds = %bb.gx
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.i.i) #33, !inline_history !750
  br label %Py_DECREF.exit63.i.i

Py_DECREF.exit63.i.i:                             ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gs
  %i.sc = add i64 %.0.lcssa133.i.i, 1
  br label %bb.gz

bb.gz:                                            ; preds = %Py_DECREF.exit63.i.i, %.critedge.i.thread.i, %Py_INCREF.exit.i.i
  %.2.i.i = phi i64 [ 1, %Py_INCREF.exit.i.i ], [ %i.sc, %Py_DECREF.exit63.i.i ], [ %.0.lcssa133.i.i, %.critedge.i.thread.i ]
  %i.sd = getelementptr i8, ptr %i.po, i64 16
  store i64 %.2.i.i, ptr %i.sd, align 8, !tbaa !263
  %i.se = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.po) #33, !inline_history !750
  %i.sf = icmp slt i32 %i.se, 0
  br i1 %i.sf, label %Py_DECREF.exit69.i.i, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i:                  ; preds = %bb.gv, %bb.gf
  %.0.i8696.sink.i.i = phi ptr [ %.0.i92.i.i, %bb.gf ], [ %.0.i8696.i.i, %bb.gv ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i8696.sink.i.i) #33, !inline_history !750
  br label %Py_DECREF.exit69.i.i

Py_DECREF.exit69.i.i:                             ; preds = %_PyUnicode_FromASCII.exit.i.i, %bb.fx, %Py_DECREF.exit69.sink.split.i.i, %bb.gz, %bb.gv, %bb.gu, %_PyUnicode_FromASCII.exit88.i.i, %bb.gn, %bb.gf, %bb.ge
  %i.sg = load i32, ptr %i.po, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i282 = icmp sgt i32 %i.sg, -1
  br i1 %.not.i.i.i282, label %bb.ha, label %asciilib_rsplit.exit

bb.ha:                                            ; preds = %Py_DECREF.exit69.i.i
  %i.sh = add nsw i32 %i.sg, -1                   ; 2 uses
  store i32 %i.sh, ptr %i.po, align 8, !tbaa !237
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.hb, label %asciilib_rsplit.exit

bb.hb:                                            ; preds = %bb.ha
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.po) #33, !inline_history !750
  br label %asciilib_rsplit.exit

bb.hc:                                            ; preds = %bb.fs
  %i.sj = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.sk = add nsw i64 %i.sj, 1
  %i.sl = tail call ptr @PyList_New(i64 noundef %i.sk) #33, !inline_history !749 ; 12 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %asciilib_rsplit.exit, label %.preheader.i286

.preheader.i286:                                  ; preds = %bb.hc
  %i.sn = icmp slt i64 %.1, 1
  br i1 %i.sn, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %.preheader.i286
  %i.so = icmp slt i64 %.val99, 2
  %i.sp = add i64 %.val99, -1                     ; 6 uses
  %i.sq = getelementptr i8, ptr %i.sl, i64 24
  br i1 %i.so, label %asciilib_fastsearch.exit.thread.thread.i, label %.lr.ph.i287.split.preheader

.lr.ph.i287.split.preheader:                      ; preds = %.lr.ph.i287
  %xtraiter = and i64 %i.sp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.sr = getelementptr i8, ptr %.080, i64 %i.sp
  %i.ss = add nsw i64 %.val99, -2                 ; 2 uses
  %i.st = icmp eq i64 %.val99, 2
  br label %.lr.ph.i287.split

.lr.ph.i287.split:                                ; preds = %.lr.ph.i287.split.preheader, %Py_DECREF.exit72.i
  %.in.i = phi i64 [ %i.te, %Py_DECREF.exit72.i ], [ %.1, %.lr.ph.i287.split.preheader ] ; 2 uses
  %.0137.i = phi i64 [ %i.vw, %Py_DECREF.exit72.i ], [ 0, %.lr.ph.i287.split.preheader ] ; 5 uses
  %.057136.i = phi i64 [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ], [ %.val100, %.lr.ph.i287.split.preheader ] ; 4 uses
  %i.su = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.sv = and i8 %i.su, 63
  %i.sw = zext nneg i8 %i.sv to i64
  %i.sx = shl nuw i64 1, %i.sw                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %.lr.ph.i287.split
  %i.sy = load i8, ptr %i.sr, align 1, !tbaa !237 ; 2 uses
  %i.sz = and i8 %i.sy, 63
  %i.ta = zext nneg i8 %i.sz to i64
  %i.tb = shl nuw i64 1, %i.ta
  %i.tc = or i64 %i.tb, %i.sx                     ; 2 uses
  %i.td = icmp eq i8 %i.sy, %i.su
  %spec.select.i.i.i.prol = select i1 %i.td, i64 %i.ss, i64 %i.sp ; 2 uses
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %.lr.ph.i287.split
  %.060.i.i.i.unr = phi i64 [ %i.sp, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.sp, %.lr.ph.i287.split ], [ %i.ss, %.lr.ph.i70.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.sx, %.lr.ph.i287.split ], [ %i.tc, %.lr.ph.i70.i.i.prol ]
  %.lcssa1636.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %i.tc, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  br i1 %i.st, label %.lr.ph66.split.us.i.preheader.i.i, label %.lr.ph.i70.i.i

.lr.ph66.split.us.i.preheader.i.i:                ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa1636 = phi i64 [ %.lcssa1636.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.us, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.te = add nsw i64 %.in.i, -1
  %i.tf = sub nsw i64 %.057136.i, %.val99
  br label %.lr.ph66.split.us.i.i.i

.lr.ph66.split.us.i.i.i:                          ; preds = %bb.hi, %.lr.ph66.split.us.i.preheader.i.i
  %.14865.us.i.i.i = phi i64 [ %i.ud, %bb.hi ], [ %i.tf, %.lr.ph66.split.us.i.preheader.i.i ] ; 9 uses
  %i.tg = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i ; 4 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !237
  %i.ti = icmp eq i8 %i.th, %i.su
  br i1 %i.ti, label %.preheader.us.i72.i.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.tj = getelementptr i8, ptr %i.tg, i64 -1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !237
  %i.tl = and i8 %i.tk, 63
  %i.tm = zext nneg i8 %i.tl to i64
  %i.tn = shl nuw i64 1, %i.tm
  %i.to = and i64 %i.tn, %.lcssa1636
  %.not51.us.i.i.i = icmp eq i64 %i.to, 0
  %i.tp = select i1 %.not51.us.i.i.i, i64 %.val99, i64 0
  br label %bb.hi

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.hf
  %.04662.us.i.i.i = phi i64 [ %i.tu, %bb.hf ], [ %i.sp, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.tq = getelementptr i8, ptr %i.tg, i64 %.04662.us.i.i.i
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !237
  %i.ts = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !237
  %.not52.us.i.i.i = icmp eq i8 %i.tr, %i.tt
  br i1 %.not52.us.i.i.i, label %bb.hf, label %.thread.us.i73.i.i

bb.hf:                                            ; preds = %.preheader.us.i72.i.i
  %i.tu = add nsw i64 %.04662.us.i.i.i, -1
  %i.tv = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.tv, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !25

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.thread.us.i73.i.i
  %i.tw = getelementptr i8, ptr %i.tg, i64 -1
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !237
  %i.ty = and i8 %i.tx, 63
  %i.tz = zext nneg i8 %i.ty to i64
  %i.ua = shl nuw i64 1, %i.tz
  %i.ub = and i64 %i.ua, %.lcssa1636
  %.not54.us.i.i.i = icmp eq i64 %i.ub, 0
  br i1 %.not54.us.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.thread.us.i73.i.i
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.he
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.hh ], [ %i.tp, %bb.he ], [ %.val99, %bb.hg ]
  %i.uc = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.ud = add nsw i64 %i.uc, -1
  %i.ue = icmp sgt i64 %i.uc, 0
  br i1 %i.ue, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !26

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.uu, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.us, %.lr.ph.i70.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %i.uf = getelementptr i8, ptr %.080, i64 %.04759.i.i.i
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !237 ; 2 uses
  %i.uh = and i8 %i.ug, 63
  %i.ui = zext nneg i8 %i.uh to i64
  %i.uj = shl nuw i64 1, %i.ui
  %i.uk = or i64 %i.uj, %.04958.i.i.i
  %i.ul = icmp eq i8 %i.ug, %i.su
  %i.um = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.ul, i64 %i.um, i64 %.060.i.i.i
  %i.un = getelementptr i8, ptr %.080, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !237 ; 2 uses
end_hunk_0
begin_hunk_1_@rsplit:bb.a
  store ptr %.0.i88104.i, ptr %i.vp, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i

bb.hq:                                            ; preds = %bb.ho
  %i.vq = tail call i32 @PyList_Append(ptr noundef nonnull %i.sl, ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  %.not.i293 = icmp eq i32 %i.vq, 0
  %i.vr = load i32, ptr %.0.i88104.i, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i = icmp sgt i32 %i.vr, -1            ; 2 uses
  br i1 %.not.i293, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hs, label %Py_DECREF.exit74.i

bb.hs:                                            ; preds = %bb.hr
  %i.vs = add nsw i32 %i.vr, -1                   ; 2 uses
  store i32 %i.vs, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ht:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hu, label %Py_DECREF.exit72.i

bb.hu:                                            ; preds = %bb.ht
  %i.vu = add nsw i32 %i.vr, -1                   ; 2 uses
  store i32 %i.vu, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vv = icmp eq i32 %i.vu, 0
  br i1 %i.vv, label %bb.hv, label %Py_DECREF.exit72.i

bb.hv:                                            ; preds = %bb.hu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hp
  %i.vw = add nuw nsw i64 %.0137.i, 1             ; 2 uses
  %i.vx = icmp slt i64 %.in.i, 2
  %i.vy = icmp slt i64 %.14865.us.i.i.i, %.val99
  %or.cond.i = or i1 %i.vx, %i.vy
  br i1 %or.cond.i, label %asciilib_fastsearch.exit.thread.thread205.i, label %.lr.ph.i287.split, !llvm.loop !755

asciilib_fastsearch.exit.thread.i:                ; preds = %asciilib_fastsearch.exit.i, %bb.hi, %bb.hd
  %i.vz = icmp eq i64 %.0137.i, 0
  br i1 %i.vz, label %asciilib_fastsearch.exit.thread.thread.i, label %asciilib_fastsearch.exit.thread.thread205.i

asciilib_fastsearch.exit.thread.thread.i:         ; preds = %.lr.ph.i287, %asciilib_fastsearch.exit.thread.i, %.preheader.i286
  %.057124202.i = phi i64 [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i286 ], [ %.val100, %.lr.ph.i287 ]
  %i.wa = getelementptr i8, ptr %0, i64 8
  %.val.i289 = load ptr, ptr %i.wa, align 8, !tbaa !229
  %.not109.i = icmp eq ptr %.val.i289, @PyUnicode_Type
  br i1 %.not109.i, label %bb.hw, label %asciilib_fastsearch.exit.thread.thread205.i

bb.hw:                                            ; preds = %asciilib_fastsearch.exit.thread.thread.i
  %i.wb = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.wc = icmp ugt i32 %i.wb, -1073741825
  br i1 %i.wc, label %Py_INCREF.exit.i290, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wd = add nuw i32 %i.wb, 1
  store i32 %i.wd, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i290

Py_INCREF.exit.i290:                              ; preds = %bb.hx, %bb.hw
  %i.we = getelementptr i8, ptr %i.sl, i64 24
  %.val80.i = load ptr, ptr %i.we, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i, align 8, !tbaa !227
  br label %bb.ik

asciilib_fastsearch.exit.thread.thread205.i:      ; preds = %Py_DECREF.exit72.i, %asciilib_fastsearch.exit.thread.thread.i, %asciilib_fastsearch.exit.thread.i
  %.0119203.i = phi i64 [ 0, %asciilib_fastsearch.exit.thread.thread.i ], [ %.0137.i, %asciilib_fastsearch.exit.thread.i ], [ %i.vw, %Py_DECREF.exit72.i ] ; 3 uses
  %.057124201.i = phi i64 [ %.057124202.i, %asciilib_fastsearch.exit.thread.thread.i ], [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ] ; 3 uses
  %i.wf = icmp eq i64 %.057124201.i, 1
  br i1 %i.wf, label %_PyUnicode_FromASCII.exit99.i, label %bb.hy

bb.hy:                                            ; preds = %asciilib_fastsearch.exit.thread.thread205.i
  %i.wg = tail call ptr @PyUnicode_New(i64 noundef %.057124201.i, i32 noundef 127), !inline_history !754 ; 5 uses
  %.not.i89.i = icmp eq ptr %i.wg, null
  br i1 %.not.i89.i, label %Py_DECREF.exit74.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wh = getelementptr i8, ptr %i.wg, i64 32
  %.val.i.i90.i = load i32, ptr %i.wh, align 8    ; 2 uses
  %i.wi = and i32 %.val.i.i90.i, 32
  %.not.i.i91.i = icmp eq i32 %i.wi, 0
  br i1 %.not.i.i91.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.wj = and i32 %.val.i.i90.i, 64
  %.not.i.i.i92.i = icmp eq i32 %i.wj, 0
  %.0.v.i.i.i93.i = select i1 %.not.i.i.i92.i, i64 56, i64 40
  %.0.i.i.i94.i = getelementptr i8, ptr %i.wg, i64 %.0.v.i.i.i93.i
  br label %_PyUnicode_FromASCII.exit99.thread106.i

bb.ib:                                            ; preds = %bb.hz
  %i.wk = getelementptr i8, ptr %i.wg, i64 56
  %.val4.i.i98.i = load ptr, ptr %i.wk, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit99.thread106.i

_PyUnicode_FromASCII.exit99.thread106.i:          ; preds = %bb.ib, %bb.ia
  %.0.i.i96.i = phi ptr [ %.0.i.i.i94.i, %bb.ia ], [ %.val4.i.i98.i, %bb.ib ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i96.i, ptr readonly align 1 %.0.i271, i64 %.057124201.i, i1 false)
  br label %bb.ic

_PyUnicode_FromASCII.exit99.i:                    ; preds = %asciilib_fastsearch.exit.thread.thread205.i
  %i.wl = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.wm = zext i8 %i.wl to i64                    ; 2 uses
  %i.wn = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.wm
  %i.wo = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.wm
  %i.wp = getelementptr i8, ptr %i.wo, i64 -8192
  %i.wq = icmp slt i8 %i.wl, 0
  %i.wr = select i1 %i.wq, ptr %i.wp, ptr %i.wn   ; 2 uses
  %i.ws = icmp eq ptr %i.wr, null
  br i1 %i.ws, label %Py_DECREF.exit74.i, label %bb.ic

bb.ic:                                            ; preds = %_PyUnicode_FromASCII.exit99.i, %_PyUnicode_FromASCII.exit99.thread106.i
  %.0.i97108.i = phi ptr [ %i.wg, %_PyUnicode_FromASCII.exit99.thread106.i ], [ %i.wr, %_PyUnicode_FromASCII.exit99.i ] ; 7 uses
  %i.wt = icmp slt i64 %.0119203.i, 12
  br i1 %i.wt, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.wu = getelementptr i8, ptr %i.sl, i64 24
  %.val79.i = load ptr, ptr %i.wu, align 8, !tbaa !280
  %i.wv = getelementptr [8 x i8], ptr %.val79.i, i64 %.0119203.i
  store ptr %.0.i97108.i, ptr %i.wv, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i

bb.ie:                                            ; preds = %bb.ic
  %i.ww = tail call i32 @PyList_Append(ptr noundef nonnull %i.sl, ptr noundef nonnull %.0.i97108.i) #33, !inline_history !749
  %.not66.i = icmp eq i32 %i.ww, 0
  %i.wx = load i32, ptr %.0.i97108.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i = icmp sgt i32 %i.wx, -1            ; 2 uses
  br i1 %.not66.i, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ig, label %Py_DECREF.exit74.i

bb.ig:                                            ; preds = %bb.if
  %i.wy = add nsw i32 %i.wx, -1                   ; 2 uses
  store i32 %i.wy, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.wz = icmp eq i32 %i.wy, 0
  br i1 %i.wz, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ih:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ii, label %Py_DECREF.exit68.i

bb.ii:                                            ; preds = %bb.ih
  %i.xa = add nsw i32 %i.wx, -1                   ; 2 uses
  store i32 %i.xa, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.xb = icmp eq i32 %i.xa, 0
  br i1 %i.xb, label %bb.ij, label %Py_DECREF.exit68.i

bb.ij:                                            ; preds = %bb.ii
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.i) #33, !inline_history !749
  br label %Py_DECREF.exit68.i

Py_DECREF.exit68.i:                               ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.id
  %i.xc = add i64 %.0119203.i, 1
  br label %bb.ik

bb.ik:                                            ; preds = %Py_DECREF.exit68.i, %Py_INCREF.exit.i290
  %.1.i = phi i64 [ 1, %Py_INCREF.exit.i290 ], [ %i.xc, %Py_DECREF.exit68.i ]
  %i.xd = getelementptr i8, ptr %i.sl, i64 16
  store i64 %.1.i, ptr %i.xd, align 8, !tbaa !263
  %i.xe = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.sl) #33, !inline_history !749
  %i.xf = icmp slt i32 %i.xe, 0
  br i1 %i.xf, label %Py_DECREF.exit74.i, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i:                    ; preds = %bb.ig, %bb.hs
  %.0.i97108.sink.i = phi ptr [ %.0.i88104.i, %bb.hs ], [ %.0.i97108.i, %bb.ig ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.sink.i) #33, !inline_history !749
  br label %Py_DECREF.exit74.i

Py_DECREF.exit74.i:                               ; preds = %_PyUnicode_FromASCII.exit.i295, %bb.hk, %Py_DECREF.exit74.sink.split.i, %bb.ik, %bb.ig, %bb.if, %_PyUnicode_FromASCII.exit99.i, %bb.hy, %bb.hs, %bb.hr
  %i.xg = load i32, ptr %i.sl, align 8, !tbaa !237 ; 2 uses
  %.not.i.i288 = icmp sgt i32 %i.xg, -1
  br i1 %.not.i.i288, label %bb.il, label %asciilib_rsplit.exit

bb.il:                                            ; preds = %Py_DECREF.exit74.i
  %i.xh = add nsw i32 %i.xg, -1                   ; 2 uses
  store i32 %i.xh, ptr %i.sl, align 8, !tbaa !237
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %bb.im, label %asciilib_rsplit.exit

bb.im:                                            ; preds = %bb.il
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sl) #33, !inline_history !749
  br label %asciilib_rsplit.exit

bb.in:                                            ; preds = %bb.fr, %bb.fq
  switch i64 %.val99, label %bb.kd [
    i64 0, label %bb.io
    i64 1, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.xj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.xj, ptr noundef nonnull @.str.197) #33, !inline_history !756
  br label %asciilib_rsplit.exit

bb.ip:                                            ; preds = %bb.in
  %i.xk = load i8, ptr %.080, align 1, !tbaa !237
  %i.xl = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.xm = add nsw i64 %i.xl, 1
  %i.xn = tail call ptr @PyList_New(i64 noundef %i.xm) #33, !inline_history !757 ; 12 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %asciilib_rsplit.exit, label %8

8:                                                ; preds = %bb.ip
  %9 = add i64 %.val100, -1                       ; 4 uses
  %10 = icmp sgt i64 %9, -1
  br i1 %10, label %.lr.ph122.i.i, label %.critedge.thread.i.i296

.lr.ph122.i.i:                                    ; preds = %8
  %i.xp = getelementptr i8, ptr %i.xn, i64 24
  %smin.i311 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.xq = sub i64 %.1, %smin.i311                 ; 4 uses
  %exitcond.not.i3121497 = icmp eq i64 %i.xq, 0
  br i1 %exitcond.not.i3121497, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader

bb.iq:                                            ; preds = %.loopexit.i.i319
  %exitcond.not.i312 = icmp eq i64 %i.ze, %i.xq
  br i1 %exitcond.not.i312, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader, !llvm.loop !758

.lr.ph.i.i313.preheader:                          ; preds = %.lr.ph122.i.i, %bb.iq
  %.050120.i.i1499 = phi i64 [ %i.zf, %bb.iq ], [ %9, %.lr.ph122.i.i ] ; 3 uses
  %.0121.i.i1498 = phi i64 [ %i.ze, %bb.iq ], [ 0, %.lr.ph122.i.i ] ; 4 uses
  br label %.lr.ph.i.i313

.lr.ph.i.i313:                                    ; preds = %.lr.ph.i.i313.preheader, %bb.jh
  %.153117.i.i = phi i64 [ %i.zc, %bb.jh ], [ %.050120.i.i1499, %.lr.ph.i.i313.preheader ] ; 7 uses
  %i.xr = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !237
  %i.xt = icmp eq i8 %i.xs, %i.xk
  br i1 %i.xt, label %bb.ir, label %bb.jh

bb.ir:                                            ; preds = %.lr.ph.i.i313
  %i.xu = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.xv = getelementptr i8, ptr %i.xu, i64 1      ; 4 uses
  %i.xw = sub nuw nsw i64 %.050120.i.i1499, %.153117.i.i ; 4 uses
  switch i64 %i.xw, label %bb.is [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i.i
  ]

bb.is:                                            ; preds = %bb.ir
  %i.xx = getelementptr i8, ptr %i.xv, i64 %i.xw  ; 3 uses
  br label %bb.it

bb.it:                                            ; preds = %.thread31.i.i.i.i, %bb.is
  %.019.i.i.i.i = phi ptr [ %i.xv, %bb.is ], [ %i.yf, %.thread31.i.i.i.i ] ; 4 uses
  %i.xy = icmp ult ptr %.019.i.i.i.i, %i.xx
  br i1 %i.xy, label %bb.iu, label %ucs1lib_find_max_char.exit.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.xz = ptrtoint ptr %.019.i.i.i.i to i64
  %i.ya = and i64 %i.xz, 7
  %.not.i.i.i.i328 = icmp eq i64 %i.ya, 0
  br i1 %.not.i.i.i.i328, label %.preheader.i.i.i.i, label %.thread31.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.iu, %bb.iv
  %.017.i.i.i.i = phi ptr [ %i.yb, %bb.iv ], [ %.019.i.i.i.i, %bb.iu ] ; 4 uses
  %i.yb = getelementptr i8, ptr %.017.i.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i.i = icmp ugt ptr %i.yb, %i.xx
  br i1 %.not26.i.i.i.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %.preheader.i.i.i.i
  %i.yc = load i64, ptr %.017.i.i.i.i, align 8, !tbaa !226
  %i.yd = and i64 %i.yc, -9187201950435737472
  %.not27.i.i.i.i = icmp eq i64 %i.yd, 0
  br i1 %.not27.i.i.i.i, label %.preheader.i.i.i.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !0

bb.iw:                                            ; preds = %.preheader.i.i.i.i
  %i.ye = icmp eq ptr %.017.i.i.i.i, %i.xx
  br i1 %i.ye, label %ucs1lib_find_max_char.exit.i.i.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.iw, %bb.iu
  %.2.i.i.i.i = phi ptr [ %.019.i.i.i.i, %bb.iu ], [ %.017.i.i.i.i, %bb.iw ] ; 2 uses
  %i.yf = getelementptr i8, ptr %.2.i.i.i.i, i64 1
  %i.yg = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !237
  %.not28.i.i.i.i = icmp sgt i8 %i.yg, -1
  br i1 %.not28.i.i.i.i, label %bb.it, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i.i:                 ; preds = %.thread31.i.i.i.i, %bb.iw, %bb.it, %bb.iv
  %.5.i.i.i.i = phi i32 [ 255, %bb.iv ], [ 127, %bb.iw ], [ 127, %bb.it ], [ 255, %.thread31.i.i.i.i ]
  %i.yh = tail call ptr @PyUnicode_New(i64 noundef %i.xw, i32 noundef %.5.i.i.i.i), !inline_history !759 ; 5 uses
  %.not.i77.i.i321 = icmp eq ptr %i.yh, null
  br i1 %.not.i77.i.i321, label %Py_DECREF.exit69.i.i302, label %bb.ix

bb.ix:                                            ; preds = %ucs1lib_find_max_char.exit.i.i.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 32
  %.val.i.i.i.i322 = load i32, ptr %i.yi, align 8 ; 2 uses
  %i.yj = and i32 %.val.i.i.i.i322, 32
  %.not.i15.i.i.i = icmp eq i32 %i.yj, 0
  br i1 %.not.i15.i.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.yk = and i32 %.val.i.i.i.i322, 64
  %.not.i.i.i.i.i323 = icmp eq i32 %i.yk, 0
  %.0.v.i.i.i.i.i324 = select i1 %.not.i.i.i.i.i323, i64 56, i64 40
  %.0.i.i.i.i.i325 = getelementptr i8, ptr %i.yh, i64 %.0.v.i.i.i.i.i324
  br label %_PyUnicode_DATA.exit.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %i.yl = getelementptr i8, ptr %i.yh, i64 56
  %.val4.i.i.i.i327 = load ptr, ptr %i.yl, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.iz, %bb.iy
  %.0.i.i.i.i326 = phi ptr [ %.0.i.i.i.i.i325, %bb.iy ], [ %.val4.i.i.i.i327, %bb.iz ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i326, ptr align 1 %i.xv, i64 %i.xw, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.i.i:                     ; preds = %bb.ir
  %i.ym = load i8, ptr %i.xv, align 1, !tbaa !237 ; 2 uses
  %i.yn = zext i8 %i.ym to i64                    ; 2 uses
  %i.yo = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.yn
  %i.yp = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.yn
  %i.yq = getelementptr i8, ptr %i.yp, i64 -8192
  %i.yr = icmp slt i8 %i.ym, 0
  %i.ys = select i1 %i.yr, ptr %i.yq, ptr %i.yo   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_FromUCS1.exit.i.i, %_PyUnicode_DATA.exit.i.i.i, %bb.ir
  %.0.i101.i.i = phi ptr [ %i.ys, %_PyUnicode_FromUCS1.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ir ], [ %i.yh, %_PyUnicode_DATA.exit.i.i.i ] ; 7 uses
  %i.yu = icmp samesign ult i64 %.0121.i.i1498, 12
  br i1 %i.yu, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %.val76.i.i320 = load ptr, ptr %i.xp, align 8, !tbaa !280
  %i.yv = getelementptr [8 x i8], ptr %.val76.i.i320, i64 %.0121.i.i1498
  store ptr %.0.i101.i.i, ptr %i.yv, align 8, !tbaa !227
  br label %.loopexit.i.i319

bb.jb:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %i.yw = tail call i32 @PyList_Append(ptr noundef nonnull %i.xn, ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !757
  %.not61.i.i316 = icmp eq i32 %i.yw, 0
  %i.yx = load i32, ptr %.0.i101.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i318 = icmp sgt i32 %i.yx, -1       ; 2 uses
  br i1 %.not61.i.i316, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jd, label %Py_DECREF.exit69.i.i302

bb.jd:                                            ; preds = %bb.jc
  %i.yy = add nsw i32 %i.yx, -1                   ; 2 uses
  store i32 %i.yy, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.je:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jf, label %.loopexit.i.i319

bb.jf:                                            ; preds = %bb.je
  %i.za = add nsw i32 %i.yx, -1                   ; 2 uses
  store i32 %i.za, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %bb.jg, label %.loopexit.i.i319

bb.jg:                                            ; preds = %bb.jf
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !757
  br label %.loopexit.i.i319

bb.jh:                                            ; preds = %.lr.ph.i.i313
  %i.zc = add nsw i64 %.153117.i.i, -1
  %i.zd = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.zd, label %.lr.ph.i.i313, label %.critedge.i.i314, !llvm.loop !760

.loopexit.i.i319:                                 ; preds = %bb.jg, %bb.jf, %bb.je, %bb.ja
  %i.ze = add nuw i64 %.0121.i.i1498, 1           ; 3 uses
  %i.zf = add nsw i64 %.153117.i.i, -1            ; 3 uses
  %i.zg = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.zg, label %bb.iq, label %.critedge.i.thread.i299, !llvm.loop !758

.critedge.i.i314:                                 ; preds = %bb.iq, %bb.jh, %.lr.ph122.i.i
  %.050120.i.i1392 = phi i64 [ %.050120.i.i1499, %bb.jh ], [ %9, %.lr.ph122.i.i ], [ %i.zf, %bb.iq ] ; 2 uses
  %.0.lcssa.i.i315 = phi i64 [ %.0121.i.i1498, %bb.jh ], [ %i.xq, %.lr.ph122.i.i ], [ %i.xq, %bb.iq ] ; 2 uses
  %i.zh = icmp eq i64 %.0.lcssa.i.i315, 0
  br i1 %i.zh, label %.critedge.thread.i.i296, label %.critedge.i.thread.i299

.critedge.thread.i.i296:                          ; preds = %.critedge.i.i314, %8
  %.050.lcssa154.i.i = phi i64 [ %.050120.i.i1392, %.critedge.i.i314 ], [ %9, %8 ]
  %i.zi = getelementptr i8, ptr %0, i64 8
  %.val.i.i297 = load ptr, ptr %i.zi, align 8, !tbaa !229
  %.not.i82.i298 = icmp eq ptr %.val.i.i297, @PyUnicode_Type
  br i1 %.not.i82.i298, label %bb.ji, label %.critedge.i.thread.i299

bb.ji:                                            ; preds = %.critedge.thread.i.i296
  %i.zj = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.zk = icmp ugt i32 %i.zj, -1073741825
  br i1 %i.zk, label %Py_INCREF.exit.i.i309, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.zl = add nuw i32 %i.zj, 1
  store i32 %i.zl, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i309

Py_INCREF.exit.i.i309:                            ; preds = %bb.jj, %bb.ji
  %11 = getelementptr i8, ptr %i.xn, i64 24
  %.val75.i.i310 = load ptr, ptr %11, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i310, align 8, !tbaa !227
  br label %bb.ka

.critedge.i.thread.i299:                          ; preds = %.loopexit.i.i319, %.critedge.thread.i.i296, %.critedge.i.i314
  %.0.lcssa155.i.i = phi i64 [ 0, %.critedge.thread.i.i296 ], [ %.0.lcssa.i.i315, %.critedge.i.i314 ], [ %i.ze, %.loopexit.i.i319 ] ; 4 uses
  %.050.lcssa153.i.i = phi i64 [ %.050.lcssa154.i.i, %.critedge.thread.i.i296 ], [ %.050120.i.i1392, %.critedge.i.i314 ], [ %i.zf, %.loopexit.i.i319 ] ; 2 uses
  %i.zm = icmp sgt i64 %.050.lcssa153.i.i, -2
  br i1 %i.zm, label %bb.jk, label %bb.ka

bb.jk:                                            ; preds = %.critedge.i.thread.i299
  %i.zn = add i64 %.050.lcssa153.i.i, 1           ; 4 uses
  switch i64 %i.zn, label %bb.jl [
    i64 0, label %_PyUnicode_FromUCS1.exit99.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit99.i.i
  ]

bb.jl:                                            ; preds = %bb.jk
  %i.zo = getelementptr i8, ptr %.0.i271, i64 %i.zn ; 3 uses
  br label %bb.jm

bb.jm:                                            ; preds = %.thread31.i.i92.i.i, %bb.jl
  %.019.i.i79.i.i = phi ptr [ %.0.i271, %bb.jl ], [ %i.zw, %.thread31.i.i92.i.i ] ; 4 uses
  %i.zp = icmp ult ptr %.019.i.i79.i.i, %i.zo
  br i1 %i.zp, label %bb.jn, label %ucs1lib_find_max_char.exit.i80.i.i

bb.jn:                                            ; preds = %bb.jm
  %i.zq = ptrtoint ptr %.019.i.i79.i.i to i64
  %i.zr = and i64 %i.zq, 7
  %.not.i.i91.i.i = icmp eq i64 %i.zr, 0
  br i1 %.not.i.i91.i.i, label %.preheader.i.i95.i.i, label %.thread31.i.i92.i.i

.preheader.i.i95.i.i:                             ; preds = %bb.jn, %bb.jo
  %.017.i.i96.i.i = phi ptr [ %i.zs, %bb.jo ], [ %.019.i.i79.i.i, %bb.jn ] ; 4 uses
  %i.zs = getelementptr i8, ptr %.017.i.i96.i.i, i64 8 ; 2 uses
  %.not26.i.i97.i.i = icmp ugt ptr %i.zs, %i.zo
  br i1 %.not26.i.i97.i.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %.preheader.i.i95.i.i
  %i.zt = load i64, ptr %.017.i.i96.i.i, align 8, !tbaa !226
  %i.zu = and i64 %i.zt, -9187201950435737472
  %.not27.i.i98.i.i = icmp eq i64 %i.zu, 0
  br i1 %.not27.i.i98.i.i, label %.preheader.i.i95.i.i, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !0

bb.jp:                                            ; preds = %.preheader.i.i95.i.i
  %i.zv = icmp eq ptr %.017.i.i96.i.i, %i.zo
  br i1 %i.zv, label %ucs1lib_find_max_char.exit.i80.i.i, label %.thread31.i.i92.i.i

.thread31.i.i92.i.i:                              ; preds = %bb.jp, %bb.jn
  %.2.i.i93.i.i = phi ptr [ %.019.i.i79.i.i, %bb.jn ], [ %.017.i.i96.i.i, %bb.jp ] ; 2 uses
  %i.zw = getelementptr i8, ptr %.2.i.i93.i.i, i64 1
  %i.zx = load i8, ptr %.2.i.i93.i.i, align 1, !tbaa !237
  %.not28.i.i94.i.i = icmp sgt i8 %i.zx, -1
  br i1 %.not28.i.i94.i.i, label %bb.jm, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i80.i.i:               ; preds = %.thread31.i.i92.i.i, %bb.jp, %bb.jm, %bb.jo
  %.5.i.i81.i.i = phi i32 [ 255, %bb.jo ], [ 127, %bb.jp ], [ 127, %bb.jm ], [ 255, %.thread31.i.i92.i.i ]
  %i.zy = tail call ptr @PyUnicode_New(i64 noundef %i.zn, i32 noundef %.5.i.i81.i.i), !inline_history !759 ; 5 uses
  %.not.i82.i.i = icmp eq ptr %i.zy, null
  br i1 %.not.i82.i.i, label %Py_DECREF.exit69.i.i302, label %bb.jq

bb.jq:                                            ; preds = %ucs1lib_find_max_char.exit.i80.i.i
  %i.zz = getelementptr i8, ptr %i.zy, i64 32
  %.val.i.i83.i.i = load i32, ptr %i.zz, align 8  ; 2 uses
  %i.aaa = and i32 %.val.i.i83.i.i, 32
  %.not.i15.i84.i.i = icmp eq i32 %i.aaa, 0
  br i1 %.not.i15.i84.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aab = and i32 %.val.i.i83.i.i, 64
  %.not.i.i.i85.i.i = icmp eq i32 %i.aab, 0
  %.0.v.i.i.i86.i.i = select i1 %.not.i.i.i85.i.i, i64 56, i64 40
  %.0.i.i.i87.i.i = getelementptr i8, ptr %i.zy, i64 %.0.v.i.i.i86.i.i
  br label %_PyUnicode_DATA.exit.i88.i.i

bb.js:                                            ; preds = %bb.jq
  %i.aac = getelementptr i8, ptr %i.zy, i64 56
  %.val4.i.i90.i.i = load ptr, ptr %i.aac, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i88.i.i

_PyUnicode_DATA.exit.i88.i.i:                     ; preds = %bb.js, %bb.jr
  %.0.i.i89.i.i = phi ptr [ %.0.i.i.i87.i.i, %bb.jr ], [ %.val4.i.i90.i.i, %bb.js ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i.i, ptr align 1 %.0.i271, i64 %i.zn, i1 false)
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.i.i:                   ; preds = %bb.jk
  %i.aad = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.aae = zext i8 %i.aad to i64                  ; 2 uses
  %i.aaf = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aae
  %i.aag = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aae
  %i.aah = getelementptr i8, ptr %i.aag, i64 -8192
  %i.aai = icmp slt i8 %i.aad, 0
  %i.aaj = select i1 %i.aai, ptr %i.aah, ptr %i.aaf ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, null
  br i1 %i.aak, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_FromUCS1.exit99.i.i, %_PyUnicode_DATA.exit.i88.i.i, %bb.jk
  %.0.i78105.i.i = phi ptr [ %i.aaj, %_PyUnicode_FromUCS1.exit99.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jk ], [ %i.zy, %_PyUnicode_DATA.exit.i88.i.i ] ; 7 uses
  %i.aal = icmp slt i64 %.0.lcssa155.i.i, 12
  br i1 %i.aal, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %12 = getelementptr i8, ptr %i.xn, i64 24
  %.val74.i.i308 = load ptr, ptr %12, align 8, !tbaa !280
  %i.aam = getelementptr [8 x i8], ptr %.val74.i.i308, i64 %.0.lcssa155.i.i
  store ptr %.0.i78105.i.i, ptr %i.aam, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i307

bb.ju:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aan = tail call i32 @PyList_Append(ptr noundef nonnull %i.xn, ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  %.not60.i.i304 = icmp eq i32 %i.aan, 0
  %i.aao = load i32, ptr %.0.i78105.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i305 = icmp sgt i32 %i.aao, -1      ; 2 uses
  br i1 %.not60.i.i304, label %bb.jx, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jw, label %Py_DECREF.exit69.i.i302

bb.jw:                                            ; preds = %bb.jv
  %i.aap = add nsw i32 %i.aao, -1                 ; 2 uses
  store i32 %i.aap, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aaq = icmp eq i32 %i.aap, 0
  br i1 %i.aaq, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.jx:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jy, label %Py_DECREF.exit63.i.i307

bb.jy:                                            ; preds = %bb.jx
  %i.aar = add nsw i32 %i.aao, -1                 ; 2 uses
  store i32 %i.aar, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.jz, label %Py_DECREF.exit63.i.i307

bb.jz:                                            ; preds = %bb.jy
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit63.i.i307

Py_DECREF.exit63.i.i307:                          ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt
  %i.aat = add i64 %.0.lcssa155.i.i, 1
  br label %bb.ka

bb.ka:                                            ; preds = %Py_DECREF.exit63.i.i307, %.critedge.i.thread.i299, %Py_INCREF.exit.i.i309
  %.2.i.i300 = phi i64 [ 1, %Py_INCREF.exit.i.i309 ], [ %i.aat, %Py_DECREF.exit63.i.i307 ], [ %.0.lcssa155.i.i, %.critedge.i.thread.i299 ]
  %i.aau = getelementptr i8, ptr %i.xn, i64 16
  store i64 %.2.i.i300, ptr %i.aau, align 8, !tbaa !263
  %i.aav = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.xn) #33, !inline_history !757
  %i.aaw = icmp slt i32 %i.aav, 0
  br i1 %i.aaw, label %Py_DECREF.exit69.i.i302, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i306:               ; preds = %bb.jw, %bb.jd
  %.0.i78105.sink.i.i = phi ptr [ %.0.i101.i.i, %bb.jd ], [ %.0.i78105.i.i, %bb.jw ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.sink.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit69.i.i302

Py_DECREF.exit69.i.i302:                          ; preds = %_PyUnicode_FromUCS1.exit.i.i, %ucs1lib_find_max_char.exit.i.i.i, %Py_DECREF.exit69.sink.split.i.i306, %bb.ka, %bb.jw, %bb.jv, %_PyUnicode_FromUCS1.exit99.i.i, %ucs1lib_find_max_char.exit.i80.i.i, %bb.jd, %bb.jc
  %i.aax = load i32, ptr %i.xn, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i303 = icmp sgt i32 %i.aax, -1
  br i1 %.not.i.i.i303, label %bb.kb, label %asciilib_rsplit.exit

bb.kb:                                            ; preds = %Py_DECREF.exit69.i.i302
  %i.aay = add nsw i32 %i.aax, -1                 ; 2 uses
  store i32 %i.aay, ptr %i.xn, align 8, !tbaa !237
  %i.aaz = icmp eq i32 %i.aay, 0
  br i1 %i.aaz, label %bb.kc, label %asciilib_rsplit.exit

bb.kc:                                            ; preds = %bb.kb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.xn) #33, !inline_history !757
  br label %asciilib_rsplit.exit

bb.kd:                                            ; preds = %bb.in
  %i.aba = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.abb = add nsw i64 %i.aba, 1
  %i.abc = tail call ptr @PyList_New(i64 noundef %i.abb) #33, !inline_history !756 ; 12 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %asciilib_rsplit.exit, label %.preheader.i329

.preheader.i329:                                  ; preds = %bb.kd
  %i.abe = icmp slt i64 %.1, 1
  br i1 %i.abe, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %.preheader.i329
  %i.abf = icmp slt i64 %.val99, 2
  %i.abg = add i64 %.val99, -1                    ; 6 uses
  %i.abh = getelementptr i8, ptr %i.abc, i64 24
  br i1 %i.abf, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330.split.preheader

.lr.ph.i330.split.preheader:                      ; preds = %.lr.ph.i330
  %xtraiter1737 = and i64 %i.abg, 1
  %lcmp.mod1738.not = icmp eq i64 %xtraiter1737, 0
  %i.abi = getelementptr i8, ptr %.080, i64 %i.abg
  %i.abj = add nsw i64 %.val99, -2                ; 2 uses
  %i.abk = icmp eq i64 %.val99, 2
  br label %.lr.ph.i330.split

.lr.ph.i330.split:                                ; preds = %.lr.ph.i330.split.preheader, %Py_DECREF.exit72.i360
  %.in.i331 = phi i64 [ %i.abv, %Py_DECREF.exit72.i360 ], [ %.1, %.lr.ph.i330.split.preheader ] ; 2 uses
  %.0156.i = phi i64 [ %i.aew, %Py_DECREF.exit72.i360 ], [ 0, %.lr.ph.i330.split.preheader ] ; 5 uses
  %.057155.i = phi i64 [ %.14865.us.i.i.i337, %Py_DECREF.exit72.i360 ], [ %.val100, %.lr.ph.i330.split.preheader ] ; 5 uses
  %i.abl = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.abm = and i8 %i.abl, 63
  %i.abn = zext nneg i8 %i.abm to i64
  %i.abo = shl nuw i64 1, %i.abn                  ; 2 uses
  br i1 %lcmp.mod1738.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %.lr.ph.i330.split
  %i.abp = load i8, ptr %i.abi, align 1, !tbaa !237 ; 2 uses
  %i.abq = and i8 %i.abp, 63
  %i.abr = zext nneg i8 %i.abq to i64
  %i.abs = shl nuw i64 1, %i.abr
  %i.abt = or i64 %i.abs, %i.abo                  ; 2 uses
  %i.abu = icmp eq i8 %i.abp, %i.abl
  %spec.select.i76.i.i.prol = select i1 %i.abu, i64 %i.abj, i64 %i.abg ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %.lr.ph.i330.split
  %.060.i.i.i332.unr = phi i64 [ %i.abg, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i333.unr = phi i64 [ %i.abg, %.lr.ph.i330.split ], [ %i.abj, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i334.unr = phi i64 [ %i.abo, %.lr.ph.i330.split ], [ %i.abt, %.lr.ph.i75.i.i.prol ]
  %.lcssa1595.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %i.abt, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  br i1 %i.abk, label %.lr.ph66.split.us.i.preheader.i.i335, label %.lr.ph.i75.i.i

.lr.ph66.split.us.i.preheader.i.i335:             ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa1595 = phi i64 [ %.lcssa1595.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.adj, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.abv = add nsw i64 %.in.i331, -1
  %i.abw = sub nsw i64 %.057155.i, %.val99
  br label %.lr.ph66.split.us.i.i.i336

.lr.ph66.split.us.i.i.i336:                       ; preds = %bb.kj, %.lr.ph66.split.us.i.preheader.i.i335
  %.14865.us.i.i.i337 = phi i64 [ %i.acu, %bb.kj ], [ %i.abw, %.lr.ph66.split.us.i.preheader.i.i335 ] ; 9 uses
  %i.abx = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i337 ; 4 uses
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !237
  %i.abz = icmp eq i8 %i.aby, %i.abl
  br i1 %i.abz, label %.preheader.us.i78.i.i, label %bb.ke

bb.ke:                                            ; preds = %.lr.ph66.split.us.i.i.i336
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i337, 0
  br i1 %.not.us.i77.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.aca = getelementptr i8, ptr %i.abx, i64 -1
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !237
  %i.acc = and i8 %i.acb, 63
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = shl nuw i64 1, %i.acd
  %i.acf = and i64 %i.ace, %.lcssa1595
  %.not51.us.i.i.i338 = icmp eq i64 %i.acf, 0
  %i.acg = select i1 %.not51.us.i.i.i338, i64 %.val99, i64 0
  br label %bb.kj

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i336, %bb.kg
  %.04662.us.i.i.i351 = phi i64 [ %i.acl, %bb.kg ], [ %i.abg, %.lr.ph66.split.us.i.i.i336 ] ; 4 uses
  %i.ach = getelementptr i8, ptr %i.abx, i64 %.04662.us.i.i.i351
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !237
  %i.acj = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i351
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !237
  %.not52.us.i.i.i352 = icmp eq i8 %i.aci, %i.ack
  br i1 %.not52.us.i.i.i352, label %bb.kg, label %.thread.us.i.i.i

bb.kg:                                            ; preds = %.preheader.us.i78.i.i
  %i.acl = add nsw i64 %.04662.us.i.i.i351, -1
  %i.acm = icmp sgt i64 %.04662.us.i.i.i351, 1
  br i1 %i.acm, label %.preheader.us.i78.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !28

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i353 = icmp eq i64 %.14865.us.i.i.i337, 0
  br i1 %.not53.us.i.i.i353, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %.thread.us.i.i.i
  %i.acn = getelementptr i8, ptr %i.abx, i64 -1
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !237
  %i.acp = and i8 %i.aco, 63
  %i.acq = zext nneg i8 %i.acp to i64
  %i.acr = shl nuw i64 1, %i.acq
  %i.acs = and i64 %i.acr, %.lcssa1595
  %.not54.us.i.i.i354 = icmp eq i64 %i.acs, 0
  br i1 %.not54.us.i.i.i354, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread.us.i.i.i
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %bb.kf
  %spec.select.lcssa.sink.i.i.i339 = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.ki ], [ %i.acg, %bb.kf ], [ %.val99, %bb.kh ]
  %i.act = sub nsw i64 %.14865.us.i.i.i337, %spec.select.lcssa.sink.i.i.i339 ; 2 uses
  %i.acu = add nsw i64 %i.act, -1
  %i.acv = icmp sgt i64 %i.act, 0
  br i1 %i.acv, label %.lr.ph66.split.us.i.i.i336, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i332 = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i332.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i333 = phi i64 [ %i.adl, %.lr.ph.i75.i.i ], [ %.04759.i.i.i333.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i334 = phi i64 [ %i.adj, %.lr.ph.i75.i.i ], [ %.04958.i.i.i334.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.acw = getelementptr i8, ptr %.080, i64 %.04759.i.i.i333
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !237 ; 2 uses
  %i.acy = and i8 %i.acx, 63
  %i.acz = zext nneg i8 %i.acy to i64
  %i.ada = shl nuw i64 1, %i.acz
  %i.adb = or i64 %i.ada, %.04958.i.i.i334
  %i.adc = icmp eq i8 %i.acx, %i.abl
  %i.add = add nsw i64 %.04759.i.i.i333, -1       ; 2 uses
  %spec.select.i76.i.i = select i1 %i.adc, i64 %i.add, i64 %.060.i.i.i332
  %i.ade = getelementptr i8, ptr %.080, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !237 ; 2 uses
end_hunk_1
begin_hunk_2_@rsplit:bb.a
  br i1 %i.aez, label %ucs1lib_fastsearch.exit.thread.thread.i, label %ucs1lib_fastsearch.exit.thread.thread238.i

ucs1lib_fastsearch.exit.thread.thread.i:          ; preds = %.lr.ph.i330, %ucs1lib_fastsearch.exit.thread.i, %.preheader.i329
  %.057141235.i = phi i64 [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i329 ], [ %.val100, %.lr.ph.i330 ]
  %i.afa = getelementptr i8, ptr %0, i64 8
  %.val.i348 = load ptr, ptr %i.afa, align 8, !tbaa !229
  %.not120.i = icmp eq ptr %.val.i348, @PyUnicode_Type
  br i1 %.not120.i, label %bb.la, label %ucs1lib_fastsearch.exit.thread.thread238.i

bb.la:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread.i
  %i.afb = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.afc = icmp ugt i32 %i.afb, -1073741825
  br i1 %i.afc, label %Py_INCREF.exit.i349, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.afd = add nuw i32 %i.afb, 1
  store i32 %i.afd, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i349

Py_INCREF.exit.i349:                              ; preds = %bb.lb, %bb.la
  %i.afe = getelementptr i8, ptr %i.abc, i64 24
  %.val80.i350 = load ptr, ptr %i.afe, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i350, align 8, !tbaa !227
  br label %bb.lr

ucs1lib_fastsearch.exit.thread.thread238.i:       ; preds = %Py_DECREF.exit72.i360, %ucs1lib_fastsearch.exit.thread.thread.i, %ucs1lib_fastsearch.exit.thread.i
  %.0136236.i = phi i64 [ 0, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.0156.i, %ucs1lib_fastsearch.exit.thread.i ], [ %i.aew, %Py_DECREF.exit72.i360 ] ; 3 uses
  %.057141234.i = phi i64 [ %.057141235.i, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i337, %Py_DECREF.exit72.i360 ] ; 4 uses
  switch i64 %.057141234.i, label %bb.lc [
    i64 0, label %_PyUnicode_FromUCS1.exit110.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit110.i
  ]

bb.lc:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread238.i
  %i.aff = getelementptr i8, ptr %.0.i271, i64 %.057141234.i ; 3 uses
  br label %bb.ld

bb.ld:                                            ; preds = %.thread31.i.i103.i, %bb.lc
  %.019.i.i90.i = phi ptr [ %.0.i271, %bb.lc ], [ %i.afn, %.thread31.i.i103.i ] ; 4 uses
  %i.afg = icmp ult ptr %.019.i.i90.i, %i.aff
  br i1 %i.afg, label %bb.le, label %ucs1lib_find_max_char.exit.i91.i

bb.le:                                            ; preds = %bb.ld
  %i.afh = ptrtoint ptr %.019.i.i90.i to i64
  %i.afi = and i64 %i.afh, 7
  %.not.i.i102.i = icmp eq i64 %i.afi, 0
  br i1 %.not.i.i102.i, label %.preheader.i.i106.i, label %.thread31.i.i103.i

.preheader.i.i106.i:                              ; preds = %bb.le, %bb.lf
  %.017.i.i107.i = phi ptr [ %i.afj, %bb.lf ], [ %.019.i.i90.i, %bb.le ] ; 4 uses
  %i.afj = getelementptr i8, ptr %.017.i.i107.i, i64 8 ; 2 uses
  %.not26.i.i108.i = icmp ugt ptr %i.afj, %i.aff
  br i1 %.not26.i.i108.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.preheader.i.i106.i
  %i.afk = load i64, ptr %.017.i.i107.i, align 8, !tbaa !226
  %i.afl = and i64 %i.afk, -9187201950435737472
  %.not27.i.i109.i = icmp eq i64 %i.afl, 0
  br i1 %.not27.i.i109.i, label %.preheader.i.i106.i, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !0

bb.lg:                                            ; preds = %.preheader.i.i106.i
  %i.afm = icmp eq ptr %.017.i.i107.i, %i.aff
  br i1 %i.afm, label %ucs1lib_find_max_char.exit.i91.i, label %.thread31.i.i103.i

.thread31.i.i103.i:                               ; preds = %bb.lg, %bb.le
  %.2.i.i104.i = phi ptr [ %.019.i.i90.i, %bb.le ], [ %.017.i.i107.i, %bb.lg ] ; 2 uses
  %i.afn = getelementptr i8, ptr %.2.i.i104.i, i64 1
  %i.afo = load i8, ptr %.2.i.i104.i, align 1, !tbaa !237
  %.not28.i.i105.i = icmp sgt i8 %i.afo, -1
  br i1 %.not28.i.i105.i, label %bb.ld, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i91.i:                 ; preds = %.thread31.i.i103.i, %bb.lg, %bb.ld, %bb.lf
  %.5.i.i92.i = phi i32 [ 255, %bb.lf ], [ 127, %bb.ld ], [ 127, %bb.lg ], [ 255, %.thread31.i.i103.i ]
  %i.afp = tail call ptr @PyUnicode_New(i64 noundef %.057141234.i, i32 noundef %.5.i.i92.i), !inline_history !761 ; 5 uses
  %.not.i93.i = icmp eq ptr %i.afp, null
  br i1 %.not.i93.i, label %Py_DECREF.exit74.i342, label %bb.lh

bb.lh:                                            ; preds = %ucs1lib_find_max_char.exit.i91.i
  %i.afq = getelementptr i8, ptr %i.afp, i64 32
  %.val.i.i94.i = load i32, ptr %i.afq, align 8   ; 2 uses
  %i.afr = and i32 %.val.i.i94.i, 32
  %.not.i15.i95.i = icmp eq i32 %i.afr, 0
  br i1 %.not.i15.i95.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.afs = and i32 %.val.i.i94.i, 64
  %.not.i.i.i96.i = icmp eq i32 %i.afs, 0
  %.0.v.i.i.i97.i = select i1 %.not.i.i.i96.i, i64 56, i64 40
  %.0.i.i.i98.i = getelementptr i8, ptr %i.afp, i64 %.0.v.i.i.i97.i
  br label %_PyUnicode_DATA.exit.i99.i

bb.lj:                                            ; preds = %bb.lh
  %i.aft = getelementptr i8, ptr %i.afp, i64 56
  %.val4.i.i101.i = load ptr, ptr %i.aft, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i99.i

_PyUnicode_DATA.exit.i99.i:                       ; preds = %bb.lj, %bb.li
  %.0.i.i100.i = phi ptr [ %.0.i.i.i98.i, %bb.li ], [ %.val4.i.i101.i, %bb.lj ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i100.i, ptr align 1 %.0.i271, i64 %.057141234.i, i1 false)
  br label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.i:                    ; preds = %ucs1lib_fastsearch.exit.thread.thread238.i
  %i.afu = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.afv = zext i8 %i.afu to i64                  ; 2 uses
  %i.afw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.afv
  %i.afx = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.afv
  %i.afy = getelementptr i8, ptr %i.afx, i64 -8192
  %i.afz = icmp slt i8 %i.afu, 0
  %i.aga = select i1 %i.afz, ptr %i.afy, ptr %i.afw ; 2 uses
  %i.agb = icmp eq ptr %i.aga, null
  br i1 %i.agb, label %Py_DECREF.exit74.i342, label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.thread.i:             ; preds = %_PyUnicode_FromUCS1.exit110.i, %_PyUnicode_DATA.exit.i99.i, %ucs1lib_fastsearch.exit.thread.thread238.i
  %.0.i89117.i = phi ptr [ %i.aga, %_PyUnicode_FromUCS1.exit110.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %ucs1lib_fastsearch.exit.thread.thread238.i ], [ %i.afp, %_PyUnicode_DATA.exit.i99.i ] ; 7 uses
  %i.agc = icmp slt i64 %.0136236.i, 12
  br i1 %i.agc, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agd = getelementptr i8, ptr %i.abc, i64 24
  %.val79.i347 = load ptr, ptr %i.agd, align 8, !tbaa !280
  %i.age = getelementptr [8 x i8], ptr %.val79.i347, i64 %.0136236.i
  store ptr %.0.i89117.i, ptr %i.age, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i345

bb.ll:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agf = tail call i32 @PyList_Append(ptr noundef nonnull %i.abc, ptr noundef nonnull %.0.i89117.i) #33, !inline_history !756
  %.not66.i340 = icmp eq i32 %i.agf, 0
  %i.agg = load i32, ptr %.0.i89117.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i341 = icmp sgt i32 %i.agg, -1        ; 2 uses
  br i1 %.not66.i340, label %bb.lo, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  br i1 %.not.i67.i341, label %bb.ln, label %Py_DECREF.exit74.i342

bb.ln:                                            ; preds = %bb.lm
  %i.agh = add nsw i32 %i.agg, -1                 ; 2 uses
  store i32 %i.agh, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %Py_DECREF.exit74.sink.split.i344, label %Py_DECREF.exit74.i342

bb.lo:                                            ; preds = %bb.ll
  br i1 %.not.i67.i341, label %bb.lp, label %Py_DECREF.exit68.i345

bb.lp:                                            ; preds = %bb.lo
  %i.agj = add nsw i32 %i.agg, -1                 ; 2 uses
  store i32 %i.agj, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %bb.lq, label %Py_DECREF.exit68.i345

bb.lq:                                            ; preds = %bb.lp
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.i) #33, !inline_history !756
  br label %Py_DECREF.exit68.i345

Py_DECREF.exit68.i345:                            ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lk
  %i.agl = add i64 %.0136236.i, 1
  br label %bb.lr

bb.lr:                                            ; preds = %Py_DECREF.exit68.i345, %Py_INCREF.exit.i349
  %.1.i346 = phi i64 [ 1, %Py_INCREF.exit.i349 ], [ %i.agl, %Py_DECREF.exit68.i345 ]
  %i.agm = getelementptr i8, ptr %i.abc, i64 16
  store i64 %.1.i346, ptr %i.agm, align 8, !tbaa !263
  %i.agn = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.abc) #33, !inline_history !756
  %i.ago = icmp slt i32 %i.agn, 0
  br i1 %i.ago, label %Py_DECREF.exit74.i342, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i344:                 ; preds = %bb.ln, %bb.kw
  %.0.i89117.sink.i = phi ptr [ %.0.i83113.i, %bb.kw ], [ %.0.i89117.i, %bb.ln ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.sink.i) #33, !inline_history !756
  br label %Py_DECREF.exit74.i342

Py_DECREF.exit74.i342:                            ; preds = %_PyUnicode_FromUCS1.exit.i355, %ucs1lib_find_max_char.exit.i.i364, %Py_DECREF.exit74.sink.split.i344, %bb.lr, %bb.ln, %bb.lm, %_PyUnicode_FromUCS1.exit110.i, %ucs1lib_find_max_char.exit.i91.i, %bb.kw, %bb.kv
  %i.agp = load i32, ptr %i.abc, align 8, !tbaa !237 ; 2 uses
  %.not.i.i343 = icmp sgt i32 %i.agp, -1
  br i1 %.not.i.i343, label %bb.ls, label %asciilib_rsplit.exit

bb.ls:                                            ; preds = %Py_DECREF.exit74.i342
  %i.agq = add nsw i32 %i.agp, -1                 ; 2 uses
  store i32 %i.agq, ptr %i.abc, align 8, !tbaa !237
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.lt, label %asciilib_rsplit.exit

bb.lt:                                            ; preds = %bb.ls
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abc) #33, !inline_history !756
  br label %asciilib_rsplit.exit

bb.lu:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.mw [
    i64 0, label %bb.lv
    i64 1, label %bb.lw
  ]

bb.lv:                                            ; preds = %bb.lu
  %i.ags = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.ags, ptr noundef nonnull @.str.197) #33, !inline_history !763
  br label %asciilib_rsplit.exit

bb.lw:                                            ; preds = %bb.lu
  %i.agt = load i16, ptr %.080, align 2, !tbaa !240
  %i.agu = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.agv = add nsw i64 %i.agu, 1
  %i.agw = tail call ptr @PyList_New(i64 noundef %i.agv) #33, !inline_history !764 ; 12 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %asciilib_rsplit.exit, label %13

13:                                               ; preds = %bb.lw
  %14 = add i64 %.val100, -1                      ; 4 uses
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %.lr.ph89.i.i, label %.critedge.thread.i.i382

.lr.ph89.i.i:                                     ; preds = %13
  %i.agy = getelementptr i8, ptr %i.agw, i64 24
  %smin.i397 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.agz = sub i64 %.1, %smin.i397                ; 4 uses
  %exitcond.not.i3981489 = icmp eq i64 %i.agz, 0
  br i1 %exitcond.not.i3981489, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader

bb.lx:                                            ; preds = %.loopexit.i.i405
  %exitcond.not.i398 = icmp eq i64 %i.ahs, %i.agz
  br i1 %exitcond.not.i398, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader, !llvm.loop !765

.lr.ph.i.i399.preheader:                          ; preds = %.lr.ph89.i.i, %bb.lx
  %.05087.i.i1491 = phi i64 [ %i.aht, %bb.lx ], [ %14, %.lr.ph89.i.i ] ; 3 uses
  %.088.i.i1490 = phi i64 [ %i.ahs, %bb.lx ], [ 0, %.lr.ph89.i.i ] ; 4 uses
  br label %.lr.ph.i.i399

.lr.ph.i.i399:                                    ; preds = %.lr.ph.i.i399.preheader, %bb.mh
  %.15384.i.i = phi i64 [ %i.ahq, %bb.mh ], [ %.05087.i.i1491, %.lr.ph.i.i399.preheader ] ; 7 uses
  %i.aha = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !240
  %i.ahc = icmp eq i16 %i.ahb, %i.agt
  br i1 %i.ahc, label %bb.ly, label %bb.mh

bb.ly:                                            ; preds = %.lr.ph.i.i399
  %i.ahd = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 2
  %i.ahf = sub nuw nsw i64 %.05087.i.i1491, %.15384.i.i
  %i.ahg = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.ahe, i64 noundef %i.ahf), !inline_history !764 ; 8 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %Py_DECREF.exit69.i.i388, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.ahi = icmp samesign ult i64 %.088.i.i1490, 12
  br i1 %i.ahi, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %.val76.i.i406 = load ptr, ptr %i.agy, align 8, !tbaa !280
  %i.ahj = getelementptr [8 x i8], ptr %.val76.i.i406, i64 %.088.i.i1490
  store ptr %i.ahg, ptr %i.ahj, align 8, !tbaa !227
  br label %.loopexit.i.i405

bb.mb:                                            ; preds = %bb.lz
  %i.ahk = tail call i32 @PyList_Append(ptr noundef nonnull %i.agw, ptr noundef nonnull %i.ahg) #33, !inline_history !764
  %.not61.i.i402 = icmp eq i32 %i.ahk, 0
  %i.ahl = load i32, ptr %i.ahg, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i404 = icmp sgt i32 %i.ahl, -1      ; 2 uses
  br i1 %.not61.i.i402, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.md, label %Py_DECREF.exit69.i.i388

bb.md:                                            ; preds = %bb.mc
  %i.ahm = add nsw i32 %i.ahl, -1                 ; 2 uses
  store i32 %i.ahm, ptr %i.ahg, align 8, !tbaa !237
  %i.ahn = icmp eq i32 %i.ahm, 0
  br i1 %i.ahn, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.me:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.mf, label %.loopexit.i.i405

bb.mf:                                            ; preds = %bb.me
  %i.aho = add nsw i32 %i.ahl, -1                 ; 2 uses
  store i32 %i.aho, ptr %i.ahg, align 8, !tbaa !237
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %bb.mg, label %.loopexit.i.i405

bb.mg:                                            ; preds = %bb.mf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ahg) #33, !inline_history !764
  br label %.loopexit.i.i405

bb.mh:                                            ; preds = %.lr.ph.i.i399
  %i.ahq = add nsw i64 %.15384.i.i, -1
  %i.ahr = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.ahr, label %.lr.ph.i.i399, label %.critedge.i.i400, !llvm.loop !766

.loopexit.i.i405:                                 ; preds = %bb.mg, %bb.mf, %bb.me, %bb.ma
  %i.ahs = add nuw i64 %.088.i.i1490, 1           ; 3 uses
  %i.aht = add nsw i64 %.15384.i.i, -1            ; 3 uses
  %i.ahu = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.ahu, label %bb.lx, label %.critedge.i.thread.i385, !llvm.loop !765

.critedge.i.i400:                                 ; preds = %bb.lx, %bb.mh, %.lr.ph89.i.i
  %.05087.i.i1448 = phi i64 [ %.05087.i.i1491, %bb.mh ], [ %14, %.lr.ph89.i.i ], [ %i.aht, %bb.lx ] ; 2 uses
  %.0.lcssa.i.i401 = phi i64 [ %.088.i.i1490, %bb.mh ], [ %i.agz, %.lr.ph89.i.i ], [ %i.agz, %bb.lx ] ; 2 uses
  %i.ahv = icmp eq i64 %.0.lcssa.i.i401, 0
  br i1 %i.ahv, label %.critedge.thread.i.i382, label %.critedge.i.thread.i385

.critedge.thread.i.i382:                          ; preds = %.critedge.i.i400, %13
  %.050.lcssa112.i.i = phi i64 [ %.05087.i.i1448, %.critedge.i.i400 ], [ %14, %13 ]
  %i.ahw = getelementptr i8, ptr %0, i64 8
  %.val.i.i383 = load ptr, ptr %i.ahw, align 8, !tbaa !229
  %.not.i82.i384 = icmp eq ptr %.val.i.i383, @PyUnicode_Type
  br i1 %.not.i82.i384, label %bb.mi, label %.critedge.i.thread.i385

bb.mi:                                            ; preds = %.critedge.thread.i.i382
  %i.ahx = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.ahy = icmp ugt i32 %i.ahx, -1073741825
  br i1 %i.ahy, label %Py_INCREF.exit.i.i395, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.ahz = add nuw i32 %i.ahx, 1
  store i32 %i.ahz, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i395

Py_INCREF.exit.i.i395:                            ; preds = %bb.mj, %bb.mi
  %16 = getelementptr i8, ptr %i.agw, i64 24
  %.val75.i.i396 = load ptr, ptr %16, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i396, align 8, !tbaa !227
  br label %bb.mt

.critedge.i.thread.i385:                          ; preds = %.loopexit.i.i405, %.critedge.thread.i.i382, %.critedge.i.i400
  %.0.lcssa113.i.i = phi i64 [ 0, %.critedge.thread.i.i382 ], [ %.0.lcssa.i.i401, %.critedge.i.i400 ], [ %i.ahs, %.loopexit.i.i405 ] ; 4 uses
  %.050.lcssa111.i.i = phi i64 [ %.050.lcssa112.i.i, %.critedge.thread.i.i382 ], [ %.05087.i.i1448, %.critedge.i.i400 ], [ %i.aht, %.loopexit.i.i405 ] ; 2 uses
  %i.aia = icmp sgt i64 %.050.lcssa111.i.i, -2
  br i1 %i.aia, label %bb.mk, label %bb.mt

bb.mk:                                            ; preds = %.critedge.i.thread.i385
  %i.aib = add i64 %.050.lcssa111.i.i, 1
  %i.aic = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %.0.i271, i64 noundef %i.aib), !inline_history !764 ; 8 uses
  %i.aid = icmp eq ptr %i.aic, null
  br i1 %i.aid, label %Py_DECREF.exit69.i.i388, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.aie = icmp slt i64 %.0.lcssa113.i.i, 12
  br i1 %i.aie, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %17 = getelementptr i8, ptr %i.agw, i64 24
  %.val74.i.i394 = load ptr, ptr %17, align 8, !tbaa !280
  %i.aif = getelementptr [8 x i8], ptr %.val74.i.i394, i64 %.0.lcssa113.i.i
  store ptr %i.aic, ptr %i.aif, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i393

bb.mn:                                            ; preds = %bb.ml
  %i.aig = tail call i32 @PyList_Append(ptr noundef nonnull %i.agw, ptr noundef nonnull %i.aic) #33, !inline_history !764
  %.not60.i.i390 = icmp eq i32 %i.aig, 0
  %i.aih = load i32, ptr %i.aic, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i391 = icmp sgt i32 %i.aih, -1      ; 2 uses
  br i1 %.not60.i.i390, label %bb.mq, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mp, label %Py_DECREF.exit69.i.i388

bb.mp:                                            ; preds = %bb.mo
  %i.aii = add nsw i32 %i.aih, -1                 ; 2 uses
  store i32 %i.aii, ptr %i.aic, align 8, !tbaa !237
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.mq:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mr, label %Py_DECREF.exit63.i.i393

bb.mr:                                            ; preds = %bb.mq
  %i.aik = add nsw i32 %i.aih, -1                 ; 2 uses
  store i32 %i.aik, ptr %i.aic, align 8, !tbaa !237
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %bb.ms, label %Py_DECREF.exit63.i.i393

bb.ms:                                            ; preds = %bb.mr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aic) #33, !inline_history !764
  br label %Py_DECREF.exit63.i.i393

Py_DECREF.exit63.i.i393:                          ; preds = %bb.ms, %bb.mr, %bb.mq, %bb.mm
  %i.aim = add i64 %.0.lcssa113.i.i, 1
  br label %bb.mt

bb.mt:                                            ; preds = %Py_DECREF.exit63.i.i393, %.critedge.i.thread.i385, %Py_INCREF.exit.i.i395
  %.2.i.i386 = phi i64 [ 1, %Py_INCREF.exit.i.i395 ], [ %i.aim, %Py_DECREF.exit63.i.i393 ], [ %.0.lcssa113.i.i, %.critedge.i.thread.i385 ]
  %i.ain = getelementptr i8, ptr %i.agw, i64 16
  store i64 %.2.i.i386, ptr %i.ain, align 8, !tbaa !263
  %i.aio = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.agw) #33, !inline_history !764
  %i.aip = icmp slt i32 %i.aio, 0
  br i1 %i.aip, label %Py_DECREF.exit69.i.i388, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i392:               ; preds = %bb.mp, %bb.md
  %.sink.i.i = phi ptr [ %i.ahg, %bb.md ], [ %i.aic, %bb.mp ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i) #33, !inline_history !764
  br label %Py_DECREF.exit69.i.i388

Py_DECREF.exit69.i.i388:                          ; preds = %bb.ly, %Py_DECREF.exit69.sink.split.i.i392, %bb.mt, %bb.mp, %bb.mo, %bb.mk, %bb.md, %bb.mc
  %i.aiq = load i32, ptr %i.agw, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i389 = icmp sgt i32 %i.aiq, -1
  br i1 %.not.i.i.i389, label %bb.mu, label %asciilib_rsplit.exit

bb.mu:                                            ; preds = %Py_DECREF.exit69.i.i388
  %i.air = add nsw i32 %i.aiq, -1                 ; 2 uses
  store i32 %i.air, ptr %i.agw, align 8, !tbaa !237
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.mv, label %asciilib_rsplit.exit

bb.mv:                                            ; preds = %bb.mu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.agw) #33, !inline_history !764
  br label %asciilib_rsplit.exit

bb.mw:                                            ; preds = %bb.lu
  %i.ait = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.aiu = add nsw i64 %i.ait, 1
  %i.aiv = tail call ptr @PyList_New(i64 noundef %i.aiu) #33, !inline_history !763 ; 12 uses
  %i.aiw = icmp eq ptr %i.aiv, null
  br i1 %i.aiw, label %asciilib_rsplit.exit, label %.preheader.i407

.preheader.i407:                                  ; preds = %bb.mw
  %i.aix = icmp sgt i64 %.1, 0
  br i1 %i.aix, label %.lr.ph.i416, label %._crit_edge.thread.i

.lr.ph.i416:                                      ; preds = %.preheader.i407
  %i.aiy = getelementptr i8, ptr %i.aiv, i64 24
  br label %bb.mx

bb.mx:                                            ; preds = %Py_DECREF.exit72.i422, %.lr.ph.i416
  %.0103.i = phi i64 [ 0, %.lr.ph.i416 ], [ %i.ajo, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057102.i = phi i64 [ %.val100, %.lr.ph.i416 ], [ %i.aiz, %Py_DECREF.exit72.i422 ] ; 4 uses
  %i.aiz = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !763 ; 4 uses
  %i.aja = icmp slt i64 %i.aiz, 0
  br i1 %i.aja, label %._crit_edge.i426, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ajb = add i64 %i.aiz, %.val99                ; 2 uses
  %i.ajc = getelementptr [2 x i8], ptr %.0.i271, i64 %i.ajb
  %i.ajd = sub i64 %.057102.i, %i.ajb
  %i.aje = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %i.ajc, i64 noundef %i.ajd), !inline_history !763 ; 8 uses
  %i.ajf = icmp eq ptr %i.aje, null
  br i1 %i.ajf, label %Py_DECREF.exit74.i412, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.ajg = icmp samesign ult i64 %.0103.i, 12
  br i1 %i.ajg, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %.val81.i425 = load ptr, ptr %i.aiy, align 8, !tbaa !280
  %i.ajh = getelementptr [8 x i8], ptr %.val81.i425, i64 %.0103.i
  store ptr %i.aje, ptr %i.ajh, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i422

bb.nb:                                            ; preds = %bb.mz
  %i.aji = tail call i32 @PyList_Append(ptr noundef nonnull %i.aiv, ptr noundef nonnull %i.aje) #33, !inline_history !763
  %.not.i417 = icmp eq i32 %i.aji, 0
  %i.ajj = load i32, ptr %i.aje, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i421 = icmp sgt i32 %i.ajj, -1        ; 2 uses
  br i1 %.not.i417, label %bb.ne, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nd, label %Py_DECREF.exit74.i412

bb.nd:                                            ; preds = %bb.nc
  %i.ajk = add nsw i32 %i.ajj, -1                 ; 2 uses
  store i32 %i.ajk, ptr %i.aje, align 8, !tbaa !237
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.ne:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nf, label %Py_DECREF.exit72.i422

bb.nf:                                            ; preds = %bb.ne
  %i.ajm = add nsw i32 %i.ajj, -1                 ; 2 uses
  store i32 %i.ajm, ptr %i.aje, align 8, !tbaa !237
  %i.ajn = icmp eq i32 %i.ajm, 0
  br i1 %i.ajn, label %bb.ng, label %Py_DECREF.exit72.i422

bb.ng:                                            ; preds = %bb.nf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aje) #33, !inline_history !763
  br label %Py_DECREF.exit72.i422

Py_DECREF.exit72.i422:                            ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.na
  %i.ajo = add nuw nsw i64 %.0103.i, 1            ; 2 uses
  %exitcond118.not.i = icmp eq i64 %i.ajo, %.1
  br i1 %exitcond118.not.i, label %._crit_edge.thread151.i, label %bb.mx, !llvm.loop !767

._crit_edge.i426:                                 ; preds = %bb.mx
  %i.ajp = icmp eq i64 %.0103.i, 0
  br i1 %i.ajp, label %._crit_edge.thread.i, label %._crit_edge.thread151.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i426, %.preheader.i407
  %.057.lcssa147.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %.val100, %.preheader.i407 ]
  %i.ajq = getelementptr i8, ptr %0, i64 8
  %.val.i408 = load ptr, ptr %i.ajq, align 8, !tbaa !229
  %.not84.i = icmp eq ptr %.val.i408, @PyUnicode_Type
  br i1 %.not84.i, label %bb.nh, label %.thread.i

bb.nh:                                            ; preds = %._crit_edge.thread.i
  %i.ajr = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.ajs = icmp ugt i32 %i.ajr, -1073741825
  br i1 %i.ajs, label %Py_INCREF.exit.i414, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ajt = add nuw i32 %i.ajr, 1
  store i32 %i.ajt, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i414

Py_INCREF.exit.i414:                              ; preds = %bb.ni, %bb.nh
  %i.aju = getelementptr i8, ptr %i.aiv, i64 24
  %.val80.i415 = load ptr, ptr %i.aju, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i415, align 8, !tbaa !227
  br label %bb.nq

._crit_edge.thread151.i:                          ; preds = %Py_DECREF.exit72.i422, %._crit_edge.i426
  %.0.lcssa155.i = phi i64 [ %.0103.i, %._crit_edge.i426 ], [ %.1, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057.lcssa154.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %i.aiz, %Py_DECREF.exit72.i422 ]
  %i.ajv = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i), !inline_history !763 ; 8 uses
  %i.ajw = icmp eq ptr %i.ajv, null
  br i1 %i.ajw, label %Py_DECREF.exit74.i412, label %bb.nj

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.ajx = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i), !inline_history !763 ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, null
  br i1 %i.ajy, label %Py_DECREF.exit74.i412, label %.thread83.i

bb.nj:                                            ; preds = %._crit_edge.thread151.i
  %i.ajz = icmp slt i64 %.0.lcssa155.i, 12
  br i1 %i.ajz, label %.thread83.i, label %bb.nk

.thread83.i:                                      ; preds = %bb.nj, %.thread.i
  %.0.lcssa148.i = phi i64 [ %.0.lcssa155.i, %bb.nj ], [ 0, %.thread.i ] ; 2 uses
  %i.aka = phi ptr [ %i.ajv, %bb.nj ], [ %i.ajx, %.thread.i ]
  %i.akb = getelementptr i8, ptr %i.aiv, i64 24
  %.val79.i409 = load ptr, ptr %i.akb, align 8, !tbaa !280
  %i.akc = getelementptr [8 x i8], ptr %.val79.i409, i64 %.0.lcssa148.i
  store ptr %i.aka, ptr %i.akc, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i410

bb.nk:                                            ; preds = %bb.nj
  %i.akd = tail call i32 @PyList_Append(ptr noundef nonnull %i.aiv, ptr noundef nonnull %i.ajv) #33, !inline_history !763
  %.not66.i423 = icmp eq i32 %i.akd, 0
  %i.ake = load i32, ptr %i.ajv, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i424 = icmp sgt i32 %i.ake, -1        ; 2 uses
  br i1 %.not66.i423, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.nm, label %Py_DECREF.exit74.i412

bb.nm:                                            ; preds = %bb.nl
  %i.akf = add nsw i32 %i.ake, -1                 ; 2 uses
  store i32 %i.akf, ptr %i.ajv, align 8, !tbaa !237
  %i.akg = icmp eq i32 %i.akf, 0
  br i1 %i.akg, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.nn:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.no, label %Py_DECREF.exit68.i410

bb.no:                                            ; preds = %bb.nn
  %i.akh = add nsw i32 %i.ake, -1                 ; 2 uses
  store i32 %i.akh, ptr %i.ajv, align 8, !tbaa !237
  %i.aki = icmp eq i32 %i.akh, 0
  br i1 %i.aki, label %bb.np, label %Py_DECREF.exit68.i410

bb.np:                                            ; preds = %bb.no
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ajv) #33, !inline_history !763
  br label %Py_DECREF.exit68.i410

Py_DECREF.exit68.i410:                            ; preds = %bb.np, %bb.no, %bb.nn, %.thread83.i
  %.0.lcssa150.i = phi i64 [ %.0.lcssa155.i, %bb.np ], [ %.0.lcssa155.i, %bb.no ], [ %.0.lcssa155.i, %bb.nn ], [ %.0.lcssa148.i, %.thread83.i ]
  %i.akj = add i64 %.0.lcssa150.i, 1
  br label %bb.nq

bb.nq:                                            ; preds = %Py_DECREF.exit68.i410, %Py_INCREF.exit.i414
  %.1.i411 = phi i64 [ 1, %Py_INCREF.exit.i414 ], [ %i.akj, %Py_DECREF.exit68.i410 ]
  %i.akk = getelementptr i8, ptr %i.aiv, i64 16
  store i64 %.1.i411, ptr %i.akk, align 8, !tbaa !263
  %i.akl = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.aiv) #33, !inline_history !763
  %i.akm = icmp slt i32 %i.akl, 0
  br i1 %i.akm, label %Py_DECREF.exit74.i412, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i419:                 ; preds = %bb.nm, %bb.nd
  %.sink.i420 = phi ptr [ %i.aje, %bb.nd ], [ %i.ajv, %bb.nm ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i420) #33, !inline_history !763
  br label %Py_DECREF.exit74.i412

Py_DECREF.exit74.i412:                            ; preds = %bb.my, %Py_DECREF.exit74.sink.split.i419, %bb.nq, %bb.nm, %bb.nl, %.thread.i, %._crit_edge.thread151.i, %bb.nd, %bb.nc
  %i.akn = load i32, ptr %i.aiv, align 8, !tbaa !237 ; 2 uses
  %.not.i.i413 = icmp sgt i32 %i.akn, -1
  br i1 %.not.i.i413, label %bb.nr, label %asciilib_rsplit.exit

bb.nr:                                            ; preds = %Py_DECREF.exit74.i412
  %i.ako = add nsw i32 %i.akn, -1                 ; 2 uses
  store i32 %i.ako, ptr %i.aiv, align 8, !tbaa !237
  %i.akp = icmp eq i32 %i.ako, 0
  br i1 %i.akp, label %bb.ns, label %asciilib_rsplit.exit

bb.ns:                                            ; preds = %bb.nr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aiv) #33, !inline_history !763
  br label %asciilib_rsplit.exit

bb.nt:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.ov [
    i64 0, label %bb.nu
    i64 1, label %bb.nv
  ]

bb.nu:                                            ; preds = %bb.nt
  %i.akq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.akq, ptr noundef nonnull @.str.197) #33, !inline_history !768
  br label %asciilib_rsplit.exit

bb.nv:                                            ; preds = %bb.nt
  %i.akr = load i32, ptr %.080, align 4, !tbaa !43
  %i.aks = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.akt = add nsw i64 %i.aks, 1
  %i.aku = tail call ptr @PyList_New(i64 noundef %i.akt) #33, !inline_history !769 ; 12 uses
  %i.akv = icmp eq ptr %i.aku, null
  br i1 %i.akv, label %asciilib_rsplit.exit, label %18

18:                                               ; preds = %bb.nv
  %19 = add i64 %.val100, -1                      ; 4 uses
  %20 = icmp sgt i64 %19, -1
  br i1 %20, label %.lr.ph89.i.i446, label %.critedge.thread.i.i427

.lr.ph89.i.i446:                                  ; preds = %18
  %i.akw = getelementptr i8, ptr %i.aku, i64 24
  %smin.i447 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.akx = sub i64 %.1, %smin.i447                ; 4 uses
  %exitcond.not.i4501486 = icmp eq i64 %i.akx, 0
  br i1 %exitcond.not.i4501486, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader

bb.nw:                                            ; preds = %.loopexit.i.i458
  %exitcond.not.i450 = icmp eq i64 %i.alq, %i.akx
  br i1 %exitcond.not.i450, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader, !llvm.loop !770

.lr.ph.i.i451.preheader:                          ; preds = %.lr.ph89.i.i446, %bb.nw
  %.05087.i.i4491488 = phi i64 [ %i.alr, %bb.nw ], [ %19, %.lr.ph89.i.i446 ] ; 3 uses
  %.088.i.i4481487 = phi i64 [ %i.alq, %bb.nw ], [ 0, %.lr.ph89.i.i446 ] ; 4 uses
  br label %.lr.ph.i.i451

.lr.ph.i.i451:                                    ; preds = %.lr.ph.i.i451.preheader, %bb.og
  %.15384.i.i452 = phi i64 [ %i.alo, %bb.og ], [ %.05087.i.i4491488, %.lr.ph.i.i451.preheader ] ; 7 uses
  %i.aky = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !43
  %i.ala = icmp eq i32 %i.akz, %i.akr
  br i1 %i.ala, label %bb.nx, label %bb.og

bb.nx:                                            ; preds = %.lr.ph.i.i451
  %i.alb = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.alc = getelementptr i8, ptr %i.alb, i64 4
  %i.ald = sub nuw nsw i64 %.05087.i.i4491488, %.15384.i.i452
  %i.ale = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef readonly %i.alc, i64 noundef %i.ald), !inline_history !769 ; 8 uses
  %i.alf = icmp eq ptr %i.ale, null
  br i1 %i.alf, label %Py_DECREF.exit69.i.i436, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.alg = icmp samesign ult i64 %.088.i.i4481487, 12
  br i1 %i.alg, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %.val76.i.i459 = load ptr, ptr %i.akw, align 8, !tbaa !280
  %i.alh = getelementptr [8 x i8], ptr %.val76.i.i459, i64 %.088.i.i4481487
  store ptr %i.ale, ptr %i.alh, align 8, !tbaa !227
  br label %.loopexit.i.i458

bb.oa:                                            ; preds = %bb.ny
  %i.ali = tail call i32 @PyList_Append(ptr noundef nonnull %i.aku, ptr noundef nonnull %i.ale) #33, !inline_history !769
  %.not61.i.i455 = icmp eq i32 %i.ali, 0
  %i.alj = load i32, ptr %i.ale, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i457 = icmp sgt i32 %i.alj, -1      ; 2 uses
  br i1 %.not61.i.i455, label %bb.od, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oc, label %Py_DECREF.exit69.i.i436

bb.oc:                                            ; preds = %bb.ob
  %i.alk = add nsw i32 %i.alj, -1                 ; 2 uses
  store i32 %i.alk, ptr %i.ale, align 8, !tbaa !237
  %i.all = icmp eq i32 %i.alk, 0
  br i1 %i.all, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.od:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oe, label %.loopexit.i.i458

bb.oe:                                            ; preds = %bb.od
  %i.alm = add nsw i32 %i.alj, -1                 ; 2 uses
  store i32 %i.alm, ptr %i.ale, align 8, !tbaa !237
  %i.aln = icmp eq i32 %i.alm, 0
  br i1 %i.aln, label %bb.of, label %.loopexit.i.i458

bb.of:                                            ; preds = %bb.oe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ale) #33, !inline_history !769
  br label %.loopexit.i.i458

bb.og:                                            ; preds = %.lr.ph.i.i451
  %i.alo = add nsw i64 %.15384.i.i452, -1
  %i.alp = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.alp, label %.lr.ph.i.i451, label %.critedge.i.i453, !llvm.loop !771

.loopexit.i.i458:                                 ; preds = %bb.of, %bb.oe, %bb.od, %bb.nz
  %i.alq = add nuw i64 %.088.i.i4481487, 1        ; 3 uses
  %i.alr = add nsw i64 %.15384.i.i452, -1         ; 3 uses
  %i.als = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.als, label %bb.nw, label %.critedge.i.thread.i431, !llvm.loop !770

.critedge.i.i453:                                 ; preds = %bb.nw, %bb.og, %.lr.ph89.i.i446
  %.05087.i.i4491476 = phi i64 [ %.05087.i.i4491488, %bb.og ], [ %19, %.lr.ph89.i.i446 ], [ %i.alr, %bb.nw ] ; 2 uses
  %.0.lcssa.i.i454 = phi i64 [ %.088.i.i4481487, %bb.og ], [ %i.akx, %.lr.ph89.i.i446 ], [ %i.akx, %bb.nw ] ; 2 uses
  %i.alt = icmp eq i64 %.0.lcssa.i.i454, 0
  br i1 %i.alt, label %.critedge.thread.i.i427, label %.critedge.i.thread.i431

.critedge.thread.i.i427:                          ; preds = %.critedge.i.i453, %18
  %.050.lcssa112.i.i428 = phi i64 [ %.05087.i.i4491476, %.critedge.i.i453 ], [ %19, %18 ]
  %i.alu = getelementptr i8, ptr %0, i64 8
  %.val.i.i429 = load ptr, ptr %i.alu, align 8, !tbaa !229
  %.not.i82.i430 = icmp eq ptr %.val.i.i429, @PyUnicode_Type
  br i1 %.not.i82.i430, label %bb.oh, label %.critedge.i.thread.i431

bb.oh:                                            ; preds = %.critedge.thread.i.i427
  %i.alv = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.alw = icmp ugt i32 %i.alv, -1073741825
  br i1 %i.alw, label %Py_INCREF.exit.i.i444, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.alx = add nuw i32 %i.alv, 1
  store i32 %i.alx, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i444

Py_INCREF.exit.i.i444:                            ; preds = %bb.oi, %bb.oh
  %21 = getelementptr i8, ptr %i.aku, i64 24
  %.val75.i.i445 = load ptr, ptr %21, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i445, align 8, !tbaa !227
  br label %bb.os

.critedge.i.thread.i431:                          ; preds = %.loopexit.i.i458, %.critedge.thread.i.i427, %.critedge.i.i453
  %.0.lcssa113.i.i432 = phi i64 [ 0, %.critedge.thread.i.i427 ], [ %.0.lcssa.i.i454, %.critedge.i.i453 ], [ %i.alq, %.loopexit.i.i458 ] ; 4 uses
  %.050.lcssa111.i.i433 = phi i64 [ %.050.lcssa112.i.i428, %.critedge.thread.i.i427 ], [ %.05087.i.i4491476, %.critedge.i.i453 ], [ %i.alr, %.loopexit.i.i458 ] ; 2 uses
  %i.aly = icmp sgt i64 %.050.lcssa111.i.i433, -2
  br i1 %i.aly, label %bb.oj, label %bb.os

bb.oj:                                            ; preds = %.critedge.i.thread.i431
  %i.alz = add i64 %.050.lcssa111.i.i433, 1
  %i.ama = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef readonly %.0.i271, i64 noundef %i.alz), !inline_history !769 ; 8 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %Py_DECREF.exit69.i.i436, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.amc = icmp slt i64 %.0.lcssa113.i.i432, 12
  br i1 %i.amc, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %22 = getelementptr i8, ptr %i.aku, i64 24
  %.val74.i.i443 = load ptr, ptr %22, align 8, !tbaa !280
  %i.amd = getelementptr [8 x i8], ptr %.val74.i.i443, i64 %.0.lcssa113.i.i432
  store ptr %i.ama, ptr %i.amd, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i442

bb.om:                                            ; preds = %bb.ok
  %i.ame = tail call i32 @PyList_Append(ptr noundef nonnull %i.aku, ptr noundef nonnull %i.ama) #33, !inline_history !769
  %.not60.i.i438 = icmp eq i32 %i.ame, 0
  %i.amf = load i32, ptr %i.ama, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i439 = icmp sgt i32 %i.amf, -1      ; 2 uses
  br i1 %.not60.i.i438, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oo, label %Py_DECREF.exit69.i.i436

bb.oo:                                            ; preds = %bb.on
  %i.amg = add nsw i32 %i.amf, -1                 ; 2 uses
  store i32 %i.amg, ptr %i.ama, align 8, !tbaa !237
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.op:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oq, label %Py_DECREF.exit63.i.i442

bb.oq:                                            ; preds = %bb.op
  %i.ami = add nsw i32 %i.amf, -1                 ; 2 uses
  store i32 %i.ami, ptr %i.ama, align 8, !tbaa !237
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.or, label %Py_DECREF.exit63.i.i442

bb.or:                                            ; preds = %bb.oq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ama) #33, !inline_history !769
  br label %Py_DECREF.exit63.i.i442

Py_DECREF.exit63.i.i442:                          ; preds = %bb.or, %bb.oq, %bb.op, %bb.ol
  %i.amk = add i64 %.0.lcssa113.i.i432, 1
  br label %bb.os

bb.os:                                            ; preds = %Py_DECREF.exit63.i.i442, %.critedge.i.thread.i431, %Py_INCREF.exit.i.i444
  %.2.i.i434 = phi i64 [ 1, %Py_INCREF.exit.i.i444 ], [ %i.amk, %Py_DECREF.exit63.i.i442 ], [ %.0.lcssa113.i.i432, %.critedge.i.thread.i431 ]
  %i.aml = getelementptr i8, ptr %i.aku, i64 16
  store i64 %.2.i.i434, ptr %i.aml, align 8, !tbaa !263
  %i.amm = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.aku) #33, !inline_history !769
  %i.amn = icmp slt i32 %i.amm, 0
  br i1 %i.amn, label %Py_DECREF.exit69.i.i436, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i440:               ; preds = %bb.oo, %bb.oc
  %.sink.i.i441 = phi ptr [ %i.ale, %bb.oc ], [ %i.ama, %bb.oo ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i441) #33, !inline_history !769
  br label %Py_DECREF.exit69.i.i436

Py_DECREF.exit69.i.i436:                          ; preds = %bb.nx, %Py_DECREF.exit69.sink.split.i.i440, %bb.os, %bb.oo, %bb.on, %bb.oj, %bb.oc, %bb.ob
  %i.amo = load i32, ptr %i.aku, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i437 = icmp sgt i32 %i.amo, -1
  br i1 %.not.i.i.i437, label %bb.ot, label %asciilib_rsplit.exit

bb.ot:                                            ; preds = %Py_DECREF.exit69.i.i436
  %i.amp = add nsw i32 %i.amo, -1                 ; 2 uses
  store i32 %i.amp, ptr %i.aku, align 8, !tbaa !237
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.ou, label %asciilib_rsplit.exit

bb.ou:                                            ; preds = %bb.ot
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aku) #33, !inline_history !769
  br label %asciilib_rsplit.exit

bb.ov:                                            ; preds = %bb.nt
  %i.amr = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.ams = add nsw i64 %i.amr, 1
  %i.amt = tail call ptr @PyList_New(i64 noundef %i.ams) #33, !inline_history !768 ; 12 uses
  %i.amu = icmp eq ptr %i.amt, null
  br i1 %i.amu, label %asciilib_rsplit.exit, label %.preheader.i460

.preheader.i460:                                  ; preds = %bb.ov
  %i.amv = icmp sgt i64 %.1, 0
  br i1 %i.amv, label %.lr.ph.i476, label %._crit_edge.thread.i461

.lr.ph.i476:                                      ; preds = %.preheader.i460
  %i.amw = getelementptr i8, ptr %i.amt, i64 24
  br label %bb.ow

bb.ow:                                            ; preds = %Py_DECREF.exit72.i484, %.lr.ph.i476
  %.0103.i477 = phi i64 [ 0, %.lr.ph.i476 ], [ %i.anm, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057102.i478 = phi i64 [ %.val100, %.lr.ph.i476 ], [ %i.amx, %Py_DECREF.exit72.i484 ] ; 4 uses
  %i.amx = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i478, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !768 ; 4 uses
  %i.amy = icmp slt i64 %i.amx, 0
  br i1 %i.amy, label %._crit_edge.i492, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.amz = add i64 %i.amx, %.val99                ; 2 uses
  %i.ana = getelementptr [4 x i8], ptr %.0.i271, i64 %i.amz
  %i.anb = sub i64 %.057102.i478, %i.amz
  %i.anc = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.ana, i64 noundef %i.anb), !inline_history !768 ; 8 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %Py_DECREF.exit74.i472, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ane = icmp samesign ult i64 %.0103.i477, 12
  br i1 %i.ane, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %.val81.i491 = load ptr, ptr %i.amw, align 8, !tbaa !280
  %i.anf = getelementptr [8 x i8], ptr %.val81.i491, i64 %.0103.i477
  store ptr %i.anc, ptr %i.anf, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i484

bb.pa:                                            ; preds = %bb.oy
  %i.ang = tail call i32 @PyList_Append(ptr noundef nonnull %i.amt, ptr noundef nonnull %i.anc) #33, !inline_history !768
  %.not.i479 = icmp eq i32 %i.ang, 0
  %i.anh = load i32, ptr %i.anc, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i483 = icmp sgt i32 %i.anh, -1        ; 2 uses
  br i1 %.not.i479, label %bb.pd, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pc, label %Py_DECREF.exit74.i472

bb.pc:                                            ; preds = %bb.pb
  %i.ani = add nsw i32 %i.anh, -1                 ; 2 uses
  store i32 %i.ani, ptr %i.anc, align 8, !tbaa !237
  %i.anj = icmp eq i32 %i.ani, 0
  br i1 %i.anj, label %Py_DECREF.exit74.sink.split.i481, label %Py_DECREF.exit74.i472

bb.pd:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pe, label %Py_DECREF.exit72.i484

bb.pe:                                            ; preds = %bb.pd
  %i.ank = add nsw i32 %i.anh, -1                 ; 2 uses
  store i32 %i.ank, ptr %i.anc, align 8, !tbaa !237
  %i.anl = icmp eq i32 %i.ank, 0
  br i1 %i.anl, label %bb.pf, label %Py_DECREF.exit72.i484

bb.pf:                                            ; preds = %bb.pe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.anc) #33, !inline_history !768
  br label %Py_DECREF.exit72.i484

Py_DECREF.exit72.i484:                            ; preds = %bb.pf, %bb.pe, %bb.pd, %bb.oz
  %i.anm = add nuw nsw i64 %.0103.i477, 1         ; 2 uses
  %exitcond118.not.i485 = icmp eq i64 %i.anm, %.1
  br i1 %exitcond118.not.i485, label %._crit_edge.thread151.i486, label %bb.ow, !llvm.loop !772

._crit_edge.i492:                                 ; preds = %bb.ow
  %i.ann = icmp eq i64 %.0103.i477, 0
  br i1 %i.ann, label %._crit_edge.thread.i461, label %._crit_edge.thread151.i486

._crit_edge.thread.i461:                          ; preds = %._crit_edge.i492, %.preheader.i460
  %.057.lcssa147.i462 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %.val100, %.preheader.i460 ]
  %i.ano = getelementptr i8, ptr %0, i64 8
  %.val.i463 = load ptr, ptr %i.ano, align 8, !tbaa !229
  %.not84.i464 = icmp eq ptr %.val.i463, @PyUnicode_Type
  br i1 %.not84.i464, label %bb.pg, label %.thread.i465

bb.pg:                                            ; preds = %._crit_edge.thread.i461
  %i.anp = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.anq = icmp ugt i32 %i.anp, -1073741825
  br i1 %i.anq, label %Py_INCREF.exit.i474, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.anr = add nuw i32 %i.anp, 1
  store i32 %i.anr, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i474

Py_INCREF.exit.i474:                              ; preds = %bb.ph, %bb.pg
  %i.ans = getelementptr i8, ptr %i.amt, i64 24
  %.val80.i475 = load ptr, ptr %i.ans, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i475, align 8, !tbaa !227
  br label %bb.pp

._crit_edge.thread151.i486:                       ; preds = %Py_DECREF.exit72.i484, %._crit_edge.i492
  %.0.lcssa155.i487 = phi i64 [ %.0103.i477, %._crit_edge.i492 ], [ %.1, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057.lcssa154.i488 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %i.amx, %Py_DECREF.exit72.i484 ]
  %i.ant = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i488), !inline_history !768 ; 8 uses
  %i.anu = icmp eq ptr %i.ant, null
  br i1 %i.anu, label %Py_DECREF.exit74.i472, label %bb.pi

.thread.i465:                                     ; preds = %._crit_edge.thread.i461
  %i.anv = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i462), !inline_history !768 ; 2 uses
  %i.anw = icmp eq ptr %i.anv, null
  br i1 %i.anw, label %Py_DECREF.exit74.i472, label %.thread83.i466

bb.pi:                                            ; preds = %._crit_edge.thread151.i486
  %i.anx = icmp slt i64 %.0.lcssa155.i487, 12
  br i1 %i.anx, label %.thread83.i466, label %bb.pj

.thread83.i466:                                   ; preds = %bb.pi, %.thread.i465
  %.0.lcssa148.i467 = phi i64 [ %.0.lcssa155.i487, %bb.pi ], [ 0, %.thread.i465 ] ; 2 uses
  %i.any = phi ptr [ %i.ant, %bb.pi ], [ %i.anv, %.thread.i465 ]
  %i.anz = getelementptr i8, ptr %i.amt, i64 24
  %.val79.i468 = load ptr, ptr %i.anz, align 8, !tbaa !280
  %i.aoa = getelementptr [8 x i8], ptr %.val79.i468, i64 %.0.lcssa148.i467
  store ptr %i.any, ptr %i.aoa, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i469

bb.pj:                                            ; preds = %bb.pi
  %i.aob = tail call i32 @PyList_Append(ptr noundef nonnull %i.amt, ptr noundef nonnull %i.ant) #33, !inline_history !768
  %.not66.i489 = icmp eq i32 %i.aob, 0
  %i.aoc = load i32, ptr %i.ant, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i490 = icmp sgt i32 %i.aoc, -1        ; 2 uses
  br i1 %.not66.i489, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  br i1 %.not.i67.i490, label %bb.pl, label %Py_DECREF.exit74.i472
end_hunk_2
