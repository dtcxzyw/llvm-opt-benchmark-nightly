Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codecs?download=true
inline.NumInlined: 135
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@surrogatepass_errors:bb.a
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !109 ; 2 uses
  %.not.i59.i.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i59.i.i, label %bb.x, label %Py_DECREF.exit60.i.i

bb.x:                                             ; preds = %bb.w
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.az, align 8, !tbaa !109
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %Py_DECREF.exit60.i.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #10
  br label %Py_DECREF.exit60.i.i

Py_DECREF.exit60.i.i:                             ; preds = %bb.y, %bb.x, %bb.w
  %i.bx = load i32, ptr %i.ap, align 8, !tbaa !109 ; 2 uses
  %.not.i57.i.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i57.i.i, label %bb.z, label %Py_DECREF.exit58.thread73.i.i

bb.z:                                             ; preds = %Py_DECREF.exit60.i.i
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.ap, align 8, !tbaa !109
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aa, label %Py_DECREF.exit58.thread73.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #10
  br label %Py_DECREF.exit58.thread73.i.i

bb.ab:                                            ; preds = %PyUnicode_READ_CHAR.exit.i.i
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !10
  switch i32 %i.ca, label %bb.ah [
    i32 0, label %bb.ac
    i32 2, label %bb.ad
    i32 1, label %bb.ae
    i32 4, label %bb.af
    i32 3, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr i8, ptr %.05075.i.i, i64 1
  store i8 -19, ptr %.05075.i.i, align 1, !tbaa !109
  %i.cc = lshr i32 %.0.i.i.i, 6
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.ce, -128
  %i.cg = getelementptr i8, ptr %.05075.i.i, i64 2
  store i8 %i.cf, ptr %i.cb, align 1, !tbaa !109
  %i.ch = trunc i32 %.0.i.i.i to i8
  %i.ci = and i8 %i.ch, 63
  %i.cj = or disjoint i8 %i.ci, -128
  %i.ck = getelementptr i8, ptr %.05075.i.i, i64 3
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !109
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.cl = trunc nuw i32 %.0.i.i.i to i16
  store i16 %i.cl, ptr %.05075.i.i, align 1
  %i.cm = getelementptr i8, ptr %.05075.i.i, i64 2
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.cn = lshr i32 %.0.i.i.i, 8
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = getelementptr i8, ptr %.05075.i.i, i64 1
  store i8 %i.co, ptr %.05075.i.i, align 1, !tbaa !109
  %i.cq = trunc i32 %.0.i.i.i to i8
  %i.cr = getelementptr i8, ptr %.05075.i.i, i64 2
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !109
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.cs = trunc nuw i32 %.0.i.i.i to i16
  store i16 %i.cs, ptr %.05075.i.i, align 1
  %i.ct = getelementptr i8, ptr %.05075.i.i, i64 2
  %i.cu = getelementptr i8, ptr %.05075.i.i, i64 3
  store i8 0, ptr %i.ct, align 1, !tbaa !109
  %i.cv = getelementptr i8, ptr %.05075.i.i, i64 4
  store i8 0, ptr %i.cu, align 1, !tbaa !109
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.cw = getelementptr i8, ptr %.05075.i.i, i64 1
  store i8 0, ptr %.05075.i.i, align 1, !tbaa !109
  %i.cx = getelementptr i8, ptr %.05075.i.i, i64 2
  store i8 0, ptr %i.cw, align 1, !tbaa !109
  %i.cy = lshr i32 %.0.i.i.i, 8
  %i.cz = trunc nuw i32 %i.cy to i8
  %i.da = getelementptr i8, ptr %.05075.i.i, i64 3
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !109
  %i.db = trunc i32 %.0.i.i.i to i8
  %i.dc = getelementptr i8, ptr %.05075.i.i, i64 4
  store i8 %i.db, ptr %i.da, align 1, !tbaa !109
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.2.ph.i.i = phi ptr [ %i.cv, %bb.af ], [ %i.cr, %bb.ae ], [ %i.cm, %bb.ad ], [ %i.ck, %bb.ac ], [ %.05075.i.i, %bb.ab ], [ %i.dc, %bb.ag ]
  %i.dd = add nsw i64 %.04976.i.i, 1              ; 2 uses
  %i.de = load i64, ptr %i.m, align 8, !tbaa !118
  %i.df = icmp slt i64 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph.i.i, label %Py_DECREF.exit58.i.i, !llvm.loop !155

Py_DECREF.exit58.i.i:                             ; preds = %bb.ah, %bb.m
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !15  ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i.i.i, label %bb.ai, label %Py_DECREF.exit.i.i

bb.ai:                                            ; preds = %Py_DECREF.exit58.i.i
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !109
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.aj, label %Py_DECREF.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.dg) #10
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.aj, %bb.ai, %Py_DECREF.exit58.i.i
  %i.dk = load i64, ptr %i.m, align 8, !tbaa !118
  %i.dl = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ap, i64 noundef %i.dk) #10
  br label %Py_DECREF.exit62.i.i

