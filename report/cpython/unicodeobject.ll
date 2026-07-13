inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@PyUnicode_AsUnicodeEscapeString:bb.a
  store i8 114, ptr %i.ao, align 1, !tbaa !205
  br label %bb.y

bb.u:                                             ; preds = %bb.q
  store i8 120, ptr %i.ao, align 1, !tbaa !205
  %i.aq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ar = lshr i32 %.0.i8082, 4
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205
  %i.av = getelementptr i8, ptr %.07283, i64 3
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !205
  %i.aw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ax = and i32 %.0.i8082, 15
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !205
  %i.bb = getelementptr i8, ptr %.07283, i64 4
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !205
  br label %bb.y

bb.v:                                             ; preds = %PyUnicode_READ.exit
  %i.bc = icmp ult i32 %.0.i80, 65536
  %i.bd = getelementptr i8, ptr %.07283, i64 1    ; 2 uses
  store i8 92, ptr %.07283, align 1, !tbaa !205
  %i.be = getelementptr i8, ptr %.07283, i64 2    ; 2 uses
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 117, ptr %i.bd, align 1, !tbaa !205
  %i.bf = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bg = lshr i32 %.0.i80, 12
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %i.bf, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = getelementptr i8, ptr %.07283, i64 3
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !205
  %i.bl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bm = lshr i32 %.0.i80, 8
  %i.bn = and i32 %i.bm, 15
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %.07283, i64 4
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !205
  %i.bs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bt = lshr i32 %.0.i80, 4
  %i.bu = and i32 %i.bt, 15
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.by = getelementptr i8, ptr %.07283, i64 5
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !205
  %i.bz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ca = and i32 %.0.i80, 15
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.bz, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !205
  %i.ce = getelementptr i8, ptr %.07283, i64 6
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !205
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i8 85, ptr %i.bd, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %.07283, i64 3
  store i8 48, ptr %i.be, align 1, !tbaa !205
  %i.cg = getelementptr i8, ptr %.07283, i64 4
  store i8 48, ptr %i.cf, align 1, !tbaa !205
  %i.ch = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ci = lshr i32 %.0.i80, 20
  %i.cj = and i32 %i.ci, 15
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !205
  %i.cn = getelementptr i8, ptr %.07283, i64 5
  store i8 %i.cm, ptr %i.cg, align 1, !tbaa !205
  %i.co = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.cp = lshr i32 %.0.i80, 16
  %i.cq = and i32 %i.cp, 15
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !205
  %i.cu = getelementptr i8, ptr %.07283, i64 6
  store i8 %i.ct, ptr %i.cn, align 1, !tbaa !205
  %i.cv = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.cw = lshr i32 %.0.i80, 12
  %i.cx = and i32 %i.cw, 15
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !205
  %i.db = getelementptr i8, ptr %.07283, i64 7
  store i8 %i.da, ptr %i.cu, align 1, !tbaa !205
  %i.dc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.dd = lshr i32 %.0.i80, 8
  %i.de = and i32 %i.dd, 15
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.dc, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !205
  %i.di = getelementptr i8, ptr %.07283, i64 8
  store i8 %i.dh, ptr %i.db, align 1, !tbaa !205
  %i.dj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.dk = lshr i32 %.0.i80, 4
  %i.dl = and i32 %i.dk, 15
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.dj, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !205
  %i.dp = getelementptr i8, ptr %.07283, i64 9
  store i8 %i.do, ptr %i.di, align 1, !tbaa !205
  %i.dq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.dr = and i32 %.0.i80, 15
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.dq, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !205
  %i.dv = getelementptr i8, ptr %.07283, i64 10
  store i8 %i.du, ptr %i.dp, align 1, !tbaa !205
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.p, %bb.o, %bb.s, %bb.u, %bb.t, %bb.r
  %.173 = phi ptr [ %i.al, %bb.o ], [ %i.an, %bb.p ], [ %i.ap, %bb.r ], [ %i.ap, %bb.s ], [ %i.ap, %bb.t ], [ %i.bb, %bb.u ], [ %i.ce, %bb.w ], [ %i.dv, %bb.x ] ; 2 uses
  %i.dw = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.val79
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !510

bb.z:                                             ; preds = %bb.d, %._crit_edge, %bb.i, %bb.h, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.t, %bb.h ], [ %i.z, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_DecodeRawUnicodeEscapeStateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct._PyUnicodeWriter, align 8   ; 18 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr null, ptr %i.d, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !194
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not81 = icmp eq ptr %3, null
  br i1 %.not81, label %Py_XDECREF.exit112, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !193
  br label %Py_XDECREF.exit112

bb.d:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %4) #33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %1, ptr %i.i, align 8, !tbaa !346
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !276
  %i.l = icmp ugt i32 %i.k, 126
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !278
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !279
  %i.q = sub i64 %i.n, %i.p
  %.not = icmp sgt i64 %1, %i.q
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef %1, i32 noundef 127) #33
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %PyUnicode_WRITE.exit.thread.thread, label %.critedge

