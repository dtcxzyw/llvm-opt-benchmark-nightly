Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytearrayobject?download=true
inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_rsplit:bb.a
.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.cp
  %.14865.us.i.i.i.i = phi i64 [ %i.iq, %bb.cp ], [ %i.hr, %.preheader56.i.i.i.i ] ; 9 uses
  %i.ht = getelementptr i8, ptr %.val.i, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !29
  %i.hv = icmp eq i8 %i.hu, %i.hg
  br i1 %i.hv, label %.preheader.us.i78.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hw = getelementptr i8, ptr %i.ht, i64 -1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !29
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %.lcssa385
  %.not51.us.i.i.i.i = icmp eq i64 %i.ib, 0
  %i.ic = select i1 %.not51.us.i.i.i.i, i64 %i.dr, i64 0
  br label %bb.cp

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.cm
  %.04662.us.i.i.i.i = phi i64 [ %i.ih, %bb.cm ], [ %i.hb, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.id = getelementptr i8, ptr %i.ht, i64 %.04662.us.i.i.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !29
  %i.if = getelementptr i8, ptr %i.dp, i64 %.04662.us.i.i.i.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !29
  %.not52.us.i.i.i.i = icmp eq i8 %i.ie, %i.ig
  br i1 %.not52.us.i.i.i.i, label %bb.cm, label %.thread.us.i.i.i.i

bb.cm:                                            ; preds = %.preheader.us.i78.i.i.i
  %i.ih = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.ii = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.ii, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !4

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.thread.us.i.i.i.i
  %i.ij = getelementptr i8, ptr %i.ht, i64 -1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29
  %i.il = and i8 %i.ik, 63
  %i.im = zext nneg i8 %i.il to i64
  %i.in = shl nuw i64 1, %i.im
  %i.io = and i64 %i.in, %.lcssa385
  %.not54.us.i.i.i.i = icmp eq i64 %i.io, 0
  br i1 %.not54.us.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread.us.i.i.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.co ], [ %i.ic, %bb.cl ], [ %i.dr, %bb.cn ]
  %i.ip = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.iq = add nsw i64 %i.ip, -1
  %i.ir = icmp sgt i64 %i.ip, 0
  br i1 %i.ir, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !5

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.jh, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.is = getelementptr i8, ptr %i.dp, i64 %.04759.i.i.i.i
  %i.it = load i8, ptr %i.is, align 1, !tbaa !29  ; 2 uses
  %i.iu = and i8 %i.it, 63
  %i.iv = zext nneg i8 %i.iu to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = or i64 %i.iw, %.04958.i.i.i.i
  %i.iy = icmp eq i8 %i.it, %i.hg
  %i.iz = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.iy, i64 %i.iz, i64 %.060.i.i.i.i
  %i.ja = getelementptr i8, ptr %i.dp, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !29  ; 2 uses
  %i.jc = and i8 %i.jb, 63
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = or i64 %i.je, %i.ix                     ; 2 uses
  %i.jg = icmp eq i8 %i.jb, %i.hg
  %i.jh = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.jg, i64 %i.jh, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.ji = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.ji, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !6

fastsearch.exit.i.i:                              ; preds = %bb.cm
  %i.jj = icmp slt i64 %.14865.us.i.i.i.i, 0
  br i1 %i.jj, label %fastsearch.exit.thread.i.i, label %bb.cq

bb.cq:                                            ; preds = %fastsearch.exit.i.i
  %i.jk = add nuw i64 %.14865.us.i.i.i.i, %i.dr   ; 3 uses
  %i.jl = getelementptr i8, ptr %.val.i, i64 %i.jk ; 2 uses
  %i.jm = sub i64 %.05157.i.i, %i.jk              ; 5 uses
  %i.jn = icmp slt i64 %i.jm, 0
  br i1 %i.jn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jo = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.jo, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.jp = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %Py_DECREF.exit67.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jr = getelementptr i8, ptr %i.jp, i64 48
  store i64 0, ptr %i.jr, align 8, !tbaa !27
  %i.js = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.jm) #17, !inline_history !201 ; 3 uses
  %i.jt = getelementptr i8, ptr %i.jp, i64 56
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !28
  %i.ju = icmp eq ptr %i.js, null
  br i1 %i.ju, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.jv = load i32, ptr %i.jp, align 8, !tbaa !29 ; 2 uses
  %.not.i.i75.i.i = icmp sgt i32 %i.jv, -1
  br i1 %.not.i.i75.i.i, label %bb.cv, label %Py_DECREF.exit67.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  store i32 %i.jw, ptr %i.jp, align 8, !tbaa !29
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.cw, label %Py_DECREF.exit67.i.i