Py_DECREF.exit58.thread73.i.i:                    ; preds = %bb.aa, %bb.z, %Py_DECREF.exit60.i.i, %bb.e
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !111
  call void @PyErr_SetObject(ptr noundef %.val.i.i, ptr noundef nonnull %1) #10
  br label %Py_DECREF.exit62.i.i

Py_DECREF.exit62.i.i:                             ; preds = %Py_DECREF.exit58.thread73.i.i, %Py_DECREF.exit.i.i, %bb.l, %bb.k, %bb.j, %bb.f, %Py_DECREF.exit64.i.i
  %.0.i.i = phi ptr [ %i.dl, %Py_DECREF.exit.i.i ], [ null, %Py_DECREF.exit58.thread73.i.i ], [ null, %Py_DECREF.exit64.i.i ], [ null, %bb.f ], [ null, %bb.l ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i

_PyCodec_SurrogatePassUnicodeEncodeError.exit.i:  ; preds = %Py_DECREF.exit62.i.i, %PyObject_TypeCheck.exit.thread.i
  %.1.i.i = phi ptr [ %.0.i.i, %Py_DECREF.exit62.i.i ], [ null, %PyObject_TypeCheck.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %PyCodec_SurrogatePassErrors.exit

bb.ak:                                            ; preds = %PyObject_TypeCheck.exit.i
  %i.dm = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !15 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !111 ; 2 uses
  %.not.i9.i = icmp eq ptr %.val.i, %i.dm
  br i1 %.not.i9.i, label %PyObject_TypeCheck.exit10.thread.i, label %PyObject_TypeCheck.exit10.i

PyObject_TypeCheck.exit10.i:                      ; preds = %bb.ak
  %i.dn = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.dm) #10
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %bb.bh, label %PyObject_TypeCheck.exit10.thread.i

PyObject_TypeCheck.exit10.thread.i:               ; preds = %PyObject_TypeCheck.exit10.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.do = tail call ptr @PyUnicodeDecodeError_GetEncoding(ptr noundef nonnull %1) #10 ; 5 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i, label %bb.al

bb.al:                                            ; preds = %PyObject_TypeCheck.exit10.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.dq = call fastcc i32 @get_standard_encoding(ptr noundef %i.do, ptr noundef %i.a, ptr noundef %i.b)
  %i.dr = load i32, ptr %i.do, align 8, !tbaa !109 ; 2 uses
  %.not.i35.i.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i35.i.i, label %bb.am, label %Py_DECREF.exit36.i.i

bb.am:                                            ; preds = %bb.al
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !109
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.an, label %Py_DECREF.exit36.i.i

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.do) #10
  br label %Py_DECREF.exit36.i.i

Py_DECREF.exit36.i.i:                             ; preds = %bb.an, %bb.am, %bb.al
  %i.du = icmp slt i32 %i.dq, 0
  br i1 %i.du, label %bb.bg, label %bb.ao

bb.ao:                                            ; preds = %Py_DECREF.exit36.i.i
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.bf, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef 1) #10
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.bg, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !15  ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 32
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !118 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb  ; 8 uses
  %i.ed = load i64, ptr %i.d, align 8, !tbaa !118
  %i.ee = sub i64 %i.ed, %i.eb
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !10
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %.not.i11.i = icmp slt i64 %i.ee, %i.eg
  br i1 %.not.i11.i, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  switch i32 %i.dv, label %bb.ba [
    i32 0, label %bb.as
    i32 2, label %bb.aw
    i32 1, label %bb.ax
    i32 4, label %bb.ay
    i32 3, label %bb.az
  ]

