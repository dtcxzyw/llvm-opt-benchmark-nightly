inline.NumInlined: 34
inline.NumDeleted: 14
begin_hunk_0_@_io_open:bb.a

bb.x:                                             ; preds = %bb.w, %bb.o
  %.393 = phi i64 [ %i.av, %bb.w ], [ %.292, %bb.o ] ; 2 uses
  %.183 = phi ptr [ %.082, %bb.w ], [ null, %bb.o ] ; 4 uses
  %i.aw = getelementptr i8, ptr %i.r, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 5 uses
  %.not129 = icmp eq ptr %i.ax, null
  br i1 %.not129, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = icmp eq ptr %i.ax, @_Py_NoneStruct
  br i1 %i.ay, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %.val146 = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.ba = getelementptr i8, ptr %.val146, i64 168
  %.val150 = load i64, ptr %i.ba, align 8, !tbaa !51
  %i.bb = and i64 %.val150, 268435456
  %.not130 = icmp eq i64 %i.bb, 0
  br i1 %.not130, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bc = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.g) #6 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread165, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #7
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !52
  %.not131 = icmp eq i64 %i.be, %i.bf
  br i1 %.not131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.17) #6
  br label %.thread165

.thread165:                                       ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.dr

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.ax) #6
  br label %bb.dr

bb.af:                                            ; preds = %bb.ad, %bb.y
  %.079 = phi ptr [ %i.bc, %bb.ad ], [ null, %bb.y ] ; 2 uses
  %i.bh = add i64 %.393, -1                       ; 2 uses
  %.not132 = icmp eq i64 %i.bh, 0
  br i1 %.not132, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.x
  %.4 = phi i64 [ %i.bh, %bb.af ], [ %.393, %bb.x ] ; 2 uses
  %.180 = phi ptr [ %.079, %bb.af ], [ null, %bb.x ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.r, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 5 uses
  %.not133 = icmp eq ptr %i.bj, null
  br i1 %.not133, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = icmp eq ptr %i.bj, @_Py_NoneStruct
  br i1 %i.bk, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %.val, i64 168
  %.val149 = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.bn = and i64 %.val149, 268435456
  %.not134 = icmp eq i64 %i.bn, 0
  br i1 %.not134, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.bo = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.h) #6 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.thread168, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #7
  %i.br = load i64, ptr %i.h, align 8, !tbaa !52
  %.not135 = icmp eq i64 %i.bq, %i.br
  br i1 %.not135, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.bs, ptr noundef nonnull @.str.17) #6
  br label %.thread168

.thread168:                                       ; preds = %bb.aj, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.dr

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bj) #6
  br label %bb.dr

