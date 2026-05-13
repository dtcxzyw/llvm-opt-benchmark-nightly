inline.NumInlined: 326
inline.NumDeleted: 79
begin_hunk_0_@_io_TextIOWrapper_write:bb.a

.preheader.i:                                     ; preds = %bb.as, %bb.at
  %i.cy = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  %.not149.i = icmp eq ptr %i.cy, null
  br i1 %.not149.i, label %.loopexit.thread.i, label %bb.at

bb.at:                                            ; preds = %.preheader.i
  %i.cz = call fastcc i32 @_textiowrapper_writeflush(ptr noundef nonnull %0)
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.au, label %.preheader.i, !llvm.loop !204

bb.au:                                            ; preds = %bb.at
  %i.db = load i32, ptr %.1111.i, align 8, !tbaa !19 ; 2 uses
  %.not.i163.i = icmp sgt i32 %i.db, -1
  br i1 %.not.i163.i, label %bb.av, label %_io_TextIOWrapper_write_impl.exit

bb.av:                                            ; preds = %bb.au
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %.1111.i, align 8, !tbaa !19
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.aw, label %_io_TextIOWrapper_write_impl.exit

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %.1111.i) #10
  br label %_io_TextIOWrapper_write_impl.exit

.loopexit.i:                                      ; preds = %bb.as
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !86 ; 3 uses
  %i.de = icmp eq ptr %.pre.i, null
  br i1 %i.de, label %.loopexit.thread.i, label %bb.ax

.loopexit.thread.i:                               ; preds = %.preheader.i, %.loopexit.i
  store ptr %.1111.i, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  br label %Py_DECREF.exit158.i

bb.ax:                                            ; preds = %.loopexit.i
  %i.df = getelementptr i8, ptr %.pre.i, i64 8
  %.val188.i = load ptr, ptr %i.df, align 8, !tbaa !20
  %.not221.i = icmp eq ptr %.val188.i, @PyList_Type
  br i1 %.not221.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dg = call ptr @PyList_New(i64 noundef 2) #10 ; 3 uses
  %.not151.i = icmp eq ptr %i.dg, null
  br i1 %.not151.i, label %bb.az, label %Py_DECREF.exit162.i

bb.az:                                            ; preds = %bb.ay
  %i.dh = load i32, ptr %.1111.i, align 8, !tbaa !19 ; 2 uses
  %.not.i161.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i161.i, label %bb.ba, label %_io_TextIOWrapper_write_impl.exit

bb.ba:                                            ; preds = %bb.az
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %.1111.i, align 8, !tbaa !19
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.bb, label %_io_TextIOWrapper_write_impl.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.1111.i) #10
  br label %_io_TextIOWrapper_write_impl.exit

Py_DECREF.exit162.i:                              ; preds = %bb.ay
  %i.dk = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  %i.dl = getelementptr i8, ptr %i.dg, i64 24
  %.val193.i = load ptr, ptr %i.dl, align 8, !tbaa !192 ; 2 uses
  store ptr %i.dk, ptr %.val193.i, align 8, !tbaa !17
  %i.dm = getelementptr i8, ptr %.val193.i, i64 8
  store ptr %.1111.i, ptr %i.dm, align 8, !tbaa !17
  store ptr %i.dg, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  br label %Py_DECREF.exit158.i

bb.bc:                                            ; preds = %bb.ax
  %i.dn = call i32 @PyList_Append(ptr noundef nonnull %.pre.i, ptr noundef nonnull %.1111.i) #10
  %i.do = icmp slt i32 %i.dn, 0
  %i.dp = load i32, ptr %.1111.i, align 8, !tbaa !19 ; 3 uses
  %.not.i159.i = icmp sgt i32 %i.dp, -1           ; 2 uses
  br i1 %i.do, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not.i159.i, label %bb.be, label %_io_TextIOWrapper_write_impl.exit

bb.be:                                            ; preds = %bb.bd
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %.1111.i, align 8, !tbaa !19
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.bf, label %_io_TextIOWrapper_write_impl.exit

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %.1111.i) #10
  br label %_io_TextIOWrapper_write_impl.exit

bb.bg:                                            ; preds = %bb.bc
  br i1 %.not.i159.i, label %bb.bh, label %Py_DECREF.exit158.i

bb.bh:                                            ; preds = %bb.bg
  %i.ds = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.ds, ptr %.1111.i, align 8, !tbaa !19
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bi, label %Py_DECREF.exit158.i

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %.1111.i) #10
  br label %Py_DECREF.exit158.i

