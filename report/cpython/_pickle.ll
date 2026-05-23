inline.NumInlined: 778
inline.NumDeleted: 166
begin_hunk_0_@save_bytes:bb.a
  store i8 %i.y, ptr %i.z, align 1, !tbaa !46
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.aa = icmp samesign ult i64 %.val, 4294967296
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 66, ptr %i.a, align 1, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ac = trunc nuw i64 %.val to i32
  store i32 %i.ac, ptr %i.ab, align 1
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not30 = icmp eq i32 %i.c, 3
  br i1 %.not30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 -114, ptr %i.a, align 1, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i64 %.val, ptr %i.ad, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !40
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.30) #14
  br label %_save_bytes_data.exit

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.m
  %.0.i = phi i64 [ 2, %bb.m ], [ 5, %bb.o ], [ 9, %bb.q ]
  %i.af = call fastcc i32 @_Pickler_write_bytes(ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %.0.i, ptr noundef %i.u, i64 noundef %.val, ptr noundef nonnull %2)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_save_bytes_data.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = tail call fastcc i32 @memo_put(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_save_bytes_data.exit

_save_bytes_data.exit:                            ; preds = %bb.k, %bb.r, %bb.s, %bb.t
  %.018.i = phi i32 [ -1, %bb.r ], [ -1, %bb.k ], [ %i.ah, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit26, %bb.d, %_save_bytes_data.exit
  %.2 = phi i32 [ %.018.i, %_save_bytes_data.exit ], [ -1, %Py_DECREF.exit26 ], [ -1, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.q, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @save_unicode(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr i8, ptr %1, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %2, ptr noundef nonnull %i.b) #14 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %thread-pre-split.i

bb.c:                                             ; preds = %bb.b
  call void @PyErr_Clear() #14
  %i.g = call ptr @PyUnicode_AsEncodedString(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #14 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %write_unicode_binary.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 32
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !38 ; 2 uses
  store i64 %.val.i, ptr %i.b, align 8, !tbaa !60
  br label %bb.e

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i64, ptr %i.b, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.k = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %.val.i, %bb.d ] ; 6 uses
  %.015.i = phi ptr [ null, %thread-pre-split.i ], [ %i.g, %bb.d ] ; 8 uses
  %.0.i = phi ptr [ %i.e, %thread-pre-split.i ], [ %i.i, %bb.d ]
  %i.l = icmp slt i64 %i.k, 256
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %1, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 -116, ptr %i.a, align 1, !tbaa !46
  %i.p = trunc i64 %i.k to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !46
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = icmp ult i64 %i.k, 4294967296
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 88, ptr %i.a, align 1, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = trunc nuw i64 %i.k to i32
  store i32 %i.t, ptr %i.s, align 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %1, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 -115, ptr %i.a, align 1, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i64 %i.k, ptr %i.x, align 1
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !40
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.34) #14
  %.not.i.i = icmp eq ptr %.015.i, null
  br i1 %.not.i.i, label %write_unicode_binary.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %.015.i, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i.i, label %bb.n, label %write_unicode_binary.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %.015.i, align 8, !tbaa !46
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %Py_XDECREF.exit.sink.split.i, label %write_unicode_binary.exit.thread

bb.o:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.016.i = phi i64 [ 2, %bb.g ], [ 5, %bb.i ], [ 9, %bb.k ]
  %i.ac = call fastcc i32 @_Pickler_write_bytes(ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %.016.i, ptr noundef %.0.i, i64 noundef %i.k, ptr noundef %.015.i) ; 4 uses
  %.not.i20.i = icmp eq ptr %.015.i, null
  br i1 %.not.i20.i, label %write_unicode_binary.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %.015.i, align 8, !tbaa !46 ; 2 uses
  %.not.i.i21.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i21.i, label %bb.q, label %write_unicode_binary.exit

bb.q:                                             ; preds = %bb.p
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %.015.i, align 8, !tbaa !46
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %Py_XDECREF.exit.sink.split.i, label %write_unicode_binary.exit

Py_XDECREF.exit.sink.split.i:                     ; preds = %bb.q, %bb.n
  %.017.ph.i = phi i32 [ -1, %bb.n ], [ %i.ac, %bb.q ]
  call void @_Py_Dealloc(ptr noundef nonnull %.015.i) #14
  br label %write_unicode_binary.exit

write_unicode_binary.exit.thread:                 ; preds = %bb.c, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %Py_DECREF.exit24.thread

write_unicode_binary.exit:                        ; preds = %bb.o, %bb.p, %bb.q, %Py_XDECREF.exit.sink.split.i
  %.017.i = phi i32 [ %.017.ph.i, %Py_XDECREF.exit.sink.split.i ], [ %i.ac, %bb.q ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ag = icmp slt i32 %.017.i, 0
  br i1 %i.ag, label %Py_DECREF.exit24.thread, label %bb.bh

bb.r:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %2, i64 16
  %.val.i27 = load i64, ptr %i.ah, align 8, !tbaa !91 ; 3 uses
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val.i.i = load i32, ptr %i.ai, align 8        ; 3 uses
  %i.aj = and i32 %.val.i.i, 32
  %.not.i.i28 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = and i32 %.val.i.i, 64
  %.not.i.i.i29 = icmp eq i32 %i.ak, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i29, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.t:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.al, align 8, !tbaa !46
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.t, %bb.s
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.s ], [ %.val4.i.i, %bb.t ] ; 3 uses
  %3 = lshr i32 %.val.i.i, 2
  %4 = and i32 %3, 7
  %i.am = tail call ptr @PyBytesWriter_Create(i64 noundef %.val.i27) #14 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %Py_DECREF.exit24.thread, label %bb.u

bb.u:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ao = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.am) #14 ; 2 uses
  %i.ap = icmp sgt i64 %.val.i27, 0
  br i1 %i.ap, label %.lr.ph.i.a, label %raw_unicode_escape.exit

.lr.ph.i.a:                                       ; preds = %bb.u, %bb.ac
  %.07095.i = phi i64 [ %i.em, %bb.ac ], [ 0, %bb.u ] ; 4 uses
  %.07194.i = phi ptr [ %.2.ph.i, %bb.ac ], [ %i.ao, %bb.u ] ; 4 uses
  switch i32 %4, label %PyUnicode_READ.exit.i [
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %.lr.ph.i.a
  %i.aq = getelementptr i8, ptr %.0.i.i, i64 %.07095.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !46
  %i.as = zext i8 %i.ar to i32
  br label %PyUnicode_READ.exit.thread.i

bb.w:                                             ; preds = %.lr.ph.i.a
  %i.at = getelementptr [2 x i8], ptr %.0.i.i, i64 %.07095.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !101
  %i.av = zext i16 %i.au to i32
  br label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i.a
  %i.aw = getelementptr [4 x i8], ptr %.0.i.i, i64 %.07095.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !6  ; 10 uses
  %i.ay = icmp ugt i32 %i.ax, 65535
  br i1 %i.ay, label %bb.x, label %PyUnicode_READ.exit.thread.i

bb.x:                                             ; preds = %PyUnicode_READ.exit.i
  %i.az = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.am, i64 noundef 9, ptr noundef %.07194.i) #14 ; 12 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr i8, ptr %i.az, i64 1
  store i8 92, ptr %i.az, align 1, !tbaa !46
  %i.bc = getelementptr i8, ptr %i.az, i64 2
  store i8 85, ptr %i.bb, align 1, !tbaa !46
  %i.bd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.be = lshr i32 %i.ax, 28
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !46
  %i.bi = getelementptr i8, ptr %i.az, i64 3
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !46
  %i.bj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.bk = lshr i32 %i.ax, 24
  %i.bl = and i32 %i.bk, 15
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46
  %i.bp = getelementptr i8, ptr %i.az, i64 4
  store i8 %i.bo, ptr %i.bi, align 1, !tbaa !46
  %i.bq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.br = lshr i32 %i.ax, 20
  %i.bs = and i32 %i.br, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !46
  %i.bw = getelementptr i8, ptr %i.az, i64 5
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !46
  %i.bx = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.by = lshr i32 %i.ax, 16
  %i.bz = and i32 %i.by, 15
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.bx, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !46
  %i.cd = getelementptr i8, ptr %i.az, i64 6
  store i8 %i.cc, ptr %i.bw, align 1, !tbaa !46
  %i.ce = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.cf = lshr i32 %i.ax, 12
  %i.cg = and i32 %i.cf, 15
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.ce, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !46
  %i.ck = getelementptr i8, ptr %i.az, i64 7
  store i8 %i.cj, ptr %i.cd, align 1, !tbaa !46
  %i.cl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.cm = lshr i32 %i.ax, 8
  %i.cn = and i32 %i.cm, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %i.cl, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !46
  %i.cr = getelementptr i8, ptr %i.az, i64 8
  store i8 %i.cq, ptr %i.ck, align 1, !tbaa !46
  %i.cs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.ct = lshr i32 %i.ax, 4
  %i.cu = and i32 %i.ct, 15
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.cs, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !46
  %i.cy = getelementptr i8, ptr %i.az, i64 9
  store i8 %i.cx, ptr %i.cr, align 1, !tbaa !46
  %i.cz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.da = and i32 %i.ax, 15
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !46
  %i.de = getelementptr i8, ptr %i.az, i64 10
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !46
  br label %bb.ac

PyUnicode_READ.exit.thread.i:                     ; preds = %PyUnicode_READ.exit.i, %bb.w, %bb.v
  %.0.i8284.i = phi i32 [ %i.ax, %PyUnicode_READ.exit.i ], [ %i.av, %bb.w ], [ %i.as, %bb.v ]
  %.0.i8284.fr.i = freeze i32 %.0.i8284.i         ; 6 uses
  %i.df = add i32 %.0.i8284.fr.i, -256
  %i.dg = icmp ult i32 %i.df, -255
  br i1 %i.dg, label %bb.z, label %switch.early.test.i

switch.early.test.i:                              ; preds = %PyUnicode_READ.exit.thread.i
  %trunc.i = trunc nuw i32 %.0.i8284.fr.i to i8   ; 2 uses
  switch i8 %trunc.i, label %bb.ab [
    i8 92, label %bb.z
    i8 26, label %bb.z
    i8 13, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %PyUnicode_READ.exit.thread.i
  %i.dh = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.am, i64 noundef 5, ptr noundef %.07194.i) #14 ; 8 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr i8, ptr %i.dh, i64 1
  store i8 92, ptr %i.dh, align 1, !tbaa !46
  %i.dk = getelementptr i8, ptr %i.dh, i64 2
  store i8 117, ptr %i.dj, align 1, !tbaa !46
  %i.dl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.dm = lshr i32 %.0.i8284.fr.i, 12
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.dl, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !46
  %i.dq = getelementptr i8, ptr %i.dh, i64 3
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !46
  %i.dr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.ds = lshr i32 %.0.i8284.fr.i, 8
  %i.dt = and i32 %i.ds, 15
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !46
  %i.dx = getelementptr i8, ptr %i.dh, i64 4
  store i8 %i.dw, ptr %i.dq, align 1, !tbaa !46
  %i.dy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.dz = lshr i32 %.0.i8284.fr.i, 4
  %i.ea = and i32 %i.dz, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.dy, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !46
  %i.ee = getelementptr i8, ptr %i.dh, i64 5
  store i8 %i.ed, ptr %i.dx, align 1, !tbaa !46
  %i.ef = load ptr, ptr @Py_hexdigits, align 8, !tbaa !102
  %i.eg = and i32 %.0.i8284.fr.i, 15
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr %i.ef, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !46
  %i.ek = getelementptr i8, ptr %i.dh, i64 6
  store i8 %i.ej, ptr %i.ee, align 1, !tbaa !46
  br label %bb.ac

bb.ab:                                            ; preds = %switch.early.test.i
  %i.el = getelementptr i8, ptr %.07194.i, i64 1
  store i8 %trunc.i, ptr %.07194.i, align 1, !tbaa !46
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %.2.ph.i = phi ptr [ %i.el, %bb.ab ], [ %i.ek, %bb.aa ], [ %i.de, %bb.y ] ; 2 uses
  %i.em = add nuw nsw i64 %.07095.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %.val.i27
  br i1 %exitcond.not.i, label %raw_unicode_escape.exit, label %.lr.ph.i.a, !llvm.loop !103

bb.ad:                                            ; preds = %bb.z, %bb.x
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.am) #14
  br label %Py_DECREF.exit24.thread