bb.cw:                                            ; preds = %bb.cv
  call void @_Py_Dealloc(ptr noundef nonnull %i.jp) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cx:                                            ; preds = %bb.ct
  %i.jy = getelementptr i8, ptr %i.js, i64 32     ; 3 uses
  %i.jz = getelementptr i8, ptr %i.jp, i64 40
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !30
  %i.ka = getelementptr i8, ptr %i.jp, i64 32
  store ptr %i.jy, ptr %i.ka, align 8, !tbaa !31
  %i.kb = getelementptr i8, ptr %i.jp, i64 16
  store i64 %i.jm, ptr %i.kb, align 8, !tbaa !32
  %i.kc = getelementptr i8, ptr %i.jp, i64 24
  store i64 %i.jm, ptr %i.kc, align 8, !tbaa !33
  %i.kd = icmp ne ptr %i.jl, null
  %i.ke = icmp ne i64 %.05157.i.i, %i.jk
  %or.cond.i.i24.i = and i1 %i.ke, %i.kd
  br i1 %or.cond.i.i24.i, label %bb.cy, label %PyByteArray_FromStringAndSize.exit.i25.i

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr nonnull readonly align 1 %i.jl, i64 %i.jm, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i25.i

PyByteArray_FromStringAndSize.exit.i25.i:         ; preds = %bb.cy, %bb.cx
  %i.kf = icmp samesign ult i64 %.058.i.i, 12
  br i1 %i.kf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %.val72.i.i = load ptr, ptr %i.hc, align 8, !tbaa !72
  %i.kg = getelementptr [8 x i8], ptr %.val72.i.i, i64 %.058.i.i
  store ptr %i.jp, ptr %i.kg, align 8, !tbaa !20
  br label %Py_DECREF.exit65.i.i

bb.da:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %i.kh = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.jp) #17, !inline_history !196
  %.not.i26.i = icmp eq i32 %i.kh, 0
  %i.ki = load i32, ptr %i.jp, align 8, !tbaa !29 ; 3 uses
  %.not.i64.i.i = icmp sgt i32 %i.ki, -1          ; 2 uses
  br i1 %.not.i26.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.dc, label %Py_DECREF.exit67.i.i

bb.dc:                                            ; preds = %bb.db
  %i.kj = add nsw i32 %i.ki, -1                   ; 2 uses
  store i32 %i.kj, ptr %i.jp, align 8, !tbaa !29
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.dd, label %Py_DECREF.exit67.i.i

bb.dd:                                            ; preds = %bb.dc
  call void @_Py_Dealloc(ptr noundef nonnull %i.jp) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.de:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.df, label %Py_DECREF.exit65.i.i

bb.df:                                            ; preds = %bb.de
  %i.kl = add nsw i32 %i.ki, -1                   ; 2 uses
  store i32 %i.kl, ptr %i.jp, align 8, !tbaa !29
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.dg, label %Py_DECREF.exit65.i.i

bb.dg:                                            ; preds = %bb.df
  call void @_Py_Dealloc(ptr noundef nonnull %i.jp) #17, !inline_history !196
  br label %Py_DECREF.exit65.i.i