bb.ao:                                            ; preds = %bb.am, %bb.ah
  %.076 = phi ptr [ %i.bo, %bb.am ], [ null, %bb.ah ] ; 2 uses
  %i.bt = add i64 %.4, -1                         ; 2 uses
  %.not136 = icmp eq i64 %i.bt, 0
  br i1 %.not136, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ag
  %.5 = phi i64 [ %i.bt, %bb.ao ], [ %.4, %bb.ag ]
  %.177 = phi ptr [ %.076, %bb.ao ], [ null, %bb.ag ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.r, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not137 = icmp eq ptr %i.bv, null
  br i1 %.not137, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bv) #6 ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.dr, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not138 = icmp eq i64 %.5, 1
  br i1 %.not138, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.074 = phi i32 [ %i.bw, %bb.ar ], [ 1, %bb.ap ]
  %i.by = getelementptr i8, ptr %i.r, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.k, %bb.ar, %bb.ao, %bb.af, %bb.w, %bb.n, %.thread, %bb.as
  %.188 = phi ptr [ %.087, %bb.as ], [ %.087, %bb.ar ], [ %.087, %bb.ao ], [ %.087, %bb.af ], [ %.087, %bb.w ], [ %.087, %bb.n ], [ @.str.14, %.thread ], [ %i.y, %bb.k ] ; 5 uses
  %.186 = phi i32 [ %.085, %bb.as ], [ %.085, %bb.ar ], [ %.085, %bb.ao ], [ %.085, %bb.af ], [ %.085, %bb.w ], [ %i.ag, %bb.n ], [ -1, %.thread ], [ -1, %bb.k ] ; 4 uses
  %.284 = phi ptr [ %.183, %bb.as ], [ %.183, %bb.ar ], [ %.183, %bb.ao ], [ %.183, %bb.af ], [ %.082, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.281 = phi ptr [ %.180, %bb.as ], [ %.180, %bb.ar ], [ %.180, %bb.ao ], [ %.079, %bb.af ], [ null, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.278 = phi ptr [ %.177, %bb.as ], [ %.177, %bb.ar ], [ %.076, %bb.ao ], [ null, %bb.af ], [ null, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.175 = phi i32 [ %.074, %bb.as ], [ %i.bw, %bb.ar ], [ 1, %bb.ao ], [ 1, %bb.af ], [ 1, %bb.w ], [ 1, %bb.n ], [ 1, %.thread ], [ 1, %bb.k ]
  %.073 = phi ptr [ %i.bz, %bb.as ], [ @_Py_NoneStruct, %bb.ar ], [ @_Py_NoneStruct, %bb.ao ], [ @_Py_NoneStruct, %bb.af ], [ @_Py_NoneStruct, %bb.w ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ca = call i32 @PyNumber_Check(ptr noundef %i.s) #6
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !29  ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, -1073741825
  br i1 %i.cc, label %_Py_NewRef.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cd = add nuw i32 %i.cb, 1
  store i32 %i.cd, ptr %i.s, align 8, !tbaa !29
  br label %_Py_NewRef.exit.thread.i

bb.aw:                                            ; preds = %bb.at
  %i.ce = call ptr @PyOS_FSPath(ptr noundef %i.s) #6 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_io_open_impl.exit, label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.aw
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %.0181.val239.i = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.ch = getelementptr i8, ptr %.0181.val239.i, i64 168
  %.val241.i = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.ci = and i64 %.val241.i, 402653184
  %or.cond298.i = icmp eq i64 %i.ci, 0
  br i1 %or.cond298.i, label %Py_DECREF.exit.thread292.i, label %_Py_NewRef.exit.thread.i

Py_DECREF.exit.thread292.i:                       ; preds = %_Py_NewRef.exit.i
  %i.cj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ck = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cj, ptr noundef nonnull @.str.22, ptr noundef %i.s) #6 ; 0 uses
  br label %Py_DECREF.exit.i

_Py_NewRef.exit.thread.i:                         ; preds = %_Py_NewRef.exit.i, %bb.av, %bb.au
  %.0181250.i = phi ptr [ %i.ce, %_Py_NewRef.exit.i ], [ %i.s, %bb.au ], [ %i.s, %bb.av ] ; 12 uses
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.188) #7 ; 2 uses
  %.not320.i = icmp eq i64 %i.cl, 0
  br i1 %.not320.i, label %.thread443.i, label %.lr.ph.i

.thread443.i:                                     ; preds = %_Py_NewRef.exit.thread.i
  store i8 0, ptr %i.c, align 1, !tbaa !29
  br label %bb.br

bb.ax:                                            ; preds = %bb.be
  %i.cm = add nuw i64 %.0134313.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.cl
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit.thread.i, %bb.ax
  %.0134313.i = phi i64 [ %i.cm, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 2 uses
  %.0135312.i = phi i32 [ %.1136.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0138311.i = phi i32 [ %.1139.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0142310.i = phi i32 [ %.1143.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0146309.i = phi i32 [ %.1147.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0150308.i = phi i32 [ %.1151.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0154307.i = phi i1 [ %.1155.i, %bb.ax ], [ false, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0163306.i = phi i1 [ %.1164.i, %bb.ax ], [ false, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %i.cn = getelementptr i8, ptr %.188, i64 %.0134313.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29  ; 2 uses
  %i.cp = sext i8 %i.co to i32
  switch i8 %i.co, label %bb.bf [
    i8 120, label %bb.be
    i8 114, label %bb.ay
    i8 119, label %bb.az
    i8 97, label %bb.ba
    i8 43, label %bb.bb
    i8 116, label %bb.bc
    i8 98, label %bb.bd
  ]

bb.ay:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.az:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.ba:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bb:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bc:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %.lr.ph.i
  %.1164.i = phi i1 [ true, %bb.bd ], [ %.0163306.i, %bb.ay ], [ %.0163306.i, %bb.az ], [ %.0163306.i, %bb.ba ], [ %.0163306.i, %bb.bb ], [ %.0163306.i, %bb.bc ], [ %.0163306.i, %.lr.ph.i ] ; 4 uses
  %.1155.i = phi i1 [ %.0154307.i, %bb.bd ], [ %.0154307.i, %bb.ay ], [ %.0154307.i, %bb.az ], [ %.0154307.i, %bb.ba ], [ %.0154307.i, %bb.bb ], [ true, %bb.bc ], [ %.0154307.i, %.lr.ph.i ] ; 2 uses
  %.1151.i = phi i32 [ %.0150308.i, %bb.bd ], [ %.0150308.i, %bb.ay ], [ %.0150308.i, %bb.az ], [ %.0150308.i, %bb.ba ], [ 1, %bb.bb ], [ %.0150308.i, %bb.bc ], [ %.0150308.i, %.lr.ph.i ] ; 2 uses
  %.1147.i = phi i32 [ %.0146309.i, %bb.bd ], [ %.0146309.i, %bb.ay ], [ %.0146309.i, %bb.az ], [ 1, %bb.ba ], [ %.0146309.i, %bb.bb ], [ %.0146309.i, %bb.bc ], [ %.0146309.i, %.lr.ph.i ] ; 4 uses
  %.1143.i = phi i32 [ %.0142310.i, %bb.bd ], [ %.0142310.i, %bb.ay ], [ 1, %bb.az ], [ %.0142310.i, %bb.ba ], [ %.0142310.i, %bb.bb ], [ %.0142310.i, %bb.bc ], [ %.0142310.i, %.lr.ph.i ] ; 4 uses
  %.1139.i = phi i32 [ %.0138311.i, %bb.bd ], [ 1, %bb.ay ], [ %.0138311.i, %bb.az ], [ %.0138311.i, %bb.ba ], [ %.0138311.i, %bb.bb ], [ %.0138311.i, %bb.bc ], [ %.0138311.i, %.lr.ph.i ] ; 4 uses
  %.1136.i = phi i32 [ %.0135312.i, %bb.bd ], [ %.0135312.i, %bb.ay ], [ %.0135312.i, %bb.az ], [ %.0135312.i, %bb.ba ], [ %.0135312.i, %bb.bb ], [ %.0135312.i, %bb.bc ], [ 1, %.lr.ph.i ] ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 1
  %i.cr = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cq, i32 noundef %i.cp) #7
  %.not204.i = icmp eq ptr %i.cr, null
  br i1 %.not204.i, label %bb.ax, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i
  %i.cs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ct = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cs, ptr noundef nonnull @.str.23, ptr noundef nonnull %.188) #6 ; 0 uses
  br label %Py_DECREF.exit.i

._crit_edge.i:                                    ; preds = %bb.ax
  %i.cu = icmp eq i32 %.1151.i, 0                 ; 2 uses
  %i.cv = select i1 %.1155.i, i1 %.1164.i, i1 false ; 2 uses
  %.not200.i = icmp eq i32 %.1136.i, 0
  br i1 %.not200.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 120, ptr %i.c, align 1, !tbaa !29
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i
  %.0169.i = phi ptr [ %i.cw, %bb.bg ], [ %i.c, %._crit_edge.i ] ; 3 uses
  %.not196.i = icmp eq i32 %.1139.i, 0            ; 3 uses
  br i1 %.not196.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cx = getelementptr i8, ptr %.0169.i, i64 1
  store i8 114, ptr %.0169.i, align 1, !tbaa !29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1170.i = phi ptr [ %i.cx, %bb.bi ], [ %.0169.i, %bb.bh ] ; 3 uses
  %.not201.i = icmp eq i32 %.1143.i, 0
  br i1 %.not201.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cy = getelementptr i8, ptr %.1170.i, i64 1
  store i8 119, ptr %.1170.i, align 1, !tbaa !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.2171.i = phi ptr [ %i.cy, %bb.bk ], [ %.1170.i, %bb.bj ] ; 4 uses
  %.not202.i = icmp eq i32 %.1147.i, 0
  br i1 %.not202.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cz = getelementptr i8, ptr %.2171.i, i64 1   ; 2 uses
  store i8 97, ptr %.2171.i, align 1, !tbaa !29
  br i1 %i.cu, label %bb.bp, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.cu, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.3172442.i = phi ptr [ %i.cz, %bb.bm ], [ %.2171.i, %bb.bn ] ; 2 uses
  %i.da = getelementptr i8, ptr %.3172442.i, i64 1
  store i8 43, ptr %.3172442.i, align 1, !tbaa !29
  store i8 0, ptr %i.da, align 1, !tbaa !29
  br i1 %i.cv, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.4.i = phi ptr [ %i.cz, %bb.bm ], [ %.2171.i, %bb.bn ]
  store i8 0, ptr %.4.i, align 1, !tbaa !29
  br i1 %i.cv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.db = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.db, ptr noundef nonnull @.str.24) #6
  br label %Py_DECREF.exit.i

bb.br:                                            ; preds = %bb.bp, %bb.bo, %.thread443.i
  %.not196377389415426459.i = phi i1 [ true, %.thread443.i ], [ %.not196.i, %bb.bp ], [ %.not196.i, %bb.bo ]
  %.0163.lcssa354376390414427458.i = phi i1 [ false, %.thread443.i ], [ %.1164.i, %bb.bp ], [ %.1164.i, %bb.bo ] ; 6 uses
  %.0150.lcssa356374392412429457.i = phi i1 [ true, %.thread443.i ], [ true, %bb.bp ], [ false, %bb.bo ]
  %.0146.lcssa357373393411430456.i = phi i32 [ 0, %.thread443.i ], [ %.1147.i, %bb.bp ], [ %.1147.i, %bb.bo ] ; 2 uses
  %.0142.lcssa358372394410431455.i = phi i32 [ 0, %.thread443.i ], [ %.1143.i, %bb.bp ], [ %.1143.i, %bb.bo ] ; 2 uses
  %.0138.lcssa359371395409432454.i = phi i32 [ 0, %.thread443.i ], [ %.1139.i, %bb.bp ], [ %.1139.i, %bb.bo ]
  %.0135.lcssa360370396408433453.i = phi i32 [ 0, %.thread443.i ], [ %.1136.i, %bb.bp ], [ %.1136.i, %bb.bo ] ; 2 uses
  %i.dc = add nuw nsw i32 %.0142.lcssa358372394410431455.i, %.0146.lcssa357373393411430456.i
  %i.dd = add nuw nsw i32 %i.dc, %.0138.lcssa359371395409432454.i
  %i.de = add nuw nsw i32 %i.dd, %.0135.lcssa360370396408433453.i
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.dg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.dg, ptr noundef nonnull @.str.25) #6
  br label %Py_DECREF.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.dh = icmp ne ptr %.284, null
  %or.cond3.i = and i1 %i.dh, %.0163.lcssa354376390414427458.i
  br i1 %or.cond3.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.di = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.di, ptr noundef nonnull @.str.26) #6
  br label %Py_DECREF.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.dj = icmp ne ptr %.281, null
  %or.cond5.i = and i1 %i.dj, %.0163.lcssa354376390414427458.i
  br i1 %or.cond5.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.dk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.dk, ptr noundef nonnull @.str.27) #6
  br label %Py_DECREF.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.dl = icmp ne ptr %.278, null
  %or.cond7.i = and i1 %i.dl, %.0163.lcssa354376390414427458.i
  br i1 %or.cond7.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.dm = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.dm, ptr noundef nonnull @.str.28) #6
  br label %Py_DECREF.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.dn = icmp eq i32 %.186, 1                    ; 2 uses
  %or.cond9.i = and i1 %i.dn, %.0163.lcssa354376390414427458.i
  br i1 %or.cond9.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.do = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !11
  %i.dp = call i32 @PyErr_WarnEx(ptr noundef %i.do, ptr noundef nonnull @.str.29, i64 noundef 1) #6
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %Py_DECREF.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.dr = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.dr, align 8, !tbaa !30 ; 3 uses
  %i.ds = getelementptr i8, ptr %.val.i, i64 96
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45
  %.not198.i = icmp eq i32 %.175, 0
  %i.du = select i1 %.not198.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.dv = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.dt, ptr noundef nonnull @.str.30, ptr noundef nonnull %.0181250.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.du, ptr noundef %.073) #6 ; 18 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %Py_DECREF.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dx = load i32, ptr %.0181250.i, align 8, !tbaa !29 ; 2 uses
  %.not.i229.i = icmp sgt i32 %i.dx, -1
  br i1 %.not.i229.i, label %bb.cd, label %Py_DECREF.exit230.i

bb.cd:                                            ; preds = %bb.cc
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %.0181250.i, align 8, !tbaa !29
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ce, label %Py_DECREF.exit230.i

bb.ce:                                            ; preds = %bb.cd
  call void @_Py_Dealloc(ptr noundef nonnull %.0181250.i) #6
  br label %Py_DECREF.exit230.i

Py_DECREF.exit230.i:                              ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.ea = call ptr @PyUnicode_FromString(ptr noundef nonnull %.188) #6 ; 14 uses
  %i.eb = icmp eq ptr %i.ea, null                 ; 2 uses
  br i1 %i.eb, label %.thread266.i, label %bb.cf

bb.cf:                                            ; preds = %Py_DECREF.exit230.i
  %i.ec = icmp slt i32 %.186, 0
  br i1 %i.ec, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !11
  %i.ed = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 72888), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.thread266.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ef = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ed) #6 ; 2 uses
  %i.eg = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %.not.i227.i = icmp sgt i32 %i.eg, -1
  br i1 %.not.i227.i, label %bb.ci, label %Py_DECREF.exit228.i