PyUnicode_WRITE.exit.thread.thread:               ; preds = %bb.f
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %4) #33
  br label %Py_XDECREF.exit109

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.t = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !355
  %i.u = icmp ult ptr %0, %i.t
  br i1 %i.u, label %.lr.ph, label %Py_XDECREF.exit

.lr.ph:                                           ; preds = %.critedge
  %i.v = icmp ne ptr %3, null                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 18 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %i.z = phi ptr [ %i.t, %.lr.ph ], [ %i.hh, %.backedge ] ; 10 uses
  %i.aa = phi ptr [ %0, %.lr.ph ], [ %i.hg, %.backedge ] ; 10 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !355
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !205 ; 6 uses
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %.not73 = icmp eq i8 %i.ac, 92
  br i1 %.not73, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult ptr %i.ab, %i.z                ; 2 uses
  %or.cond = or i1 %i.v, %i.ae
  br i1 %or.cond, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.af = load i32, ptr %i.j, align 4, !tbaa !276
  %.not80 = icmp ult i32 %i.af, %i.ad
  br i1 %.not80, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.ag, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ah, i64 %i.ai
  store i8 %i.ac, ptr %i.ak, align 1, !tbaa !205
  br label %.backedge, !llvm.loop !511

bb.l:                                             ; preds = %bb.j
  %i.al = zext i8 %i.ac to i16
  %i.am = getelementptr [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 %i.al, ptr %i.am, align 2, !tbaa !208
  br label %.backedge, !llvm.loop !511

bb.m:                                             ; preds = %bb.j
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %i.ai
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !7
  br label %.backedge, !llvm.loop !511

bb.n:                                             ; preds = %bb.i
  %i.ao = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.ad) #33
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %PyUnicode_WRITE.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.n
  %.pre.i = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.aq = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.aq, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %.critedge.i
  %i.as = getelementptr i8, ptr %i.ar, i64 %.pre.i
  store i8 %i.ac, ptr %i.as, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.p:                                             ; preds = %.critedge.i
  %i.at = zext i8 %i.ac to i16
  %i.au = getelementptr [2 x i8], ptr %i.ar, i64 %.pre.i
  store i16 %i.at, ptr %i.au, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.q:                                             ; preds = %.critedge.i
  %i.av = getelementptr [4 x i8], ptr %i.ar, i64 %.pre.i
  store i32 %i.ad, ptr %i.av, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit

_PyUnicodeWriter_WriteCharInline.exit:            ; preds = %bb.o, %bb.p, %bb.q
  %i.aw = phi i64 [ %.pre11.i, %bb.o ], [ %.pre.i, %bb.p ], [ %.pre.i, %bb.q ]
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.y, align 8, !tbaa !279
  br label %.backedge, !llvm.loop !511