bb.as:                                            ; preds = %bb.ar
  %i.eh = load i8, ptr %i.ec, align 1, !tbaa !109
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  %i.ej = and i32 %i.ei, 240
  %i.ek = icmp eq i32 %i.ej, 224
  br i1 %i.ek, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.el = getelementptr i8, ptr %i.ec, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !109
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = and i32 %i.en, 192
  %i.ep = icmp eq i32 %i.eo, 128
  br i1 %i.ep, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.eq = getelementptr i8, ptr %i.ec, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !109
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %i.et = and i32 %i.es, 192
  %i.eu = icmp eq i32 %i.et, 128
  br i1 %i.eu, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ev = shl nuw nsw i32 %i.ei, 12
  %i.ew = and i32 %i.ev, 61440
  %i.ex = shl nuw nsw i32 %i.en, 6
  %i.ey = and i32 %i.ex, 4032
  %i.ez = or disjoint i32 %i.ey, %i.ew
  %i.fa = and i32 %i.es, 63
  %i.fb = or disjoint i32 %i.ez, %i.fa
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.fc = load i16, ptr %i.ec, align 1
  %i.fd = zext i16 %i.fc to i32
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ar
  %2 = load i8, ptr %i.ec, align 1, !tbaa !109
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = getelementptr i8, ptr %i.ec, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !109
  %i.fe = zext i8 %6 to i32
  %7 = or disjoint i32 %4, %i.fe
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ar
  %i.ff = load i32, ptr %i.ec, align 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.fg = load i32, ptr %i.ec, align 1
  %i.fh = call i32 @llvm.bswap.i32(i32 %i.fg)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.031.i.i = phi i32 [ 0, %bb.ar ], [ %i.fb, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.fd, %bb.aw ], [ %7, %bb.ax ], [ %i.ff, %bb.ay ], [ %i.fh, %bb.az ], [ 0, %bb.aq ] ; 2 uses
  %i.fi = load i32, ptr %i.dz, align 8, !tbaa !109 ; 2 uses
  %.not.i.i12.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i.i12.i, label %bb.bb, label %Py_DECREF.exit.i13.i

bb.bb:                                            ; preds = %bb.ba
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.dz, align 8, !tbaa !109
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bc, label %Py_DECREF.exit.i13.i

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.dz) #10
  br label %Py_DECREF.exit.i13.i

Py_DECREF.exit.i13.i:                             ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.fl = and i32 %.031.i.i, -2048
  %.not38.i.i = icmp eq i32 %i.fl, 55296
  br i1 %.not38.i.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %Py_DECREF.exit.i13.i
  %i.fm = call ptr @PyUnicode_FromOrdinal(i32 noundef %.031.i.i) #10 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fo = load i64, ptr %i.e, align 8, !tbaa !118
  %i.fp = add i64 %i.fo, %i.eg
  %i.fq = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.fm, i64 noundef %i.fp) #10
  br label %bb.bg

