Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytearrayobject?download=true
inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_rsplit:bb.a
.lr.ph66.split.us.i.i.i.i:                        ; preds = %bb.cp, %.lr.ph66.split.us.i.preheader.i.i.i
  %.14865.us.i.i.i.i = phi i64 [ %i.ip, %bb.cp ], [ %i.hr, %.lr.ph66.split.us.i.preheader.i.i.i ] ; 9 uses
  %i.hs = getelementptr i8, ptr %.val.i, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = icmp eq i8 %i.ht, %i.hg
  br i1 %i.hu, label %.preheader.us.i78.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hv = getelementptr i8, ptr %i.hs, i64 -1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !29
  %i.hx = and i8 %i.hw, 63
  %i.hy = zext nneg i8 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy
  %i.ia = and i64 %i.hz, %.lcssa388
  %.not51.us.i.i.i.i = icmp eq i64 %i.ia, 0
  %i.ib = select i1 %.not51.us.i.i.i.i, i64 %i.dr, i64 0
  br label %bb.cp

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.cm
  %.04662.us.i.i.i.i = phi i64 [ %i.ig, %bb.cm ], [ %i.hb, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ic = getelementptr i8, ptr %i.hs, i64 %.04662.us.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !29
  %i.ie = getelementptr i8, ptr %i.dp, i64 %.04662.us.i.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !29
  %.not52.us.i.i.i.i = icmp eq i8 %i.id, %i.if
  br i1 %.not52.us.i.i.i.i, label %bb.cm, label %.thread.us.i.i.i.i

bb.cm:                                            ; preds = %.preheader.us.i78.i.i.i
  %i.ig = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.ih = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.ih, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !4

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.thread.us.i.i.i.i
  %i.ii = getelementptr i8, ptr %i.hs, i64 -1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !29
  %i.ik = and i8 %i.ij, 63
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = shl nuw i64 1, %i.il
  %i.in = and i64 %i.im, %.lcssa388
  %.not54.us.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not54.us.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread.us.i.i.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.co ], [ %i.ib, %bb.cl ], [ %i.dr, %bb.cn ]
  %i.io = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.ip = add nsw i64 %i.io, -1
  %i.iq = icmp sgt i64 %i.io, 0
  br i1 %i.iq, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !5

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.jg, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.ir = getelementptr i8, ptr %i.dp, i64 %.04759.i.i.i.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !29  ; 2 uses
  %i.it = and i8 %i.is, 63
  %i.iu = zext nneg i8 %i.it to i64
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = or i64 %i.iv, %.04958.i.i.i.i
  %i.ix = icmp eq i8 %i.is, %i.hg
  %i.iy = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.ix, i64 %i.iy, i64 %.060.i.i.i.i
  %i.iz = getelementptr i8, ptr %i.dp, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29  ; 2 uses
  %i.jb = and i8 %i.ja, 63
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = shl nuw i64 1, %i.jc
  %i.je = or i64 %i.jd, %i.iw                     ; 2 uses
  %i.jf = icmp eq i8 %i.ja, %i.hg
  %i.jg = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.jf, i64 %i.jg, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.jh = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.jh, label %.lr.ph.i75.i.i.i, label %.lr.ph66.split.us.i.preheader.i.i.i, !llvm.loop !6

fastsearch.exit.i.i:                              ; preds = %bb.cm
  %i.ji = icmp slt i64 %.14865.us.i.i.i.i, 0
  br i1 %i.ji, label %fastsearch.exit.thread.i.i, label %bb.cq