bb.ci:                                            ; preds = %bb.ch
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ed, align 8, !tbaa !29
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.cj, label %Py_DECREF.exit228.i

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %i.ed) #6
  br label %Py_DECREF.exit228.i

Py_DECREF.exit228.i:                              ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.ej = icmp slt i32 %i.ef, 0
  br i1 %i.ej, label %.thread266.i, label %.thread460.i

.thread460.i:                                     ; preds = %Py_DECREF.exit228.i
  %.not170 = icmp eq i32 %i.ef, 0
  %i.ek = select i1 %.not170, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cf
  br i1 %i.dn, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck, %.thread460.i
  %or.cond11464.i = phi ptr [ %i.ek, %.thread460.i ], [ @_Py_TrueStruct, %bb.ck ]
  %i.el = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.dv, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71872)) #6 ; 5 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %.thread266.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.en = call i64 @PyLong_AsLong(ptr noundef nonnull %i.el) #6
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = load i32, ptr %i.el, align 8, !tbaa !29 ; 2 uses
  %.not.i225.i = icmp sgt i32 %i.ep, -1
  br i1 %.not.i225.i, label %bb.cn, label %Py_DECREF.exit226.i

bb.cn:                                            ; preds = %bb.cm
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.el, align 8, !tbaa !29
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.co, label %Py_DECREF.exit226.i

