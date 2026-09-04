Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
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
  %i.po = tail call ptr @PyList_New(i64 noundef %i.pn) #33, !inline_history !750 ; 10 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %asciilib_rsplit.exit, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %bb.fu
  %3 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.pq = getelementptr i8, ptr %i.po, i64 24     ; 3 uses
  %smin.i = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.pr = sub i64 %.1, %smin.i                    ; 4 uses
  %exitcond.not.i2831492 = icmp eq i64 %i.pr, 0
  br i1 %exitcond.not.i2831492, label %.critedge.i.i, label %.lr.ph.i.i.preheader

bb.fv:                                            ; preds = %.loopexit.i.i
  %exitcond.not.i283 = icmp eq i64 %i.qw, %i.pr
  br i1 %exitcond.not.i283, label %.critedge.i.i, label %.lr.ph.i.i.preheader, !llvm.loop !751

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph107.i.i, %bb.fv
  %.050105.i.i1494 = phi i64 [ %i.qx, %bb.fv ], [ %3, %.lr.ph107.i.i ] ; 3 uses
  %.0106.i.i1493 = phi i64 [ %i.qw, %bb.fv ], [ 0, %.lr.ph107.i.i ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.gj
  %.153102.i.i = phi i64 [ %i.qu, %bb.gj ], [ %.050105.i.i1494, %.lr.ph.i.i.preheader ] ; 7 uses
  %i.ps = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !237
  %i.pu = icmp eq i8 %i.pt, %i.pl
  br i1 %i.pu, label %bb.fw, label %bb.gj

bb.fw:                                            ; preds = %.lr.ph.i.i
  %i.pv = getelementptr i8, ptr %.0.i271, i64 %.153102.i.i
  %i.pw = getelementptr i8, ptr %i.pv, i64 1      ; 2 uses
  %i.px = sub nuw nsw i64 %.050105.i.i1494, %.153102.i.i ; 3 uses
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
  %i.qm = icmp samesign ult i64 %.0106.i.i1493, 12
  br i1 %i.qm, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %.val76.i.i = load ptr, ptr %i.pq, align 8, !tbaa !280
  %i.qn = getelementptr [8 x i8], ptr %.val76.i.i, i64 %.0106.i.i1493
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
  %i.qw = add nuw i64 %.0106.i.i1493, 1           ; 3 uses
  %i.qx = add nsw i64 %.153102.i.i, -1            ; 3 uses
  %i.qy = icmp sgt i64 %.153102.i.i, 0
  br i1 %i.qy, label %bb.fv, label %.critedge.i.thread.i, !llvm.loop !751

.critedge.i.i:                                    ; preds = %bb.fv, %bb.gj, %.lr.ph107.i.i
  %.050105.i.i1421 = phi i64 [ %.050105.i.i1494, %bb.gj ], [ %3, %.lr.ph107.i.i ], [ %i.qx, %bb.fv ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.0106.i.i1493, %bb.gj ], [ %i.pr, %.lr.ph107.i.i ], [ %i.pr, %bb.fv ] ; 2 uses
  %i.qz = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %i.qz, label %.critedge.thread.i.i, label %.critedge.i.thread.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i
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
  %.val75.i.i = load ptr, ptr %i.pq, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i, align 8, !tbaa !227
  br label %bb.gz

.critedge.i.thread.i:                             ; preds = %.loopexit.i.i, %.critedge.thread.i.i, %.critedge.i.i
  %.0.lcssa133.i.i = phi i64 [ 0, %.critedge.thread.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.qw, %.loopexit.i.i ] ; 4 uses
  %.050.lcssa131.i.i = phi i64 [ %.050105.i.i1421, %.critedge.thread.i.i ], [ %.050105.i.i1421, %.critedge.i.i ], [ %i.qx, %.loopexit.i.i ] ; 3 uses
  %i.re = icmp sgt i64 %.050.lcssa131.i.i, -2
  br i1 %i.re, label %bb.gm, label %bb.gz

bb.gm:                                            ; preds = %.critedge.i.thread.i
  %i.rf = add nsw i64 %.050.lcssa131.i.i, 1       ; 2 uses
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
  %.val74.i.i = load ptr, ptr %i.pq, align 8, !tbaa !280
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
  %.0137.i = phi i64 [ %i.vx, %Py_DECREF.exit72.i ], [ 0, %.lr.ph.i287.split.preheader ] ; 5 uses
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
  %.lcssa1634.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %i.tc, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i287.split ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  br i1 %i.st, label %.preheader56.i.i.i, label %.lr.ph.i70.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa1634 = phi i64 [ %.lcssa1634.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.ut, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.te = add nsw i64 %.in.i, -1
  %i.tf = sub i64 %.057136.i, %.val99             ; 2 uses
  %i.tg = icmp sgt i64 %i.tf, -1
  br i1 %i.tg, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.hi
  %.14865.us.i.i.i = phi i64 [ %i.ue, %bb.hi ], [ %i.tf, %.preheader56.i.i.i ] ; 9 uses
  %i.th = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i ; 4 uses
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !237
  %i.tj = icmp eq i8 %i.ti, %i.su
  br i1 %i.tj, label %.preheader.us.i72.i.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.tk = getelementptr i8, ptr %i.th, i64 -1
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !237
  %i.tm = and i8 %i.tl, 63
  %i.tn = zext nneg i8 %i.tm to i64
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = and i64 %i.to, %.lcssa1634
  %.not51.us.i.i.i = icmp eq i64 %i.tp, 0
  %i.tq = select i1 %.not51.us.i.i.i, i64 %.val99, i64 0
  br label %bb.hi

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.hf
  %.04662.us.i.i.i = phi i64 [ %i.tv, %bb.hf ], [ %i.sp, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.tr = getelementptr i8, ptr %i.th, i64 %.04662.us.i.i.i
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !237
  %i.tt = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !237
  %.not52.us.i.i.i = icmp eq i8 %i.ts, %i.tu
  br i1 %.not52.us.i.i.i, label %bb.hf, label %.thread.us.i73.i.i

bb.hf:                                            ; preds = %.preheader.us.i72.i.i
  %i.tv = add nsw i64 %.04662.us.i.i.i, -1
  %i.tw = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.tw, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !25

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.thread.us.i73.i.i
  %i.tx = getelementptr i8, ptr %i.th, i64 -1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !237
  %i.tz = and i8 %i.ty, 63
  %i.ua = zext nneg i8 %i.tz to i64
  %i.ub = shl nuw i64 1, %i.ua
  %i.uc = and i64 %i.ub, %.lcssa1634
  %.not54.us.i.i.i = icmp eq i64 %i.uc, 0
  br i1 %.not54.us.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.thread.us.i73.i.i
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.he
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.hh ], [ %i.tq, %bb.he ], [ %.val99, %bb.hg ]
  %i.ud = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.ue = add nsw i64 %i.ud, -1
  %i.uf = icmp sgt i64 %i.ud, 0
  br i1 %i.uf, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !26

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.uv, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.ut, %.lr.ph.i70.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %i.ug = getelementptr i8, ptr %.080, i64 %.04759.i.i.i
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !237 ; 2 uses
  %i.ui = and i8 %i.uh, 63
  %i.uj = zext nneg i8 %i.ui to i64
  %i.uk = shl nuw i64 1, %i.uj
  %i.ul = or i64 %i.uk, %.04958.i.i.i
  %i.um = icmp eq i8 %i.uh, %i.su
  %i.un = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.um, i64 %i.un, i64 %.060.i.i.i
  %i.uo = getelementptr i8, ptr %.080, i64 %i.un
end_hunk_0
begin_hunk_1_@rsplit:bb.a
  store ptr %.0.i88104.i, ptr %i.vq, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i

bb.hq:                                            ; preds = %bb.ho
  %i.vr = tail call i32 @PyList_Append(ptr noundef nonnull %i.sl, ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  %.not.i293 = icmp eq i32 %i.vr, 0
  %i.vs = load i32, ptr %.0.i88104.i, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i = icmp sgt i32 %i.vs, -1            ; 2 uses
  br i1 %.not.i293, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hs, label %Py_DECREF.exit74.i

bb.hs:                                            ; preds = %bb.hr
  %i.vt = add nsw i32 %i.vs, -1                   ; 2 uses
  store i32 %i.vt, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vu = icmp eq i32 %i.vt, 0
  br i1 %i.vu, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ht:                                            ; preds = %bb.hq
  br i1 %.not.i71.i, label %bb.hu, label %Py_DECREF.exit72.i

bb.hu:                                            ; preds = %bb.ht
  %i.vv = add nsw i32 %i.vs, -1                   ; 2 uses
  store i32 %i.vv, ptr %.0.i88104.i, align 8, !tbaa !237
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.hv, label %Py_DECREF.exit72.i

bb.hv:                                            ; preds = %bb.hu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i88104.i) #33, !inline_history !749
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hp
  %i.vx = add nuw nsw i64 %.0137.i, 1             ; 2 uses
  %i.vy = icmp slt i64 %.in.i, 2
  %i.vz = icmp slt i64 %.14865.us.i.i.i, %.val99
  %or.cond.i = or i1 %i.vy, %i.vz
  br i1 %or.cond.i, label %asciilib_fastsearch.exit.thread.thread209.i, label %.lr.ph.i287.split, !llvm.loop !755

asciilib_fastsearch.exit.thread.i:                ; preds = %.preheader56.i.i.i, %asciilib_fastsearch.exit.i, %bb.hi, %bb.hd
  %i.wa = icmp eq i64 %.0137.i, 0
  br i1 %i.wa, label %asciilib_fastsearch.exit.thread.thread.i, label %asciilib_fastsearch.exit.thread.thread209.i

asciilib_fastsearch.exit.thread.thread.i:         ; preds = %.lr.ph.i287, %asciilib_fastsearch.exit.thread.i, %.preheader.i286
  %.057124206.i = phi i64 [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i286 ], [ %.val100, %.lr.ph.i287 ]
  %i.wb = getelementptr i8, ptr %0, i64 8
  %.val.i289 = load ptr, ptr %i.wb, align 8, !tbaa !229
  %.not109.i = icmp eq ptr %.val.i289, @PyUnicode_Type
  br i1 %.not109.i, label %bb.hw, label %asciilib_fastsearch.exit.thread.thread209.i

bb.hw:                                            ; preds = %asciilib_fastsearch.exit.thread.thread.i
  %i.wc = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.wd = icmp ugt i32 %i.wc, -1073741825
  br i1 %i.wd, label %Py_INCREF.exit.i290, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.we = add nuw i32 %i.wc, 1
  store i32 %i.we, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i290

Py_INCREF.exit.i290:                              ; preds = %bb.hx, %bb.hw
  %i.wf = getelementptr i8, ptr %i.sl, i64 24
  %.val80.i = load ptr, ptr %i.wf, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i, align 8, !tbaa !227
  br label %bb.ik

asciilib_fastsearch.exit.thread.thread209.i:      ; preds = %Py_DECREF.exit72.i, %asciilib_fastsearch.exit.thread.thread.i, %asciilib_fastsearch.exit.thread.i
  %.0119207.i = phi i64 [ 0, %asciilib_fastsearch.exit.thread.thread.i ], [ %.0137.i, %asciilib_fastsearch.exit.thread.i ], [ %i.vx, %Py_DECREF.exit72.i ] ; 3 uses
  %.057124205.i = phi i64 [ %.057124206.i, %asciilib_fastsearch.exit.thread.thread.i ], [ %.057136.i, %asciilib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i, %Py_DECREF.exit72.i ] ; 3 uses
  %i.wg = icmp eq i64 %.057124205.i, 1
  br i1 %i.wg, label %_PyUnicode_FromASCII.exit99.i, label %bb.hy

bb.hy:                                            ; preds = %asciilib_fastsearch.exit.thread.thread209.i
  %i.wh = tail call ptr @PyUnicode_New(i64 noundef %.057124205.i, i32 noundef 127), !inline_history !754 ; 5 uses
  %.not.i89.i = icmp eq ptr %i.wh, null
  br i1 %.not.i89.i, label %Py_DECREF.exit74.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wi = getelementptr i8, ptr %i.wh, i64 32
  %.val.i.i90.i = load i32, ptr %i.wi, align 8    ; 2 uses
  %i.wj = and i32 %.val.i.i90.i, 32
  %.not.i.i91.i = icmp eq i32 %i.wj, 0
  br i1 %.not.i.i91.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.wk = and i32 %.val.i.i90.i, 64
  %.not.i.i.i92.i = icmp eq i32 %i.wk, 0
  %.0.v.i.i.i93.i = select i1 %.not.i.i.i92.i, i64 56, i64 40
  %.0.i.i.i94.i = getelementptr i8, ptr %i.wh, i64 %.0.v.i.i.i93.i
  br label %_PyUnicode_FromASCII.exit99.thread106.i

bb.ib:                                            ; preds = %bb.hz
  %i.wl = getelementptr i8, ptr %i.wh, i64 56
  %.val4.i.i98.i = load ptr, ptr %i.wl, align 8, !tbaa !237
  br label %_PyUnicode_FromASCII.exit99.thread106.i

_PyUnicode_FromASCII.exit99.thread106.i:          ; preds = %bb.ib, %bb.ia
  %.0.i.i96.i = phi ptr [ %.0.i.i.i94.i, %bb.ia ], [ %.val4.i.i98.i, %bb.ib ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i96.i, ptr readonly align 1 %.0.i271, i64 %.057124205.i, i1 false)
  br label %bb.ic

_PyUnicode_FromASCII.exit99.i:                    ; preds = %asciilib_fastsearch.exit.thread.thread209.i
  %i.wm = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.wn = zext i8 %i.wm to i64                    ; 2 uses
  %i.wo = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.wn
  %i.wp = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.wn
  %i.wq = getelementptr i8, ptr %i.wp, i64 -8192
  %i.wr = icmp slt i8 %i.wm, 0
  %i.ws = select i1 %i.wr, ptr %i.wq, ptr %i.wo   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %Py_DECREF.exit74.i, label %bb.ic

bb.ic:                                            ; preds = %_PyUnicode_FromASCII.exit99.i, %_PyUnicode_FromASCII.exit99.thread106.i
  %.0.i97108.i = phi ptr [ %i.wh, %_PyUnicode_FromASCII.exit99.thread106.i ], [ %i.ws, %_PyUnicode_FromASCII.exit99.i ] ; 7 uses
  %i.wu = icmp slt i64 %.0119207.i, 12
  br i1 %i.wu, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.wv = getelementptr i8, ptr %i.sl, i64 24
  %.val79.i = load ptr, ptr %i.wv, align 8, !tbaa !280
  %i.ww = getelementptr [8 x i8], ptr %.val79.i, i64 %.0119207.i
  store ptr %.0.i97108.i, ptr %i.ww, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i

bb.ie:                                            ; preds = %bb.ic
  %i.wx = tail call i32 @PyList_Append(ptr noundef nonnull %i.sl, ptr noundef nonnull %.0.i97108.i) #33, !inline_history !749
  %.not66.i = icmp eq i32 %i.wx, 0
  %i.wy = load i32, ptr %.0.i97108.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i = icmp sgt i32 %i.wy, -1            ; 2 uses
  br i1 %.not66.i, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ig, label %Py_DECREF.exit74.i

bb.ig:                                            ; preds = %bb.if
  %i.wz = add nsw i32 %i.wy, -1                   ; 2 uses
  store i32 %i.wz, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.xa = icmp eq i32 %i.wz, 0
  br i1 %i.xa, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ih:                                            ; preds = %bb.ie
  br i1 %.not.i67.i, label %bb.ii, label %Py_DECREF.exit68.i

bb.ii:                                            ; preds = %bb.ih
  %i.xb = add nsw i32 %i.wy, -1                   ; 2 uses
  store i32 %i.xb, ptr %.0.i97108.i, align 8, !tbaa !237
  %i.xc = icmp eq i32 %i.xb, 0
  br i1 %i.xc, label %bb.ij, label %Py_DECREF.exit68.i

bb.ij:                                            ; preds = %bb.ii
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.i) #33, !inline_history !749
  br label %Py_DECREF.exit68.i

Py_DECREF.exit68.i:                               ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.id
  %i.xd = add i64 %.0119207.i, 1
  br label %bb.ik

bb.ik:                                            ; preds = %Py_DECREF.exit68.i, %Py_INCREF.exit.i290
  %.1.i = phi i64 [ 1, %Py_INCREF.exit.i290 ], [ %i.xd, %Py_DECREF.exit68.i ]
  %i.xe = getelementptr i8, ptr %i.sl, i64 16
  store i64 %.1.i, ptr %i.xe, align 8, !tbaa !263
  %i.xf = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.sl) #33, !inline_history !749
  %i.xg = icmp slt i32 %i.xf, 0
  br i1 %i.xg, label %Py_DECREF.exit74.i, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i:                    ; preds = %bb.ig, %bb.hs
  %.0.i97108.sink.i = phi ptr [ %.0.i88104.i, %bb.hs ], [ %.0.i97108.i, %bb.ig ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97108.sink.i) #33, !inline_history !749
  br label %Py_DECREF.exit74.i