Py_DECREF.exit158.i:                              ; preds = %bb.bi, %bb.bh, %bb.bg, %Py_DECREF.exit162.i, %.loopexit.thread.i
  %i.du = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !177
  %i.dw = add i64 %i.dv, %.0112.i                 ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !177
  %i.dx = load i64, ptr %i.cw, align 8, !tbaa !180
  %i.dy = icmp sge i64 %i.dw, %i.dx
  %i.dz = or i1 %.not139206.i, %i.dy
  %or.cond5.i = or i1 %i.bp, %i.dz
  br i1 %or.cond5.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %Py_DECREF.exit158.i
  %i.ea = call fastcc i32 @_textiowrapper_writeflush(ptr noundef nonnull %0)
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %_io_TextIOWrapper_write_impl.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %Py_DECREF.exit158.i
  br i1 %i.bp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ec = getelementptr i8, ptr %0, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81
  %i.ee = call i32 @_PyFile_Flush(ptr noundef %i.ed) #10
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %_io_TextIOWrapper_write_impl.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.eg = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87
  %.not152.i = icmp eq ptr %i.eh, null
  br i1 %.not152.i, label %Py_DECREF.exit156.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @textiowrapper_set_decoded_chars(ptr noundef nonnull %0, ptr noundef null)
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !17 ; 4 uses
  %.not153.i = icmp eq ptr %i.ei, null
  br i1 %.not153.i, label %Py_DECREF.exit156.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr null, ptr %i.eg, align 8, !tbaa !17
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !19 ; 2 uses
  %.not.i155.i = icmp sgt i32 %i.ej, -1
  br i1 %.not.i155.i, label %bb.bp, label %Py_DECREF.exit156.i

bb.bp:                                            ; preds = %bb.bo
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !19
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bq, label %Py_DECREF.exit156.i

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #10
  br label %Py_DECREF.exit156.i

Py_DECREF.exit156.i:                              ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.em = getelementptr i8, ptr %0, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83 ; 2 uses
  %.not154.i = icmp eq ptr %i.en, null
  br i1 %.not154.i, label %Py_DECREF.exit.i, label %bb.br

bb.br:                                            ; preds = %Py_DECREF.exit156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.en, ptr %i.a, align 8, !tbaa !17
  %i.eo = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_io_TextIOWrapper_write_impl.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eq = load i32, ptr %i.eo, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i, label %bb.bt, label %Py_DECREF.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !19
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bu, label %Py_DECREF.exit.i

bb.bu:                                            ; preds = %bb.bt
  call void @_Py_Dealloc(ptr noundef nonnull %i.eo) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %Py_DECREF.exit156.i
  %i.et = call ptr @PyLong_FromSsize_t(i64 noundef %.val186.i) #10
  br label %_io_TextIOWrapper_write_impl.exit

_io_TextIOWrapper_write_impl.exit:                ; preds = %Py_DECREF.exit.i, %bb.br, %bb.bl, %bb.bj, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.aw, %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.ap, %Py_DECREF.exit168.i, %Py_DECREF.exit170.i, %bb.q, %bb.o, %bb.n, %Py_DECREF.exit172.i, %_io_TextIOWrapper_closed_get_impl.exit.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.q ], [ null, %bb.br ], [ null, %Py_DECREF.exit168.i ], [ null, %bb.n ], [ null, %Py_DECREF.exit170.i ], [ null, %bb.ar ], [ null, %bb.bf ], [ null, %bb.bj ], [ null, %bb.bl ], [ %i.et, %Py_DECREF.exit.i ], [ null, %bb.aw ], [ null, %bb.o ], [ null, %_io_TextIOWrapper_closed_get_impl.exit.i ], [ null, %Py_DECREF.exit172.i ], [ null, %bb.ap ], [ null, %bb.aq ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.bb ], [ null, %bb.ba ], [ null, %bb.az ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_read(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 -1, ptr %i.c, align 8, !tbaa !40
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.6, i64 noundef %2, i64 noundef 0, i64 noundef 1) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.bq, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = icmp slt i64 %2, 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !17
  %i.g = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.f, ptr noundef nonnull %i.c) #10
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.bq, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.c, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ -1, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val123.i = load ptr, ptr %i.t, align 8, !tbaa !20
  %.not147.i = icmp eq ptr %.val123.i, %i.s
  br i1 %.not147.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89   ; 2 uses
  %.not95.i = icmp eq ptr %i.v, null
  br i1 %.not95.i, label %_io_TextIOWrapper_closed_get_impl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @_PyFileIO_closed(ptr noundef nonnull %i.v) #10
  br label %bb.o

_io_TextIOWrapper_closed_get_impl.exit.i:         ; preds = %bb.j
  %i.x = getelementptr i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = call ptr @PyObject_GetAttr(ptr noundef %i.y, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #10 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_io_TextIOWrapper_read_impl.exit, label %bb.l

bb.l:                                             ; preds = %_io_TextIOWrapper_closed_get_impl.exit.i
  %i.ab = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.z) #10 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %.not.i112.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i112.i, label %bb.m, label %Py_DECREF.exit113.i

bb.m:                                             ; preds = %bb.l
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.z, align 8, !tbaa !19
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %Py_DECREF.exit113.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #10
  br label %Py_DECREF.exit113.i