bb.r:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.az = ptrtoint ptr %i.ab to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = xor i64 %i.ba, -1
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !tbaa !193
  br i1 %i.ae, label %bb.s, label %bb.cv

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %i.aa, i64 2      ; 6 uses
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !355
  %i.be = load i8, ptr %i.ab, align 1, !tbaa !205 ; 6 uses
  %i.bf = zext i8 %i.be to i32                    ; 4 uses
  switch i8 %i.be, label %bb.u [
    i8 117, label %bb.ag
    i8 85, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %i.w, align 8, !tbaa !280
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.bg, label %bb.x [
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bi
  store i8 92, ptr %i.bk, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit82

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr [2 x i8], ptr %i.bh, i64 %i.bi
  store i16 92, ptr %i.bl, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit82

bb.x:                                             ; preds = %bb.u
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bi
  store i32 92, ptr %i.bm, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit82

PyUnicode_WRITE.exit82:                           ; preds = %bb.v, %bb.w, %bb.x
  %i.bn = load i32, ptr %i.j, align 4, !tbaa !276
  %.not75 = icmp ult i32 %i.bn, %i.bf
  br i1 %.not75, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %PyUnicode_WRITE.exit82
  %i.bo = load i32, ptr %i.w, align 8, !tbaa !280
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.bq = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.bo, label %bb.ab [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.bq
  store i8 %i.be, ptr %i.bs, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit83.jt5, !llvm.loop !511

bb.aa:                                            ; preds = %bb.y
  %i.bt = zext i8 %i.be to i16
  %i.bu = getelementptr [2 x i8], ptr %i.bp, i64 %i.bq
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit83.jt5, !llvm.loop !511

bb.ab:                                            ; preds = %bb.y
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bq
  store i32 %i.bf, ptr %i.bv, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit83.jt5, !llvm.loop !511

bb.ac:                                            ; preds = %PyUnicode_WRITE.exit82
  %i.bw = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.bf) #33
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %PyUnicode_WRITE.exit.jt4, label %.critedge.i88

.critedge.i88:                                    ; preds = %bb.ac
  %.pre.i87 = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.by = load i32, ptr %i.w, align 8, !tbaa !280
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.by, label %bb.af [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %.critedge.i88
  %i.ca = getelementptr i8, ptr %i.bz, i64 %.pre.i87
  store i8 %i.be, ptr %i.ca, align 1, !tbaa !205
  %.pre11.i91 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit92

bb.ae:                                            ; preds = %.critedge.i88
  %i.cb = zext i8 %i.be to i16
  %i.cc = getelementptr [2 x i8], ptr %i.bz, i64 %.pre.i87
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit92

bb.af:                                            ; preds = %.critedge.i88
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %.pre.i87
  store i32 %i.bf, ptr %i.cd, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit92

_PyUnicodeWriter_WriteCharInline.exit92:          ; preds = %bb.ad, %bb.ae, %bb.af
  %i.ce = phi i64 [ %.pre11.i91, %bb.ad ], [ %.pre.i87, %bb.ae ], [ %.pre.i87, %bb.af ]
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.y, align 8, !tbaa !279
  br label %PyUnicode_WRITE.exit83.jt5, !llvm.loop !511

bb.ag:                                            ; preds = %bb.s, %bb.t
  %.not76.3 = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %.055 = phi i64 [ 8, %bb.t ], [ 4, %bb.s ]
  %.0 = phi ptr [ @.str.87, %bb.t ], [ @.str.86, %bb.s ] ; 2 uses
  %scevgep127 = getelementptr i8, ptr %i.bd, i64 %.055 ; 2 uses
  %.not78 = icmp ult ptr %i.bd, %i.z
  br i1 %.not78, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load i8, ptr %i.bd, align 1, !tbaa !205 ; 4 uses
  %i.ch = zext i8 %i.cg to i32                    ; 3 uses
  %i.ci = add i8 %i.cg, -48
  %or.cond4 = icmp ult i8 %i.ci, 10
  br i1 %or.cond4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = add nsw i32 %i.ch, -48
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.ck = add i8 %i.cg, -97
  %or.cond7 = icmp ult i8 %i.ck, 6
  br i1 %or.cond7, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cl = add nsw i32 %i.ch, -87
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.cm = add i8 %i.cg, -65
  %or.cond10 = icmp ult i8 %i.cm, 6
  br i1 %or.cond10, label %bb.am, label %.loopexit117

bb.am:                                            ; preds = %bb.al
  %i.cn = add nsw i32 %i.ch, -55
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.am, %bb.ak
  %.158 = phi i32 [ %i.cj, %bb.ai ], [ %i.cl, %bb.ak ], [ %i.cn, %bb.am ]
  %i.co = getelementptr i8, ptr %i.aa, i64 3      ; 4 uses
  %.not78.1 = icmp ult ptr %i.co, %i.z
  br i1 %.not78.1, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !205 ; 4 uses
  %i.cq = shl nsw i32 %.158, 4                    ; 3 uses
  %i.cr = zext i8 %i.cp to i32                    ; 3 uses
  %i.cs = add i8 %i.cp, -48
  %or.cond4.1 = icmp ult i8 %i.cs, 10
  br i1 %or.cond4.1, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = add i8 %i.cp, -97
  %or.cond7.1 = icmp ult i8 %i.ct, 6
  br i1 %or.cond7.1, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = add i8 %i.cp, -65
  %or.cond10.1 = icmp ult i8 %i.cu, 6
  br i1 %or.cond10.1, label %bb.ar, label %.loopexit117

bb.ar:                                            ; preds = %bb.aq
  %i.cv = add nsw i32 %i.cq, %i.cr
  %i.cw = add nsw i32 %i.cv, -55
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.cx = add nsw i32 %i.cq, %i.cr
  %i.cy = add nsw i32 %i.cx, -87
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.cz = add nsw i32 %i.cr, -48
  %i.da = or disjoint i32 %i.cz, %i.cq
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.158.1 = phi i32 [ %i.da, %bb.at ], [ %i.cy, %bb.as ], [ %i.cw, %bb.ar ]
  %i.db = getelementptr i8, ptr %i.aa, i64 4      ; 4 uses
  %.not78.2 = icmp ult ptr %i.db, %i.z
  br i1 %.not78.2, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !205 ; 4 uses
  %i.dd = shl i32 %.158.1, 4                      ; 3 uses
  %i.de = zext i8 %i.dc to i32                    ; 3 uses
  %i.df = add i8 %i.dc, -48
  %or.cond4.2 = icmp ult i8 %i.df, 10
  br i1 %or.cond4.2, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dg = add i8 %i.dc, -97
  %or.cond7.2 = icmp ult i8 %i.dg, 6
  br i1 %or.cond7.2, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dh = add i8 %i.dc, -65
  %or.cond10.2 = icmp ult i8 %i.dh, 6
  br i1 %or.cond10.2, label %bb.ay, label %.loopexit117

bb.ay:                                            ; preds = %bb.ax
  %i.di = add i32 %i.dd, %i.de
  %i.dj = add i32 %i.di, -55
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %i.dk = add i32 %i.dd, %i.de
  %i.dl = add i32 %i.dk, -87
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %i.dm = add nsw i32 %i.de, -48
  %i.dn = or disjoint i32 %i.dm, %i.dd
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.158.2 = phi i32 [ %i.dn, %bb.ba ], [ %i.dl, %bb.az ], [ %i.dj, %bb.ay ]
  %i.do = getelementptr i8, ptr %i.aa, i64 5      ; 4 uses
  %.not78.3 = icmp ult ptr %i.do, %i.z
  br i1 %.not78.3, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !205 ; 4 uses
  %i.dq = shl i32 %.158.2, 4                      ; 3 uses
  %i.dr = zext i8 %i.dp to i32                    ; 3 uses
  %i.ds = add i8 %i.dp, -48
  %or.cond4.3 = icmp ult i8 %i.ds, 10
  br i1 %or.cond4.3, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dt = add i8 %i.dp, -97
  %or.cond7.3 = icmp ult i8 %i.dt, 6
  br i1 %or.cond7.3, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = add i8 %i.dp, -65
  %or.cond10.3 = icmp ult i8 %i.du, 6
  br i1 %or.cond10.3, label %bb.bf, label %.loopexit117

bb.bf:                                            ; preds = %bb.be
  %i.dv = add i32 %i.dq, %i.dr
  %i.dw = add i32 %i.dv, -55
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.dx = add i32 %i.dq, %i.dr
  %i.dy = add i32 %i.dx, -87
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.dz = add nsw i32 %i.dr, -48
  %i.ea = or disjoint i32 %i.dz, %i.dq
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.158.3 = phi i32 [ %i.ea, %bb.bh ], [ %i.dy, %bb.bg ], [ %i.dw, %bb.bf ] ; 2 uses
  %i.eb = getelementptr i8, ptr %i.aa, i64 6      ; 4 uses
  br i1 %.not76.3, label %bb.cl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not78.4 = icmp ult ptr %i.eb, %i.z
  br i1 %.not78.4, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !205 ; 4 uses
  %i.ed = shl i32 %.158.3, 4                      ; 3 uses
  %i.ee = zext i8 %i.ec to i32                    ; 3 uses
  %i.ef = add i8 %i.ec, -48
  %or.cond4.4 = icmp ult i8 %i.ef, 10
  br i1 %or.cond4.4, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eg = add i8 %i.ec, -97
  %or.cond7.4 = icmp ult i8 %i.eg, 6
  br i1 %or.cond7.4, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eh = add i8 %i.ec, -65
  %or.cond10.4 = icmp ult i8 %i.eh, 6
  br i1 %or.cond10.4, label %bb.bn, label %.loopexit117

bb.bn:                                            ; preds = %bb.bm
  %i.ei = add i32 %i.ed, %i.ee
  %i.ej = add i32 %i.ei, -55
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.ek = add i32 %i.ed, %i.ee
  %i.el = add i32 %i.ek, -87
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bk
  %i.em = add nsw i32 %i.ee, -48
  %i.en = or disjoint i32 %i.em, %i.ed
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.158.4 = phi i32 [ %i.en, %bb.bp ], [ %i.el, %bb.bo ], [ %i.ej, %bb.bn ]
  %i.eo = getelementptr i8, ptr %i.aa, i64 7      ; 4 uses
  %.not78.5 = icmp ult ptr %i.eo, %i.z
  br i1 %.not78.5, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !205 ; 4 uses
  %i.eq = shl i32 %.158.4, 4                      ; 3 uses
end_hunk_0
