inline.NumInlined: 552
inline.NumDeleted: 93
begin_hunk_0_@Pointer_new:bb.a
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %PyStgInfo_FromType.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.g) #17 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i.i, label %PyStgInfo_FromType.exit.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %.not9 = icmp eq ptr %i.k, null
  br i1 %.not9, label %PyStgInfo_FromType.exit.thread, label %bb.c

PyStgInfo_FromType.exit.thread:                   ; preds = %bb.b, %bb.a, %PyStgInfo_FromType.exit
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.180) #17
  br label %bb.d

bb.c:                                             ; preds = %PyStgInfo_FromType.exit
  %i.m = tail call fastcc ptr @generic_pycdata_new(ptr noundef nonnull %.val.i, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %PyStgInfo_FromType.exit.thread
  %.0 = phi ptr [ null, %PyStgInfo_FromType.exit.thread ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @Pointer_bool(ptr noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp ne ptr %i.c, null
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @Pointer_subscript(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyIndex_Check(ptr noundef %1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !32
  %i.c = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.b) #17 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.e = tail call fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %i.c), !inline_history !206
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyErr_Occurred() #17
  %.not118 = icmp eq ptr %i.f, null
  br i1 %.not118, label %.split103, label %Py_DECREF.exit

.split103:                                        ; preds = %bb.c
  %i.g = tail call fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef -1), !inline_history !206
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val121 = load ptr, ptr %i.h, align 8, !tbaa !15
  %.not138 = icmp eq ptr %.val121, @PySlice_Type
  br i1 %.not138, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207  ; 2 uses
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.m = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.j, ptr noundef %i.l) #17 ; 4 uses
  switch i64 %i.m, label %bb.i [
    i64 -1, label %bb.g
    i64 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyErr_Occurred() #17
  %.not115 = icmp eq ptr %i.n, null
  br i1 %.not115, label %.thread160.a, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.181) #17
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209  ; 2 uses
  %i.r = icmp eq ptr %i.q, @_Py_NoneStruct
  br i1 %i.r, label %bb.j, label %bb.k

.thread160.a:                                     ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !209  ; 2 uses
  %i.u = icmp eq ptr %i.t, @_Py_NoneStruct
  br i1 %i.u, label %.thread161, label %bb.k

.thread:                                          ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 2 uses
  %i.x = icmp eq ptr %i.w, @_Py_NoneStruct
  br i1 %i.x, label %.thread134, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = icmp slt i64 %i.m, 0
  br i1 %i.y, label %.thread161, label %.thread134

.thread161:                                       ; preds = %.thread160.a, %bb.j
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.182) #17
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %.thread160.a, %.thread, %bb.i
  %i.aa = phi ptr [ %i.w, %.thread ], [ %i.q, %bb.i ], [ %i.t, %.thread160.a ]
  %.097133 = phi i64 [ 1, %.thread ], [ %i.m, %bb.i ], [ -1, %.thread160.a ] ; 2 uses
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.ac = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.aa, ptr noundef %i.ab) #17 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.l, label %.thread134

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @PyErr_Occurred() #17
  %.not116 = icmp eq ptr %i.ae, null
  br i1 %.not116, label %.thread134, label %Py_DECREF.exit

.thread134:                                       ; preds = %.thread, %bb.j, %bb.k, %bb.l
  %.097132 = phi i64 [ %.097133, %bb.k ], [ %.097133, %bb.l ], [ %i.m, %bb.j ], [ 1, %.thread ] ; 16 uses
  %.096 = phi i64 [ %i.ac, %bb.k ], [ -1, %bb.l ], [ 0, %bb.j ], [ 0, %.thread ] ; 11 uses
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, @_Py_NoneStruct
  %i.ai = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32 ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread134
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.183) #17
  br label %Py_DECREF.exit

bb.n:                                             ; preds = %.thread134
  %i.aj = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.ag, ptr noundef %i.ai) #17 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @PyErr_Occurred() #17
  %.not117 = icmp eq ptr %i.al, null
  br i1 %.not117, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = icmp sgt i64 %.097132, 0                ; 2 uses
  %i.an = icmp sgt i64 %.096, %i.aj
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %PyStgInfo_FromObject.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = icmp slt i64 %.097132, 0
  %i.ap = icmp slt i64 %.096, %i.aj
  %or.cond119 = and i1 %i.ao, %i.ap
  br i1 %or.cond119, label %PyStgInfo_FromObject.exit, label %PyStgInfo_FromObject.exit.sink.split

PyStgInfo_FromObject.exit.sink.split:             ; preds = %bb.q
  %i.aq = xor i64 %.096, -1
  %i.ar = add i64 %i.aj, %i.aq
  %reass.sub = sub i64 %i.aj, %.096
  %i.as = add i64 %reass.sub, 1
  %.sink162 = select i1 %i.am, i64 %i.ar, i64 %i.as
  %i.at = sdiv i64 %.sink162, %.097132
  %i.au = add i64 %i.at, 1
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %PyStgInfo_FromObject.exit.sink.split, %bb.p, %bb.q
  %.0100 = phi i64 [ 0, %bb.q ], [ 0, %bb.p ], [ %i.au, %PyStgInfo_FromObject.exit.sink.split ] ; 18 uses
  %i.av = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val120 = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.aw = getelementptr i8, ptr %.val120, i64 8
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ax = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !101
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !72
  %.val122 = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr i8, ptr %.val.i, i64 40   ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = tail call i32 @PyObject_IsInstance(ptr noundef %.val122, ptr noundef %i.ba) #17 ; 0 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bd = tail call ptr @PyObject_GetTypeData(ptr noundef %.val122, ptr noundef %i.bc) #17
  %i.be = getelementptr i8, ptr %i.bd, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68 ; 2 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bh = tail call i32 @PyObject_IsInstance(ptr noundef %i.bf, ptr noundef %i.bg) #17
  %.not.i.i123 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i123, label %PyStgInfo_FromType.exit, label %2