Py_DECREF.exit74.i:                               ; preds = %_PyUnicode_FromASCII.exit.i295, %bb.hk, %Py_DECREF.exit74.sink.split.i, %bb.ik, %bb.ig, %bb.if, %_PyUnicode_FromASCII.exit99.i, %bb.hy, %bb.hs, %bb.hr
  %i.xh = load i32, ptr %i.sl, align 8, !tbaa !237 ; 2 uses
  %.not.i.i288 = icmp sgt i32 %i.xh, -1
  br i1 %.not.i.i288, label %bb.il, label %asciilib_rsplit.exit

bb.il:                                            ; preds = %Py_DECREF.exit74.i
  %i.xi = add nsw i32 %i.xh, -1                   ; 2 uses
  store i32 %i.xi, ptr %i.sl, align 8, !tbaa !237
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.im, label %asciilib_rsplit.exit

bb.im:                                            ; preds = %bb.il
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sl) #33, !inline_history !749
  br label %asciilib_rsplit.exit

bb.in:                                            ; preds = %bb.fr, %bb.fq
  switch i64 %.val99, label %bb.kd [
    i64 0, label %bb.io
    i64 1, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.xk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.xk, ptr noundef nonnull @.str.197) #33, !inline_history !756
  br label %asciilib_rsplit.exit

bb.ip:                                            ; preds = %bb.in
  %i.xl = load i8, ptr %.080, align 1, !tbaa !237
  %i.xm = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.xn = add nsw i64 %i.xm, 1
  %i.xo = tail call ptr @PyList_New(i64 noundef %i.xn) #33, !inline_history !757 ; 10 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %asciilib_rsplit.exit, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %bb.ip
  %4 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.xq = getelementptr i8, ptr %i.xo, i64 24     ; 3 uses
  %smin.i311 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.xr = sub i64 %.1, %smin.i311                 ; 4 uses
  %exitcond.not.i3121496 = icmp eq i64 %i.xr, 0
  br i1 %exitcond.not.i3121496, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader

bb.iq:                                            ; preds = %.loopexit.i.i319
  %exitcond.not.i312 = icmp eq i64 %i.zf, %i.xr
  br i1 %exitcond.not.i312, label %.critedge.i.i314, label %.lr.ph.i.i313.preheader, !llvm.loop !758

.lr.ph.i.i313.preheader:                          ; preds = %.lr.ph122.i.i, %bb.iq
  %.050120.i.i1498 = phi i64 [ %i.zg, %bb.iq ], [ %4, %.lr.ph122.i.i ] ; 3 uses
  %.0121.i.i1497 = phi i64 [ %i.zf, %bb.iq ], [ 0, %.lr.ph122.i.i ] ; 4 uses
  br label %.lr.ph.i.i313

.lr.ph.i.i313:                                    ; preds = %.lr.ph.i.i313.preheader, %bb.jh
  %.153117.i.i = phi i64 [ %i.zd, %bb.jh ], [ %.050120.i.i1498, %.lr.ph.i.i313.preheader ] ; 7 uses
  %i.xs = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !237
  %i.xu = icmp eq i8 %i.xt, %i.xl
  br i1 %i.xu, label %bb.ir, label %bb.jh

bb.ir:                                            ; preds = %.lr.ph.i.i313
  %i.xv = getelementptr i8, ptr %.0.i271, i64 %.153117.i.i
  %i.xw = getelementptr i8, ptr %i.xv, i64 1      ; 4 uses
  %i.xx = sub nuw nsw i64 %.050120.i.i1498, %.153117.i.i ; 4 uses
  switch i64 %i.xx, label %bb.is [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i.i
  ]

bb.is:                                            ; preds = %bb.ir
  %i.xy = getelementptr i8, ptr %i.xw, i64 %i.xx  ; 3 uses
  br label %bb.it

bb.it:                                            ; preds = %.thread31.i.i.i.i, %bb.is
  %.019.i.i.i.i = phi ptr [ %i.xw, %bb.is ], [ %i.yg, %.thread31.i.i.i.i ] ; 4 uses
  %i.xz = icmp ult ptr %.019.i.i.i.i, %i.xy
  br i1 %i.xz, label %bb.iu, label %ucs1lib_find_max_char.exit.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.ya = ptrtoint ptr %.019.i.i.i.i to i64
  %i.yb = and i64 %i.ya, 7
  %.not.i.i.i.i328 = icmp eq i64 %i.yb, 0
  br i1 %.not.i.i.i.i328, label %.preheader.i.i.i.i, label %.thread31.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.iu, %bb.iv
  %.017.i.i.i.i = phi ptr [ %i.yc, %bb.iv ], [ %.019.i.i.i.i, %bb.iu ] ; 4 uses
  %i.yc = getelementptr i8, ptr %.017.i.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i.i = icmp ugt ptr %i.yc, %i.xy
  br i1 %.not26.i.i.i.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %.preheader.i.i.i.i
  %i.yd = load i64, ptr %.017.i.i.i.i, align 8, !tbaa !226
  %i.ye = and i64 %i.yd, -9187201950435737472
  %.not27.i.i.i.i = icmp eq i64 %i.ye, 0
  br i1 %.not27.i.i.i.i, label %.preheader.i.i.i.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !0

bb.iw:                                            ; preds = %.preheader.i.i.i.i
  %i.yf = icmp eq ptr %.017.i.i.i.i, %i.xy
  br i1 %i.yf, label %ucs1lib_find_max_char.exit.i.i.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.iw, %bb.iu
  %.2.i.i.i.i = phi ptr [ %.019.i.i.i.i, %bb.iu ], [ %.017.i.i.i.i, %bb.iw ] ; 2 uses
  %i.yg = getelementptr i8, ptr %.2.i.i.i.i, i64 1
  %i.yh = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !237
  %.not28.i.i.i.i = icmp sgt i8 %i.yh, -1
  br i1 %.not28.i.i.i.i, label %bb.it, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i.i.i:                 ; preds = %.thread31.i.i.i.i, %bb.iw, %bb.it, %bb.iv
  %.5.i.i.i.i = phi i32 [ 255, %bb.iv ], [ 127, %bb.iw ], [ 127, %bb.it ], [ 255, %.thread31.i.i.i.i ]
  %i.yi = tail call ptr @PyUnicode_New(i64 noundef %i.xx, i32 noundef %.5.i.i.i.i), !inline_history !759 ; 5 uses
  %.not.i77.i.i321 = icmp eq ptr %i.yi, null
  br i1 %.not.i77.i.i321, label %Py_DECREF.exit69.i.i302, label %bb.ix