raw_unicode_escape.exit:                          ; preds = %bb.ac, %bb.u
  %.071.lcssa.i = phi ptr [ %i.ao, %bb.u ], [ %.2.ph.i, %bb.ac ]
  %i.en = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.am, ptr noundef %.071.lcssa.i) #14 ; 18 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %Py_DECREF.exit24.thread, label %bb.ae

bb.ae:                                            ; preds = %raw_unicode_escape.exit
  %i.ep = getelementptr i8, ptr %1, i64 96        ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !49
  %.not.i30 = icmp eq i32 %i.eq, 0
  br i1 %.not.i30, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr i8, ptr %1, i64 104
  %i.es = load i64, ptr %i.er, align 8, !tbaa !50
  %.fr.i = freeze i64 %i.es
  %i.et = icmp eq i64 %.fr.i, -1                  ; 2 uses
  %spec.select.i = select i1 %i.et, i64 10, i64 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.af, %bb.ae
  %i.eu = phi i1 [ false, %bb.ae ], [ %i.et, %bb.af ]
  %i.ev = phi i64 [ 1, %bb.ae ], [ %spec.select.i, %bb.af ] ; 2 uses
  %i.ew = getelementptr i8, ptr %1, i64 72        ; 27 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !51 ; 3 uses
  %i.ey = add i64 %i.ex, %i.ev                    ; 2 uses
  %i.ez = getelementptr i8, ptr %1, i64 80        ; 6 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !82
  %i.fb = icmp sgt i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.thread.i
  %i.fc = xor i64 %i.ev, 4611686018427387903
end_hunk_0