Py_DECREF.exit65.i.i:                             ; preds = %bb.dg, %bb.df, %bb.de, %bb.cz
  %i.kn = add nuw nsw i64 %.058.i.i, 1            ; 2 uses
  %i.ko = icmp slt i64 %.in.i.i, 2
  %i.kp = icmp slt i64 %.14865.us.i.i.i.i, %i.dr
  %or.cond.i.i = or i1 %i.ko, %i.kp
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.i21.split.i, !llvm.loop !202

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.cp, %bb.ck, %.lr.ph.i21.i, %.preheader.i20.i
  %.05130.i.i = phi i64 [ %.val16.i, %.preheader.i20.i ], [ %.05157.i.i, %bb.cp ], [ %.val16.i, %.lr.ph.i21.i ], [ %.05157.i.i, %bb.ck ], [ %.05157.i.i, %.preheader56.i.i.i.i ], [ %.05157.i.i, %fastsearch.exit.i.i ] ; 2 uses
  %.021.i.i = phi i64 [ 0, %.preheader.i20.i ], [ %.058.i.i, %bb.cp ], [ 0, %.lr.ph.i21.i ], [ %.058.i.i, %bb.ck ], [ %.058.i.i, %.preheader56.i.i.i.i ], [ %.058.i.i, %fastsearch.exit.i.i ]
  %i.kq = icmp slt i64 %.05130.i.i, 0
  br i1 %i.kq, label %bb.dh, label %fastsearch.exit.thread.thread.i.i

bb.dh:                                            ; preds = %fastsearch.exit.thread.i.i
  %i.kr = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.kr, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit65.i.i, %fastsearch.exit.thread.i.i
  %.05129.i.i = phi i64 [ %.05130.i.i, %fastsearch.exit.thread.i.i ], [ %.14865.us.i.i.i.i, %Py_DECREF.exit65.i.i ] ; 5 uses
  %.020.i.i = phi i64 [ %.021.i.i, %fastsearch.exit.thread.i.i ], [ %i.kn, %Py_DECREF.exit65.i.i ] ; 3 uses
  %i.ks = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %Py_DECREF.exit67.i.i, label %bb.di

bb.di:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.ku = getelementptr i8, ptr %i.ks, i64 48
  store i64 0, ptr %i.ku, align 8, !tbaa !27
  %i.kv = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.05129.i.i) #17, !inline_history !201 ; 3 uses
  %i.kw = getelementptr i8, ptr %i.ks, i64 56
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !28
  %i.kx = icmp eq ptr %i.kv, null
  br i1 %i.kx, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.ky = load i32, ptr %i.ks, align 8, !tbaa !29 ; 2 uses
  %.not.i.i78.i.i = icmp sgt i32 %i.ky, -1
  br i1 %.not.i.i78.i.i, label %bb.dk, label %Py_DECREF.exit67.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.kz = add nsw i32 %i.ky, -1                   ; 2 uses
  store i32 %i.kz, ptr %i.ks, align 8, !tbaa !29
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.dl, label %Py_DECREF.exit67.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @_Py_Dealloc(ptr noundef nonnull %i.ks) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.dm:                                            ; preds = %bb.di
  %i.lb = getelementptr i8, ptr %i.kv, i64 32     ; 3 uses
  %i.lc = getelementptr i8, ptr %i.ks, i64 40
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !30
  %i.ld = getelementptr i8, ptr %i.ks, i64 32
  store ptr %i.lb, ptr %i.ld, align 8, !tbaa !31
  %i.le = getelementptr i8, ptr %i.ks, i64 16
  store i64 %.05129.i.i, ptr %i.le, align 8, !tbaa !32
  %i.lf = getelementptr i8, ptr %i.ks, i64 24
  store i64 %.05129.i.i, ptr %i.lf, align 8, !tbaa !33
  %i.lg = icmp ne ptr %.val.i, null
  %i.lh = icmp ne i64 %.05129.i.i, 0
  %or.cond.i76.i.i = and i1 %i.lg, %i.lh
  br i1 %or.cond.i76.i.i, label %bb.dn, label %PyByteArray_FromStringAndSize.exit79.i.i

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr nonnull readonly align 1 %.val.i, i64 %.05129.i.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit79.i.i