bb.ix:                                            ; preds = %ucs1lib_find_max_char.exit.i.i.i
  %i.yj = getelementptr i8, ptr %i.yi, i64 32
  %.val.i.i.i.i322 = load i32, ptr %i.yj, align 8 ; 2 uses
  %i.yk = and i32 %.val.i.i.i.i322, 32
  %.not.i15.i.i.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i15.i.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.yl = and i32 %.val.i.i.i.i322, 64
  %.not.i.i.i.i.i323 = icmp eq i32 %i.yl, 0
  %.0.v.i.i.i.i.i324 = select i1 %.not.i.i.i.i.i323, i64 56, i64 40
  %.0.i.i.i.i.i325 = getelementptr i8, ptr %i.yi, i64 %.0.v.i.i.i.i.i324
  br label %_PyUnicode_DATA.exit.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %i.ym = getelementptr i8, ptr %i.yi, i64 56
  %.val4.i.i.i.i327 = load ptr, ptr %i.ym, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.iz, %bb.iy
  %.0.i.i.i.i326 = phi ptr [ %.0.i.i.i.i.i325, %bb.iy ], [ %.val4.i.i.i.i327, %bb.iz ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i326, ptr align 1 %i.xw, i64 %i.xx, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.i.i:                     ; preds = %bb.ir
  %i.yn = load i8, ptr %i.xw, align 1, !tbaa !237 ; 2 uses
  %i.yo = zext i8 %i.yn to i64                    ; 2 uses
  %i.yp = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.yo
  %i.yq = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.yo
  %i.yr = getelementptr i8, ptr %i.yq, i64 -8192
  %i.ys = icmp slt i8 %i.yn, 0
  %i.yt = select i1 %i.ys, ptr %i.yr, ptr %i.yp   ; 2 uses
  %i.yu = icmp eq ptr %i.yt, null
  br i1 %i.yu, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_FromUCS1.exit.i.i, %_PyUnicode_DATA.exit.i.i.i, %bb.ir
  %.0.i101.i.i = phi ptr [ %i.yt, %_PyUnicode_FromUCS1.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ir ], [ %i.yi, %_PyUnicode_DATA.exit.i.i.i ] ; 7 uses
  %i.yv = icmp samesign ult i64 %.0121.i.i1497, 12
  br i1 %i.yv, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %.val76.i.i320 = load ptr, ptr %i.xq, align 8, !tbaa !280
  %i.yw = getelementptr [8 x i8], ptr %.val76.i.i320, i64 %.0121.i.i1497
  store ptr %.0.i101.i.i, ptr %i.yw, align 8, !tbaa !227
  br label %.loopexit.i.i319

bb.jb:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %i.yx = tail call i32 @PyList_Append(ptr noundef nonnull %i.xo, ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !757
  %.not61.i.i316 = icmp eq i32 %i.yx, 0
  %i.yy = load i32, ptr %.0.i101.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i318 = icmp sgt i32 %i.yy, -1       ; 2 uses
  br i1 %.not61.i.i316, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jd, label %Py_DECREF.exit69.i.i302

bb.jd:                                            ; preds = %bb.jc
  %i.yz = add nsw i32 %i.yy, -1                   ; 2 uses
  store i32 %i.yz, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.za = icmp eq i32 %i.yz, 0
  br i1 %i.za, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.je:                                            ; preds = %bb.jb
  br i1 %.not.i66.i.i318, label %bb.jf, label %.loopexit.i.i319

bb.jf:                                            ; preds = %bb.je
  %i.zb = add nsw i32 %i.yy, -1                   ; 2 uses
  store i32 %i.zb, ptr %.0.i101.i.i, align 8, !tbaa !237
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %bb.jg, label %.loopexit.i.i319

bb.jg:                                            ; preds = %bb.jf
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !757
  br label %.loopexit.i.i319

bb.jh:                                            ; preds = %.lr.ph.i.i313
  %i.zd = add nsw i64 %.153117.i.i, -1
  %i.ze = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.ze, label %.lr.ph.i.i313, label %.critedge.i.i314, !llvm.loop !760

.loopexit.i.i319:                                 ; preds = %bb.jg, %bb.jf, %bb.je, %bb.ja
  %i.zf = add nuw i64 %.0121.i.i1497, 1           ; 3 uses
  %i.zg = add nsw i64 %.153117.i.i, -1            ; 3 uses
  %i.zh = icmp sgt i64 %.153117.i.i, 0
  br i1 %i.zh, label %bb.iq, label %.critedge.i.thread.i299, !llvm.loop !758

.critedge.i.i314:                                 ; preds = %bb.iq, %bb.jh, %.lr.ph122.i.i
  %.050120.i.i1392 = phi i64 [ %.050120.i.i1498, %bb.jh ], [ %4, %.lr.ph122.i.i ], [ %i.zg, %bb.iq ] ; 2 uses
  %.0.lcssa.i.i315 = phi i64 [ %.0121.i.i1497, %bb.jh ], [ %i.xr, %.lr.ph122.i.i ], [ %i.xr, %bb.iq ] ; 2 uses
  %i.zi = icmp eq i64 %.0.lcssa.i.i315, 0
  br i1 %i.zi, label %.critedge.thread.i.i296, label %.critedge.i.thread.i299

.critedge.thread.i.i296:                          ; preds = %.critedge.i.i314
  %i.zj = getelementptr i8, ptr %0, i64 8
  %.val.i.i297 = load ptr, ptr %i.zj, align 8, !tbaa !229
  %.not.i82.i298 = icmp eq ptr %.val.i.i297, @PyUnicode_Type
  br i1 %.not.i82.i298, label %bb.ji, label %.critedge.i.thread.i299

bb.ji:                                            ; preds = %.critedge.thread.i.i296
  %i.zk = load i32, ptr %0, align 8, !tbaa !237   ; 2 uses
  %i.zl = icmp ugt i32 %i.zk, -1073741825
  br i1 %i.zl, label %Py_INCREF.exit.i.i309, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.zm = add nuw i32 %i.zk, 1
  store i32 %i.zm, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i309

Py_INCREF.exit.i.i309:                            ; preds = %bb.jj, %bb.ji
  %.val75.i.i310 = load ptr, ptr %i.xq, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i310, align 8, !tbaa !227
  br label %bb.ka

.critedge.i.thread.i299:                          ; preds = %.loopexit.i.i319, %.critedge.thread.i.i296, %.critedge.i.i314
  %.0.lcssa155.i.i = phi i64 [ 0, %.critedge.thread.i.i296 ], [ %.0.lcssa.i.i315, %.critedge.i.i314 ], [ %i.zf, %.loopexit.i.i319 ] ; 4 uses
  %.050.lcssa153.i.i = phi i64 [ %.050120.i.i1392, %.critedge.thread.i.i296 ], [ %.050120.i.i1392, %.critedge.i.i314 ], [ %i.zg, %.loopexit.i.i319 ] ; 2 uses
  %i.zn = icmp sgt i64 %.050.lcssa153.i.i, -2
  br i1 %i.zn, label %bb.jk, label %bb.ka

bb.jk:                                            ; preds = %.critedge.i.thread.i299
  %i.zo = add nsw i64 %.050.lcssa153.i.i, 1       ; 4 uses
  switch i64 %i.zo, label %bb.jl [
    i64 0, label %_PyUnicode_FromUCS1.exit99.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit99.i.i
  ]

bb.jl:                                            ; preds = %bb.jk
  %i.zp = getelementptr i8, ptr %.0.i271, i64 %i.zo ; 3 uses
  br label %bb.jm

bb.jm:                                            ; preds = %.thread31.i.i92.i.i, %bb.jl
  %.019.i.i79.i.i = phi ptr [ %.0.i271, %bb.jl ], [ %i.zx, %.thread31.i.i92.i.i ] ; 4 uses
  %i.zq = icmp ult ptr %.019.i.i79.i.i, %i.zp
  br i1 %i.zq, label %bb.jn, label %ucs1lib_find_max_char.exit.i80.i.i

bb.jn:                                            ; preds = %bb.jm
  %i.zr = ptrtoint ptr %.019.i.i79.i.i to i64
  %i.zs = and i64 %i.zr, 7
  %.not.i.i91.i.i = icmp eq i64 %i.zs, 0
  br i1 %.not.i.i91.i.i, label %.preheader.i.i95.i.i, label %.thread31.i.i92.i.i

.preheader.i.i95.i.i:                             ; preds = %bb.jn, %bb.jo
  %.017.i.i96.i.i = phi ptr [ %i.zt, %bb.jo ], [ %.019.i.i79.i.i, %bb.jn ] ; 4 uses
  %i.zt = getelementptr i8, ptr %.017.i.i96.i.i, i64 8 ; 2 uses
  %.not26.i.i97.i.i = icmp ugt ptr %i.zt, %i.zp
  br i1 %.not26.i.i97.i.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %.preheader.i.i95.i.i
  %i.zu = load i64, ptr %.017.i.i96.i.i, align 8, !tbaa !226
  %i.zv = and i64 %i.zu, -9187201950435737472
  %.not27.i.i98.i.i = icmp eq i64 %i.zv, 0
  br i1 %.not27.i.i98.i.i, label %.preheader.i.i95.i.i, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !0

bb.jp:                                            ; preds = %.preheader.i.i95.i.i
  %i.zw = icmp eq ptr %.017.i.i96.i.i, %i.zp
  br i1 %i.zw, label %ucs1lib_find_max_char.exit.i80.i.i, label %.thread31.i.i92.i.i

.thread31.i.i92.i.i:                              ; preds = %bb.jp, %bb.jn
  %.2.i.i93.i.i = phi ptr [ %.019.i.i79.i.i, %bb.jn ], [ %.017.i.i96.i.i, %bb.jp ] ; 2 uses
  %i.zx = getelementptr i8, ptr %.2.i.i93.i.i, i64 1
  %i.zy = load i8, ptr %.2.i.i93.i.i, align 1, !tbaa !237
  %.not28.i.i94.i.i = icmp sgt i8 %i.zy, -1
  br i1 %.not28.i.i94.i.i, label %bb.jm, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i80.i.i:               ; preds = %.thread31.i.i92.i.i, %bb.jp, %bb.jm, %bb.jo
  %.5.i.i81.i.i = phi i32 [ 255, %bb.jo ], [ 127, %bb.jp ], [ 127, %bb.jm ], [ 255, %.thread31.i.i92.i.i ]
  %i.zz = tail call ptr @PyUnicode_New(i64 noundef %i.zo, i32 noundef %.5.i.i81.i.i), !inline_history !759 ; 5 uses
  %.not.i82.i.i = icmp eq ptr %i.zz, null
  br i1 %.not.i82.i.i, label %Py_DECREF.exit69.i.i302, label %bb.jq

bb.jq:                                            ; preds = %ucs1lib_find_max_char.exit.i80.i.i
  %i.aaa = getelementptr i8, ptr %i.zz, i64 32
  %.val.i.i83.i.i = load i32, ptr %i.aaa, align 8 ; 2 uses
  %i.aab = and i32 %.val.i.i83.i.i, 32
  %.not.i15.i84.i.i = icmp eq i32 %i.aab, 0
  br i1 %.not.i15.i84.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aac = and i32 %.val.i.i83.i.i, 64
  %.not.i.i.i85.i.i = icmp eq i32 %i.aac, 0
  %.0.v.i.i.i86.i.i = select i1 %.not.i.i.i85.i.i, i64 56, i64 40
  %.0.i.i.i87.i.i = getelementptr i8, ptr %i.zz, i64 %.0.v.i.i.i86.i.i
  br label %_PyUnicode_DATA.exit.i88.i.i

bb.js:                                            ; preds = %bb.jq
  %i.aad = getelementptr i8, ptr %i.zz, i64 56
  %.val4.i.i90.i.i = load ptr, ptr %i.aad, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i88.i.i

_PyUnicode_DATA.exit.i88.i.i:                     ; preds = %bb.js, %bb.jr
  %.0.i.i89.i.i = phi ptr [ %.0.i.i.i87.i.i, %bb.jr ], [ %.val4.i.i90.i.i, %bb.js ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i.i, ptr align 1 %.0.i271, i64 %i.zo, i1 false)
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.i.i:                   ; preds = %bb.jk
  %i.aae = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.aaf = zext i8 %i.aae to i64                  ; 2 uses
  %i.aag = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aaf
  %i.aah = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aaf
  %i.aai = getelementptr i8, ptr %i.aah, i64 -8192
  %i.aaj = icmp slt i8 %i.aae, 0
  %i.aak = select i1 %i.aaj, ptr %i.aai, ptr %i.aag ; 2 uses
  %i.aal = icmp eq ptr %i.aak, null
  br i1 %i.aal, label %Py_DECREF.exit69.i.i302, label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_FromUCS1.exit99.i.i, %_PyUnicode_DATA.exit.i88.i.i, %bb.jk
  %.0.i78105.i.i = phi ptr [ %i.aak, %_PyUnicode_FromUCS1.exit99.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jk ], [ %i.zz, %_PyUnicode_DATA.exit.i88.i.i ] ; 7 uses
  %i.aam = icmp slt i64 %.0.lcssa155.i.i, 12
  br i1 %i.aam, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %.val74.i.i308 = load ptr, ptr %i.xq, align 8, !tbaa !280
  %i.aan = getelementptr [8 x i8], ptr %.val74.i.i308, i64 %.0.lcssa155.i.i
  store ptr %.0.i78105.i.i, ptr %i.aan, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i307

bb.ju:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aao = tail call i32 @PyList_Append(ptr noundef nonnull %i.xo, ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  %.not60.i.i304 = icmp eq i32 %i.aao, 0
  %i.aap = load i32, ptr %.0.i78105.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i305 = icmp sgt i32 %i.aap, -1      ; 2 uses
  br i1 %.not60.i.i304, label %bb.jx, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jw, label %Py_DECREF.exit69.i.i302

bb.jw:                                            ; preds = %bb.jv
  %i.aaq = add nsw i32 %i.aap, -1                 ; 2 uses
  store i32 %i.aaq, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %Py_DECREF.exit69.sink.split.i.i306, label %Py_DECREF.exit69.i.i302

bb.jx:                                            ; preds = %bb.ju
  br i1 %.not.i62.i.i305, label %bb.jy, label %Py_DECREF.exit63.i.i307

bb.jy:                                            ; preds = %bb.jx
  %i.aas = add nsw i32 %i.aap, -1                 ; 2 uses
  store i32 %i.aas, ptr %.0.i78105.i.i, align 8, !tbaa !237
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %bb.jz, label %Py_DECREF.exit63.i.i307

bb.jz:                                            ; preds = %bb.jy
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit63.i.i307

Py_DECREF.exit63.i.i307:                          ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt
  %i.aau = add i64 %.0.lcssa155.i.i, 1
  br label %bb.ka

bb.ka:                                            ; preds = %Py_DECREF.exit63.i.i307, %.critedge.i.thread.i299, %Py_INCREF.exit.i.i309
  %.2.i.i300 = phi i64 [ 1, %Py_INCREF.exit.i.i309 ], [ %i.aau, %Py_DECREF.exit63.i.i307 ], [ %.0.lcssa155.i.i, %.critedge.i.thread.i299 ]
  %i.aav = getelementptr i8, ptr %i.xo, i64 16
  store i64 %.2.i.i300, ptr %i.aav, align 8, !tbaa !263
  %i.aaw = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.xo) #33, !inline_history !757
  %i.aax = icmp slt i32 %i.aaw, 0
  br i1 %i.aax, label %Py_DECREF.exit69.i.i302, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i306:               ; preds = %bb.jw, %bb.jd
  %.0.i78105.sink.i.i = phi ptr [ %.0.i101.i.i, %bb.jd ], [ %.0.i78105.i.i, %bb.jw ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.sink.i.i) #33, !inline_history !757
  br label %Py_DECREF.exit69.i.i302

Py_DECREF.exit69.i.i302:                          ; preds = %_PyUnicode_FromUCS1.exit.i.i, %ucs1lib_find_max_char.exit.i.i.i, %Py_DECREF.exit69.sink.split.i.i306, %bb.ka, %bb.jw, %bb.jv, %_PyUnicode_FromUCS1.exit99.i.i, %ucs1lib_find_max_char.exit.i80.i.i, %bb.jd, %bb.jc
  %i.aay = load i32, ptr %i.xo, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i303 = icmp sgt i32 %i.aay, -1
  br i1 %.not.i.i.i303, label %bb.kb, label %asciilib_rsplit.exit

bb.kb:                                            ; preds = %Py_DECREF.exit69.i.i302
  %i.aaz = add nsw i32 %i.aay, -1                 ; 2 uses
  store i32 %i.aaz, ptr %i.xo, align 8, !tbaa !237
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.kc, label %asciilib_rsplit.exit

bb.kc:                                            ; preds = %bb.kb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.xo) #33, !inline_history !757
  br label %asciilib_rsplit.exit

bb.kd:                                            ; preds = %bb.in
  %i.abb = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.abc = add nsw i64 %i.abb, 1
  %i.abd = tail call ptr @PyList_New(i64 noundef %i.abc) #33, !inline_history !756 ; 12 uses
  %i.abe = icmp eq ptr %i.abd, null
  br i1 %i.abe, label %asciilib_rsplit.exit, label %.preheader.i329

.preheader.i329:                                  ; preds = %bb.kd
  %i.abf = icmp slt i64 %.1, 1
  br i1 %i.abf, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %.preheader.i329
  %i.abg = icmp slt i64 %.val99, 2
  %i.abh = add i64 %.val99, -1                    ; 6 uses
  %i.abi = getelementptr i8, ptr %i.abd, i64 24
  br i1 %i.abg, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i330.split.preheader

.lr.ph.i330.split.preheader:                      ; preds = %.lr.ph.i330
  %xtraiter1734 = and i64 %i.abh, 1
  %lcmp.mod1735.not = icmp eq i64 %xtraiter1734, 0
  %i.abj = getelementptr i8, ptr %.080, i64 %i.abh
  %i.abk = add nsw i64 %.val99, -2                ; 2 uses
  %i.abl = icmp eq i64 %.val99, 2
  br label %.lr.ph.i330.split

.lr.ph.i330.split:                                ; preds = %.lr.ph.i330.split.preheader, %Py_DECREF.exit72.i360
  %.in.i331 = phi i64 [ %i.abw, %Py_DECREF.exit72.i360 ], [ %.1, %.lr.ph.i330.split.preheader ] ; 2 uses
  %.0156.i = phi i64 [ %i.aey, %Py_DECREF.exit72.i360 ], [ 0, %.lr.ph.i330.split.preheader ] ; 5 uses
  %.057155.i = phi i64 [ %.14865.us.i.i.i348, %Py_DECREF.exit72.i360 ], [ %.val100, %.lr.ph.i330.split.preheader ] ; 5 uses
  %i.abm = load i8, ptr %.080, align 1, !tbaa !237 ; 5 uses
  %i.abn = and i8 %i.abm, 63
  %i.abo = zext nneg i8 %i.abn to i64
  %i.abp = shl nuw i64 1, %i.abo                  ; 2 uses
  br i1 %lcmp.mod1735.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %.lr.ph.i330.split
  %i.abq = load i8, ptr %i.abj, align 1, !tbaa !237 ; 2 uses
  %i.abr = and i8 %i.abq, 63
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = shl nuw i64 1, %i.abs
  %i.abu = or i64 %i.abt, %i.abp                  ; 2 uses
  %i.abv = icmp eq i8 %i.abq, %i.abm
  %spec.select.i76.i.i.prol = select i1 %i.abv, i64 %i.abk, i64 %i.abh ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %.lr.ph.i330.split
  %.060.i.i.i332.unr = phi i64 [ %i.abh, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i333.unr = phi i64 [ %i.abh, %.lr.ph.i330.split ], [ %i.abk, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i334.unr = phi i64 [ %i.abp, %.lr.ph.i330.split ], [ %i.abu, %.lr.ph.i75.i.i.prol ]
  %.lcssa1594.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %i.abu, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i330.split ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  br i1 %i.abl, label %.preheader56.i.i.i335, label %.lr.ph.i75.i.i

.preheader56.i.i.i335:                            ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa1594 = phi i64 [ %.lcssa1594.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.adl, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.abw = add nsw i64 %.in.i331, -1
  %i.abx = sub i64 %.057155.i, %.val99            ; 2 uses
  %i.aby = icmp sgt i64 %i.abx, -1
  br i1 %i.aby, label %.lr.ph66.split.us.i.i.i347, label %ucs1lib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i347:                       ; preds = %.preheader56.i.i.i335, %bb.kj
  %.14865.us.i.i.i348 = phi i64 [ %i.acw, %bb.kj ], [ %i.abx, %.preheader56.i.i.i335 ] ; 9 uses
  %i.abz = getelementptr i8, ptr %.0.i271, i64 %.14865.us.i.i.i348 ; 4 uses
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !237
  %i.acb = icmp eq i8 %i.aca, %i.abm
  br i1 %i.acb, label %.preheader.us.i78.i.i, label %bb.ke

bb.ke:                                            ; preds = %.lr.ph66.split.us.i.i.i347
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i348, 0
  br i1 %.not.us.i77.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.acc = getelementptr i8, ptr %i.abz, i64 -1
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !237
  %i.ace = and i8 %i.acd, 63
  %i.acf = zext nneg i8 %i.ace to i64
  %i.acg = shl nuw i64 1, %i.acf
  %i.ach = and i64 %i.acg, %.lcssa1594
  %.not51.us.i.i.i349 = icmp eq i64 %i.ach, 0
  %i.aci = select i1 %.not51.us.i.i.i349, i64 %.val99, i64 0
  br label %bb.kj

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i347, %bb.kg
  %.04662.us.i.i.i351 = phi i64 [ %i.acn, %bb.kg ], [ %i.abh, %.lr.ph66.split.us.i.i.i347 ] ; 4 uses
  %i.acj = getelementptr i8, ptr %i.abz, i64 %.04662.us.i.i.i351
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !237
  %i.acl = getelementptr i8, ptr %.080, i64 %.04662.us.i.i.i351
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !237
  %.not52.us.i.i.i352 = icmp eq i8 %i.ack, %i.acm
  br i1 %.not52.us.i.i.i352, label %bb.kg, label %.thread.us.i.i.i

bb.kg:                                            ; preds = %.preheader.us.i78.i.i
  %i.acn = add nsw i64 %.04662.us.i.i.i351, -1
  %i.aco = icmp sgt i64 %.04662.us.i.i.i351, 1
  br i1 %i.aco, label %.preheader.us.i78.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !28

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i353 = icmp eq i64 %.14865.us.i.i.i348, 0
  br i1 %.not53.us.i.i.i353, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %.thread.us.i.i.i
  %i.acp = getelementptr i8, ptr %i.abz, i64 -1
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !237
  %i.acr = and i8 %i.acq, 63
  %i.acs = zext nneg i8 %i.acr to i64
  %i.act = shl nuw i64 1, %i.acs
  %i.acu = and i64 %i.act, %.lcssa1594
  %.not54.us.i.i.i354 = icmp eq i64 %i.acu, 0
  br i1 %.not54.us.i.i.i354, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread.us.i.i.i
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %bb.kf
  %spec.select.lcssa.sink.i.i.i350 = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.ki ], [ %i.aci, %bb.kf ], [ %.val99, %bb.kh ]
  %i.acv = sub nsw i64 %.14865.us.i.i.i348, %spec.select.lcssa.sink.i.i.i350 ; 2 uses
  %i.acw = add nsw i64 %i.acv, -1
  %i.acx = icmp sgt i64 %i.acv, 0
  br i1 %i.acx, label %.lr.ph66.split.us.i.i.i347, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !29

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i332 = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i332.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i333 = phi i64 [ %i.adn, %.lr.ph.i75.i.i ], [ %.04759.i.i.i333.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i334 = phi i64 [ %i.adl, %.lr.ph.i75.i.i ], [ %.04958.i.i.i334.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.acy = getelementptr i8, ptr %.080, i64 %.04759.i.i.i333
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !237 ; 2 uses
  %i.ada = and i8 %i.acz, 63
  %i.adb = zext nneg i8 %i.ada to i64
  %i.adc = shl nuw i64 1, %i.adb
  %i.add = or i64 %i.adc, %.04958.i.i.i334
  %i.ade = icmp eq i8 %i.acz, %i.abm
  %i.adf = add nsw i64 %.04759.i.i.i333, -1       ; 2 uses
  %spec.select.i76.i.i = select i1 %i.ade, i64 %i.adf, i64 %.060.i.i.i332
  %i.adg = getelementptr i8, ptr %.080, i64 %i.adf
end_hunk_1
begin_hunk_2_@rsplit:bb.a
  br i1 %i.afb, label %ucs1lib_fastsearch.exit.thread.thread.i, label %ucs1lib_fastsearch.exit.thread.thread242.i

ucs1lib_fastsearch.exit.thread.thread.i:          ; preds = %.lr.ph.i330, %ucs1lib_fastsearch.exit.thread.i, %.preheader.i329
  %.057141239.i = phi i64 [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i329 ], [ %.val100, %.lr.ph.i330 ]
  %i.afc = getelementptr i8, ptr %0, i64 8
  %.val.i344 = load ptr, ptr %i.afc, align 8, !tbaa !229
  %.not120.i = icmp eq ptr %.val.i344, @PyUnicode_Type
  br i1 %.not120.i, label %bb.la, label %ucs1lib_fastsearch.exit.thread.thread242.i

bb.la:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread.i
  %i.afd = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.afe = icmp ugt i32 %i.afd, -1073741825
  br i1 %i.afe, label %Py_INCREF.exit.i345, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aff = add nuw i32 %i.afd, 1
  store i32 %i.aff, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i345

Py_INCREF.exit.i345:                              ; preds = %bb.lb, %bb.la
  %i.afg = getelementptr i8, ptr %i.abd, i64 24
  %.val80.i346 = load ptr, ptr %i.afg, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i346, align 8, !tbaa !227
  br label %bb.lr

ucs1lib_fastsearch.exit.thread.thread242.i:       ; preds = %Py_DECREF.exit72.i360, %ucs1lib_fastsearch.exit.thread.thread.i, %ucs1lib_fastsearch.exit.thread.i
  %.0136240.i = phi i64 [ 0, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.0156.i, %ucs1lib_fastsearch.exit.thread.i ], [ %i.aey, %Py_DECREF.exit72.i360 ] ; 3 uses
  %.057141238.i = phi i64 [ %.057141239.i, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.057155.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.14865.us.i.i.i348, %Py_DECREF.exit72.i360 ] ; 4 uses
  switch i64 %.057141238.i, label %bb.lc [
    i64 0, label %_PyUnicode_FromUCS1.exit110.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit110.i
  ]

bb.lc:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread242.i
  %i.afh = getelementptr i8, ptr %.0.i271, i64 %.057141238.i ; 3 uses
  br label %bb.ld

bb.ld:                                            ; preds = %.thread31.i.i103.i, %bb.lc
  %.019.i.i90.i = phi ptr [ %.0.i271, %bb.lc ], [ %i.afp, %.thread31.i.i103.i ] ; 4 uses
  %i.afi = icmp ult ptr %.019.i.i90.i, %i.afh
  br i1 %i.afi, label %bb.le, label %ucs1lib_find_max_char.exit.i91.i

bb.le:                                            ; preds = %bb.ld
  %i.afj = ptrtoint ptr %.019.i.i90.i to i64
  %i.afk = and i64 %i.afj, 7
  %.not.i.i102.i = icmp eq i64 %i.afk, 0
  br i1 %.not.i.i102.i, label %.preheader.i.i106.i, label %.thread31.i.i103.i

.preheader.i.i106.i:                              ; preds = %bb.le, %bb.lf
  %.017.i.i107.i = phi ptr [ %i.afl, %bb.lf ], [ %.019.i.i90.i, %bb.le ] ; 4 uses
  %i.afl = getelementptr i8, ptr %.017.i.i107.i, i64 8 ; 2 uses
  %.not26.i.i108.i = icmp ugt ptr %i.afl, %i.afh
  br i1 %.not26.i.i108.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.preheader.i.i106.i
  %i.afm = load i64, ptr %.017.i.i107.i, align 8, !tbaa !226
  %i.afn = and i64 %i.afm, -9187201950435737472
  %.not27.i.i109.i = icmp eq i64 %i.afn, 0
  br i1 %.not27.i.i109.i, label %.preheader.i.i106.i, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !0

bb.lg:                                            ; preds = %.preheader.i.i106.i
  %i.afo = icmp eq ptr %.017.i.i107.i, %i.afh
  br i1 %i.afo, label %ucs1lib_find_max_char.exit.i91.i, label %.thread31.i.i103.i

.thread31.i.i103.i:                               ; preds = %bb.lg, %bb.le
  %.2.i.i104.i = phi ptr [ %.019.i.i90.i, %bb.le ], [ %.017.i.i107.i, %bb.lg ] ; 2 uses
  %i.afp = getelementptr i8, ptr %.2.i.i104.i, i64 1
  %i.afq = load i8, ptr %.2.i.i104.i, align 1, !tbaa !237
  %.not28.i.i105.i = icmp sgt i8 %i.afq, -1
  br i1 %.not28.i.i105.i, label %bb.ld, label %ucs1lib_find_max_char.exit.i91.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i91.i:                 ; preds = %.thread31.i.i103.i, %bb.lg, %bb.ld, %bb.lf
  %.5.i.i92.i = phi i32 [ 255, %bb.lf ], [ 127, %bb.ld ], [ 127, %bb.lg ], [ 255, %.thread31.i.i103.i ]
  %i.afr = tail call ptr @PyUnicode_New(i64 noundef %.057141238.i, i32 noundef %.5.i.i92.i), !inline_history !761 ; 5 uses
  %.not.i93.i = icmp eq ptr %i.afr, null
  br i1 %.not.i93.i, label %Py_DECREF.exit74.i338, label %bb.lh

bb.lh:                                            ; preds = %ucs1lib_find_max_char.exit.i91.i
  %i.afs = getelementptr i8, ptr %i.afr, i64 32
  %.val.i.i94.i = load i32, ptr %i.afs, align 8   ; 2 uses
  %i.aft = and i32 %.val.i.i94.i, 32
  %.not.i15.i95.i = icmp eq i32 %i.aft, 0
  br i1 %.not.i15.i95.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.afu = and i32 %.val.i.i94.i, 64
  %.not.i.i.i96.i = icmp eq i32 %i.afu, 0
  %.0.v.i.i.i97.i = select i1 %.not.i.i.i96.i, i64 56, i64 40
  %.0.i.i.i98.i = getelementptr i8, ptr %i.afr, i64 %.0.v.i.i.i97.i
  br label %_PyUnicode_DATA.exit.i99.i

bb.lj:                                            ; preds = %bb.lh
  %i.afv = getelementptr i8, ptr %i.afr, i64 56
  %.val4.i.i101.i = load ptr, ptr %i.afv, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i99.i

_PyUnicode_DATA.exit.i99.i:                       ; preds = %bb.lj, %bb.li
  %.0.i.i100.i = phi ptr [ %.0.i.i.i98.i, %bb.li ], [ %.val4.i.i101.i, %bb.lj ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i100.i, ptr align 1 %.0.i271, i64 %.057141238.i, i1 false)
  br label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.i:                    ; preds = %ucs1lib_fastsearch.exit.thread.thread242.i
  %i.afw = load i8, ptr %.0.i271, align 1, !tbaa !237 ; 2 uses
  %i.afx = zext i8 %i.afw to i64                  ; 2 uses
  %i.afy = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.afx
  %i.afz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.afx
  %i.aga = getelementptr i8, ptr %i.afz, i64 -8192
  %i.agb = icmp slt i8 %i.afw, 0
  %i.agc = select i1 %i.agb, ptr %i.aga, ptr %i.afy ; 2 uses
  %i.agd = icmp eq ptr %i.agc, null
  br i1 %i.agd, label %Py_DECREF.exit74.i338, label %_PyUnicode_FromUCS1.exit110.thread.i

_PyUnicode_FromUCS1.exit110.thread.i:             ; preds = %_PyUnicode_FromUCS1.exit110.i, %_PyUnicode_DATA.exit.i99.i, %ucs1lib_fastsearch.exit.thread.thread242.i
  %.0.i89117.i = phi ptr [ %i.agc, %_PyUnicode_FromUCS1.exit110.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %ucs1lib_fastsearch.exit.thread.thread242.i ], [ %i.afr, %_PyUnicode_DATA.exit.i99.i ] ; 7 uses
  %i.age = icmp slt i64 %.0136240.i, 12
  br i1 %i.age, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agf = getelementptr i8, ptr %i.abd, i64 24
  %.val79.i343 = load ptr, ptr %i.agf, align 8, !tbaa !280
  %i.agg = getelementptr [8 x i8], ptr %.val79.i343, i64 %.0136240.i
  store ptr %.0.i89117.i, ptr %i.agg, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i341

bb.ll:                                            ; preds = %_PyUnicode_FromUCS1.exit110.thread.i
  %i.agh = tail call i32 @PyList_Append(ptr noundef nonnull %i.abd, ptr noundef nonnull %.0.i89117.i) #33, !inline_history !756
  %.not66.i336 = icmp eq i32 %i.agh, 0
  %i.agi = load i32, ptr %.0.i89117.i, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i337 = icmp sgt i32 %i.agi, -1        ; 2 uses
  br i1 %.not66.i336, label %bb.lo, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  br i1 %.not.i67.i337, label %bb.ln, label %Py_DECREF.exit74.i338

bb.ln:                                            ; preds = %bb.lm
  %i.agj = add nsw i32 %i.agi, -1                 ; 2 uses
  store i32 %i.agj, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %Py_DECREF.exit74.sink.split.i340, label %Py_DECREF.exit74.i338

bb.lo:                                            ; preds = %bb.ll
  br i1 %.not.i67.i337, label %bb.lp, label %Py_DECREF.exit68.i341

bb.lp:                                            ; preds = %bb.lo
  %i.agl = add nsw i32 %i.agi, -1                 ; 2 uses
  store i32 %i.agl, ptr %.0.i89117.i, align 8, !tbaa !237
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %bb.lq, label %Py_DECREF.exit68.i341

bb.lq:                                            ; preds = %bb.lp
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.i) #33, !inline_history !756
  br label %Py_DECREF.exit68.i341

Py_DECREF.exit68.i341:                            ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lk
  %i.agn = add i64 %.0136240.i, 1
  br label %bb.lr

bb.lr:                                            ; preds = %Py_DECREF.exit68.i341, %Py_INCREF.exit.i345
  %.1.i342 = phi i64 [ 1, %Py_INCREF.exit.i345 ], [ %i.agn, %Py_DECREF.exit68.i341 ]
  %i.ago = getelementptr i8, ptr %i.abd, i64 16
  store i64 %.1.i342, ptr %i.ago, align 8, !tbaa !263
  %i.agp = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.abd) #33, !inline_history !756
  %i.agq = icmp slt i32 %i.agp, 0
  br i1 %i.agq, label %Py_DECREF.exit74.i338, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i340:                 ; preds = %bb.ln, %bb.kw
  %.0.i89117.sink.i = phi ptr [ %.0.i83113.i, %bb.kw ], [ %.0.i89117.i, %bb.ln ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i89117.sink.i) #33, !inline_history !756
  br label %Py_DECREF.exit74.i338

Py_DECREF.exit74.i338:                            ; preds = %_PyUnicode_FromUCS1.exit.i355, %ucs1lib_find_max_char.exit.i.i364, %Py_DECREF.exit74.sink.split.i340, %bb.lr, %bb.ln, %bb.lm, %_PyUnicode_FromUCS1.exit110.i, %ucs1lib_find_max_char.exit.i91.i, %bb.kw, %bb.kv
  %i.agr = load i32, ptr %i.abd, align 8, !tbaa !237 ; 2 uses
  %.not.i.i339 = icmp sgt i32 %i.agr, -1
  br i1 %.not.i.i339, label %bb.ls, label %asciilib_rsplit.exit

bb.ls:                                            ; preds = %Py_DECREF.exit74.i338
  %i.ags = add nsw i32 %i.agr, -1                 ; 2 uses
  store i32 %i.ags, ptr %i.abd, align 8, !tbaa !237
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.lt, label %asciilib_rsplit.exit

bb.lt:                                            ; preds = %bb.ls
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abd) #33, !inline_history !756
  br label %asciilib_rsplit.exit

bb.lu:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.mw [
    i64 0, label %bb.lv
    i64 1, label %bb.lw
  ]

bb.lv:                                            ; preds = %bb.lu
  %i.agu = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.agu, ptr noundef nonnull @.str.197) #33, !inline_history !763
  br label %asciilib_rsplit.exit

bb.lw:                                            ; preds = %bb.lu
  %i.agv = load i16, ptr %.080, align 2, !tbaa !240
  %i.agw = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.agx = add nsw i64 %i.agw, 1
  %i.agy = tail call ptr @PyList_New(i64 noundef %i.agx) #33, !inline_history !764 ; 10 uses
  %i.agz = icmp eq ptr %i.agy, null
  br i1 %i.agz, label %asciilib_rsplit.exit, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.lw
  %5 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agy, i64 24   ; 3 uses
  %smin.i397 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.ahb = sub i64 %.1, %smin.i397                ; 4 uses
  %exitcond.not.i3981488 = icmp eq i64 %i.ahb, 0
  br i1 %exitcond.not.i3981488, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader

bb.lx:                                            ; preds = %.loopexit.i.i405
  %exitcond.not.i398 = icmp eq i64 %i.ahu, %i.ahb
  br i1 %exitcond.not.i398, label %.critedge.i.i400, label %.lr.ph.i.i399.preheader, !llvm.loop !765

.lr.ph.i.i399.preheader:                          ; preds = %.lr.ph89.i.i, %bb.lx
  %.05087.i.i1490 = phi i64 [ %i.ahv, %bb.lx ], [ %5, %.lr.ph89.i.i ] ; 3 uses
  %.088.i.i1489 = phi i64 [ %i.ahu, %bb.lx ], [ 0, %.lr.ph89.i.i ] ; 4 uses
  br label %.lr.ph.i.i399

.lr.ph.i.i399:                                    ; preds = %.lr.ph.i.i399.preheader, %bb.mh
  %.15384.i.i = phi i64 [ %i.ahs, %bb.mh ], [ %.05087.i.i1490, %.lr.ph.i.i399.preheader ] ; 7 uses
  %i.ahc = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !240
  %i.ahe = icmp eq i16 %i.ahd, %i.agv
  br i1 %i.ahe, label %bb.ly, label %bb.mh

bb.ly:                                            ; preds = %.lr.ph.i.i399
  %i.ahf = getelementptr [2 x i8], ptr %.0.i271, i64 %.15384.i.i
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 2
  %i.ahh = sub nuw nsw i64 %.05087.i.i1490, %.15384.i.i
  %i.ahi = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.ahg, i64 noundef %i.ahh), !inline_history !764 ; 8 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %Py_DECREF.exit69.i.i388, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.ahk = icmp samesign ult i64 %.088.i.i1489, 12
  br i1 %i.ahk, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %.val76.i.i406 = load ptr, ptr %i.aha, align 8, !tbaa !280
  %i.ahl = getelementptr [8 x i8], ptr %.val76.i.i406, i64 %.088.i.i1489
  store ptr %i.ahi, ptr %i.ahl, align 8, !tbaa !227
  br label %.loopexit.i.i405