bb.co:                                            ; preds = %bb.cn
  call void @_Py_Dealloc(ptr noundef nonnull %i.el) #6
  br label %Py_DECREF.exit226.i

Py_DECREF.exit226.i:                              ; preds = %bb.co, %bb.cn, %bb.cm
  %i.es = icmp eq i32 %i.eo, -1
  br i1 %i.es, label %bb.cp, label %.thread273.i

bb.cp:                                            ; preds = %Py_DECREF.exit226.i
  %i.et = call ptr @PyErr_Occurred() #6
  %.not199.i = icmp eq ptr %i.et, null
  br i1 %.not199.i, label %.thread273.i, label %.thread266.i

.thread273.i:                                     ; preds = %bb.cp, %Py_DECREF.exit226.i
  %i.eu = call i32 @llvm.smax.i32(i32 %i.eo, i32 131072)
  %i.ev = call i32 @llvm.umin.i32(i32 %i.eu, i32 8388608)
  br label %bb.cv

bb.cq:                                            ; preds = %bb.ck
  %i.ew = icmp eq i32 %.186, 0
  br i1 %i.ew, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.0163.lcssa354376390414427458.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ex = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ex, ptr noundef nonnull @.str.32) #6
  br label %.thread266.i

bb.ct:                                            ; preds = %bb.cr
  %i.ey = load i32, ptr %i.ea, align 8, !tbaa !29 ; 2 uses
  %.not.i223.i = icmp sgt i32 %i.ey, -1
  br i1 %.not.i223.i, label %bb.cu, label %_io_open_impl.exit

bb.cu:                                            ; preds = %bb.ct
  %i.ez = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.ez, ptr %i.ea, align 8, !tbaa !29
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %Py_DECREF.exit224.sink.split.i, label %_io_open_impl.exit

bb.cv:                                            ; preds = %bb.cq, %.thread273.i
  %or.cond11463.i = phi ptr [ %or.cond11464.i, %.thread273.i ], [ @_Py_FalseStruct, %bb.cq ]
  %.2275.i = phi i32 [ %i.ev, %.thread273.i ], [ %.186, %bb.cq ]
  br i1 %.0150.lcssa356374392412429457.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.fb = or i32 %.0142.lcssa358372394410431455.i, %.0146.lcssa357373393411430456.i
  %i.fc = or i32 %i.fb, %.0135.lcssa360370396408433453.i
  %or.cond15.not.i = icmp eq i32 %i.fc, 0         ; 2 uses
  %brmerge.not.i = and i1 %.not196377389415426459.i, %or.cond15.not.i
  %.mux.i = select i1 %or.cond15.not.i, i64 64, i64 72
  br i1 %brmerge.not.i, label %.thread276.i, label %bb.cx
end_hunk_0