Py_DECREF.exit113.i:                              ; preds = %bb.n, %bb.m, %bb.l
  %i.af = icmp slt i32 %i.ab, 0
  br i1 %i.af, label %_io_TextIOWrapper_read_impl.exit, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit113.i, %bb.k
  %.068.i = phi i32 [ %i.w, %bb.k ], [ %i.ab, %Py_DECREF.exit113.i ]
  %i.ag = icmp sgt i32 %.068.i, 0
  br i1 %i.ag, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.50) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.q:                                             ; preds = %bb.i
  %i.ai = call ptr @_PyIOBase_check_closed(ptr noundef nonnull %0, ptr noundef nonnull @_Py_TrueStruct) #10
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_io_TextIOWrapper_read_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.ak = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val124.i = load ptr, ptr %i.ao, align 8, !tbaa !56
  call void @PyErr_SetString(ptr noundef %.val124.i, ptr noundef nonnull @.str.51) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.t:                                             ; preds = %bb.r
  %i.ap = call fastcc i32 @_textiowrapper_writeflush(ptr noundef nonnull %0)
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %_io_TextIOWrapper_read_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = icmp slt i64 %i.h, 0
  br i1 %i.ar, label %bb.v, label %bb.aq

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.at, ptr %i.a, align 8, !tbaa !17
  %i.au = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %Py_DECREF.exit107.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = icmp eq ptr %i.au, @_Py_NoneStruct
  br i1 %i.aw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ax = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i110.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i110.i, label %bb.y, label %Py_DECREF.exit111.i

bb.y:                                             ; preds = %bb.x
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr @_Py_NoneStruct, align 8, !tbaa !19
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.z, label %Py_DECREF.exit111.i

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #10
  br label %Py_DECREF.exit111.i

Py_DECREF.exit111.i:                              ; preds = %bb.z, %bb.y, %bb.x
  %i.ba = load ptr, ptr @PyExc_BlockingIOError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.ba, ptr noundef nonnull @.str.91) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.aa:                                            ; preds = %bb.w
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %.val122.i = load ptr, ptr %i.bf, align 8, !tbaa !20
  %.not148.i = icmp eq ptr %.val122.i, %i.be
  br i1 %.not148.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bg = call ptr @_PyIncrementalNewlineDecoder_decode(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.au, i32 noundef 1)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bh = call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %i.bc, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 80456), ptr noundef nonnull %i.au, ptr noundef nonnull @_Py_TrueStruct, ptr noundef null) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.069.i = phi ptr [ %i.bg, %bb.ab ], [ %i.bh, %bb.ac ] ; 5 uses
  %i.bi = load i32, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %.not.i108.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i108.i, label %bb.ae, label %Py_DECREF.exit109.i

bb.ae:                                            ; preds = %bb.ad
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.au, align 8, !tbaa !19
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.af, label %Py_DECREF.exit109.i

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #10
  br label %Py_DECREF.exit109.i

Py_DECREF.exit109.i:                              ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bl = call fastcc i32 @check_decoded(ptr noundef %.069.i)
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %Py_DECREF.exit107.i, label %bb.ag

bb.ag:                                            ; preds = %Py_DECREF.exit109.i
  %i.bn = call fastcc ptr @textiowrapper_get_decoded_chars(ptr noundef nonnull %0, i64 noundef -1) ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !17
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.bp = load i32, ptr %.069.i, align 8, !tbaa !19 ; 2 uses
  %.not.i106.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i106.i, label %bb.ai, label %_io_TextIOWrapper_read_impl.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %.069.i, align 8, !tbaa !19
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_io_TextIOWrapper_read_impl.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %.069.i) #10
  br label %_io_TextIOWrapper_read_impl.exit

bb.ak:                                            ; preds = %bb.ag
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.b, ptr noundef %.069.i) #10
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %Py_DECREF.exit107.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !87
  %.not100.i = icmp eq ptr %i.bv, null
  br i1 %.not100.i, label %Py_DECREF.exit105.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @textiowrapper_set_decoded_chars(ptr noundef nonnull %0, ptr noundef null)
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !17 ; 4 uses
  %.not101.i = icmp eq ptr %i.bw, null
  br i1 %.not101.i, label %Py_DECREF.exit105.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.bu, align 8, !tbaa !17
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %.not.i104.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i104.i, label %bb.ao, label %Py_DECREF.exit105.i

bb.ao:                                            ; preds = %bb.an
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !19
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ap, label %Py_DECREF.exit105.i

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #10
  br label %Py_DECREF.exit105.i

Py_DECREF.exit105.i:                              ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_io_TextIOWrapper_read_impl.exit

bb.aq:                                            ; preds = %bb.u
  %i.cb = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85 ; 7 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %textiowrapper_get_decoded_chars.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %.val.i.i = load i64, ptr %i.ce, align 8, !tbaa !31
  %i.cf = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !176 ; 4 uses
  %i.ch = sub i64 %.val.i.i, %i.cg                ; 2 uses
  %i.ci = call i64 @llvm.smin.i64(i64 range(i64 -1, -9223372036854775808) %i.h, i64 %i.ch) ; 2 uses
  %i.cj = icmp sgt i64 %i.cg, 0
  %i.ck = icmp slt i64 %i.h, %i.ch
  %or.cond24.i.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond24.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cl = add i64 %i.ci, %i.cg
  %i.cm = call ptr @PyUnicode_Substring(ptr noundef nonnull %i.cc, i64 noundef %i.cg, i64 noundef %i.cl) #10 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %Py_DECREF.exit107.sink.split.i, label %textiowrapper_get_decoded_chars.exit.thread137.i