bb.mb:                                            ; preds = %bb.lz
  %i.ahm = tail call i32 @PyList_Append(ptr noundef nonnull %i.agy, ptr noundef nonnull %i.ahi) #33, !inline_history !764
  %.not61.i.i402 = icmp eq i32 %i.ahm, 0
  %i.ahn = load i32, ptr %i.ahi, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i404 = icmp sgt i32 %i.ahn, -1      ; 2 uses
  br i1 %.not61.i.i402, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.md, label %Py_DECREF.exit69.i.i388

bb.md:                                            ; preds = %bb.mc
  %i.aho = add nsw i32 %i.ahn, -1                 ; 2 uses
  store i32 %i.aho, ptr %i.ahi, align 8, !tbaa !237
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.me:                                            ; preds = %bb.mb
  br i1 %.not.i66.i.i404, label %bb.mf, label %.loopexit.i.i405

bb.mf:                                            ; preds = %bb.me
  %i.ahq = add nsw i32 %i.ahn, -1                 ; 2 uses
  store i32 %i.ahq, ptr %i.ahi, align 8, !tbaa !237
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %bb.mg, label %.loopexit.i.i405

bb.mg:                                            ; preds = %bb.mf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ahi) #33, !inline_history !764
  br label %.loopexit.i.i405