bb.cq:                                            ; preds = %fastsearch.exit.i.i
  %i.jj = add nuw i64 %.14865.us.i.i.i.i, %i.dr   ; 3 uses
  %i.jk = getelementptr i8, ptr %.val.i, i64 %i.jj ; 2 uses
  %i.jl = sub i64 %.05157.i.i, %i.jj              ; 5 uses
  %i.jm = icmp slt i64 %i.jl, 0
  br i1 %i.jm, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jn = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.jn, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.jo = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %Py_DECREF.exit67.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jq = getelementptr i8, ptr %i.jo, i64 48
  store i64 0, ptr %i.jq, align 8, !tbaa !27
  %i.jr = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.jl) #17, !inline_history !201 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jo, i64 56
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !28
  %i.jt = icmp eq ptr %i.jr, null
  br i1 %i.jt, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.ju = load i32, ptr %i.jo, align 8, !tbaa !29 ; 2 uses
  %.not.i.i75.i.i = icmp sgt i32 %i.ju, -1
  br i1 %.not.i.i75.i.i, label %bb.cv, label %Py_DECREF.exit67.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.jv = add nsw i32 %i.ju, -1                   ; 2 uses
  store i32 %i.jv, ptr %i.jo, align 8, !tbaa !29
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.cw, label %Py_DECREF.exit67.i.i

bb.cw:                                            ; preds = %bb.cv
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cx:                                            ; preds = %bb.ct
  %i.jx = getelementptr i8, ptr %i.jr, i64 32     ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jo, i64 40
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !30
  %i.jz = getelementptr i8, ptr %i.jo, i64 32
  store ptr %i.jx, ptr %i.jz, align 8, !tbaa !31
  %i.ka = getelementptr i8, ptr %i.jo, i64 16
  store i64 %i.jl, ptr %i.ka, align 8, !tbaa !32
  %i.kb = getelementptr i8, ptr %i.jo, i64 24
  store i64 %i.jl, ptr %i.kb, align 8, !tbaa !33
  %i.kc = icmp ne ptr %i.jk, null
  %i.kd = icmp ne i64 %.05157.i.i, %i.jj
  %or.cond.i.i24.i = and i1 %i.kd, %i.kc
  br i1 %or.cond.i.i24.i, label %bb.cy, label %PyByteArray_FromStringAndSize.exit.i25.i

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr nonnull readonly align 1 %i.jk, i64 %i.jl, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i25.i

PyByteArray_FromStringAndSize.exit.i25.i:         ; preds = %bb.cy, %bb.cx
  %i.ke = icmp samesign ult i64 %.058.i.i, 12
  br i1 %i.ke, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %.val72.i.i = load ptr, ptr %i.hc, align 8, !tbaa !72
  %i.kf = getelementptr [8 x i8], ptr %.val72.i.i, i64 %.058.i.i
  store ptr %i.jo, ptr %i.kf, align 8, !tbaa !20
  br label %Py_DECREF.exit65.i.i

bb.da:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %i.kg = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.jo) #17, !inline_history !196
  %.not.i26.i = icmp eq i32 %i.kg, 0
  %i.kh = load i32, ptr %i.jo, align 8, !tbaa !29 ; 3 uses
  %.not.i64.i.i = icmp sgt i32 %i.kh, -1          ; 2 uses
  br i1 %.not.i26.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.dc, label %Py_DECREF.exit67.i.i

bb.dc:                                            ; preds = %bb.db
  %i.ki = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.ki, ptr %i.jo, align 8, !tbaa !29
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.dd, label %Py_DECREF.exit67.i.i

bb.dd:                                            ; preds = %bb.dc
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.de:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.df, label %Py_DECREF.exit65.i.i

bb.df:                                            ; preds = %bb.de
  %i.kk = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.kk, ptr %i.jo, align 8, !tbaa !29
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.dg, label %Py_DECREF.exit65.i.i

bb.dg:                                            ; preds = %bb.df
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !196
  br label %Py_DECREF.exit65.i.i