PyByteArray_FromStringAndSize.exit79.i.i:         ; preds = %bb.dn, %bb.dm
  %i.li = icmp slt i64 %.020.i.i, 12
  br i1 %i.li, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.lj = getelementptr i8, ptr %i.gw, i64 24
  %.val.i23.i = load ptr, ptr %i.lj, align 8, !tbaa !72
  %i.lk = getelementptr [8 x i8], ptr %.val.i23.i, i64 %.020.i.i
  store ptr %i.ks, ptr %i.lk, align 8, !tbaa !20
  br label %Py_DECREF.exit61.i.i

bb.dp:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.ll = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.ks) #17, !inline_history !196
  %.not59.i.i = icmp eq i32 %i.ll, 0
  %i.lm = load i32, ptr %i.ks, align 8, !tbaa !29 ; 3 uses
  %.not.i60.i.i = icmp sgt i32 %i.lm, -1          ; 2 uses
  br i1 %.not59.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.dr, label %Py_DECREF.exit67.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.ln, ptr %i.ks, align 8, !tbaa !29
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ds, label %Py_DECREF.exit67.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %i.ks) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.dt:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.du, label %Py_DECREF.exit61.i.i

bb.du:                                            ; preds = %bb.dt
  %i.lp = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.lp, ptr %i.ks, align 8, !tbaa !29
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.dv, label %Py_DECREF.exit61.i.i

bb.dv:                                            ; preds = %bb.du
  call void @_Py_Dealloc(ptr noundef nonnull %i.ks) #17, !inline_history !196
  br label %Py_DECREF.exit61.i.i

Py_DECREF.exit61.i.i:                             ; preds = %bb.dv, %bb.du, %bb.dt, %bb.do
  %i.lr = add i64 %.020.i.i, 1
  %i.ls = getelementptr i8, ptr %i.gw, i64 16
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !32
  %i.lt = call i32 @PyList_Reverse(ptr noundef nonnull %i.gw) #17, !inline_history !196
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %Py_DECREF.exit67.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit67.i.i:                             ; preds = %bb.cs, %Py_DECREF.exit61.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %fastsearch.exit.thread.thread.i.i, %bb.dh, %bb.dd, %bb.dc, %bb.db, %bb.cw, %bb.cv, %bb.cu, %bb.cr
  %i.lv = load i32, ptr %i.gw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i22.i = icmp sgt i32 %i.lv, -1
  br i1 %.not.i.i22.i, label %bb.dw, label %stringlib_rsplit.exit.i

bb.dw:                                            ; preds = %Py_DECREF.exit67.i.i
  %i.lw = add nsw i32 %i.lv, -1                   ; 2 uses
  store i32 %i.lw, ptr %i.gw, align 8, !tbaa !29
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.dx, label %stringlib_rsplit.exit.i

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %i.gw) #17, !inline_history !196
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.dx, %bb.dw, %Py_DECREF.exit67.i.i, %Py_DECREF.exit61.i.i, %bb.cj, %bb.ci, %bb.ch, %Py_DECREF.exit62.i.i.i, %bb.cg, %bb.ax, %bb.aw
  %.053.i.i = phi ptr [ null, %bb.aw ], [ %i.gw, %Py_DECREF.exit61.i.i ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ax ], [ %i.dw, %bb.cg ], [ null, %Py_DECREF.exit62.i.i.i ], [ null, %bb.ch ], [ null, %Py_DECREF.exit67.i.i ], [ null, %bb.dw ], [ null, %bb.dx ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #17, !inline_history !195
  br label %bytearray_rsplit_impl.exit

bytearray_rsplit_impl.exit:                       ; preds = %bb.j, %.critedge68.i.i, %Py_DECREF.exit76.i.i, %bb.as, %bb.at, %bb.au, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ %.053.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.au ], [ null, %bb.j ], [ %i.ab, %.critedge68.i.i ], [ null, %Py_DECREF.exit76.i.i ], [ null, %bb.as ], [ null, %bb.at ]
  %i.ly = load i64, ptr %i.t, align 8, !tbaa !27
  %i.lz = add i64 %i.ly, -1
  store i64 %i.lz, ptr %i.t, align 8, !tbaa !27
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