bb.mh:                                            ; preds = %.lr.ph.i.i399
  %i.ahs = add nsw i64 %.15384.i.i, -1
  %i.aht = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.aht, label %.lr.ph.i.i399, label %.critedge.i.i400, !llvm.loop !766

.loopexit.i.i405:                                 ; preds = %bb.mg, %bb.mf, %bb.me, %bb.ma
  %i.ahu = add nuw i64 %.088.i.i1489, 1           ; 3 uses
  %i.ahv = add nsw i64 %.15384.i.i, -1            ; 3 uses
  %i.ahw = icmp sgt i64 %.15384.i.i, 0
  br i1 %i.ahw, label %bb.lx, label %.critedge.i.thread.i385, !llvm.loop !765

.critedge.i.i400:                                 ; preds = %bb.lx, %bb.mh, %.lr.ph89.i.i
  %.05087.i.i1447 = phi i64 [ %.05087.i.i1490, %bb.mh ], [ %5, %.lr.ph89.i.i ], [ %i.ahv, %bb.lx ] ; 2 uses
  %.0.lcssa.i.i401 = phi i64 [ %.088.i.i1489, %bb.mh ], [ %i.ahb, %.lr.ph89.i.i ], [ %i.ahb, %bb.lx ] ; 2 uses
  %i.ahx = icmp eq i64 %.0.lcssa.i.i401, 0
  br i1 %i.ahx, label %.critedge.thread.i.i382, label %.critedge.i.thread.i385