2:                                                ; preds = %PyStgInfo_FromObject.exit
  %3 = load ptr, ptr %i.az, align 8, !tbaa !41
  %4 = tail call ptr @PyObject_GetTypeData(ptr noundef %i.bf, ptr noundef %3) #17 ; 2 uses
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %.not8.i.i124 = icmp eq i32 %5, 0
  %spec.select = select i1 %.not8.i.i124, ptr null, ptr %4
  br label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %2, %PyStgInfo_FromObject.exit
  %.0 = phi ptr [ null, %PyStgInfo_FromObject.exit ], [ %spec.select, %2 ]
  %6 = getelementptr i8, ptr %.0, i64 72          ; 2 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #17
  %9 = getelementptr i8, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %bb.r, label %bb.x

bb.r:                                             ; preds = %PyStgInfo_FromType.exit
  %i.bi = icmp slt i64 %.0100, 1
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call ptr @Py_GetConstant(i32 noundef 8) #17
  br label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %.097132, 1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !51
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.096
  %i.bp = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.bo, i64 noundef %.0100) #17
  br label %Py_DECREF.exit

bb.v:                                             ; preds = %bb.t
  %i.bq = tail call ptr @PyMem_Malloc(i64 noundef %.0100) #17 ; 8 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.w, label %iter.check

bb.w:                                             ; preds = %bb.v
  %i.bs = tail call ptr @PyErr_NoMemory() #17
  br label %Py_DECREF.exit

iter.check:                                       ; preds = %bb.v
  %i.bt = getelementptr i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !51
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 5 uses
  %xtraiter192 = and i64 %.0100, 3                ; 3 uses
  %i.bw = icmp ult i64 %.0100, 4
  br i1 %i.bw, label %.lr.ph144.epil.preheader, label %iter.check.new

iter.check.new:                                   ; preds = %iter.check
  %unroll_iter196 = and i64 %.0100, 9223372036854775804
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144, %iter.check.new
  %.098142 = phi i64 [ 0, %iter.check.new ], [ %i.cq, %.lr.ph144 ] ; 5 uses
  %.0101141 = phi i64 [ %.096, %iter.check.new ], [ %i.cp, %.lr.ph144 ] ; 2 uses
  %niter197 = phi i64 [ 0, %iter.check.new ], [ %niter197.next.3, %.lr.ph144 ]
  %i.bx = getelementptr i8, ptr %i.bv, i64 %.0101141
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28
  %i.bz = getelementptr i8, ptr %i.bq, i64 %.098142
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !28
  %i.ca = add i64 %.0101141, %.097132             ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bv, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = getelementptr i8, ptr %i.bq, i64 %.098142
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !28
  %i.cf = add i64 %i.ca, %.097132                 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !28
  %i.ci = getelementptr i8, ptr %i.bq, i64 %.098142
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !28
  %i.ck = add i64 %i.cf, %.097132                 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !28
  %i.cn = getelementptr i8, ptr %i.bq, i64 %.098142
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !28
  %i.cp = add i64 %i.ck, %.097132                 ; 2 uses
  %i.cq = add nuw nsw i64 %.098142, 4             ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge145.unr-lcssa, label %.lr.ph144, !llvm.loop !211

._crit_edge145.unr-lcssa:                         ; preds = %.lr.ph144
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.unr-lcssa, %iter.check
  %.098142.epil.init = phi i64 [ 0, %iter.check ], [ %i.cq, %._crit_edge145.unr-lcssa ]
  %.0101141.epil.init = phi i64 [ %.096, %iter.check ], [ %i.cp, %._crit_edge145.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %.098142.epil = phi i64 [ %i.cv, %.lr.ph144.epil ], [ %.098142.epil.init, %.lr.ph144.epil.preheader ] ; 2 uses
  %.0101141.epil = phi i64 [ %i.cu, %.lr.ph144.epil ], [ %.0101141.epil.init, %.lr.ph144.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph144.epil ], [ 0, %.lr.ph144.epil.preheader ]
  %i.cr = getelementptr i8, ptr %i.bv, i64 %.0101141.epil
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = getelementptr i8, ptr %i.bq, i64 %.098142.epil
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !28
  %i.cu = add i64 %.0101141.epil, %.097132
  %i.cv = add nuw nsw i64 %.098142.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !213

._crit_edge145:                                   ; preds = %.lr.ph144.epil, %._crit_edge145.unr-lcssa
  %i.cw = tail call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.bq, i64 noundef %.0100) #17
  tail call void @PyMem_Free(ptr noundef nonnull %i.bq) #17
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %PyStgInfo_FromType.exit
  %i.cx = load ptr, ptr %6, align 8, !tbaa !59
  %i.cy = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #17
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = icmp eq ptr %i.cx, %i.da
  br i1 %i.db, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.dc = icmp slt i64 %.0100, 1
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = tail call ptr @Py_GetConstant(i32 noundef 7) #17
  br label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.y
  %i.de = icmp eq i64 %.097132, 1
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr i8, ptr %0, i64 16
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !51
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !215
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %.096
  %i.dj = tail call ptr @PyUnicode_FromWideChar(ptr noundef %i.di, i64 noundef %.0100) #17
  br label %Py_DECREF.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dk = icmp samesign ugt i64 %.0100, 2305843009213693951
  br i1 %i.dk, label %.thread136, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = shl nuw nsw i64 %.0100, 2
  %i.dm = tail call ptr @PyMem_Malloc(i64 noundef %i.dl) #17 ; 8 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.thread136, label %.lr.ph.preheader