bb.bf:                                            ; preds = %Py_DECREF.exit.i13.i, %bb.ao
  %.val.i14.i = load ptr, ptr %i.p, align 8, !tbaa !111
  call void @PyErr_SetObject(ptr noundef %.val.i14.i, ptr noundef nonnull %1) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ap, %Py_DECREF.exit36.i.i
  %.0.i15.i = phi ptr [ %i.fq, %bb.be ], [ null, %bb.bf ], [ null, %Py_DECREF.exit36.i.i ], [ null, %bb.ap ], [ null, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i

_PyCodec_SurrogatePassUnicodeDecodeError.exit.i:  ; preds = %bb.bg, %PyObject_TypeCheck.exit10.thread.i
  %.1.i16.i = phi ptr [ %.0.i15.i, %bb.bg ], [ null, %PyObject_TypeCheck.exit10.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %PyCodec_SurrogatePassErrors.exit

bb.bh:                                            ; preds = %PyObject_TypeCheck.exit10.i
  %i.fr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  %i.fs = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fr, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #10 ; 0 uses
  br label %PyCodec_SurrogatePassErrors.exit

PyCodec_SurrogatePassErrors.exit:                 ; preds = %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i, %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i, %bb.bh
  %.0.i = phi ptr [ %.1.i.i, %_PyCodec_SurrogatePassUnicodeEncodeError.exit.i ], [ %.1.i16.i, %_PyCodec_SurrogatePassUnicodeDecodeError.exit.i ], [ null, %bb.bh ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @surrogateescape_errors(ptr nofree readnone captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [4 x i16], align 2                ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !15 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.val7.i = load ptr, ptr %i.k, align 8, !tbaa !111 ; 2 uses
  %.not.i.i = icmp eq ptr %.val7.i, %i.j
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val7.i, ptr noundef %i.j) #10
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %bb.y, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.m = call i32 @_PyUnicodeError_GetParams(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 0) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.o = load i64, ptr %i.i, align 8, !tbaa !118
  %i.p = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.o) #10 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !109  ; 2 uses
  %.not.i29.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i29.i.i, label %bb.d, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !109
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %_PyCodec_SurrogateEscapeUnicodeEncodeError.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = call ptr @PyBytes_AsString(ptr noundef nonnull %i.p) #10
  %i.w = load i64, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  %i.x = load i64, ptr %i.h, align 8, !tbaa !118
  %.not36.i.i = icmp slt i64 %i.w, %i.x
  br i1 %.not36.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.u
  %.038.i.i = phi i64 [ %i.bb, %bb.u ], [ %i.w, %bb.f ] ; 4 uses
  %.01837.i.i = phi ptr [ %i.ba, %bb.u ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !15   ; 10 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 5 uses
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = and i32 %i.aa, 32
  %.not.i19.i.i.i = icmp eq i32 %i.ad, 0          ; 3 uses
  switch i32 %i.ac, label %bb.m [
    i32 1, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.aa, 64
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.y, i64 56
  %.val4.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !109
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.h ], [ %.val4.i.i.i.i, %bb.i ]
  %i.ag = getelementptr i8, ptr %.0.i.i.i.i, i64 %.038.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !109
  %i.ai = zext i8 %i.ah to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.aa, 64
  %.not.i.i12.i.i.i = icmp eq i32 %i.aj, 0
  %.0.v.i.i13.i.i.i = select i1 %.not.i.i12.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i13.i.i.i
  br label %_PyUnicode_DATA.exit17.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.y, i64 56
  %.val4.i16.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !109
  br label %_PyUnicode_DATA.exit17.i.i.i

_PyUnicode_DATA.exit17.i.i.i:                     ; preds = %bb.l, %bb.k
  %.0.i15.i.i.i = phi ptr [ %.0.i.i14.i.i.i, %bb.k ], [ %.val4.i16.i.i.i, %bb.l ]
  %i.al = getelementptr [2 x i8], ptr %.0.i15.i.i.i, i64 %.038.i.i
  %i.am = load i16, ptr %i.al, align 2, !tbaa !119
  %i.an = zext i16 %i.am to i32
  br label %PyUnicode_READ_CHAR.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = and i32 %i.aa, 64
  %.not.i.i20.i.i.i = icmp eq i32 %i.ao, 0
  %.0.v.i.i21.i.i.i = select i1 %.not.i.i20.i.i.i, i64 56, i64 40
  %.0.i.i22.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i21.i.i.i
  br label %_PyUnicode_DATA.exit25.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %i.y, i64 56
  %.val4.i24.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !109
  br label %_PyUnicode_DATA.exit25.i.i.i

_PyUnicode_DATA.exit25.i.i.i:                     ; preds = %bb.o, %bb.n
  %.0.i23.i.i.i = phi ptr [ %.0.i.i22.i.i.i, %bb.n ], [ %.val4.i24.i.i.i, %bb.o ]
  %i.aq = getelementptr [4 x i8], ptr %.0.i23.i.i.i, i64 %.038.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  br label %PyUnicode_READ_CHAR.exit.i.i
end_hunk_0
begin_hunk_1_@PyUnicodeEncodeError_GetEncoding

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_standard_encoding(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %0) #10 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !109
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !109
  %i.g = icmp eq i8 %i.f, 117
  br i1 %i.g, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !109
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !109
  %i.m = icmp eq i8 %i.l, 116
  br i1 %i.m, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.a, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !109
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !109
  %i.s = icmp eq i8 %i.r, 102
  br i1 %i.s, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.a, i64 3        ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109   ; 2 uses
  switch i8 %i.u, label %bb.g [
    i8 45, label %bb.f
    i8 95, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.v = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.pr.i = load i8, ptr %i.v, align 1, !tbaa !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i8 [ %i.u, %bb.e ], [ %.pr.i, %bb.f ]
  %.036.i = phi ptr [ %i.t, %bb.e ], [ %i.v, %bb.f ] ; 7 uses
  switch i8 %i.w, label %get_standard_encoding_impl.exit [
    i8 56, label %bb.h
    i8 49, label %bb.j
    i8 51, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.036.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !109
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.i, label %get_standard_encoding_impl.exit

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !10
  br label %get_standard_encoding_impl.exit

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.036.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.ac = icmp eq i8 %i.ab, 54
  br i1 %i.ac, label %bb.k, label %get_standard_encoding_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %.036.i, i64 2    ; 2 uses
  store i32 2, ptr %2, align 4, !tbaa !10
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109
  switch i8 %i.ae, label %bb.m [
    i8 0, label %get_standard_encoding_impl.exit
    i8 45, label %bb.l
    i8 95, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.af = getelementptr i8, ptr %.036.i, i64 3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.1.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !109
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !109
  %i.al = icmp eq i8 %i.ak, 101
  br i1 %i.al, label %bb.n, label %get_standard_encoding_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %.1.i, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !109
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.o, label %get_standard_encoding_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %.1.i, align 1, !tbaa !109
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !109 ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.as, 108
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 -1
  %switch.selectcmp42.i = icmp eq i8 %i.as, 98
  %switch.select43.i = select i1 %switch.selectcmp42.i, i32 1, i32 %switch.select.i
  br label %get_standard_encoding_impl.exit

bb.p:                                             ; preds = %bb.g
  %i.at = getelementptr i8, ptr %.036.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !109
  %i.av = icmp eq i8 %i.au, 50
  br i1 %i.av, label %bb.q, label %get_standard_encoding_impl.exit

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %.036.i, i64 2    ; 2 uses
  store i32 4, ptr %2, align 4, !tbaa !10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !109
  switch i8 %i.ax, label %bb.s [
    i8 0, label %get_standard_encoding_impl.exit
    i8 45, label %bb.r
    i8 95, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.ay = getelementptr i8, ptr %.036.i, i64 3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i = phi ptr [ %i.ay, %bb.r ], [ %i.aw, %bb.q ] ; 3 uses
  %i.az = getelementptr i8, ptr %.2.i, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !109
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !109
  %i.be = icmp eq i8 %i.bd, 101
  br i1 %i.be, label %bb.t, label %get_standard_encoding_impl.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr i8, ptr %.2.i, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !109
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.u, label %get_standard_encoding_impl.exit

bb.u:                                             ; preds = %bb.t
  %i.bi = load i8, ptr %.2.i, align 1, !tbaa !109
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !109 ; 2 uses
  %switch.selectcmp44.i = icmp eq i8 %i.bl, 108
  %switch.select45.i = select i1 %switch.selectcmp44.i, i32 4, i32 -1
  %switch.selectcmp46.i = icmp eq i8 %i.bl, 98
  %switch.select47.i = select i1 %switch.selectcmp46.i, i32 3, i32 %switch.select45.i
  br label %get_standard_encoding_impl.exit

bb.v:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.bm = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.48) #11
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %get_standard_encoding_impl.exit

bb.w:                                             ; preds = %bb.v
  store i32 3, ptr %2, align 4, !tbaa !10
  br label %get_standard_encoding_impl.exit

get_standard_encoding_impl.exit:                  ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi i32 [ 0, %bb.i ], [ 0, %bb.w ], [ 2, %bb.k ], [ %switch.select43.i, %bb.o ], [ 4, %bb.q ], [ %switch.select47.i, %bb.u ], [ -1, %bb.v ], [ -1, %bb.g ], [ -1, %bb.p ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.j ], [ -1, %bb.h ]
  store i32 %.0.i, ptr %1, align 4, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %get_standard_encoding_impl.exit
  %.0 = phi i32 [ 0, %get_standard_encoding_impl.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicodeDecodeError_GetEncoding(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS3_is", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS7_object", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"p1 _ZTS18_gil_runtime_state", !11, i64 0}
!18 = !{!"p1 _ZTS3_ts", !11, i64 0}
!19 = !{!"PyMutex", !8, i64 0}
!20 = !{!"_pending_calls", !18, i64 0, !19, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !8, i64 24, !9, i64 7224, !9, i64 7228}
!21 = !{!"_ceval_state", !16, i64 0, !9, i64 8, !17, i64 16, !9, i64 24, !20, i64 32}
!22 = !{!"p1 _ZTS18_PyThreadStateImpl", !11, i64 0}
!23 = !{!"pythreads", !16, i64 0, !18, i64 8, !22, i64 16, !18, i64 24, !16, i64 32, !16, i64 40}
!24 = !{!"p1 _ZTS14pyruntimestate", !11, i64 0}
!25 = !{!"", !16, i64 0, !16, i64 8}
!26 = !{!"gc_generation", !25, i64 0, !9, i64 16, !9, i64 20}
!27 = !{!"p1 _ZTS19_PyInterpreterFrame", !11, i64 0}
!28 = !{!"_gc_runtime_state", !9, i64 0, !9, i64 4, !26, i64 8, !8, i64 32, !26, i64 80, !8, i64 104, !9, i64 224, !27, i64 232, !14, i64 240, !14, i64 248, !16, i64 256, !16, i64 264, !9, i64 272, !9, i64 276}
!29 = !{!"long long", !8, i64 0}
!30 = !{!"", !19, i64 0, !29, i64 8, !16, i64 16}
!31 = !{!"", !9, i64 0, !16, i64 8, !9, i64 16}
!32 = !{!"_import_state", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !14, i64 40, !14, i64 48, !9, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !30, i64 88, !31, i64 112}
!33 = !{!"_gil_runtime_state", !16, i64 0, !18, i64 8, !9, i64 16, !16, i64 24, !8, i64 32, !8, i64 80, !8, i64 120, !8, i64 168}
!34 = !{!"codecs_state", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24}
!35 = !{!"p1 int", !11, i64 0}
!36 = !{!"any p2 pointer", !11, i64 0}
!37 = !{!"p2 int", !36, i64 0}
!38 = !{!"", !16, i64 0, !37, i64 8}
!39 = !{!"PyConfig", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !16, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !35, i64 64, !9, i64 72, !9, i64 76, !35, i64 80, !35, i64 88, !35, i64 96, !9, i64 104, !38, i64 112, !38, i64 128, !38, i64 144, !38, i64 160, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !35, i64 288, !35, i64 296, !35, i64 304, !35, i64 312, !9, i64 320, !38, i64 328, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !9, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !9, i64 440, !9, i64 444, !9, i64 448}
!40 = !{!"p1 _ZTS12_xid_regitem", !11, i64 0}
!41 = !{!"", !9, i64 0, !9, i64 4, !19, i64 8, !40, i64 16}
!42 = !{!"_xid_lookup_state", !41, i64 0}
!43 = !{!"xi_exceptions", !14, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!"", !42, i64 0, !43, i64 24}
!45 = !{!"_warnings_runtime_state", !14, i64 0, !14, i64 8, !14, i64 16, !30, i64 24, !16, i64 48, !14, i64 56}
!46 = !{!"p1 _ZTS15atexit_callback", !11, i64 0}
!47 = !{!"atexit_state", !46, i64 0, !14, i64 8}
!48 = !{!"_Bool", !8, i64 0}
!49 = !{!"", !8, i64 0}
!50 = !{!"_stoptheworld_state", !19, i64 0, !48, i64 1, !48, i64 2, !48, i64 3, !49, i64 4, !16, i64 8, !18, i64 16}
!51 = !{!"p1 _ZTS9_qsbr_pad", !11, i64 0}
!52 = !{!"p1 _ZTS18_qsbr_thread_state", !11, i64 0}
!53 = !{!"_qsbr_shared", !16, i64 0, !16, i64 8, !51, i64 16, !11, i64 24, !16, i64 32, !19, i64 40, !52, i64 48}
!54 = !{!"p1 _ZTS10llist_node", !11, i64 0}
!55 = !{!"llist_node", !54, i64 0, !54, i64 8}
!56 = !{!"p1 _ZTS15_obmalloc_state", !11, i64 0}
!57 = !{!"_Py_freelist", !11, i64 0, !16, i64 8}
!58 = !{!"_Py_freelists", !57, i64 0, !57, i64 16, !57, i64 32, !8, i64 48, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !57, i64 432, !57, i64 448, !57, i64 464, !57, i64 480, !57, i64 496, !57, i64 512, !57, i64 528, !57, i64 544, !57, i64 560, !57, i64 576, !57, i64 592, !57, i64 608, !57, i64 624, !57, i64 640}
!59 = !{!"_py_object_state", !58, i64 0, !9, i64 656}
!60 = !{!"p1 omnipotent char", !11, i64 0}
!61 = !{!"_Py_unicode_fs_codec", !60, i64 0, !9, i64 8, !60, i64 16, !9, i64 24}
!62 = !{!"p2 _ZTS7_object", !36, i64 0}
!63 = !{!"_Py_unicode_ids", !16, i64 0, !62, i64 8}
!64 = !{!"_Py_unicode_state", !61, i64 0, !11, i64 32, !63, i64 40}
!65 = !{!"_Py_long_state", !9, i64 0}
!66 = !{!"p1 double", !11, i64 0}
!67 = !{!"_dtoa_state", !8, i64 0, !8, i64 64, !8, i64 128, !66, i64 2432}
!68 = !{!"_py_func_state", !9, i64 0, !8, i64 8}
!69 = !{!"p1 _ZTS15_Py_hashtable_t", !11, i64 0}
!70 = !{!"_py_code_state", !19, i64 0, !69, i64 8}
!71 = !{!"_Py_dict_state", !9, i64 0, !8, i64 8}
!72 = !{!"_Py_exc_state", !14, i64 0, !11, i64 8, !9, i64 16, !14, i64 24}
!73 = !{!"_Py_mem_interp_free_queue", !9, i64 0, !19, i64 4, !55, i64 8}
!74 = !{!"ast_state", !49, i64 0, !9, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !14, i64 528, !14, i64 536, !14, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !14, i64 616, !14, i64 624, !14, i64 632, !14, i64 640, !14, i64 648, !14, i64 656, !14, i64 664, !14, i64 672, !14, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !14, i64 736, !14, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !14, i64 776, !14, i64 784, !14, i64 792, !14, i64 800, !14, i64 808, !14, i64 816, !14, i64 824, !14, i64 832, !14, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !14, i64 968, !14, i64 976, !14, i64 984, !14, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !14, i64 1048, !14, i64 1056, !14, i64 1064, !14, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !14, i64 1176, !14, i64 1184, !14, i64 1192, !14, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !14, i64 1240, !14, i64 1248, !14, i64 1256, !14, i64 1264, !14, i64 1272, !14, i64 1280, !14, i64 1288, !14, i64 1296, !14, i64 1304, !14, i64 1312, !14, i64 1320, !14, i64 1328, !14, i64 1336, !14, i64 1344, !14, i64 1352, !14, i64 1360, !14, i64 1368, !14, i64 1376, !14, i64 1384, !14, i64 1392, !14, i64 1400, !14, i64 1408, !14, i64 1416, !14, i64 1424, !14, i64 1432, !14, i64 1440, !14, i64 1448, !14, i64 1456, !14, i64 1464, !14, i64 1472, !14, i64 1480, !14, i64 1488, !14, i64 1496, !14, i64 1504, !14, i64 1512, !14, i64 1520, !14, i64 1528, !14, i64 1536, !14, i64 1544, !14, i64 1552, !14, i64 1560, !14, i64 1568, !14, i64 1576, !14, i64 1584, !14, i64 1592, !14, i64 1600, !14, i64 1608, !14, i64 1616, !14, i64 1624, !14, i64 1632, !14, i64 1640, !14, i64 1648, !14, i64 1656, !14, i64 1664, !14, i64 1672, !14, i64 1680, !14, i64 1688, !14, i64 1696, !14, i64 1704, !14, i64 1712, !14, i64 1720, !14, i64 1728, !14, i64 1736, !14, i64 1744, !14, i64 1752, !14, i64 1760, !14, i64 1768, !14, i64 1776, !14, i64 1784, !14, i64 1792, !14, i64 1800, !14, i64 1808, !14, i64 1816, !14, i64 1824, !14, i64 1832, !14, i64 1840, !14, i64 1848, !14, i64 1856, !14, i64 1864, !14, i64 1872, !14, i64 1880, !14, i64 1888, !14, i64 1896, !14, i64 1904, !14, i64 1912, !14, i64 1920, !14, i64 1928, !14, i64 1936, !14, i64 1944, !14, i64 1952, !14, i64 1960, !14, i64 1968, !14, i64 1976}
!75 = !{!"type_cache", !8, i64 0}
!76 = !{!"", !16, i64 0, !8, i64 8}
!77 = !{!"", !16, i64 0, !16, i64 8, !8, i64 16}
!78 = !{!"types_state", !9, i64 0, !75, i64 8, !76, i64 98312, !77, i64 108016, !19, i64 108512, !8, i64 108520}
!79 = !{!"callable_cache", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!80 = !{!"short", !8, i64 0}
!81 = !{!"_PyOptimizationConfig", !80, i64 0, !80, i64 2, !80, i64 4, !80, i64 6, !48, i64 8, !48, i64 9}
!82 = !{!"p1 _ZTS17_PyExecutorObject", !11, i64 0}
!83 = !{!"_rare_events", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4}
!84 = !{!"_Py_GlobalMonitors", !8, i64 0}
!85 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!86 = !{!"_Py_interp_cached_objects", !14, i64 0, !14, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !14, i64 72, !14, i64 80}
!87 = !{!"_object", !8, i64 0, !85, i64 8}
!88 = !{!"", !87, i64 0, !11, i64 16, !14, i64 24, !16, i64 32}
!89 = !{!"", !87, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !8, i64 64}
!90 = !{!"", !9, i64 0, !25, i64 8, !88, i64 24, !89, i64 64}
!91 = !{!"_Py_interp_static_objects", !90, i64 0}
!92 = !{!"", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!93 = !{!"p1 _ZTS14_err_stackitem", !11, i64 0}
!94 = !{!"p1 _ZTS12_stack_chunk", !11, i64 0}
!95 = !{!"_err_stackitem", !14, i64 0, !93, i64 8}
!96 = !{!"p1 _ZTS11_PyExitData", !11, i64 0}
!97 = !{!"", !9, i64 0, !8, i64 4}
!98 = !{!"_ts", !18, i64 0, !18, i64 8, !12, i64 16, !16, i64 24, !92, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !27, i64 72, !27, i64 80, !27, i64 88, !11, i64 96, !11, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !93, i64 136, !14, i64 144, !9, i64 152, !14, i64 160, !16, i64 168, !16, i64 176, !14, i64 184, !16, i64 192, !9, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !16, i64 232, !16, i64 240, !94, i64 248, !62, i64 256, !62, i64 264, !95, i64 272, !14, i64 288, !96, i64 296, !16, i64 304, !14, i64 312, !14, i64 320, !97, i64 328}
!99 = !{!"p1 _ZTS6_frame", !11, i64 0}
!100 = !{!"p1 _ZTS11_PyStackRef", !11, i64 0}
!101 = !{!"_PyInterpreterFrame", !8, i64 0, !27, i64 8, !8, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !99, i64 48, !11, i64 56, !100, i64 64, !80, i64 72, !8, i64 74, !8, i64 75, !8, i64 80}
!102 = !{!"_PyThreadStateImpl", !98, i64 0, !101, i64 848, !16, i64 936, !16, i64 944, !16, i64 952, !16, i64 960, !16, i64 968, !16, i64 976, !14, i64 984, !14, i64 992, !9, i64 1000, !55, i64 1008, !52, i64 1024, !55, i64 1032}
!103 = !{!"_is", !21, i64 0, !12, i64 7264, !16, i64 7272, !16, i64 7280, !9, i64 7288, !16, i64 7296, !9, i64 7304, !9, i64 7308, !9, i64 7312, !16, i64 7320, !23, i64 7328, !24, i64 7376, !18, i64 7384, !16, i64 7392, !28, i64 7400, !14, i64 7680, !14, i64 7688, !32, i64 7696, !33, i64 7832, !16, i64 8040, !34, i64 8048, !39, i64 8080, !16, i64 8536, !14, i64 8544, !14, i64 8552, !14, i64 8560, !11, i64 8568, !8, i64 8576, !8, i64 8640, !16, i64 8648, !8, i64 8656, !44, i64 10696, !14, i64 10744, !14, i64 10752, !14, i64 10760, !45, i64 10768, !47, i64 10832, !50, i64 10848, !53, i64 10872, !55, i64 10928, !19, i64 10944, !56, i64 10952, !14, i64 10960, !8, i64 10968, !8, i64 11032, !8, i64 11096, !8, i64 11160, !8, i64 11161, !59, i64 11168, !64, i64 11832, !65, i64 11888, !67, i64 11896, !68, i64 14336, !70, i64 79880, !71, i64 79896, !72, i64 79968, !73, i64 80000, !74, i64 80024, !78, i64 82008, !79, i64 223296, !8, i64 223328, !48, i64 223384, !48, i64 223385, !81, i64 223386, !82, i64 223400, !82, i64 223408, !82, i64 223416, !82, i64 223424, !16, i64 223432, !83, i64 223440, !11, i64 223448, !84, i64 223456, !49, i64 223472, !49, i64 223473, !16, i64 223480, !16, i64 223488, !8, i64 223496, !8, i64 224712, !8, i64 224776, !86, i64 224840, !91, i64 224928, !16, i64 225064, !102, i64 225072}
!104 = !{!103, !14, i64 8048}
!105 = !{!103, !9, i64 8072}
!106 = !{!"PyVarObject", !87, i64 0, !16, i64 16}
!107 = !{!106, !16, i64 16}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!8, !8, i64 0}
!110 = !{!103, !14, i64 8056}
!111 = !{!87, !85, i64 8}
!112 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!113 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!114 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!115 = !{!"_typeobject", !106, i64 0, !60, i64 24, !16, i64 32, !16, i64 40, !11, i64 48, !16, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !60, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !16, i64 208, !11, i64 216, !11, i64 224, !112, i64 232, !113, i64 240, !114, i64 248, !85, i64 256, !14, i64 264, !11, i64 272, !11, i64 280, !16, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !11, i64 360, !14, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !80, i64 410}
!116 = !{!115, !16, i64 168}
!117 = !{!103, !14, i64 8064}
!118 = !{!16, !16, i64 0}
!119 = !{!80, !80, i64 0}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = !{!60, !60, i64 0}
!123 = distinct !{!123, !108}
!124 = distinct !{!124, !108}
!125 = distinct !{!125, !108}
!126 = distinct !{null, null}
!127 = !{!18, !18, i64 0}
!128 = !{!115, !16, i64 56}
!129 = distinct !{!129, !108, !120, !121}
!130 = distinct !{!130, !108, !120, !121}
!131 = distinct !{!131, !108, !121, !120}
!132 = !{!"branch_weights", i32 4, i32 12}
!133 = distinct !{!133, !108}
!134 = distinct !{!134, !108, !120, !121}
!135 = distinct !{!135, !108, !121, !120}
!136 = distinct !{!136, !108}
!137 = distinct !{!137, !108}
!138 = distinct !{!138, !108}
!139 = distinct !{!139, !108, !120, !121}
!140 = distinct !{!140, !108, !120, !121}
!141 = distinct !{!141, !108, !121, !120}
!142 = distinct !{!142, !108, !121, !120}
!143 = distinct !{!143, !108, !120, !121}
!144 = distinct !{!144, !108, !120, !121}
!145 = distinct !{!145, !108, !121, !120}
!146 = distinct !{!146, !108, !121, !120}
!147 = distinct !{!147, !108}
!148 = distinct !{!148, !108}
!149 = distinct !{!149, !108}
!150 = !{!"", !11, i64 0, !11, i64 8}
!151 = !{!150, !11, i64 0}
!152 = !{!"PyMethodDef", !60, i64 0, !11, i64 8, !9, i64 16, !60, i64 24}
!153 = !{!"", !60, i64 0, !152, i64 8}
!154 = !{!153, !60, i64 0}
!155 = distinct !{!155, !108}
!156 = distinct !{!156, !108}
end_hunk_1