.critedge.thread.i.i382:                          ; preds = %.critedge.i.i400
  %i.ahy = getelementptr i8, ptr %0, i64 8
  %.val.i.i383 = load ptr, ptr %i.ahy, align 8, !tbaa !229
  %.not.i82.i384 = icmp eq ptr %.val.i.i383, @PyUnicode_Type
  br i1 %.not.i82.i384, label %bb.mi, label %.critedge.i.thread.i385

bb.mi:                                            ; preds = %.critedge.thread.i.i382
  %i.ahz = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.aia = icmp ugt i32 %i.ahz, -1073741825
  br i1 %i.aia, label %Py_INCREF.exit.i.i395, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.aib = add nuw i32 %i.ahz, 1
  store i32 %i.aib, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i395

Py_INCREF.exit.i.i395:                            ; preds = %bb.mj, %bb.mi
  %.val75.i.i396 = load ptr, ptr %i.aha, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i396, align 8, !tbaa !227
  br label %bb.mt

.critedge.i.thread.i385:                          ; preds = %.loopexit.i.i405, %.critedge.thread.i.i382, %.critedge.i.i400
  %.0.lcssa113.i.i = phi i64 [ 0, %.critedge.thread.i.i382 ], [ %.0.lcssa.i.i401, %.critedge.i.i400 ], [ %i.ahu, %.loopexit.i.i405 ] ; 4 uses
  %.050.lcssa111.i.i = phi i64 [ %.05087.i.i1447, %.critedge.thread.i.i382 ], [ %.05087.i.i1447, %.critedge.i.i400 ], [ %i.ahv, %.loopexit.i.i405 ] ; 2 uses
  %i.aic = icmp sgt i64 %.050.lcssa111.i.i, -2
  br i1 %i.aic, label %bb.mk, label %bb.mt

bb.mk:                                            ; preds = %.critedge.i.thread.i385
  %i.aid = add nsw i64 %.050.lcssa111.i.i, 1
  %i.aie = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %.0.i271, i64 noundef %i.aid), !inline_history !764 ; 8 uses
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %Py_DECREF.exit69.i.i388, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.aig = icmp slt i64 %.0.lcssa113.i.i, 12
  br i1 %i.aig, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %.val74.i.i394 = load ptr, ptr %i.aha, align 8, !tbaa !280
  %i.aih = getelementptr [8 x i8], ptr %.val74.i.i394, i64 %.0.lcssa113.i.i
  store ptr %i.aie, ptr %i.aih, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i393

bb.mn:                                            ; preds = %bb.ml
  %i.aii = tail call i32 @PyList_Append(ptr noundef nonnull %i.agy, ptr noundef nonnull %i.aie) #33, !inline_history !764
  %.not60.i.i390 = icmp eq i32 %i.aii, 0
  %i.aij = load i32, ptr %i.aie, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i391 = icmp sgt i32 %i.aij, -1      ; 2 uses
  br i1 %.not60.i.i390, label %bb.mq, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mp, label %Py_DECREF.exit69.i.i388

bb.mp:                                            ; preds = %bb.mo
  %i.aik = add nsw i32 %i.aij, -1                 ; 2 uses
  store i32 %i.aik, ptr %i.aie, align 8, !tbaa !237
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %Py_DECREF.exit69.sink.split.i.i392, label %Py_DECREF.exit69.i.i388

bb.mq:                                            ; preds = %bb.mn
  br i1 %.not.i62.i.i391, label %bb.mr, label %Py_DECREF.exit63.i.i393

bb.mr:                                            ; preds = %bb.mq
  %i.aim = add nsw i32 %i.aij, -1                 ; 2 uses
  store i32 %i.aim, ptr %i.aie, align 8, !tbaa !237
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.ms, label %Py_DECREF.exit63.i.i393

bb.ms:                                            ; preds = %bb.mr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aie) #33, !inline_history !764
  br label %Py_DECREF.exit63.i.i393

Py_DECREF.exit63.i.i393:                          ; preds = %bb.ms, %bb.mr, %bb.mq, %bb.mm
  %i.aio = add i64 %.0.lcssa113.i.i, 1
  br label %bb.mt

bb.mt:                                            ; preds = %Py_DECREF.exit63.i.i393, %.critedge.i.thread.i385, %Py_INCREF.exit.i.i395
  %.2.i.i386 = phi i64 [ 1, %Py_INCREF.exit.i.i395 ], [ %i.aio, %Py_DECREF.exit63.i.i393 ], [ %.0.lcssa113.i.i, %.critedge.i.thread.i385 ]
  %i.aip = getelementptr i8, ptr %i.agy, i64 16
  store i64 %.2.i.i386, ptr %i.aip, align 8, !tbaa !263
  %i.aiq = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.agy) #33, !inline_history !764
  %i.air = icmp slt i32 %i.aiq, 0
  br i1 %i.air, label %Py_DECREF.exit69.i.i388, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i392:               ; preds = %bb.mp, %bb.md
  %.sink.i.i = phi ptr [ %i.ahi, %bb.md ], [ %i.aie, %bb.mp ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i) #33, !inline_history !764
  br label %Py_DECREF.exit69.i.i388

Py_DECREF.exit69.i.i388:                          ; preds = %bb.ly, %Py_DECREF.exit69.sink.split.i.i392, %bb.mt, %bb.mp, %bb.mo, %bb.mk, %bb.md, %bb.mc
  %i.ais = load i32, ptr %i.agy, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i389 = icmp sgt i32 %i.ais, -1
  br i1 %.not.i.i.i389, label %bb.mu, label %asciilib_rsplit.exit

bb.mu:                                            ; preds = %Py_DECREF.exit69.i.i388
  %i.ait = add nsw i32 %i.ais, -1                 ; 2 uses
  store i32 %i.ait, ptr %i.agy, align 8, !tbaa !237
  %i.aiu = icmp eq i32 %i.ait, 0
  br i1 %i.aiu, label %bb.mv, label %asciilib_rsplit.exit

bb.mv:                                            ; preds = %bb.mu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.agy) #33, !inline_history !764
  br label %asciilib_rsplit.exit

bb.mw:                                            ; preds = %bb.lu
  %i.aiv = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.aiw = add nsw i64 %i.aiv, 1
  %i.aix = tail call ptr @PyList_New(i64 noundef %i.aiw) #33, !inline_history !763 ; 12 uses
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %asciilib_rsplit.exit, label %.preheader.i407

.preheader.i407:                                  ; preds = %bb.mw
  %i.aiz = icmp sgt i64 %.1, 0
  br i1 %i.aiz, label %.lr.ph.i416, label %._crit_edge.thread.i

.lr.ph.i416:                                      ; preds = %.preheader.i407
  %i.aja = getelementptr i8, ptr %i.aix, i64 24
  br label %bb.mx

bb.mx:                                            ; preds = %Py_DECREF.exit72.i422, %.lr.ph.i416
  %.0103.i = phi i64 [ 0, %.lr.ph.i416 ], [ %i.ajq, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057102.i = phi i64 [ %.val100, %.lr.ph.i416 ], [ %i.ajb, %Py_DECREF.exit72.i422 ] ; 4 uses
  %i.ajb = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !763 ; 4 uses
  %i.ajc = icmp slt i64 %i.ajb, 0
  br i1 %i.ajc, label %._crit_edge.i426, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ajd = add i64 %i.ajb, %.val99                ; 2 uses
  %i.aje = getelementptr [2 x i8], ptr %.0.i271, i64 %i.ajd
  %i.ajf = sub i64 %.057102.i, %i.ajd
  %i.ajg = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %i.aje, i64 noundef %i.ajf), !inline_history !763 ; 8 uses
  %i.ajh = icmp eq ptr %i.ajg, null
  br i1 %i.ajh, label %Py_DECREF.exit74.i412, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aji = icmp samesign ult i64 %.0103.i, 12
  br i1 %i.aji, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %.val81.i425 = load ptr, ptr %i.aja, align 8, !tbaa !280
  %i.ajj = getelementptr [8 x i8], ptr %.val81.i425, i64 %.0103.i
  store ptr %i.ajg, ptr %i.ajj, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i422

bb.nb:                                            ; preds = %bb.mz
  %i.ajk = tail call i32 @PyList_Append(ptr noundef nonnull %i.aix, ptr noundef nonnull %i.ajg) #33, !inline_history !763
  %.not.i417 = icmp eq i32 %i.ajk, 0
  %i.ajl = load i32, ptr %i.ajg, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i421 = icmp sgt i32 %i.ajl, -1        ; 2 uses
  br i1 %.not.i417, label %bb.ne, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nd, label %Py_DECREF.exit74.i412

bb.nd:                                            ; preds = %bb.nc
  %i.ajm = add nsw i32 %i.ajl, -1                 ; 2 uses
  store i32 %i.ajm, ptr %i.ajg, align 8, !tbaa !237
  %i.ajn = icmp eq i32 %i.ajm, 0
  br i1 %i.ajn, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.ne:                                            ; preds = %bb.nb
  br i1 %.not.i71.i421, label %bb.nf, label %Py_DECREF.exit72.i422

bb.nf:                                            ; preds = %bb.ne
  %i.ajo = add nsw i32 %i.ajl, -1                 ; 2 uses
  store i32 %i.ajo, ptr %i.ajg, align 8, !tbaa !237
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %bb.ng, label %Py_DECREF.exit72.i422

bb.ng:                                            ; preds = %bb.nf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ajg) #33, !inline_history !763
  br label %Py_DECREF.exit72.i422

Py_DECREF.exit72.i422:                            ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.na
  %i.ajq = add nuw nsw i64 %.0103.i, 1            ; 2 uses
  %exitcond118.not.i = icmp eq i64 %i.ajq, %.1
  br i1 %exitcond118.not.i, label %._crit_edge.thread151.i, label %bb.mx, !llvm.loop !767

._crit_edge.i426:                                 ; preds = %bb.mx
  %i.ajr = icmp eq i64 %.0103.i, 0
  br i1 %i.ajr, label %._crit_edge.thread.i, label %._crit_edge.thread151.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i426, %.preheader.i407
  %.057.lcssa147.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %.val100, %.preheader.i407 ]
  %i.ajs = getelementptr i8, ptr %0, i64 8
  %.val.i408 = load ptr, ptr %i.ajs, align 8, !tbaa !229
  %.not84.i = icmp eq ptr %.val.i408, @PyUnicode_Type
  br i1 %.not84.i, label %bb.nh, label %.thread.i

bb.nh:                                            ; preds = %._crit_edge.thread.i
  %i.ajt = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.aju = icmp ugt i32 %i.ajt, -1073741825
  br i1 %i.aju, label %Py_INCREF.exit.i414, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ajv = add nuw i32 %i.ajt, 1
  store i32 %i.ajv, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i414

Py_INCREF.exit.i414:                              ; preds = %bb.ni, %bb.nh
  %i.ajw = getelementptr i8, ptr %i.aix, i64 24
  %.val80.i415 = load ptr, ptr %i.ajw, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i415, align 8, !tbaa !227
  br label %bb.nq

._crit_edge.thread151.i:                          ; preds = %Py_DECREF.exit72.i422, %._crit_edge.i426
  %.0.lcssa155.i = phi i64 [ %.0103.i, %._crit_edge.i426 ], [ %.1, %Py_DECREF.exit72.i422 ] ; 5 uses
  %.057.lcssa154.i = phi i64 [ %.057102.i, %._crit_edge.i426 ], [ %i.ajb, %Py_DECREF.exit72.i422 ]
  %i.ajx = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i), !inline_history !763 ; 8 uses
  %i.ajy = icmp eq ptr %i.ajx, null
  br i1 %i.ajy, label %Py_DECREF.exit74.i412, label %bb.nj

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.ajz = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i), !inline_history !763 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %Py_DECREF.exit74.i412, label %.thread83.i