.thread136:                                       ; preds = %bb.ac, %bb.ad
  %i.do = tail call ptr @PyErr_NoMemory() #17
  br label %Py_DECREF.exit

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.dp = getelementptr i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !51
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !215 ; 5 uses
  %xtraiter = and i64 %.0100, 3                   ; 3 uses
  %i.ds = icmp ult i64 %.0100, 4
  br i1 %i.ds, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0100, 2305843009213693948
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.199140 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.em, %.lr.ph ] ; 5 uses
  %.1102139 = phi i64 [ %.096, %.lr.ph.preheader.new ], [ %i.el, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.dt = getelementptr [4 x i8], ptr %i.dr, i64 %.1102139
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !6
  %i.dv = getelementptr [4 x i8], ptr %i.dm, i64 %.199140
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !6
  %i.dw = add i64 %.1102139, %.097132             ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dr, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !6
  %i.dz = getelementptr [4 x i8], ptr %i.dm, i64 %.199140
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !6
  %i.eb = add i64 %i.dw, %.097132                 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.dr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !6
  %i.ee = getelementptr [4 x i8], ptr %i.dm, i64 %.199140
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !6
  %i.eg = add i64 %i.eb, %.097132                 ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.dr, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !6
  %i.ej = getelementptr [4 x i8], ptr %i.dm, i64 %.199140
  %i.ek = getelementptr i8, ptr %i.ej, i64 12
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !6
  %i.el = add i64 %i.eg, %.097132                 ; 2 uses
  %i.em = add nuw nsw i64 %.199140, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !217

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.199140.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.em, %._crit_edge.unr-lcssa ]
  %.1102139.epil.init = phi i64 [ %.096, %.lr.ph.preheader ], [ %i.el, %._crit_edge.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.199140.epil = phi i64 [ %i.er, %.lr.ph.epil ], [ %.199140.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.1102139.epil = phi i64 [ %i.eq, %.lr.ph.epil ], [ %.1102139.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.en = getelementptr [4 x i8], ptr %i.dr, i64 %.1102139.epil
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !6
  %i.ep = getelementptr [4 x i8], ptr %i.dm, i64 %.199140.epil
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !6
  %i.eq = add i64 %.1102139.epil, %.097132
  %i.er = add nuw nsw i64 %.199140.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.es = tail call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.dm, i64 noundef %.0100) #17
  tail call void @PyMem_Free(ptr noundef nonnull %i.dm) #17
  br label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.x
  %i.et = tail call ptr @PyList_New(i64 noundef %.0100) #17 ; 7 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %Py_DECREF.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = icmp sgt i64 %.0100, 0
  br i1 %i.ev, label %.lr.ph.i, label %Py_DECREF.exit

.lr.ph.i:                                         ; preds = %bb.af
  %i.ew = getelementptr i8, ptr %i.et, i64 24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i
  %.01418.i = phi i64 [ %.096, %.lr.ph.i ], [ %i.ez, %bb.ah ] ; 2 uses
  %.01517.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fa, %bb.ah ] ; 2 uses
  %i.ex = tail call fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %.01418.i), !inline_history !219 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ex, null
  br i1 %.not.not.i, label %copy_pointer_to_list_lock_held.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i126 = load ptr, ptr %i.ew, align 8, !tbaa !220
  %i.ey = getelementptr [8 x i8], ptr %.val.i126, i64 %.01517.i
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !32
  %i.ez = add i64 %.01418.i, %.097132
  %i.fa = add nuw nsw i64 %.01517.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fa, %.0100
  br i1 %exitcond.not.i, label %Py_DECREF.exit, label %bb.ag, !llvm.loop !222

copy_pointer_to_list_lock_held.exit:              ; preds = %bb.ag
  %i.fb = load i32, ptr %i.et, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.fb, -1
  br i1 %.not.i, label %bb.ai, label %Py_DECREF.exit

bb.ai:                                            ; preds = %copy_pointer_to_list_lock_held.exit
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.et, align 8, !tbaa !28
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.aj, label %Py_DECREF.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.et) #17
  br label %Py_DECREF.exit