bb.at:                                            ; preds = %bb.ar
  %i.co = load i32, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.cp = icmp ugt i32 %i.co, -1073741825
  br i1 %i.cp, label %textiowrapper_get_decoded_chars.exit.thread137.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cq = add nuw i32 %i.co, 1
  store i32 %i.cq, ptr %i.cc, align 8, !tbaa !19
  br label %textiowrapper_get_decoded_chars.exit.thread137.i

textiowrapper_get_decoded_chars.exit.thread137.i: ; preds = %bb.au, %bb.at, %bb.as
  %.019.i.i = phi ptr [ %i.cm, %bb.as ], [ %i.cc, %bb.at ], [ %i.cc, %bb.au ] ; 2 uses
  %i.cr = load i64, ptr %i.cf, align 8, !tbaa !176
  %i.cs = add i64 %i.cr, %i.ci
  store i64 %i.cs, ptr %i.cf, align 8, !tbaa !176
  store ptr %.019.i.i, ptr %i.b, align 8, !tbaa !17
  br label %bb.av

textiowrapper_get_decoded_chars.exit.i:           ; preds = %bb.aq
  %i.ct = call ptr @Py_GetConstant(i32 noundef 7) #10 ; 3 uses
  store ptr %i.ct, ptr %i.b, align 8, !tbaa !17
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %Py_DECREF.exit107.i, label %bb.av