bb.nj:                                            ; preds = %._crit_edge.thread151.i
  %i.akb = icmp slt i64 %.0.lcssa155.i, 12
  br i1 %i.akb, label %.thread83.i, label %bb.nk

.thread83.i:                                      ; preds = %bb.nj, %.thread.i
  %.0.lcssa148.i = phi i64 [ %.0.lcssa155.i, %bb.nj ], [ 0, %.thread.i ] ; 2 uses
  %i.akc = phi ptr [ %i.ajx, %bb.nj ], [ %i.ajz, %.thread.i ]
  %i.akd = getelementptr i8, ptr %i.aix, i64 24
  %.val79.i409 = load ptr, ptr %i.akd, align 8, !tbaa !280
  %i.ake = getelementptr [8 x i8], ptr %.val79.i409, i64 %.0.lcssa148.i
  store ptr %i.akc, ptr %i.ake, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i410

bb.nk:                                            ; preds = %bb.nj
  %i.akf = tail call i32 @PyList_Append(ptr noundef nonnull %i.aix, ptr noundef nonnull %i.ajx) #33, !inline_history !763
  %.not66.i423 = icmp eq i32 %i.akf, 0
  %i.akg = load i32, ptr %i.ajx, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i424 = icmp sgt i32 %i.akg, -1        ; 2 uses
  br i1 %.not66.i423, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.nm, label %Py_DECREF.exit74.i412

bb.nm:                                            ; preds = %bb.nl
  %i.akh = add nsw i32 %i.akg, -1                 ; 2 uses
  store i32 %i.akh, ptr %i.ajx, align 8, !tbaa !237
  %i.aki = icmp eq i32 %i.akh, 0
  br i1 %i.aki, label %Py_DECREF.exit74.sink.split.i419, label %Py_DECREF.exit74.i412

bb.nn:                                            ; preds = %bb.nk
  br i1 %.not.i67.i424, label %bb.no, label %Py_DECREF.exit68.i410

bb.no:                                            ; preds = %bb.nn
  %i.akj = add nsw i32 %i.akg, -1                 ; 2 uses
  store i32 %i.akj, ptr %i.ajx, align 8, !tbaa !237
  %i.akk = icmp eq i32 %i.akj, 0
  br i1 %i.akk, label %bb.np, label %Py_DECREF.exit68.i410

bb.np:                                            ; preds = %bb.no
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ajx) #33, !inline_history !763
  br label %Py_DECREF.exit68.i410

Py_DECREF.exit68.i410:                            ; preds = %bb.np, %bb.no, %bb.nn, %.thread83.i
  %.0.lcssa150.i = phi i64 [ %.0.lcssa155.i, %bb.np ], [ %.0.lcssa155.i, %bb.no ], [ %.0.lcssa155.i, %bb.nn ], [ %.0.lcssa148.i, %.thread83.i ]
  %i.akl = add i64 %.0.lcssa150.i, 1
  br label %bb.nq

bb.nq:                                            ; preds = %Py_DECREF.exit68.i410, %Py_INCREF.exit.i414
  %.1.i411 = phi i64 [ 1, %Py_INCREF.exit.i414 ], [ %i.akl, %Py_DECREF.exit68.i410 ]
  %i.akm = getelementptr i8, ptr %i.aix, i64 16
  store i64 %.1.i411, ptr %i.akm, align 8, !tbaa !263
  %i.akn = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.aix) #33, !inline_history !763
  %i.ako = icmp slt i32 %i.akn, 0
  br i1 %i.ako, label %Py_DECREF.exit74.i412, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i419:                 ; preds = %bb.nm, %bb.nd
  %.sink.i420 = phi ptr [ %i.ajg, %bb.nd ], [ %i.ajx, %bb.nm ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i420) #33, !inline_history !763
  br label %Py_DECREF.exit74.i412

Py_DECREF.exit74.i412:                            ; preds = %bb.my, %Py_DECREF.exit74.sink.split.i419, %bb.nq, %bb.nm, %bb.nl, %.thread.i, %._crit_edge.thread151.i, %bb.nd, %bb.nc
  %i.akp = load i32, ptr %i.aix, align 8, !tbaa !237 ; 2 uses
  %.not.i.i413 = icmp sgt i32 %i.akp, -1
  br i1 %.not.i.i413, label %bb.nr, label %asciilib_rsplit.exit

bb.nr:                                            ; preds = %Py_DECREF.exit74.i412
  %i.akq = add nsw i32 %i.akp, -1                 ; 2 uses
  store i32 %i.akq, ptr %i.aix, align 8, !tbaa !237
  %i.akr = icmp eq i32 %i.akq, 0
  br i1 %i.akr, label %bb.ns, label %asciilib_rsplit.exit

bb.ns:                                            ; preds = %bb.nr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aix) #33, !inline_history !763
  br label %asciilib_rsplit.exit

bb.nt:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.ov [
    i64 0, label %bb.nu
    i64 1, label %bb.nv
  ]

bb.nu:                                            ; preds = %bb.nt
  %i.aks = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.aks, ptr noundef nonnull @.str.197) #33, !inline_history !768
  br label %asciilib_rsplit.exit

bb.nv:                                            ; preds = %bb.nt
  %i.akt = load i32, ptr %.080, align 4, !tbaa !43
  %i.aku = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.akv = add nsw i64 %i.aku, 1
  %i.akw = tail call ptr @PyList_New(i64 noundef %i.akv) #33, !inline_history !769 ; 10 uses
  %i.akx = icmp eq ptr %i.akw, null
  br i1 %i.akx, label %asciilib_rsplit.exit, label %.lr.ph89.i.i446

.lr.ph89.i.i446:                                  ; preds = %bb.nv
  %6 = add nsw i64 %.val100, -1                   ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akw, i64 24   ; 3 uses
  %smin.i447 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.akz = sub i64 %.1, %smin.i447                ; 4 uses
  %exitcond.not.i4501485 = icmp eq i64 %i.akz, 0
  br i1 %exitcond.not.i4501485, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader

bb.nw:                                            ; preds = %.loopexit.i.i458
  %exitcond.not.i450 = icmp eq i64 %i.als, %i.akz
  br i1 %exitcond.not.i450, label %.critedge.i.i453, label %.lr.ph.i.i451.preheader, !llvm.loop !770

.lr.ph.i.i451.preheader:                          ; preds = %.lr.ph89.i.i446, %bb.nw
  %.05087.i.i4491487 = phi i64 [ %i.alt, %bb.nw ], [ %6, %.lr.ph89.i.i446 ] ; 3 uses
  %.088.i.i4481486 = phi i64 [ %i.als, %bb.nw ], [ 0, %.lr.ph89.i.i446 ] ; 4 uses
  br label %.lr.ph.i.i451

.lr.ph.i.i451:                                    ; preds = %.lr.ph.i.i451.preheader, %bb.og
  %.15384.i.i452 = phi i64 [ %i.alq, %bb.og ], [ %.05087.i.i4491487, %.lr.ph.i.i451.preheader ] ; 7 uses
  %i.ala = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !43
  %i.alc = icmp eq i32 %i.alb, %i.akt
  br i1 %i.alc, label %bb.nx, label %bb.og

bb.nx:                                            ; preds = %.lr.ph.i.i451
  %i.ald = getelementptr [4 x i8], ptr %.0.i271, i64 %.15384.i.i452
  %i.ale = getelementptr i8, ptr %i.ald, i64 4
  %i.alf = sub nuw nsw i64 %.05087.i.i4491487, %.15384.i.i452
  %i.alg = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.ale, i64 noundef %i.alf), !inline_history !769 ; 8 uses
  %i.alh = icmp eq ptr %i.alg, null
  br i1 %i.alh, label %Py_DECREF.exit69.i.i436, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ali = icmp samesign ult i64 %.088.i.i4481486, 12
  br i1 %i.ali, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %.val76.i.i459 = load ptr, ptr %i.aky, align 8, !tbaa !280
  %i.alj = getelementptr [8 x i8], ptr %.val76.i.i459, i64 %.088.i.i4481486
  store ptr %i.alg, ptr %i.alj, align 8, !tbaa !227
  br label %.loopexit.i.i458

bb.oa:                                            ; preds = %bb.ny
  %i.alk = tail call i32 @PyList_Append(ptr noundef nonnull %i.akw, ptr noundef nonnull %i.alg) #33, !inline_history !769
  %.not61.i.i455 = icmp eq i32 %i.alk, 0
  %i.all = load i32, ptr %i.alg, align 8, !tbaa !237 ; 3 uses
  %.not.i66.i.i457 = icmp sgt i32 %i.all, -1      ; 2 uses
  br i1 %.not61.i.i455, label %bb.od, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oc, label %Py_DECREF.exit69.i.i436

bb.oc:                                            ; preds = %bb.ob
  %i.alm = add nsw i32 %i.all, -1                 ; 2 uses
  store i32 %i.alm, ptr %i.alg, align 8, !tbaa !237
  %i.aln = icmp eq i32 %i.alm, 0
  br i1 %i.aln, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.od:                                            ; preds = %bb.oa
  br i1 %.not.i66.i.i457, label %bb.oe, label %.loopexit.i.i458

bb.oe:                                            ; preds = %bb.od
  %i.alo = add nsw i32 %i.all, -1                 ; 2 uses
  store i32 %i.alo, ptr %i.alg, align 8, !tbaa !237
  %i.alp = icmp eq i32 %i.alo, 0
  br i1 %i.alp, label %bb.of, label %.loopexit.i.i458

bb.of:                                            ; preds = %bb.oe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.alg) #33, !inline_history !769
  br label %.loopexit.i.i458

bb.og:                                            ; preds = %.lr.ph.i.i451
  %i.alq = add nsw i64 %.15384.i.i452, -1
  %i.alr = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.alr, label %.lr.ph.i.i451, label %.critedge.i.i453, !llvm.loop !771

.loopexit.i.i458:                                 ; preds = %bb.of, %bb.oe, %bb.od, %bb.nz
  %i.als = add nuw i64 %.088.i.i4481486, 1        ; 3 uses
  %i.alt = add nsw i64 %.15384.i.i452, -1         ; 3 uses
  %i.alu = icmp sgt i64 %.15384.i.i452, 0
  br i1 %i.alu, label %bb.nw, label %.critedge.i.thread.i431, !llvm.loop !770

.critedge.i.i453:                                 ; preds = %bb.nw, %bb.og, %.lr.ph89.i.i446
  %.05087.i.i4491475 = phi i64 [ %.05087.i.i4491487, %bb.og ], [ %6, %.lr.ph89.i.i446 ], [ %i.alt, %bb.nw ] ; 2 uses
  %.0.lcssa.i.i454 = phi i64 [ %.088.i.i4481486, %bb.og ], [ %i.akz, %.lr.ph89.i.i446 ], [ %i.akz, %bb.nw ] ; 2 uses
  %i.alv = icmp eq i64 %.0.lcssa.i.i454, 0
  br i1 %i.alv, label %.critedge.thread.i.i427, label %.critedge.i.thread.i431

.critedge.thread.i.i427:                          ; preds = %.critedge.i.i453
  %i.alw = getelementptr i8, ptr %0, i64 8
  %.val.i.i429 = load ptr, ptr %i.alw, align 8, !tbaa !229
  %.not.i82.i430 = icmp eq ptr %.val.i.i429, @PyUnicode_Type
  br i1 %.not.i82.i430, label %bb.oh, label %.critedge.i.thread.i431

bb.oh:                                            ; preds = %.critedge.thread.i.i427
  %i.alx = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.aly = icmp ugt i32 %i.alx, -1073741825
  br i1 %i.aly, label %Py_INCREF.exit.i.i444, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.alz = add nuw i32 %i.alx, 1
  store i32 %i.alz, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i.i444

Py_INCREF.exit.i.i444:                            ; preds = %bb.oi, %bb.oh
  %.val75.i.i445 = load ptr, ptr %i.aky, align 8, !tbaa !280
  store ptr %0, ptr %.val75.i.i445, align 8, !tbaa !227
  br label %bb.os

.critedge.i.thread.i431:                          ; preds = %.loopexit.i.i458, %.critedge.thread.i.i427, %.critedge.i.i453
  %.0.lcssa113.i.i432 = phi i64 [ 0, %.critedge.thread.i.i427 ], [ %.0.lcssa.i.i454, %.critedge.i.i453 ], [ %i.als, %.loopexit.i.i458 ] ; 4 uses
  %.050.lcssa111.i.i433 = phi i64 [ %.05087.i.i4491475, %.critedge.thread.i.i427 ], [ %.05087.i.i4491475, %.critedge.i.i453 ], [ %i.alt, %.loopexit.i.i458 ] ; 2 uses
  %i.ama = icmp sgt i64 %.050.lcssa111.i.i433, -2
  br i1 %i.ama, label %bb.oj, label %bb.os