bb.ak:                                            ; preds = %bb.d
  %i.fe = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.fe, ptr noundef nonnull @.str.184) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ah, %bb.af, %._crit_edge145, %bb.w, %bb.u, %bb.s, %._crit_edge, %.thread136, %bb.ab, %bb.z, %bb.ae, %copy_pointer_to_list_lock_held.exit, %bb.ai, %bb.aj, %bb.h, %.thread161, %bb.m, %bb.g, %bb.l, %bb.o, %bb.c, %.split103, %.split, %bb.ak
  %.7 = phi ptr [ null, %bb.ak ], [ %i.g, %.split103 ], [ null, %bb.c ], [ %i.e, %.split ], [ null, %.thread161 ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.ae ], [ %i.es, %._crit_edge ], [ %i.cw, %._crit_edge145 ], [ %i.bj, %bb.s ], [ %i.bp, %bb.u ], [ %i.bs, %bb.w ], [ %i.dd, %bb.z ], [ %i.dj, %bb.ab ], [ %i.do, %.thread136 ], [ null, %bb.aj ], [ null, %copy_pointer_to_list_lock_held.exit ], [ null, %bb.ai ], [ %i.et, %bb.af ], [ %i.et, %bb.ah ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal ptr @Pointer_item(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @Pointer_ass_item(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.177) #17, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !51
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %3

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.176) #17, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

3:                                                ; preds = %bb.c
  %4 = getelementptr i8, ptr %0, i64 8            ; 3 uses
  %.val20.i = load ptr, ptr %4, align 8, !tbaa !15
  %5 = getelementptr i8, ptr %.val20.i, i64 8
  %.val.i = load ptr, ptr %5, align 8, !tbaa !15
  %6 = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !224
  %7 = getelementptr i8, ptr %6, i64 24
  %.val.i.i = load ptr, ptr %7, align 8, !tbaa !72 ; 3 uses
  %.val21.i = load ptr, ptr %4, align 8, !tbaa !15 ; 2 uses
  %8 = getelementptr i8, ptr %.val.i.i, i64 40    ; 4 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = tail call i32 @PyObject_IsInstance(ptr noundef %.val21.i, ptr noundef %9) #17, !inline_history !223
  %.not.i.i.i = icmp eq i32 %10, 0
  br i1 %.not.i.i.i, label %PyStgInfo_FromObject.exit.i, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 8, !tbaa !41
  %13 = tail call ptr @PyObject_GetTypeData(ptr noundef %.val21.i, ptr noundef %12) #17, !inline_history !223 ; 2 uses
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %14, 0
  %spec.select.i = select i1 %.not8.i.i.i, ptr null, ptr %13
  br label %PyStgInfo_FromObject.exit.i

PyStgInfo_FromObject.exit.i:                      ; preds = %11, %3
  %.029.i = phi ptr [ null, %3 ], [ %spec.select.i, %11 ] ; 2 uses
  %i.h = getelementptr i8, ptr %.029.i, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = load ptr, ptr %8, align 8, !tbaa !41
  %i.k = tail call i32 @PyObject_IsInstance(ptr noundef %i.i, ptr noundef %i.j) #17, !inline_history !223 ; 0 uses
  %i.l = load ptr, ptr %8, align 8, !tbaa !41
  %i.m = tail call ptr @PyObject_GetTypeData(ptr noundef %i.i, ptr noundef %i.l) #17, !inline_history !223
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.p = mul i64 %i.o, %1
  %i.q = getelementptr i8, ptr %.029.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = getelementptr i8, ptr %i.e, i64 %i.p
  %i.t = getelementptr i8, ptr %.val.i.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %.val.i25.i = load ptr, ptr %4, align 8, !tbaa !15 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %.val.i25.i, %i.u
  br i1 %.not.i.i26.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %PyStgInfo_FromObject.exit.i
  %i.v = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i25.i, ptr noundef %i.u) #17, !inline_history !223
  %.not16.i.i = icmp eq i32 %i.v, 0
  br i1 %.not16.i.i, label %bb.e, label %PyObject_TypeCheck.exit.thread.i.i

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.4) #17, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %PyStgInfo_FromObject.exit.i
  %i.x = tail call fastcc ptr @_PyCData_set(ptr noundef nonnull readonly %.val.i.i, ptr noundef %i.i, ptr noundef readonly %i.r, ptr noundef nonnull %2, i64 noundef %i.o, ptr noundef %i.s), !inline_history !223 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Pointer_ass_item_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.z = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.x), !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

Pointer_ass_item_lock_held.exit:                  ; preds = %bb.b, %bb.d, %bb.e, %PyObject_TypeCheck.exit.thread.i.i, %bb.f
  %.3.i = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ %i.z, %bb.f ], [ -1, %PyObject_TypeCheck.exit.thread.i.i ]
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @Pointer_get_contents(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %PyStgInfo_FromObject.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.176) #17, !inline_history !225
  br label %Pointer_get_contents_lock_held.exit

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val10.i = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !226
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !72
  %.val11.i = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i.i, i64 40  ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 @PyObject_IsInstance(ptr noundef %.val11.i, ptr noundef %i.k) #17, !inline_history !225 ; 0 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.n = tail call ptr @PyObject_GetTypeData(ptr noundef %.val11.i, ptr noundef %i.m) #17, !inline_history !225
  %i.o = getelementptr i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 4 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.r = tail call i32 @PyObject_IsInstance(ptr noundef %i.p, ptr noundef %i.q) #17
  %.not.i.i.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.t = tail call ptr @PyObject_GetTypeData(ptr noundef %i.p, ptr noundef %i.s) #17 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %.not8.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i.i4, label %bb.d, label %PyStgInfo_FromType.exit.i

bb.d:                                             ; preds = %bb.c, %PyStgInfo_FromObject.exit.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.1) #17
  br label %Pointer_get_contents_lock_held.exit

PyStgInfo_FromType.exit.i:                        ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.t, i64 140      ; 2 uses
  %.val.i.i5 = load i8, ptr %i.w, align 4, !tbaa !43
  %i.x = icmp eq i8 %.val.i.i5, 1
  br i1 %i.x, label %stginfo_set_dict_final.exit.i, label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromType.exit.i
  store i8 1, ptr %i.w, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit.i

stginfo_set_dict_final.exit.i:                    ; preds = %bb.e, %PyStgInfo_FromType.exit.i
  %i.y = getelementptr i8, ptr %i.p, i64 304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = tail call ptr %i.z(ptr noundef %i.p, i64 noundef 0) #17, !inline_history !227 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %Pointer_get_contents_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %stginfo_set_dict_final.exit.i
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr i8, ptr %i.aa, i64 48
  store i64 %i.ad, ptr %i.ae, align 16, !tbaa !46
  %i.af = getelementptr i8, ptr %i.t, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr i8, ptr %i.aa, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.c, ptr %i.ai, align 16, !tbaa !51
  %i.aj = getelementptr i8, ptr %i.aa, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !52
  %i.ak = load i32, ptr %0, align 16, !tbaa !28   ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %_Py_NewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %0, align 16, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.g, %bb.f
  %i.an = getelementptr i8, ptr %i.aa, i64 32
  store ptr %0, ptr %i.an, align 16, !tbaa !53
  %i.ao = getelementptr i8, ptr %i.aa, i64 56
  store i64 0, ptr %i.ao, align 8, !tbaa !54
  br label %Pointer_get_contents_lock_held.exit