Py_DECREF.exit65.i.i:                             ; preds = %bb.dg, %bb.df, %bb.de, %bb.cz
  %i.km = add nuw nsw i64 %.058.i.i, 1            ; 2 uses
  %i.kn = icmp slt i64 %.in.i.i, 2
  %i.ko = icmp slt i64 %.14865.us.i.i.i.i, %i.dr
  %or.cond.i.i = or i1 %i.kn, %i.ko
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.i21.split.i, !llvm.loop !202

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.i.i, %bb.cp, %bb.ck, %.lr.ph.i21.i, %.preheader.i20.i
  %.05130.i.i = phi i64 [ %.val16.i, %.preheader.i20.i ], [ %.05157.i.i, %bb.cp ], [ %.val16.i, %.lr.ph.i21.i ], [ %.05157.i.i, %bb.ck ], [ %.05157.i.i, %fastsearch.exit.i.i ] ; 2 uses
  %.021.i.i = phi i64 [ 0, %.preheader.i20.i ], [ %.058.i.i, %bb.cp ], [ 0, %.lr.ph.i21.i ], [ %.058.i.i, %bb.ck ], [ %.058.i.i, %fastsearch.exit.i.i ]
  %i.kp = icmp slt i64 %.05130.i.i, 0
  br i1 %i.kp, label %bb.dh, label %fastsearch.exit.thread.thread.i.i

bb.dh:                                            ; preds = %fastsearch.exit.thread.i.i
  %i.kq = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.kq, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit65.i.i, %fastsearch.exit.thread.i.i
  %.05129.i.i = phi i64 [ %.05130.i.i, %fastsearch.exit.thread.i.i ], [ %.14865.us.i.i.i.i, %Py_DECREF.exit65.i.i ] ; 5 uses
  %.020.i.i = phi i64 [ %.021.i.i, %fastsearch.exit.thread.i.i ], [ %i.km, %Py_DECREF.exit65.i.i ] ; 3 uses
  %i.kr = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %Py_DECREF.exit67.i.i, label %bb.di

bb.di:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.kt = getelementptr i8, ptr %i.kr, i64 48
  store i64 0, ptr %i.kt, align 8, !tbaa !27
  %i.ku = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.05129.i.i) #17, !inline_history !201 ; 3 uses
  %i.kv = getelementptr i8, ptr %i.kr, i64 56
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !28
  %i.kw = icmp eq ptr %i.ku, null
  br i1 %i.kw, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.kx = load i32, ptr %i.kr, align 8, !tbaa !29 ; 2 uses
  %.not.i.i78.i.i = icmp sgt i32 %i.kx, -1
  br i1 %.not.i.i78.i.i, label %bb.dk, label %Py_DECREF.exit67.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.ky = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.ky, ptr %i.kr, align 8, !tbaa !29
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.dl, label %Py_DECREF.exit67.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.dm:                                            ; preds = %bb.di
  %i.la = getelementptr i8, ptr %i.ku, i64 32     ; 3 uses
  %i.lb = getelementptr i8, ptr %i.kr, i64 40
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !30
  %i.lc = getelementptr i8, ptr %i.kr, i64 32
  store ptr %i.la, ptr %i.lc, align 8, !tbaa !31
  %i.ld = getelementptr i8, ptr %i.kr, i64 16
  store i64 %.05129.i.i, ptr %i.ld, align 8, !tbaa !32
  %i.le = getelementptr i8, ptr %i.kr, i64 24
  store i64 %.05129.i.i, ptr %i.le, align 8, !tbaa !33
  %i.lf = icmp ne ptr %.val.i, null
  %i.lg = icmp ne i64 %.05129.i.i, 0
  %or.cond.i76.i.i = and i1 %i.lf, %i.lg
  br i1 %or.cond.i76.i.i, label %bb.dn, label %PyByteArray_FromStringAndSize.exit79.i.i

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr nonnull readonly align 1 %.val.i, i64 %.05129.i.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit79.i.i

PyByteArray_FromStringAndSize.exit79.i.i:         ; preds = %bb.dn, %bb.dm
  %i.lh = icmp slt i64 %.020.i.i, 12
  br i1 %i.lh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.li = getelementptr i8, ptr %i.gw, i64 24
  %.val.i23.i = load ptr, ptr %i.li, align 8, !tbaa !72
  %i.lj = getelementptr [8 x i8], ptr %.val.i23.i, i64 %.020.i.i
  store ptr %i.kr, ptr %i.lj, align 8, !tbaa !20
  br label %Py_DECREF.exit61.i.i