bb.av:                                            ; preds = %textiowrapper_get_decoded_chars.exit.i, %textiowrapper_get_decoded_chars.exit.thread137.i
  %.0.i126139.i = phi ptr [ %.019.i.i, %textiowrapper_get_decoded_chars.exit.thread137.i ], [ %i.ct, %textiowrapper_get_decoded_chars.exit.i ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.0.i126139.i, i64 16
  %.val121.i = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.cw = sub i64 %i.h, %.val121.i                ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.outer.split.lr.ph.i, label %.loopexit.thread.i

.outer.split.lr.ph.i:                             ; preds = %bb.av
  %i.cy = getelementptr i8, ptr %0, i64 128       ; 3 uses
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %i.cz = phi ptr [ %.0.i126139.i, %.outer.split.lr.ph.i ], [ %.0.i132143.i, %.outer.i ] ; 9 uses
  %.070.ph158.i = phi i64 [ %i.cw, %.outer.split.lr.ph.i ], [ %i.eg, %.outer.i ] ; 4 uses
  %.0.ph157.i = phi ptr [ null, %.outer.split.lr.ph.i ], [ %.178.i, %.outer.i ] ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.outer.split.i
  %i.da = call fastcc i32 @textiowrapper_read_chunk(ptr noundef nonnull %0, i64 noundef %.070.ph158.i) ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dc = call i32 @_PyIO_trap_eintr() #10
  %.not98.i = icmp eq i32 %i.dc, 0
  br i1 %.not98.i, label %Py_DECREF.exit107.i, label %bb.aw, !llvm.loop !205

bb.ay:                                            ; preds = %bb.aw
  %i.dd = icmp eq i32 %i.da, 0
  %.not96.i = icmp eq ptr %.0.ph157.i, null       ; 2 uses
  br i1 %i.dd, label %.loopexit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not96.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.de = call ptr @PyList_New(i64 noundef 0) #10 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %Py_DECREF.exit107.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.178.i = phi ptr [ %i.de, %bb.ba ], [ %.0.ph157.i, %bb.az ] ; 6 uses
  %i.dg = getelementptr i8, ptr %i.cz, i64 16
  %.val120.i = load i64, ptr %i.dg, align 8, !tbaa !31
  %i.dh = icmp sgt i64 %.val120.i, 0
  br i1 %i.dh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.di = call i32 @PyList_Append(ptr noundef nonnull %.178.i, ptr noundef nonnull %i.cz) #10
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %Py_DECREF.exit107.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dk = load i32, ptr %i.cz, align 8, !tbaa !19 ; 2 uses
  %.not.i102.i = icmp sgt i32 %i.dk, -1
  br i1 %.not.i102.i, label %bb.be, label %Py_DECREF.exit103.i

bb.be:                                            ; preds = %bb.bd
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !19
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.bf, label %Py_DECREF.exit103.i

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #10
  br label %Py_DECREF.exit103.i

Py_DECREF.exit103.i:                              ; preds = %bb.bf, %bb.be, %bb.bd
  %i.dn = load ptr, ptr %i.cb, align 8, !tbaa !85 ; 7 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %textiowrapper_get_decoded_chars.exit133.i, label %bb.bg

bb.bg:                                            ; preds = %Py_DECREF.exit103.i
  %i.dp = getelementptr i8, ptr %i.dn, i64 16
  %.val.i127.i = load i64, ptr %i.dp, align 8, !tbaa !31
  %i.dq = load i64, ptr %i.cy, align 8, !tbaa !176 ; 4 uses
  %i.dr = sub i64 %.val.i127.i, %i.dq             ; 2 uses
  %i.ds = call i64 @llvm.smin.i64(i64 range(i64 -1, -9223372036854775808) %.070.ph158.i, i64 %i.dr) ; 2 uses
  %i.dt = icmp sgt i64 %i.dq, 0
  %i.du = icmp slt i64 %.070.ph158.i, %i.dr
  %or.cond24.i129.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond24.i129.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dv = add i64 %i.ds, %i.dq
  %i.dw = call ptr @PyUnicode_Substring(ptr noundef nonnull %i.dn, i64 noundef %i.dq, i64 noundef %i.dv) #10 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %Py_DECREF.exit107.sink.split.i, label %textiowrapper_get_decoded_chars.exit133.thread141.i

bb.bi:                                            ; preds = %bb.bg
  %i.dy = load i32, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, -1073741825
  br i1 %i.dz, label %textiowrapper_get_decoded_chars.exit133.thread141.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ea = add nuw i32 %i.dy, 1
  store i32 %i.ea, ptr %i.dn, align 8, !tbaa !19
  br label %textiowrapper_get_decoded_chars.exit133.thread141.i

textiowrapper_get_decoded_chars.exit133.thread141.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %.019.i131.i = phi ptr [ %i.dw, %bb.bh ], [ %i.dn, %bb.bi ], [ %i.dn, %bb.bj ] ; 2 uses
  %i.eb = load i64, ptr %i.cy, align 8, !tbaa !176
  %i.ec = add i64 %i.eb, %i.ds
  store i64 %i.ec, ptr %i.cy, align 8, !tbaa !176
  store ptr %.019.i131.i, ptr %i.b, align 8, !tbaa !17
  br label %.outer.i

textiowrapper_get_decoded_chars.exit133.i:        ; preds = %Py_DECREF.exit103.i
  %i.ed = call ptr @Py_GetConstant(i32 noundef 7) #10 ; 3 uses
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !17
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %Py_DECREF.exit107.i, label %.outer.i

.outer.i:                                         ; preds = %textiowrapper_get_decoded_chars.exit133.i, %textiowrapper_get_decoded_chars.exit133.thread141.i
  %.0.i132143.i = phi ptr [ %.019.i131.i, %textiowrapper_get_decoded_chars.exit133.thread141.i ], [ %i.ed, %textiowrapper_get_decoded_chars.exit133.i ] ; 3 uses
  %i.ef = getelementptr i8, ptr %.0.i132143.i, i64 16
  %.val.i = load i64, ptr %i.ef, align 8, !tbaa !31
  %i.eg = sub i64 %.070.ph158.i, %.val.i          ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.outer.split.i, label %.loopexit.thread191.i, !llvm.loop !205

.loopexit.i:                                      ; preds = %bb.ay
  br i1 %.not96.i, label %.loopexit.thread.i, label %.loopexit.thread191.i

.loopexit.thread191.i:                            ; preds = %.outer.i, %.loopexit.i
  %.0.ph156194.i = phi ptr [ %.0.ph157.i, %.loopexit.i ], [ %.178.i, %.outer.i ] ; 7 uses
  %i.ei = phi ptr [ %i.cz, %.loopexit.i ], [ %.0.i132143.i, %.outer.i ] ; 5 uses
  %i.ej = call i32 @PyList_Append(ptr noundef nonnull %.0.ph156194.i, ptr noundef nonnull %i.ei) #10
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %Py_DECREF.exit107.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.thread191.i
  %i.el = call ptr @PyUnicode_Join(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr noundef nonnull %.0.ph156194.i) #10 ; 2 uses
  store ptr %i.el, ptr %i.b, align 8, !tbaa !17
  %i.em = load i32, ptr %i.ei, align 8, !tbaa !19 ; 2 uses
  %.not.i.i9 = icmp sgt i32 %i.em, -1
  br i1 %.not.i.i9, label %bb.bl, label %Py_XDECREF.exit

bb.bl:                                            ; preds = %bb.bk
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.ei, align 8, !tbaa !19
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.bm, label %Py_XDECREF.exit

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.ep = icmp eq ptr %i.el, null
  br i1 %i.ep, label %Py_DECREF.exit107.i, label %bb.bn

bb.bn:                                            ; preds = %Py_XDECREF.exit
  %i.eq = load i32, ptr %.0.ph156194.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i, label %bb.bo, label %.loopexit.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %.0.ph156194.i, align 8, !tbaa !19
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bp, label %.loopexit.thread.i

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %.0.ph156194.i) #10
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.bp, %bb.bo, %bb.bn, %.loopexit.i, %bb.av
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_io_TextIOWrapper_read_impl.exit