Pointer_get_contents_lock_held.exit:              ; preds = %_Py_NewRef.exit.i, %stginfo_set_dict_final.exit.i, %bb.d, %bb.b
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.aa, %_Py_NewRef.exit.i ], [ null, %stginfo_set_dict_final.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal i32 @Pointer_set_contents(ptr noundef captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.177) #17, !inline_history !228
  br label %Pointer_set_contents_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val29.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr i8, ptr %.val29.i, i64 8
  %.val28.i = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.e = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val28.i, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !229
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !72 ; 2 uses
  %.val31.i = load ptr, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 40  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = tail call i32 @PyObject_IsInstance(ptr noundef %.val31.i, ptr noundef %i.h) #17, !inline_history !228
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %PyStgInfo_FromObject.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.k = tail call ptr @PyObject_GetTypeData(ptr noundef %.val31.i, ptr noundef %i.j) #17, !inline_history !228 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.l, 0
  %spec.select.i = select i1 %.not8.i.i.i, ptr null, ptr %i.k
  br label %PyStgInfo_FromObject.exit.i

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ null, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr i8, ptr %.val.i.i, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq ptr %.val30.i, %i.n
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %PyStgInfo_FromObject.exit.i
  %i.p = tail call i32 @PyType_IsSubtype(ptr noundef %.val30.i, ptr noundef %i.n) #17, !inline_history !228
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %bb.e, label %PyObject_TypeCheck.exit.thread.i

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.q = getelementptr i8, ptr %.0.i, i64 56      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.r) #17, !inline_history !228 ; 2 uses
  switch i32 %i.s, label %PyObject_TypeCheck.exit.thread.i [
    i32 -1, label %Pointer_set_contents_lock_held.exit
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %.val.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.178, ptr noundef %i.w, ptr noundef %i.y) #17, !inline_history !228 ; 0 uses
  br label %Pointer_set_contents_lock_held.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %bb.e, %PyObject_TypeCheck.exit.i, %PyStgInfo_FromObject.exit.i
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !51
  %i.ac = getelementptr i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !51
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !55
  %i.ae = load i32, ptr %1, align 16, !tbaa !28   ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %Py_INCREF.exit27.i, label %bb.g

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr %1, align 16, !tbaa !28
  br label %Py_INCREF.exit27.i

Py_INCREF.exit27.i:                               ; preds = %bb.g, %PyObject_TypeCheck.exit.thread.i
  %i.ah = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %1), !inline_history !228
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %Pointer_set_contents_lock_held.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Py_INCREF.exit27.i, %.preheader.i
  %.09.i.i.i = phi ptr [ %i.ak, %.preheader.i ], [ %1, %Py_INCREF.exit27.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.09.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !53 ; 2 uses
  %.not.i.i32.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i32.i, label %bb.h, label %.preheader.i, !llvm.loop !64

bb.h:                                             ; preds = %.preheader.i
  %i.al = getelementptr i8, ptr %.09.i.i.i, i64 64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !66 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %GetKeepedObjects.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %.09.i.i.i, i64 48
  %i.ap = load i64, ptr %i.ao, align 16, !tbaa !46
  %.not11.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not11.i.i.i, label %bb.j, label %GetKeepedObjects.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !28 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %_Py_NewRef.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr @_Py_NoneStruct, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i.i.i

_Py_NewRef.exit.i.i.i:                            ; preds = %bb.k, %bb.j
  store ptr @_Py_NoneStruct, ptr %i.al, align 16, !tbaa !66
  br label %GetKeepedObjects.exit.thread.i

GetKeepedObjects.exit.i:                          ; preds = %bb.i
  %i.at = tail call ptr @PyDict_New() #17, !inline_history !228 ; 3 uses
  store ptr %i.at, ptr %i.al, align 16, !tbaa !66
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Pointer_set_contents_lock_held.exit, label %GetKeepedObjects.exit.thread.i

GetKeepedObjects.exit.thread.i:                   ; preds = %GetKeepedObjects.exit.i, %_Py_NewRef.exit.i.i.i, %bb.h
  %.0.i4.i = phi ptr [ %i.at, %GetKeepedObjects.exit.i ], [ @_Py_NoneStruct, %_Py_NewRef.exit.i.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.av = load i32, ptr %.0.i4.i, align 8, !tbaa !28 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1073741825
  br i1 %i.aw, label %Py_INCREF.exit.i, label %bb.l

bb.l:                                             ; preds = %GetKeepedObjects.exit.thread.i
  %i.ax = add nuw i32 %i.av, 1
  store i32 %i.ax, ptr %.0.i4.i, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.l, %GetKeepedObjects.exit.thread.i
  %i.ay = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %.0.i4.i), !inline_history !228
  br label %Pointer_set_contents_lock_held.exit

Pointer_set_contents_lock_held.exit:              ; preds = %bb.b, %bb.e, %bb.f, %Py_INCREF.exit27.i, %GetKeepedObjects.exit.i, %Py_INCREF.exit.i
  %.2.i = phi i32 [ -1, %bb.b ], [ -1, %GetKeepedObjects.exit.i ], [ %i.ay, %Py_INCREF.exit.i ], [ -1, %Py_INCREF.exit27.i ], [ %i.s, %bb.e ], [ -1, %bb.f ]
  ret i32 %.2.i
}

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #2

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.176) #17
  br label %bb.c