bb.oj:                                            ; preds = %.critedge.i.thread.i431
  %i.amb = add nsw i64 %.050.lcssa111.i.i433, 1
  %i.amc = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %i.amb), !inline_history !769 ; 8 uses
  %i.amd = icmp eq ptr %i.amc, null
  br i1 %i.amd, label %Py_DECREF.exit69.i.i436, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ame = icmp slt i64 %.0.lcssa113.i.i432, 12
  br i1 %i.ame, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %.val74.i.i443 = load ptr, ptr %i.aky, align 8, !tbaa !280
  %i.amf = getelementptr [8 x i8], ptr %.val74.i.i443, i64 %.0.lcssa113.i.i432
  store ptr %i.amc, ptr %i.amf, align 8, !tbaa !227
  br label %Py_DECREF.exit63.i.i442

bb.om:                                            ; preds = %bb.ok
  %i.amg = tail call i32 @PyList_Append(ptr noundef nonnull %i.akw, ptr noundef nonnull %i.amc) #33, !inline_history !769
  %.not60.i.i438 = icmp eq i32 %i.amg, 0
  %i.amh = load i32, ptr %i.amc, align 8, !tbaa !237 ; 3 uses
  %.not.i62.i.i439 = icmp sgt i32 %i.amh, -1      ; 2 uses
  br i1 %.not60.i.i438, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oo, label %Py_DECREF.exit69.i.i436

bb.oo:                                            ; preds = %bb.on
  %i.ami = add nsw i32 %i.amh, -1                 ; 2 uses
  store i32 %i.ami, ptr %i.amc, align 8, !tbaa !237
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %Py_DECREF.exit69.sink.split.i.i440, label %Py_DECREF.exit69.i.i436

bb.op:                                            ; preds = %bb.om
  br i1 %.not.i62.i.i439, label %bb.oq, label %Py_DECREF.exit63.i.i442

bb.oq:                                            ; preds = %bb.op
  %i.amk = add nsw i32 %i.amh, -1                 ; 2 uses
  store i32 %i.amk, ptr %i.amc, align 8, !tbaa !237
  %i.aml = icmp eq i32 %i.amk, 0
  br i1 %i.aml, label %bb.or, label %Py_DECREF.exit63.i.i442

bb.or:                                            ; preds = %bb.oq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.amc) #33, !inline_history !769
  br label %Py_DECREF.exit63.i.i442

Py_DECREF.exit63.i.i442:                          ; preds = %bb.or, %bb.oq, %bb.op, %bb.ol
  %i.amm = add i64 %.0.lcssa113.i.i432, 1
  br label %bb.os

bb.os:                                            ; preds = %Py_DECREF.exit63.i.i442, %.critedge.i.thread.i431, %Py_INCREF.exit.i.i444
  %.2.i.i434 = phi i64 [ 1, %Py_INCREF.exit.i.i444 ], [ %i.amm, %Py_DECREF.exit63.i.i442 ], [ %.0.lcssa113.i.i432, %.critedge.i.thread.i431 ]
  %i.amn = getelementptr i8, ptr %i.akw, i64 16
  store i64 %.2.i.i434, ptr %i.amn, align 8, !tbaa !263
  %i.amo = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.akw) #33, !inline_history !769
  %i.amp = icmp slt i32 %i.amo, 0
  br i1 %i.amp, label %Py_DECREF.exit69.i.i436, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i440:               ; preds = %bb.oo, %bb.oc
  %.sink.i.i441 = phi ptr [ %i.alg, %bb.oc ], [ %i.amc, %bb.oo ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i441) #33, !inline_history !769
  br label %Py_DECREF.exit69.i.i436

Py_DECREF.exit69.i.i436:                          ; preds = %bb.nx, %Py_DECREF.exit69.sink.split.i.i440, %bb.os, %bb.oo, %bb.on, %bb.oj, %bb.oc, %bb.ob
  %i.amq = load i32, ptr %i.akw, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i437 = icmp sgt i32 %i.amq, -1
  br i1 %.not.i.i.i437, label %bb.ot, label %asciilib_rsplit.exit

bb.ot:                                            ; preds = %Py_DECREF.exit69.i.i436
  %i.amr = add nsw i32 %i.amq, -1                 ; 2 uses
  store i32 %i.amr, ptr %i.akw, align 8, !tbaa !237
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.ou, label %asciilib_rsplit.exit

bb.ou:                                            ; preds = %bb.ot
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.akw) #33, !inline_history !769
  br label %asciilib_rsplit.exit

bb.ov:                                            ; preds = %bb.nt
  %i.amt = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.amu = add nsw i64 %i.amt, 1
  %i.amv = tail call ptr @PyList_New(i64 noundef %i.amu) #33, !inline_history !768 ; 12 uses
  %i.amw = icmp eq ptr %i.amv, null
  br i1 %i.amw, label %asciilib_rsplit.exit, label %.preheader.i460

.preheader.i460:                                  ; preds = %bb.ov
  %i.amx = icmp sgt i64 %.1, 0
  br i1 %i.amx, label %.lr.ph.i476, label %._crit_edge.thread.i461

.lr.ph.i476:                                      ; preds = %.preheader.i460
  %i.amy = getelementptr i8, ptr %i.amv, i64 24
  br label %bb.ow

bb.ow:                                            ; preds = %Py_DECREF.exit72.i484, %.lr.ph.i476
  %.0103.i477 = phi i64 [ 0, %.lr.ph.i476 ], [ %i.ano, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057102.i478 = phi i64 [ %.val100, %.lr.ph.i476 ], [ %i.amz, %Py_DECREF.exit72.i484 ] ; 4 uses
  %i.amz = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i271, i64 noundef %.057102.i478, ptr noundef %.080, i64 noundef %.val99, i64 noundef -1, i32 noundef 2), !inline_history !768 ; 4 uses
  %i.ana = icmp slt i64 %i.amz, 0
  br i1 %i.ana, label %._crit_edge.i492, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.anb = add i64 %i.amz, %.val99                ; 2 uses
  %i.anc = getelementptr [4 x i8], ptr %.0.i271, i64 %i.anb
  %i.and = sub i64 %.057102.i478, %i.anb
  %i.ane = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.anc, i64 noundef %i.and), !inline_history !768 ; 8 uses
  %i.anf = icmp eq ptr %i.ane, null
  br i1 %i.anf, label %Py_DECREF.exit74.i472, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ang = icmp samesign ult i64 %.0103.i477, 12
  br i1 %i.ang, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %.val81.i491 = load ptr, ptr %i.amy, align 8, !tbaa !280
  %i.anh = getelementptr [8 x i8], ptr %.val81.i491, i64 %.0103.i477
  store ptr %i.ane, ptr %i.anh, align 8, !tbaa !227
  br label %Py_DECREF.exit72.i484

bb.pa:                                            ; preds = %bb.oy
  %i.ani = tail call i32 @PyList_Append(ptr noundef nonnull %i.amv, ptr noundef nonnull %i.ane) #33, !inline_history !768
  %.not.i479 = icmp eq i32 %i.ani, 0
  %i.anj = load i32, ptr %i.ane, align 8, !tbaa !237 ; 3 uses
  %.not.i71.i483 = icmp sgt i32 %i.anj, -1        ; 2 uses
  br i1 %.not.i479, label %bb.pd, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pc, label %Py_DECREF.exit74.i472

bb.pc:                                            ; preds = %bb.pb
  %i.ank = add nsw i32 %i.anj, -1                 ; 2 uses
  store i32 %i.ank, ptr %i.ane, align 8, !tbaa !237
  %i.anl = icmp eq i32 %i.ank, 0
  br i1 %i.anl, label %Py_DECREF.exit74.sink.split.i481, label %Py_DECREF.exit74.i472

bb.pd:                                            ; preds = %bb.pa
  br i1 %.not.i71.i483, label %bb.pe, label %Py_DECREF.exit72.i484

bb.pe:                                            ; preds = %bb.pd
  %i.anm = add nsw i32 %i.anj, -1                 ; 2 uses
  store i32 %i.anm, ptr %i.ane, align 8, !tbaa !237
  %i.ann = icmp eq i32 %i.anm, 0
  br i1 %i.ann, label %bb.pf, label %Py_DECREF.exit72.i484

bb.pf:                                            ; preds = %bb.pe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ane) #33, !inline_history !768
  br label %Py_DECREF.exit72.i484

Py_DECREF.exit72.i484:                            ; preds = %bb.pf, %bb.pe, %bb.pd, %bb.oz
  %i.ano = add nuw nsw i64 %.0103.i477, 1         ; 2 uses
  %exitcond118.not.i485 = icmp eq i64 %i.ano, %.1
  br i1 %exitcond118.not.i485, label %._crit_edge.thread151.i486, label %bb.ow, !llvm.loop !772

._crit_edge.i492:                                 ; preds = %bb.ow
  %i.anp = icmp eq i64 %.0103.i477, 0
  br i1 %i.anp, label %._crit_edge.thread.i461, label %._crit_edge.thread151.i486

._crit_edge.thread.i461:                          ; preds = %._crit_edge.i492, %.preheader.i460
  %.057.lcssa147.i462 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %.val100, %.preheader.i460 ]
  %i.anq = getelementptr i8, ptr %0, i64 8
  %.val.i463 = load ptr, ptr %i.anq, align 8, !tbaa !229
  %.not84.i464 = icmp eq ptr %.val.i463, @PyUnicode_Type
  br i1 %.not84.i464, label %bb.pg, label %.thread.i465

bb.pg:                                            ; preds = %._crit_edge.thread.i461
  %i.anr = load i32, ptr %0, align 8, !tbaa !237  ; 2 uses
  %i.ans = icmp ugt i32 %i.anr, -1073741825
  br i1 %i.ans, label %Py_INCREF.exit.i474, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ant = add nuw i32 %i.anr, 1
  store i32 %i.ant, ptr %0, align 8, !tbaa !237
  br label %Py_INCREF.exit.i474

Py_INCREF.exit.i474:                              ; preds = %bb.ph, %bb.pg
  %i.anu = getelementptr i8, ptr %i.amv, i64 24
  %.val80.i475 = load ptr, ptr %i.anu, align 8, !tbaa !280
  store ptr %0, ptr %.val80.i475, align 8, !tbaa !227
  br label %bb.pp

._crit_edge.thread151.i486:                       ; preds = %Py_DECREF.exit72.i484, %._crit_edge.i492
  %.0.lcssa155.i487 = phi i64 [ %.0103.i477, %._crit_edge.i492 ], [ %.1, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057.lcssa154.i488 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %i.amz, %Py_DECREF.exit72.i484 ]
  %i.anv = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i488), !inline_history !768 ; 8 uses
  %i.anw = icmp eq ptr %i.anv, null
  br i1 %i.anw, label %Py_DECREF.exit74.i472, label %bb.pi

.thread.i465:                                     ; preds = %._crit_edge.thread.i461
  %i.anx = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i462), !inline_history !768 ; 2 uses
  %i.any = icmp eq ptr %i.anx, null
  br i1 %i.any, label %Py_DECREF.exit74.i472, label %.thread83.i466

bb.pi:                                            ; preds = %._crit_edge.thread151.i486
  %i.anz = icmp slt i64 %.0.lcssa155.i487, 12
  br i1 %i.anz, label %.thread83.i466, label %bb.pj

.thread83.i466:                                   ; preds = %bb.pi, %.thread.i465
  %.0.lcssa148.i467 = phi i64 [ %.0.lcssa155.i487, %bb.pi ], [ 0, %.thread.i465 ] ; 2 uses
  %i.aoa = phi ptr [ %i.anv, %bb.pi ], [ %i.anx, %.thread.i465 ]
  %i.aob = getelementptr i8, ptr %i.amv, i64 24
  %.val79.i468 = load ptr, ptr %i.aob, align 8, !tbaa !280
  %i.aoc = getelementptr [8 x i8], ptr %.val79.i468, i64 %.0.lcssa148.i467
  store ptr %i.aoa, ptr %i.aoc, align 8, !tbaa !227
  br label %Py_DECREF.exit68.i469

bb.pj:                                            ; preds = %bb.pi
  %i.aod = tail call i32 @PyList_Append(ptr noundef nonnull %i.amv, ptr noundef nonnull %i.anv) #33, !inline_history !768
  %.not66.i489 = icmp eq i32 %i.aod, 0
  %i.aoe = load i32, ptr %i.anv, align 8, !tbaa !237 ; 3 uses
  %.not.i67.i490 = icmp sgt i32 %i.aoe, -1        ; 2 uses
  br i1 %.not66.i489, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  br i1 %.not.i67.i490, label %bb.pl, label %Py_DECREF.exit74.i472
end_hunk_2