Py_DECREF.exit107.sink.split.i:                   ; preds = %bb.bh, %bb.as
  %.5.ph.i = phi ptr [ null, %bb.as ], [ %.178.i, %bb.bh ]
  store ptr null, ptr %i.b, align 8, !tbaa !17
  br label %Py_DECREF.exit107.i

Py_DECREF.exit107.i:                              ; preds = %textiowrapper_get_decoded_chars.exit133.i, %bb.bc, %bb.ba, %bb.ax, %Py_DECREF.exit107.sink.split.i, %Py_XDECREF.exit, %.loopexit.thread191.i, %textiowrapper_get_decoded_chars.exit.i, %bb.ak, %Py_DECREF.exit109.i, %bb.v
  %i.eu = phi ptr [ null, %bb.v ], [ null, %Py_DECREF.exit109.i ], [ null, %bb.ak ], [ null, %Py_DECREF.exit107.sink.split.i ], [ %i.cz, %bb.ax ], [ null, %Py_XDECREF.exit ], [ %i.ei, %.loopexit.thread191.i ], [ null, %textiowrapper_get_decoded_chars.exit.i ], [ %i.cz, %bb.ba ], [ %i.cz, %bb.bc ], [ null, %textiowrapper_get_decoded_chars.exit133.i ]
  %.5.i = phi ptr [ null, %bb.v ], [ null, %Py_DECREF.exit109.i ], [ null, %bb.ak ], [ %.5.ph.i, %Py_DECREF.exit107.sink.split.i ], [ %.0.ph157.i, %bb.ax ], [ %.0.ph156194.i, %Py_XDECREF.exit ], [ %.0.ph156194.i, %.loopexit.thread191.i ], [ null, %textiowrapper_get_decoded_chars.exit.i ], [ null, %bb.ba ], [ %.178.i, %bb.bc ], [ %.178.i, %textiowrapper_get_decoded_chars.exit133.i ]
  call fastcc void @Py_XDECREF(ptr noundef %i.eu)
  call fastcc void @Py_XDECREF(ptr noundef %.5.i)
  br label %_io_TextIOWrapper_read_impl.exit

_io_TextIOWrapper_read_impl.exit:                 ; preds = %bb.f, %bb.h, %_io_TextIOWrapper_closed_get_impl.exit.i, %Py_DECREF.exit113.i, %bb.p, %bb.q, %bb.s, %bb.t, %Py_DECREF.exit111.i, %bb.ah, %bb.ai, %bb.aj, %Py_DECREF.exit105.i, %.loopexit.thread.i, %Py_DECREF.exit107.i
  %.4.i = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.s ], [ null, %bb.t ], [ null, %Py_DECREF.exit107.i ], [ null, %bb.p ], [ %i.et, %.loopexit.thread.i ], [ null, %bb.q ], [ null, %_io_TextIOWrapper_closed_get_impl.exit.i ], [ null, %Py_DECREF.exit113.i ], [ null, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ah ], [ %i.ca, %Py_DECREF.exit105.i ], [ null, %Py_DECREF.exit111.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.d, %bb.b, %_io_TextIOWrapper_read_impl.exit
  %.0 = phi ptr [ %.4.i, %_io_TextIOWrapper_read_impl.exit ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_readline(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef 0, i64 noundef 1) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_io_TextIOWrapper_readline_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #10 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit.thread, label %.thread

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.j = tail call ptr @PyErr_Occurred() #10
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %.thread, label %_io_TextIOWrapper_readline_impl.exit

.thread:                                          ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.c
  %.1 = phi i64 [ -1, %bb.c ], [ %i.e, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_readline_impl.exit

bb.i:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %.not.i23 = icmp eq i32 %i.p, 0
  br i1 %.not.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_readline_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.r = tail call fastcc ptr @_textiowrapper_readline(ptr noundef nonnull %0, i64 noundef %.1)
  br label %_io_TextIOWrapper_readline_impl.exit

_io_TextIOWrapper_readline_impl.exit:             ; preds = %bb.k, %bb.j, %bb.h, %Py_DECREF.exit.thread, %bb.b
  %.018 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.j ], [ %i.r, %bb.k ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_flush(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_flush_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_flush_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.k = getelementptr i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !20
  %.not27.i = icmp eq ptr %.val.i, %i.l
  br i1 %.not27.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not24.i = icmp eq ptr %i.o, null
  br i1 %.not24.i, label %_io_TextIOWrapper_closed_get_impl.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @_PyFileIO_closed(ptr noundef nonnull %i.o) #10
  br label %bb.k

_io_TextIOWrapper_closed_get_impl.exit.i:         ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = tail call ptr @PyObject_GetAttr(ptr noundef %i.r, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #10 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_io_TextIOWrapper_flush_impl.exit, label %bb.h

bb.h:                                             ; preds = %_io_TextIOWrapper_closed_get_impl.exit.i
  %i.u = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.s) #10 ; 2 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !19
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.j, %bb.i, %bb.h
  %i.y = icmp slt i32 %i.u, 0
  br i1 %i.y, label %_io_TextIOWrapper_flush_impl.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit.i, %bb.g
  %.019.i = phi i32 [ %i.p, %bb.g ], [ %i.u, %Py_DECREF.exit.i ]
  %i.z = icmp sgt i32 %.019.i, 0
  br i1 %i.z, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.50) #10
  br label %_io_TextIOWrapper_flush_impl.exit

bb.m:                                             ; preds = %bb.e
  %i.ab = tail call ptr @_PyIOBase_check_closed(ptr noundef nonnull %0, ptr noundef nonnull @_Py_TrueStruct) #10
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_io_TextIOWrapper_flush_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ad = getelementptr i8, ptr %0, i64 93
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !95
  %i.af = getelementptr i8, ptr %0, i64 95
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !92
  %i.ag = tail call fastcc i32 @_textiowrapper_writeflush(ptr noundef nonnull %0)
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_io_TextIOWrapper_flush_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !17
  %i.ak = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 84456), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io_TextIOWrapper_flush_impl.exit

_io_TextIOWrapper_flush_impl.exit:                ; preds = %bb.b, %bb.d, %_io_TextIOWrapper_closed_get_impl.exit.i, %Py_DECREF.exit.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.n ], [ %i.ak, %bb.o ], [ null, %bb.l ], [ null, %Py_DECREF.exit.i ], [ null, %_io_TextIOWrapper_closed_get_impl.exit.i ], [ null, %bb.m ]
  ret ptr %.1.i
}
end_hunk_0
begin_hunk_1_@set_newline:bb.a
  %i.o = icmp ne i8 %i.n, 0
  %i.p = zext i1 %i.o to i8
  %i.q = getelementptr i8, ptr %0, i64 92
  store i8 %i.p, ptr %i.q, align 4, !tbaa !201
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.g, i64 32
  %.val.i = load i32, ptr %i.r, align 8           ; 2 uses
  %i.s = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.t, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.g, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.g, i64 56
  %.val4.i = load ptr, ptr %i.u, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %.0.i.i, %bb.f ], [ %.val4.i, %bb.g ] ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 80         ; 2 uses
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !202
  %i.w = load i8, ptr %.0.i, align 1
  %.not = icmp eq i8 %i.w, 10
  br i1 %.not, label %sub_1, label %_PyUnicode_DATA.exit.tail