2:                                                ; preds = %bb.a
  %3 = getelementptr i8, ptr %0, i64 8            ; 2 uses
  %.val17 = load ptr, ptr %3, align 8, !tbaa !15
  %4 = getelementptr i8, ptr %.val17, i64 8
  %.val = load ptr, ptr %4, align 8, !tbaa !15
  %5 = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !101
  %6 = getelementptr i8, ptr %5, i64 24
  %.val.i = load ptr, ptr %6, align 8, !tbaa !72  ; 2 uses
  %.val18 = load ptr, ptr %3, align 8, !tbaa !15  ; 2 uses
  %7 = getelementptr i8, ptr %.val.i, i64 40      ; 4 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call i32 @PyObject_IsInstance(ptr noundef %.val18, ptr noundef %8) #17
  %.not.i.i = icmp eq i32 %9, 0
  br i1 %.not.i.i, label %PyStgInfo_FromObject.exit, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !41
  %12 = tail call ptr @PyObject_GetTypeData(ptr noundef %.val18, ptr noundef %11) #17 ; 2 uses
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %13, 0
  %spec.select = select i1 %.not8.i.i, ptr null, ptr %12
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %10, %2
  %.024 = phi ptr [ null, %2 ], [ %spec.select, %10 ] ; 2 uses
  %i.f = getelementptr i8, ptr %.024, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %i.h = load ptr, ptr %7, align 8, !tbaa !41
  %i.i = tail call i32 @PyObject_IsInstance(ptr noundef %i.g, ptr noundef %i.h) #17 ; 0 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !41
  %i.k = tail call ptr @PyObject_GetTypeData(ptr noundef %i.g, ptr noundef %i.j) #17
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %i.n = mul i64 %i.m, %1
  %i.o = getelementptr i8, ptr %.024, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr i8, ptr %i.c, i64 %i.n
  %i.r = tail call ptr @PyCData_get(ptr noundef nonnull %.val.i, ptr noundef %i.g, ptr noundef %i.p, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.m, ptr noundef %i.q)
  br label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.r, %PyStgInfo_FromObject.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @Array_init(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !17
  %i.c = and i64 %.val14, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.164) #17
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val15 = load i64, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = icmp sgt i64 %.val15, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.01216, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.val15
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !230

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01216 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call i32 @PySequence_SetItem(ptr noundef %0, i64 noundef %.01216, ptr noundef %i.j) #17
  %.not13 = icmp eq i32 %i.k, -1
  br i1 %.not13, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -1, %.lr.ph ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @Array_length(ptr noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 16, !tbaa !46
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @Array_item(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Array_item_lock_held(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @Array_ass_item(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @Array_ass_item_lock_held(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @Array_subscript(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %i.d = tail call i32 @PyIndex_Check(ptr noundef %1) #17, !inline_history !231
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !32
  %i.f = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.e) #17, !inline_history !231 ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyErr_Occurred() #17, !inline_history !231
  %.not89.i = icmp eq ptr %i.h, null
  br i1 %.not89.i, label %.thread.i, label %Array_subscript_lock_held.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 16, !tbaa !46
  %i.l = add i64 %i.k, %i.f
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %.071.i = phi i64 [ %i.l, %.thread.i ], [ %i.f, %bb.d ]
  %i.m = tail call fastcc ptr @Array_item_lock_held(ptr noundef %0, i64 noundef %.071.i), !inline_history !231
  br label %Array_subscript_lock_held.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val91.i = load ptr, ptr %i.n, align 8, !tbaa !15
  %.not101.i = icmp eq ptr %.val91.i, @PySlice_Type
  br i1 %.not101.i, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.o = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17, !inline_history !231
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Py_DECREF.exit.thread.i, label %PyStgInfo_FromObject.exit.i

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 16, !tbaa !46
  %i.s = load i64, ptr %i.c, align 8, !tbaa !134
  %i.t = call i64 @PySlice_AdjustIndices(i64 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.s) #17, !inline_history !231 ; 21 uses
  %i.u = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val90.i = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr i8, ptr %.val90.i, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.w = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !232
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !72
  %.val92.i = load ptr, ptr %i.u, align 8, !tbaa !15 ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i.i, i64 40  ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = call i32 @PyObject_IsInstance(ptr noundef %.val92.i, ptr noundef %i.z) #17, !inline_history !231 ; 0 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.ac = call ptr @PyObject_GetTypeData(ptr noundef %.val92.i, ptr noundef %i.ab) #17, !inline_history !231
  %i.ad = getelementptr i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.ag = call i32 @PyObject_IsInstance(ptr noundef %i.ae, ptr noundef %i.af) #17, !inline_history !231
  %.not.i.i94.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i94.i, label %PyStgInfo_FromType.exit.i, label %2

2:                                                ; preds = %PyStgInfo_FromObject.exit.i
  %3 = load ptr, ptr %i.y, align 8, !tbaa !41
  %4 = call ptr @PyObject_GetTypeData(ptr noundef %i.ae, ptr noundef %3) #17, !inline_history !231 ; 2 uses
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %.not8.i.i95.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %.not8.i.i95.i, ptr null, ptr %4
  br label %PyStgInfo_FromType.exit.i

PyStgInfo_FromType.exit.i:                        ; preds = %2, %PyStgInfo_FromObject.exit.i
  %.0.i = phi ptr [ null, %PyStgInfo_FromObject.exit.i ], [ %spec.select.i, %2 ]
  %6 = getelementptr i8, ptr %.0.i, i64 72        ; 2 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #17, !inline_history !231
  %9 = getelementptr i8, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %bb.h, label %bb.n

bb.h:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !51 ; 6 uses
  %i.aj = icmp slt i64 %i.t, 1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = call ptr @Py_GetConstant(i32 noundef 8) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.j:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !tbaa !134
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.a, align 8, !tbaa !134
  %i.ao = getelementptr i8, ptr %i.ai, i64 %i.an
  %i.ap = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ao, i64 noundef %i.t) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.l:                                             ; preds = %bb.j
  %i.aq = call ptr @PyMem_Malloc(i64 noundef %i.t) #17, !inline_history !231 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.m, label %.lr.ph110.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.as = call ptr @PyErr_NoMemory() #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

.lr.ph110.preheader.i:                            ; preds = %bb.l
  %i.at = load i64, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %xtraiter12 = and i64 %i.t, 3                   ; 3 uses
  %i.au = icmp ult i64 %i.t, 4
  br i1 %i.au, label %.lr.ph110.i.epil.preheader, label %.lr.ph110.preheader.i.new

.lr.ph110.preheader.i.new:                        ; preds = %.lr.ph110.preheader.i
  %unroll_iter = and i64 %i.t, 9223372036854775804
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i, %.lr.ph110.preheader.i.new
  %.073108.i = phi i64 [ 0, %.lr.ph110.preheader.i.new ], [ %i.bs, %.lr.ph110.i ] ; 5 uses
  %.076107.i = phi i64 [ %i.at, %.lr.ph110.preheader.i.new ], [ %i.br, %.lr.ph110.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader.i.new ], [ %niter.next.3, %.lr.ph110.i ]
  %i.av = getelementptr i8, ptr %i.ai, i64 %.076107.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  %i.ax = getelementptr i8, ptr %i.aq, i64 %.073108.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !28
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !134
  %i.az = add i64 %i.ay, %.076107.i               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = getelementptr i8, ptr %i.aq, i64 %.073108.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !28
  %i.be = load i64, ptr %i.c, align 8, !tbaa !134
  %i.bf = add i64 %i.be, %i.az                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ai, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !28
  %i.bi = getelementptr i8, ptr %i.aq, i64 %.073108.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 2
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !28
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !134
  %i.bl = add i64 %i.bk, %i.bf                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ai, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.bo = getelementptr i8, ptr %i.aq, i64 %.073108.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 3
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !28
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !134
  %i.br = add i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = add nuw nsw i64 %.073108.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge111.i.unr-lcssa, label %.lr.ph110.i, !llvm.loop !233

._crit_edge111.i.unr-lcssa:                       ; preds = %.lr.ph110.i
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %._crit_edge111.i, label %.lr.ph110.i.epil.preheader

.lr.ph110.i.epil.preheader:                       ; preds = %._crit_edge111.i.unr-lcssa, %.lr.ph110.preheader.i
  %.073108.i.epil.init = phi i64 [ 0, %.lr.ph110.preheader.i ], [ %i.bs, %._crit_edge111.i.unr-lcssa ]
  %.076107.i.epil.init = phi i64 [ %i.at, %.lr.ph110.preheader.i ], [ %i.br, %._crit_edge111.i.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter12, 0
  call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph110.i.epil

.lr.ph110.i.epil:                                 ; preds = %.lr.ph110.i.epil, %.lr.ph110.i.epil.preheader
  %.073108.i.epil = phi i64 [ %i.by, %.lr.ph110.i.epil ], [ %.073108.i.epil.init, %.lr.ph110.i.epil.preheader ] ; 2 uses
  %.076107.i.epil = phi i64 [ %i.bx, %.lr.ph110.i.epil ], [ %.076107.i.epil.init, %.lr.ph110.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph110.i.epil ], [ 0, %.lr.ph110.i.epil.preheader ]
  %i.bt = getelementptr i8, ptr %i.ai, i64 %.076107.i.epil
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.bv = getelementptr i8, ptr %i.aq, i64 %.073108.i.epil
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !28
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !134
  %i.bx = add i64 %i.bw, %.076107.i.epil
  %i.by = add nuw nsw i64 %.073108.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter12
  br i1 %epil.iter.cmp.not, label %._crit_edge111.i, label %.lr.ph110.i.epil, !llvm.loop !234

._crit_edge111.i:                                 ; preds = %.lr.ph110.i.epil, %._crit_edge111.i.unr-lcssa
  %i.bz = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.aq, i64 noundef %i.t) #17, !inline_history !231
  call void @PyMem_Free(ptr noundef nonnull %i.aq) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.n:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.ca = load ptr, ptr %6, align 8, !tbaa !59
  %i.cb = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #17, !inline_history !231
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !183
  %i.ce = icmp eq ptr %i.ca, %i.cd
  br i1 %i.ce, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !51 ; 8 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64
  %i.ci = icmp slt i64 %i.t, 1
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = call ptr @Py_GetConstant(i32 noundef 7) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.q:                                             ; preds = %bb.o
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !134
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !134
  %i.cn = getelementptr [4 x i8], ptr %i.cg, i64 %i.cm
  %i.co = call ptr @PyUnicode_FromWideChar(ptr noundef %i.cn, i64 noundef %i.t) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.cp = icmp samesign ugt i64 %i.t, 2305843009213693951
  br i1 %i.cp, label %.thread100.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = shl nuw nsw i64 %i.t, 2
  %i.cr = call ptr @PyMem_Malloc(i64 noundef %i.cq) #17, !inline_history !231 ; 10 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = icmp eq ptr %i.cr, null
  br i1 %i.ct, label %.thread100.i, label %.lr.ph106.i

.thread100.i:                                     ; preds = %bb.t, %bb.s
  %i.cu = call ptr @PyErr_NoMemory() #17, !inline_history !231 ; 0 uses
  br label %Py_DECREF.exit.thread.i

.lr.ph106.i:                                      ; preds = %bb.t
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !134 ; 5 uses
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !134 ; 6 uses
  %min.iters.check = icmp ugt i64 %i.t, 11
  %ident.check.not = icmp eq i64 %i.cw, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph106.i
  %i.cx = shl i64 %i.cv, 2
  %i.cy = add i64 %i.cx, %i.ch
  %i.cz = sub i64 %i.cs, %i.cy
  %diff.check = icmp ult i64 %i.cz, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 2305843009213693944      ; 4 uses
  %i.da = add i64 %i.cv, %n.vec
  %i.db = getelementptr [4 x i8], ptr %i.cg, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !6
  %wide.load10 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !6
  %i.de = getelementptr [4 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !6
  store <4 x i32> %wide.load10, ptr %i.df, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph106.i, %middle.block
  %.174105.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph106.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.177104.i.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph106.i ], [ %i.da, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.174105.i.prol = phi i64 [ %i.dl, %scalar.ph.prol ], [ %.174105.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.177104.i.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.177104.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = getelementptr [4 x i8], ptr %i.cg, i64 %.177104.i.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !6
  %i.dj = getelementptr [4 x i8], ptr %i.cr, i64 %.174105.i.prol
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !6
  %i.dk = add i64 %.177104.i.prol, %i.cw          ; 2 uses
  %i.dl = add nuw nsw i64 %.174105.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !237

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.174105.i.unr = phi i64 [ %.174105.i.ph, %scalar.ph.preheader ], [ %i.dl, %scalar.ph.prol ]
  %.177104.i.unr = phi i64 [ %.177104.i.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %i.dm = sub nsw i64 %.174105.i.ph, %i.t
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.174105.i = phi i64 [ %i.eh, %scalar.ph ], [ %.174105.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.177104.i = phi i64 [ %i.eg, %scalar.ph ], [ %.177104.i.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.cg, i64 %.177104.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dq = getelementptr [4 x i8], ptr %i.cr, i64 %.174105.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !6
  %i.dr = add i64 %.177104.i, %i.cw               ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.cg, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !6
  %i.du = getelementptr [4 x i8], ptr %i.cr, i64 %.174105.i
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !6
  %i.dw = add i64 %i.dr, %i.cw                    ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.cg, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !6
  %i.dz = getelementptr [4 x i8], ptr %i.cr, i64 %.174105.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !6
  %i.eb = add i64 %i.dw, %i.cw                    ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.cg, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !6
  %i.ee = getelementptr [4 x i8], ptr %i.cr, i64 %.174105.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 12
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !6
  %i.eg = add i64 %i.eb, %i.cw
  %i.eh = add nuw nsw i64 %.174105.i, 4           ; 2 uses
  %exitcond112.not.i.3 = icmp eq i64 %i.eh, %i.t
  br i1 %exitcond112.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !238

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ei = call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.cr, i64 noundef %i.t) #17, !inline_history !231
  call void @PyMem_Free(ptr noundef nonnull %i.cr) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.u:                                             ; preds = %bb.n
  %i.ej = call ptr @PyList_New(i64 noundef %i.t) #17, !inline_history !231 ; 7 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %Py_DECREF.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = icmp sgt i64 %i.t, 0
  br i1 %i.el, label %.lr.ph.i, label %Py_DECREF.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.em = load i64, ptr %i.a, align 8, !tbaa !134
  %i.en = getelementptr i8, ptr %i.ej, i64 24
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i
  %.275103.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ev, %bb.aa ] ; 2 uses
  %.278102.i = phi i64 [ %i.em, %.lr.ph.i ], [ %i.eu, %bb.aa ] ; 2 uses
  %i.eo = call fastcc ptr @Array_item_lock_held(ptr noundef %0, i64 noundef %.278102.i), !inline_history !231 ; 2 uses
  %.not88.i = icmp eq ptr %i.eo, null
  br i1 %.not88.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ep = load i32, ptr %i.ej, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ep, -1
  br i1 %.not.i.i, label %bb.y, label %Py_DECREF.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.ej, align 8, !tbaa !28
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.z, label %Py_DECREF.exit.thread.i

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ej) #17, !inline_history !231
  br label %Py_DECREF.exit.thread.i

bb.aa:                                            ; preds = %bb.w
  %.val93.i = load ptr, ptr %i.en, align 8, !tbaa !220
  %i.es = getelementptr [8 x i8], ptr %.val93.i, i64 %.275103.i
  store ptr %i.eo, ptr %i.es, align 8, !tbaa !32
  %i.et = load i64, ptr %i.c, align 8, !tbaa !134
  %i.eu = add i64 %i.et, %.278102.i
  %i.ev = add nuw nsw i64 %.275103.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ev, %i.t
  br i1 %exitcond.not.i, label %Py_DECREF.exit.thread.i, label %bb.w, !llvm.loop !239

Py_DECREF.exit.thread.i:                          ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %._crit_edge.i, %.thread100.i, %bb.r, %bb.p, %._crit_edge111.i, %bb.m, %bb.k, %bb.i, %bb.g
  %.7.i = phi ptr [ null, %bb.g ], [ null, %bb.u ], [ null, %bb.x ], [ %i.bz, %._crit_edge111.i ], [ %i.ei, %._crit_edge.i ], [ %i.ak, %bb.i ], [ %i.ap, %bb.k ], [ %i.as, %bb.m ], [ %i.cj, %bb.p ], [ %i.co, %bb.r ], [ null, %.thread100.i ], [ null, %bb.z ], [ null, %bb.y ], [ %i.ej, %bb.v ], [ %i.ej, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %Array_subscript_lock_held.exit

bb.ab:                                            ; preds = %bb.f
  %i.ew = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
end_hunk_0