bb.dp:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.lk = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.kr) #17, !inline_history !196
  %.not59.i.i = icmp eq i32 %i.lk, 0
  %i.ll = load i32, ptr %i.kr, align 8, !tbaa !29 ; 3 uses
  %.not.i60.i.i = icmp sgt i32 %i.ll, -1          ; 2 uses
  br i1 %.not59.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.dr, label %Py_DECREF.exit67.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lm, ptr %i.kr, align 8, !tbaa !29
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.ds, label %Py_DECREF.exit67.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.dt:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.du, label %Py_DECREF.exit61.i.i

bb.du:                                            ; preds = %bb.dt
  %i.lo = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lo, ptr %i.kr, align 8, !tbaa !29
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.dv, label %Py_DECREF.exit61.i.i

bb.dv:                                            ; preds = %bb.du
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !196
  br label %Py_DECREF.exit61.i.i

Py_DECREF.exit61.i.i:                             ; preds = %bb.dv, %bb.du, %bb.dt, %bb.do
  %i.lq = add i64 %.020.i.i, 1
  %i.lr = getelementptr i8, ptr %i.gw, i64 16
  store i64 %i.lq, ptr %i.lr, align 8, !tbaa !32
  %i.ls = call i32 @PyList_Reverse(ptr noundef nonnull %i.gw) #17, !inline_history !196
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %Py_DECREF.exit67.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit67.i.i:                             ; preds = %bb.cs, %Py_DECREF.exit61.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %fastsearch.exit.thread.thread.i.i, %bb.dh, %bb.dd, %bb.dc, %bb.db, %bb.cw, %bb.cv, %bb.cu, %bb.cr
  %i.lu = load i32, ptr %i.gw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i22.i = icmp sgt i32 %i.lu, -1
  br i1 %.not.i.i22.i, label %bb.dw, label %stringlib_rsplit.exit.i

bb.dw:                                            ; preds = %Py_DECREF.exit67.i.i
  %i.lv = add nsw i32 %i.lu, -1                   ; 2 uses
  store i32 %i.lv, ptr %i.gw, align 8, !tbaa !29
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dx, label %stringlib_rsplit.exit.i

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %i.gw) #17, !inline_history !196
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.dx, %bb.dw, %Py_DECREF.exit67.i.i, %Py_DECREF.exit61.i.i, %bb.cj, %bb.ci, %bb.ch, %Py_DECREF.exit62.i.i.i, %bb.cg, %bb.ax, %bb.aw
  %.053.i.i = phi ptr [ null, %bb.aw ], [ %i.gw, %Py_DECREF.exit61.i.i ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ax ], [ %i.dw, %bb.cg ], [ null, %Py_DECREF.exit62.i.i.i ], [ null, %bb.ch ], [ null, %Py_DECREF.exit67.i.i ], [ null, %bb.dw ], [ null, %bb.dx ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #17, !inline_history !195
  br label %bytearray_rsplit_impl.exit

bytearray_rsplit_impl.exit:                       ; preds = %bb.j, %.critedge68.i.i, %Py_DECREF.exit76.i.i, %bb.as, %bb.at, %bb.au, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ %.053.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.au ], [ null, %bb.j ], [ %i.ab, %.critedge68.i.i ], [ null, %Py_DECREF.exit76.i.i ], [ null, %bb.as ], [ null, %bb.at ]
  %i.lx = load i64, ptr %i.t, align 8, !tbaa !27
  %i.ly = add i64 %i.lx, -1
  store i64 %i.ly, ptr %i.t, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.dy

bb.dy:                                            ; preds = %Py_DECREF.exit.thread, %bytearray_rsplit_impl.exit, %bb.c
  %.036 = phi ptr [ %.0.i, %bytearray_rsplit_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rstrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.64, i64 noundef %2, i64 noundef 0, i64 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @bytearray_strip_impl_helper(ptr noundef readonly %0, ptr noundef %.0, i32 noundef 1), !inline_history !203
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_split(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !32
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytearray_split._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.ds, label %.thread53

end_hunk_0