sub_1:                                            ; preds = %_PyUnicode_DATA.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = select i1 %i.z, ptr null, ptr %.0.i
  br label %_PyUnicode_DATA.exit.tail

_PyUnicode_DATA.exit.tail:                        ; preds = %_PyUnicode_DATA.exit, %sub_1
  %spec.store.select = phi ptr [ %.0.i, %_PyUnicode_DATA.exit ], [ %i.aa, %sub_1 ]
  store ptr %spec.store.select, ptr %i.v, align 8
  br label %bb.i

bb.h:                                             ; preds = %.thread30, %bb.d
  %i.ab = getelementptr i8, ptr %0, i64 80
  store ptr null, ptr %i.ab, align 8, !tbaa !202
  br label %bb.i

bb.i:                                             ; preds = %_PyUnicode_DATA.exit.tail, %bb.h
  %.not.i27 = icmp eq ptr %i.b, null
  br i1 %.not.i27, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i28, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !19
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  ret i32 %.0
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_Py_GetLocaleEncodingObject() local_unnamed_addr #2

declare ptr @_PyCodec_LookupTextEncoding(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_set_decoder(ptr noundef captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i36 = icmp sgt i32 %i.g, -1
  br i1 %.not.i36, label %bb.c, label %Py_DECREF.exit37

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !19
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %Py_DECREF.exit37

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_DECREF.exit37

Py_DECREF.exit37:                                 ; preds = %bb.b, %bb.c, %bb.d
  switch i32 %i.f, label %bb.e [
    i32 -1, label %.critedge
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %Py_DECREF.exit37
  br label %.critedge

bb.f:                                             ; preds = %Py_DECREF.exit37
  %i.j = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !17
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !19
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.o = call ptr @_PyCodecInfo_GetIncrementalDecoder(ptr noundef nonnull %1, ptr noundef nonnull %2) #10 ; 3 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !83
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.q = getelementptr i8, ptr %0, i64 90
  %i.r = load i8, ptr %i.q, align 2, !tbaa !191
  %.not33 = icmp eq i8 %i.r, 0
  br i1 %.not33, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !200
  %i.w = getelementptr i8, ptr %0, i64 91
  %i.x = load i8, ptr %i.w, align 1, !tbaa !190
  %.not34 = icmp eq i8 %i.x, 0
  %i.y = select i1 %.not34, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.z = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.v, ptr noundef nonnull %i.o, ptr noundef nonnull %i.y, ptr noundef null) #10 ; 2 uses
  %.not35 = icmp eq ptr %i.z, null
  br i1 %.not35, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !17  ; 4 uses
  store ptr %i.z, ptr %i.j, align 8, !tbaa !17
  %.not.i39 = icmp eq ptr %i.aa, null
  br i1 %.not.i39, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !19
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.k, %Py_DECREF.exit, %Py_DECREF.exit37, %bb.a, %bb.e
  %.1 = phi i32 [ -1, %bb.k ], [ -1, %bb.a ], [ 0, %bb.e ], [ %i.f, %Py_DECREF.exit37 ], [ -1, %Py_DECREF.exit ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_set_encoder(ptr noundef captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i30 = icmp sgt i32 %i.h, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !19
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.b, %bb.c, %bb.d
  switch i32 %i.g, label %bb.e [
    i32 -1, label %Py_XDECREF.exit
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %Py_DECREF.exit31
  br label %Py_XDECREF.exit

bb.f:                                             ; preds = %Py_DECREF.exit31
  %i.k = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 4 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.k, align 8, !tbaa !17
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.p = getelementptr i8, ptr %0, i64 104        ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !178
  %i.q = call ptr @_PyCodecInfo_GetIncrementalEncoder(ptr noundef nonnull %1, ptr noundef nonnull %2) #10 ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !82
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.s = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600), ptr noundef nonnull %i.b) #10
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Py_XDECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %Py_XDECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr i8, ptr %.val, i64 168
  %.val33 = load i64, ptr %i.w, align 8, !tbaa !21
  %i.x = and i64 %.val33, 268435456
  %.not27 = icmp eq i64 %i.x, 0
  br i1 %.not27, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.y = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.79) #10
  %.not29 = icmp eq i32 %i.y, 0
  br i1 %.not29, label %.preheader.1, label %bb.m

bb.m:                                             ; preds = %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.037.lcssa = phi ptr [ @encodefuncs, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 64), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 80), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 96), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 112), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @encodefuncs, i64 128), %.preheader.8 ]
  %i.z = getelementptr i8, ptr %.037.lcssa, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !178
  br label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ac = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ab, ptr noundef nonnull @.str.80) #10
  %.not29.1 = icmp eq i32 %i.ac, 0
  br i1 %.not29.1, label %.preheader.2, label %bb.m

.preheader.2:                                     ; preds = %.preheader.1
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ae = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ad, ptr noundef nonnull @.str.81) #10
  %.not29.2 = icmp eq i32 %i.ae, 0
  br i1 %.not29.2, label %.preheader.3, label %bb.m

.preheader.3:                                     ; preds = %.preheader.2
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ag = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.af, ptr noundef nonnull @.str.82) #10
  %.not29.3 = icmp eq i32 %i.ag, 0
  br i1 %.not29.3, label %.preheader.4, label %bb.m

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ai = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ah, ptr noundef nonnull @.str.83) #10
  %.not29.4 = icmp eq i32 %i.ai, 0
  br i1 %.not29.4, label %.preheader.5, label %bb.m

.preheader.5:                                     ; preds = %.preheader.4
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ak = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.aj, ptr noundef nonnull @.str.84) #10
  %.not29.5 = icmp eq i32 %i.ak, 0
  br i1 %.not29.5, label %.preheader.6, label %bb.m

.preheader.6:                                     ; preds = %.preheader.5
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.am = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.al, ptr noundef nonnull @.str.85) #10
  %.not29.6 = icmp eq i32 %i.am, 0
  br i1 %.not29.6, label %.preheader.7, label %bb.m

.preheader.7:                                     ; preds = %.preheader.6
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ao = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.an, ptr noundef nonnull @.str.86) #10
  %.not29.7 = icmp eq i32 %i.ao, 0
  br i1 %.not29.7, label %.preheader.8, label %bb.m

.preheader.8:                                     ; preds = %.preheader.7
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.aq = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ap, ptr noundef nonnull @.str.87) #10
  %.not29.8 = icmp eq i32 %i.aq, 0
  br i1 %.not29.8, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %.preheader.8, %bb.m, %bb.l
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %Py_XDECREF.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ar = load i32, ptr %.pr, align 8, !tbaa !19  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i.i, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.pr, align 8, !tbaa !19
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.pr) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.k, %bb.p, %bb.o, %bb.n, %.loopexit, %bb.j, %Py_DECREF.exit, %Py_DECREF.exit31, %bb.a, %bb.e
  %.019 = phi i32 [ -1, %bb.j ], [ -1, %bb.a ], [ 0, %bb.e ], [ %i.g, %Py_DECREF.exit31 ], [ -1, %Py_DECREF.exit ], [ 0, %bb.p ], [ 0, %.loopexit ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_fix_encoder_state(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 93
  %i.d = load i8, ptr %i.c, align 1, !tbaa !95
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 112        ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !188
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8, !tbaa !17
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 102064), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), i32 noundef 2) #10 ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not.i19 = icmp sgt i32 %i.m, -1
  br i1 %.not.i19, label %bb.e, label %Py_DECREF.exit20

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.j, align 8, !tbaa !19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit20

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit20
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.g, align 8, !tbaa !188
end_hunk_1
