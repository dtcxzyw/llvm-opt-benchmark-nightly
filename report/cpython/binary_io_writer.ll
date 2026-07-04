inline.NumInlined: 62
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@binary_writer_destroy:bb.a
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.aj = getelementptr [80 x i8], ptr %i.ai, i64 %.039
  %i.ak = getelementptr i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  tail call void @PyMem_Free(ptr noundef %i.al) #12
  %i.am = add nuw i64 %.039, 1                    ; 2 uses
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph40, label %._crit_edge41.loopexit, !llvm.loop !57

bb.j:                                             ; preds = %._crit_edge41, %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %0) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @binary_writer_write_sample(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 11 uses
  %i.b = alloca [1301 x i8], align 16             ; 36 uses
  %3 = alloca %struct.FrameKey, align 4           ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [256 x i32], align 16             ; 10 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val44 = load i64, ptr %i.g, align 8, !tbaa !61
  %i.h = and i64 %.val44, 33554432
  %.not = icmp eq i64 %i.h, 0
  %.lcssa345.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.lcssa345.sroa.gep389 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.lcssa345.sroa.gep390 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.lcssa345.sroa.gep391 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.lcssa352.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.lcssa352.sroa.gep394 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.lcssa352.sroa.gep395 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.lcssa352.sroa.gep396 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.lcssa359.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.lcssa359.sroa.gep399 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.lcssa359.sroa.gep400 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.lcssa359.sroa.gep401 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.1) #12
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val46 = load i64, ptr %i.j, align 8, !tbaa !68 ; 2 uses
  %.not41136 = icmp sgt i64 %.val46, 0
  br i1 %.not41136, label %.lr.ph139, label %.critedge

.lr.ph139:                                        ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr i8, ptr %0, i64 168 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.v = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 152        ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 24        ; 7 uses
  %i.af = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 248       ; 4 uses
  %i.ah = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 232       ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph139, %.critedge43
  %.032137 = phi i64 [ 0, %.lr.ph139 ], [ %i.td, %.critedge43 ] ; 2 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.032137
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = call ptr @PyStructSequence_GetItem(ptr noundef %i.av, i64 noundef 0) #12
  %i.ax = call ptr @PyStructSequence_GetItem(ptr noundef %i.av, i64 noundef 1) #12 ; 2 uses
  %i.ay = call i64 @PyLong_AsUnsignedLong(ptr noundef %i.aw) #12 ; 4 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = call ptr @PyErr_Occurred() #12
  %.not39 = icmp eq ptr %i.ba, null
  br i1 %.not39, label %.thread, label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp ugt i64 %i.ay, 4294967295
  br i1 %i.bb, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e
  %i.bc = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  %i.bd = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bc, ptr noundef nonnull @.str.2, i64 noundef %i.ay, i64 noundef 4294967295) #12 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = trunc nuw i64 %i.ay to i32              ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ax, i64 16
  %.val45 = load i64, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %.not40.not134 = icmp sgt i64 %.val45, 0
  br i1 %.not40.not134, label %.lr.ph, label %.critedge43

.lr.ph:                                           ; preds = %bb.g
  %i.bg = getelementptr i8, ptr %i.ax, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cx
  %.031135 = phi i64 [ 0, %.lr.ph ], [ %i.tc, %bb.cx ] ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.031135
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36 ; 3 uses
  %i.bk = call ptr @PyStructSequence_GetItem(ptr noundef %i.bj, i64 noundef 0) #12
  %i.bl = call ptr @PyStructSequence_GetItem(ptr noundef %i.bj, i64 noundef 1) #12
  %i.bm = call ptr @PyStructSequence_GetItem(ptr noundef %i.bj, i64 noundef 2) #12 ; 2 uses
  %i.bn = call i64 @PyLong_AsUnsignedLongLong(ptr noundef %i.bk) #12 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = call ptr @PyErr_Occurred() #12
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = call i64 @PyLong_AsLong(ptr noundef %i.bl) #12 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = call ptr @PyErr_Occurred() #12
  %.not44.i = icmp eq ptr %i.bs, null
  br i1 %.not44.i, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = trunc i64 %i.bq to i8                   ; 3 uses
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !52  ; 4 uses
  %.not68.i.i = icmp eq i64 %i.bu, 0
  %.pre.i.pre.i = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !34 ; 3 uses
  br i1 %.not68.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.n
  %.04467.i.i = phi i64 [ %i.cb, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.bv = getelementptr [80 x i8], ptr %.pre.i.pre.i, i64 %.04467.i.i ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !72
  %i.bx = icmp eq i64 %i.bw, %i.bn
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.by = getelementptr i8, ptr %i.bv, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !73
  %i.ca = icmp eq i32 %i.bz, %i.be
  br i1 %i.ca, label %writer_get_or_create_thread_entry.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.cb = add nuw i64 %.04467.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %i.bu
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.l
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !35  ; 5 uses
  %.not.i.i = icmp ult i64 %i.bu, %i.cc
  br i1 %.not.i.i, label %._crit_edge._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.ce, ptr noundef nonnull @.str.4) #12
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cf = shl nuw nsw i64 %i.cc, 1
  %mul.ov.i.i.i = icmp samesign ugt i64 %i.cc, 115292150460684697
  br i1 %mul.ov.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.5) #12
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ch = mul nuw i64 %i.cc, 160
  %i.ci = call ptr @PyMem_Realloc(ptr noundef %.pre.i.pre.i, i64 noundef %i.ch) #12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %bb.t, label %.thread60.i.i

bb.t:                                             ; preds = %bb.s
  %i.cj = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge

.thread60.i.i:                                    ; preds = %bb.s
  store i64 %i.cf, ptr %i.m, align 8, !tbaa !75
  store ptr %i.ci, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !34
  %.pre70.i.i = load i64, ptr %i.l, align 8, !tbaa !52
  br label %._crit_edge._crit_edge.i.i

._crit_edge._crit_edge.i.i:                       ; preds = %.thread60.i.i, %._crit_edge.i.i
  %i.ck = phi i64 [ %.pre70.i.i, %.thread60.i.i ], [ %i.bu, %._crit_edge.i.i ]
  %i.cl = phi ptr [ %i.ci, %.thread60.i.i ], [ %.pre.i.pre.i, %._crit_edge.i.i ]
  %i.cm = getelementptr [80 x i8], ptr %i.cl, i64 %i.ck ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i8 0, i64 72, i1 false)
  store i64 %i.bn, ptr %i.cm, align 8, !tbaa !72
  %i.co = getelementptr i8, ptr %i.cm, i64 16
  store i32 %i.be, ptr %i.co, align 8, !tbaa !73
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !22
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !76
  %i.cq = getelementptr i8, ptr %i.cm, i64 40
  store i64 256, ptr %i.cq, align 8, !tbaa !77
  %i.cr = getelementptr i8, ptr %i.cm, i64 64     ; 2 uses
  store i64 64, ptr %i.cr, align 8, !tbaa !78
  %i.cs = call ptr @PyMem_Malloc(i64 noundef 1024) #12 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cm, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !53
  %.not51.i.i = icmp eq ptr %i.cs, null
  br i1 %.not51.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge._crit_edge.i.i
  %i.cu = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge

bb.v:                                             ; preds = %._crit_edge._crit_edge.i.i
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !78
  %i.cw = shl i64 %i.cv, 4
  %i.cx = call ptr @PyMem_Malloc(i64 noundef %i.cw) #12 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cm, i64 48
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !56
  %.not52.i.i = icmp eq ptr %i.cx, null
  br i1 %.not52.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cm, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !53
  call void @PyMem_Free(ptr noundef %i.da) #12
  %i.db = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.dc = load i64, ptr %i.l, align 8, !tbaa !52
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.l, align 8, !tbaa !52
  br label %writer_get_or_create_thread_entry.exit.i

writer_get_or_create_thread_entry.exit.i:         ; preds = %bb.m, %bb.x
  %i.de = phi i1 [ true, %bb.x ], [ false, %bb.m ]
  %.3.i.i = phi ptr [ %i.cm, %bb.x ], [ %i.bv, %bb.m ] ; 11 uses
  %i.df = getelementptr i8, ptr %.3.i.i, i64 8    ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !76
  %i.dh = sub i64 %2, %i.dg                       ; 4 uses
  store i64 %2, ptr %i.df, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.di = call i64 @PyList_Size(ptr noundef %i.bm) #12 ; 4 uses
  %i.dj = call i64 @llvm.smin.i64(i64 %i.di, i64 256) ; 20 uses
  %.not79106.i.i = icmp sgt i64 %i.di, 0
  br i1 %.not79106.i.i, label %.lr.ph.i48.i, label %.loopexit.i

.lr.ph.i48.i:                                     ; preds = %writer_get_or_create_thread_entry.exit.i
  %i.dk = getelementptr i8, ptr %i.bm, i64 24
  br label %bb.y

bb.y:                                             ; preds = %bb.bn, %.lr.ph.i48.i
  %.053107.i.i = phi i64 [ 0, %.lr.ph.i48.i ], [ %i.go, %bb.bn ] ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !69
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %.053107.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36 ; 4 uses
  %i.do = call ptr @PyStructSequence_GetItem(ptr noundef %i.dn, i64 noundef 0) #12
  %i.dp = call ptr @PyStructSequence_GetItem(ptr noundef %i.dn, i64 noundef 1) #12 ; 10 uses
  %i.dq = call ptr @PyStructSequence_GetItem(ptr noundef %i.dn, i64 noundef 2) #12
  %i.dr = call ptr @PyStructSequence_GetItem(ptr noundef %i.dn, i64 noundef 3) #12 ; 2 uses
  %.not.i49.i = icmp eq ptr %i.dp, @_Py_NoneStruct
  br i1 %.not.i49.i, label %bb.at, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr i8, ptr %i.dp, i64 8      ; 4 uses
  %.val87.i.i = load ptr, ptr %i.ds, align 8, !tbaa !58
  %i.dt = getelementptr i8, ptr %.val87.i.i, i64 168
  %.val91.i.i = load i64, ptr %i.dt, align 8, !tbaa !61 ; 2 uses
  %i.du = and i64 %.val91.i.i, 67108864
  %.not69.i.i = icmp eq i64 %i.du, 0
  br i1 %.not69.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr i8, ptr %i.dp, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !36
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dx = call ptr @PyStructSequence_GetItem(ptr noundef %i.dp, i64 noundef 0) #12
  %.val86.pre.i.i = load ptr, ptr %i.ds, align 8, !tbaa !58
  %.phi.trans.insert.i51.i = getelementptr i8, ptr %.val86.pre.i.i, i64 168
  %.val90.pre.i.i = load i64, ptr %.phi.trans.insert.i51.i, align 8, !tbaa !61
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.val90.i.i = phi i64 [ %.val91.i.i, %bb.aa ], [ %.val90.pre.i.i, %bb.ab ] ; 2 uses
  %i.dy = phi ptr [ %i.dw, %bb.aa ], [ %i.dx, %bb.ab ]
  %i.dz = and i64 %.val90.i.i, 67108864
  %.not70.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not70.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr i8, ptr %i.dp, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !36
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ec = call ptr @PyStructSequence_GetItem(ptr noundef %i.dp, i64 noundef 1) #12
  %.val85.pre.i.i = load ptr, ptr %i.ds, align 8, !tbaa !58
  %.phi.trans.insert113.i.i = getelementptr i8, ptr %.val85.pre.i.i, i64 168
  %.val89.pre.i.i = load i64, ptr %.phi.trans.insert113.i.i, align 8, !tbaa !61
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.val89.i.i = phi i64 [ %.val90.i.i, %bb.ad ], [ %.val89.pre.i.i, %bb.ae ] ; 2 uses
  %i.ed = phi ptr [ %i.eb, %bb.ad ], [ %i.ec, %bb.ae ]
  %i.ee = and i64 %.val89.i.i, 67108864
  %.not71.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not71.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr i8, ptr %i.dp, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !36
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eh = call ptr @PyStructSequence_GetItem(ptr noundef %i.dp, i64 noundef 2) #12
  %.val.pre.i.i = load ptr, ptr %i.ds, align 8, !tbaa !58
  %.phi.trans.insert116.i.i = getelementptr i8, ptr %.val.pre.i.i, i64 168
  %.val88.pre.i.i = load i64, ptr %.phi.trans.insert116.i.i, align 8, !tbaa !61
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.val88.i.i = phi i64 [ %.val89.i.i, %bb.ag ], [ %.val88.pre.i.i, %bb.ah ]
  %i.ei = phi ptr [ %i.eg, %bb.ag ], [ %i.eh, %bb.ah ]
  %i.ej = and i64 %.val88.i.i, 67108864
  %.not72.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not72.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr i8, ptr %i.dp, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !36
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.em = call ptr @PyStructSequence_GetItem(ptr noundef %i.dp, i64 noundef 3) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.en = phi ptr [ %i.el, %bb.aj ], [ %i.em, %bb.ak ]
  %i.eo = call i64 @PyLong_AsLong(ptr noundef %i.dy) #12
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = call ptr @PyErr_Occurred() #12
  %.not73.i.i = icmp eq ptr %i.eq, null
  br i1 %.not73.i.i, label %bb.an, label %bb.am, !prof !79

bb.am:                                            ; preds = %bb.al
  call void @PyErr_Clear() #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.058.i.i = phi i32 [ -1, %bb.am ], [ %i.ep, %bb.al ] ; 2 uses
  %i.er = call i64 @PyLong_AsLong(ptr noundef %i.ed) #12
  %i.es = trunc i64 %i.er to i32
  %i.et = call ptr @PyErr_Occurred() #12
  %.not74.i.i = icmp eq ptr %i.et, null
  br i1 %.not74.i.i, label %bb.ap, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %bb.an
  call void @PyErr_Clear() #12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.060.i.i = phi i32 [ -1, %bb.ao ], [ %i.es, %bb.an ] ; 2 uses
  %i.eu = call i64 @PyLong_AsLong(ptr noundef %i.ei) #12
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = call ptr @PyErr_Occurred() #12
  %.not75.i.i = icmp eq ptr %i.ew, null
  br i1 %.not75.i.i, label %bb.ar, label %bb.aq, !prof !79

bb.aq:                                            ; preds = %bb.ap
  call void @PyErr_Clear() #12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.064.i.i = phi i32 [ -1, %bb.aq ], [ %i.ev, %bb.ap ] ; 2 uses
  %i.ex = call i64 @PyLong_AsLong(ptr noundef %i.en) #12
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call ptr @PyErr_Occurred() #12
  %.not76.i.i = icmp eq ptr %i.ez, null
  br i1 %.not76.i.i, label %bb.at, label %bb.as, !prof !79

bb.as:                                            ; preds = %bb.ar
  call void @PyErr_Clear() #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.y
  %.165.i.i = phi i32 [ -1, %bb.y ], [ %.064.i.i, %bb.as ], [ %.064.i.i, %bb.ar ] ; 2 uses
  %.163.i.i = phi i32 [ -1, %bb.y ], [ -1, %bb.as ], [ %i.ey, %bb.ar ] ; 2 uses
  %.161.i.i = phi i32 [ -1, %bb.y ], [ %.060.i.i, %bb.as ], [ %.060.i.i, %bb.ar ] ; 2 uses
  %.159.i.i = phi i32 [ -1, %bb.y ], [ %.058.i.i, %bb.as ], [ %.058.i.i, %bb.ar ] ; 2 uses
  %.not77.i.i = icmp eq ptr %i.dr, @_Py_NoneStruct
  br i1 %.not77.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = call i64 @PyLong_AsLong(ptr noundef %i.dr) #12
  %i.fb = call ptr @PyErr_Occurred() #12
  %.not78.i.i = icmp eq ptr %i.fb, null
  br i1 %.not78.i.i, label %bb.aw, label %bb.av, !prof !79

bb.av:                                            ; preds = %bb.au
  call void @PyErr_Clear() #12
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %spec.select95.i.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 255)
  %spec.select.i.i = trunc nuw i64 %spec.select95.i.i to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %.152.i.i = phi i8 [ -1, %bb.at ], [ -1, %bb.av ], [ %spec.select.i.i, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.fc = call fastcc i32 @writer_intern_string(ptr noundef %0, ptr noundef %i.do, ptr noundef %i.c)
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %build_frame_stack.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fe = call fastcc i32 @writer_intern_string(ptr noundef %0, ptr noundef %i.dq, ptr noundef %i.d)
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %.loopexit.sink.split.sink.split.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = load i32, ptr %i.c, align 4, !tbaa !6   ; 2 uses
  %i.fh = load i32, ptr %i.d, align 4, !tbaa !6   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 %i.fg, ptr %3, align 4, !tbaa !40
  store i32 %i.fh, ptr %i.o, align 4, !tbaa !42
  store i32 %.159.i.i, ptr %i.p, align 4, !tbaa !43
  store i32 %.161.i.i, ptr %i.q, align 4, !tbaa !44
  store i32 %.165.i.i, ptr %i.r, align 4, !tbaa !45
  store i32 %.163.i.i, ptr %i.s, align 4, !tbaa !46
  store i8 %.152.i.i, ptr %i.t, align 4, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, i8 0, i64 3, i1 false)
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.fj = call ptr @_Py_hashtable_get(ptr noundef %i.fi, ptr noundef nonnull %3) #12 ; 2 uses
  %.not.i.i50.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i50.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = add i32 %i.fl, -1
  br label %bb.bn

bb.bb:                                            ; preds = %bb.az
  %i.fn = load i64, ptr %i.x, align 8, !tbaa !80
  %i.fo = load i64, ptr %i.y, align 8, !tbaa !75  ; 5 uses
  %i.fp = icmp ult i64 %i.fn, %i.fo
  br i1 %i.fp, label %grow_array_inplace.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.fr = icmp slt i64 %i.fo, 0
  br i1 %i.fr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fs = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.fs, ptr noundef nonnull @.str.4) #12
  br label %.critedge84.i.i

bb.be:                                            ; preds = %bb.bc
  %i.ft = shl nuw nsw i64 %i.fo, 1
  %mul.ov.i.i.i.i.i = icmp samesign ugt i64 %i.fo, 329406144173384850
  br i1 %mul.ov.i.i.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fu = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.fu, ptr noundef nonnull @.str.5) #12
  br label %.critedge84.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fv = mul nuw i64 %i.fo, 56
  %i.fw = call ptr @PyMem_Realloc(ptr noundef %i.fq, i64 noundef %i.fv) #12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fx = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge84.i.i

bb.bi:                                            ; preds = %bb.bg
  store i64 %i.ft, ptr %i.y, align 8, !tbaa !75
  store ptr %i.fw, ptr %i.w, align 8, !tbaa !81
  br label %grow_array_inplace.exit.i.i.i

grow_array_inplace.exit.i.i.i:                    ; preds = %bb.bi, %bb.bb
  %i.fy = call ptr @PyMem_Malloc(i64 noundef 28) #12 ; 4 uses
  %.not28.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not28.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %grow_array_inplace.exit.i.i.i
  %i.fz = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge84.i.i

bb.bk:                                            ; preds = %grow_array_inplace.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fy, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !82
  %i.ga = load i64, ptr %i.x, align 8, !tbaa !80  ; 3 uses
  %i.gb = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.gc = getelementptr [28 x i8], ptr %i.gb, i64 %i.ga ; 8 uses
  store i32 %i.fg, ptr %i.gc, align 4, !tbaa !6
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.fh, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %.159.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 %.161.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %.165.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i32 %.163.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i8 %.152.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ge = add i64 %i.ga, 1
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = call i32 @_Py_hashtable_set(ptr noundef %i.gd, ptr noundef nonnull %i.fy, ptr noundef %i.gg) #12
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @PyMem_Free(ptr noundef nonnull %i.fy) #12
  %i.gj = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge84.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.gk = trunc i64 %i.ga to i32
  %i.gl = load i64, ptr %i.x, align 8, !tbaa !80
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.x, align 8, !tbaa !80
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ba
  %.1.i.i = phi i32 [ %i.gk, %bb.bm ], [ %i.fm, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.gn = getelementptr [4 x i8], ptr %i.e, i64 %.053107.i.i
  store i32 %.1.i.i, ptr %i.gn, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.go = add nuw nsw i64 %.053107.i.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.go, %i.dj
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.y, !llvm.loop !83

.critedge84.i.i:                                  ; preds = %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.loopexit.sink.split.sink.split.i.i

.loopexit.sink.split.sink.split.i.i:              ; preds = %bb.ay, %.critedge84.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %build_frame_stack.exit.i

build_frame_stack.exit.i:                         ; preds = %bb.ax, %.loopexit.sink.split.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %process_thread_sample.exit.thread49

.loopexit.i:                                      ; preds = %bb.bn, %writer_get_or_create_thread_entry.exit.i
  %i.gp = getelementptr i8, ptr %.3.i.i, i64 24   ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !53 ; 2 uses
  %i.gr = getelementptr i8, ptr %.3.i.i, i64 32   ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !84 ; 6 uses
  %i.gt = icmp eq i64 %i.gs, %i.dj
  br i1 %i.gt, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i
  %.not6061.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not6061.not.i.i, label %compare_stacks.exit.i, label %.lr.ph.i53.i

bb.bo:                                            ; preds = %.lr.ph.i53.i
  %i.gu = add nuw i64 %.04962.i.i, 1              ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %i.gu, %i.dj
  br i1 %exitcond.not.i55.i, label %compare_stacks.exit.i, label %.lr.ph.i53.i, !llvm.loop !85

.lr.ph.i53.i:                                     ; preds = %.preheader.i.i, %bb.bo
  %.04962.i.i = phi i64 [ %i.gu, %bb.bo ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gq, i64 %.04962.i.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6
  %i.gx = getelementptr [4 x i8], ptr %i.e, i64 %.04962.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !6
  %.not.i54.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not.i54.i, label %bb.bo, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i53.i, %.loopexit.i
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.dj) ; 5 uses
  %.not69.i52.i = icmp eq i64 %i.gz, 0
  br i1 %.not69.i52.i, label %compare_stacks.exit.thread.i, label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.thread.i.i
  %i.ha = getelementptr [4 x i8], ptr %i.gq, i64 %i.gs
  %i.hb = getelementptr [4 x i8], ptr %i.e, i64 %i.dj
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.lr.ph65.i.i
  %.04864.i.i = phi i64 [ 0, %.lr.ph65.i.i ], [ %i.hi, %bb.bq ] ; 6 uses
  %i.hc = xor i64 %.04864.i.i, -1                 ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.ha, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !6
  %i.hf = getelementptr [4 x i8], ptr %i.hb, i64 %i.hc
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !6
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.bq, label %._crit_edge66.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.hi = add nuw i64 %.04864.i.i, 1              ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %i.hi, %i.gz
  br i1 %exitcond70.not.i.i, label %._crit_edge66.thread75.i.i, label %bb.bp, !llvm.loop !86

._crit_edge66.thread75.i.i:                       ; preds = %bb.bq
  %i.hj = sub i64 %i.gs, %i.gz
  %i.hk = sub i64 %i.dj, %i.gz
  br label %bb.br

._crit_edge66.i.i:                                ; preds = %bb.bp
  %i.hl = sub i64 %i.gs, %.04864.i.i              ; 2 uses
  %i.hm = sub i64 %i.dj, %.04864.i.i              ; 2 uses
  %i.hn = icmp eq i64 %.04864.i.i, 0
  br i1 %i.hn, label %compare_stacks.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge66.i.i, %._crit_edge66.thread75.i.i
  %.080.i = phi i64 [ %i.gz, %._crit_edge66.thread75.i.i ], [ %.04864.i.i, %._crit_edge66.i.i ] ; 4 uses
  %.078.i = phi i64 [ %i.hj, %._crit_edge66.thread75.i.i ], [ %i.hl, %._crit_edge66.i.i ] ; 3 uses
  %.076.i = phi i64 [ %i.hk, %._crit_edge66.thread75.i.i ], [ %i.hm, %._crit_edge66.i.i ] ; 3 uses
  %i.ho = icmp ne i64 %.078.i, 0
  %.not56.i.i = icmp eq i64 %i.dj, %.080.i        ; 2 uses
  %or.cond.i.i = or i1 %.not56.i.i, %i.ho
  br i1 %or.cond.i.i, label %bb.bs, label %compare_stacks.exit.thread.i

bb.bs:                                            ; preds = %bb.br
  %.not57.i.i = icmp eq i64 %.078.i, 0
  %or.cond59.i.i = and i1 %.not56.i.i, %.not57.i.i
  br i1 %or.cond59.i.i, label %compare_stacks.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hp = lshr i64 %i.dj, 1
  %i.hq = icmp ult i64 %.080.i, %i.hp
  %spec.select = select i1 %i.hq, i32 1, i32 3
  br label %compare_stacks.exit.thread.i

compare_stacks.exit.i:                            ; preds = %bb.bo, %.preheader.i.i
  %.181.i = phi i64 [ 0, %.preheader.i.i ], [ %i.dj, %bb.bo ]
  br i1 %i.de, label %compare_stacks.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %compare_stacks.exit.i
  %i.hr = getelementptr i8, ptr %.3.i.i, i64 48   ; 2 uses
  %i.hs = getelementptr i8, ptr %.3.i.i, i64 56   ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !87 ; 2 uses
  %i.hu = getelementptr i8, ptr %.3.i.i, i64 64   ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !75 ; 5 uses
  %i.hw = icmp ult i64 %i.ht, %i.hv
  %.pre.i = load ptr, ptr %i.hr, align 8, !tbaa !81 ; 2 uses
  br i1 %i.hw, label %grow_array_inplace.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hx = icmp slt i64 %i.hv, 0
  br i1 %i.hx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hy = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.hy, ptr noundef nonnull @.str.4) #12
  br label %process_thread_sample.exit.thread49

bb.bx:                                            ; preds = %bb.bv
  %i.hz = shl nuw nsw i64 %i.hv, 1
  %mul.ov.i.i57.i = icmp samesign ugt i64 %i.hv, 576460752303423487
  br i1 %mul.ov.i.i57.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ia = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.ia, ptr noundef nonnull @.str.5) #12
  br label %process_thread_sample.exit.thread49

bb.bz:                                            ; preds = %bb.bx
  %i.ib = shl nuw i64 %i.hv, 5
  %i.ic = call ptr @PyMem_Realloc(ptr noundef %.pre.i, i64 noundef %i.ib) #12 ; 3 uses
  %.not.i.i58.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i58.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.id = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %process_thread_sample.exit.thread49

bb.cb:                                            ; preds = %bb.bz
  store i64 %i.hz, ptr %i.hu, align 8, !tbaa !75
  store ptr %i.ic, ptr %i.hr, align 8, !tbaa !81
  %.pre154.i = load i64, ptr %i.hs, align 8, !tbaa !87
  br label %grow_array_inplace.exit.i

grow_array_inplace.exit.i:                        ; preds = %bb.cb, %bb.bu
  %i.ie = phi i64 [ %.pre154.i, %bb.cb ], [ %i.ht, %bb.bu ] ; 2 uses
  %i.if = phi ptr [ %i.ic, %bb.cb ], [ %.pre.i, %bb.bu ]
  %i.ig = getelementptr [16 x i8], ptr %i.if, i64 %i.ie ; 2 uses
  store i64 %i.dh, ptr %i.ig, align 8, !tbaa !88
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store i8 %i.bt, ptr %i.ih, align 8, !tbaa !90
  %i.ii = add i64 %i.ie, 1
  store i64 %i.ii, ptr %i.hs, align 8, !tbaa !87
  %i.ij = getelementptr i8, ptr %.3.i.i, i64 72
  store i32 1, ptr %i.ij, align 8, !tbaa !91
  br label %bb.cx

compare_stacks.exit.thread.i:                     ; preds = %bb.bt, %compare_stacks.exit.i, %bb.bs, %bb.br, %._crit_edge66.i.i, %.thread.i.i
  %.2.i96.i = phi i32 [ 0, %compare_stacks.exit.i ], [ 1, %.thread.i.i ], [ 1, %bb.bs ], [ %spec.select, %bb.bt ], [ 1, %._crit_edge66.i.i ], [ 2, %bb.br ] ; 2 uses
  %.17795.i = phi i64 [ 0, %compare_stacks.exit.i ], [ %i.dj, %.thread.i.i ], [ %.076.i, %bb.bs ], [ %.076.i, %bb.bt ], [ %i.hm, %._crit_edge66.i.i ], [ %.076.i, %bb.br ] ; 13 uses
  %.17994.i = phi i64 [ 0, %compare_stacks.exit.i ], [ %i.gs, %.thread.i.i ], [ 0, %bb.bs ], [ %.078.i, %bb.bt ], [ %i.hl, %._crit_edge66.i.i ], [ 0, %bb.br ] ; 4 uses
  %.18192.i = phi i64 [ %.181.i, %compare_stacks.exit.i ], [ 0, %.thread.i.i ], [ %i.dj, %bb.bs ], [ %.080.i, %bb.bt ], [ 0, %._crit_edge66.i.i ], [ %.080.i, %bb.br ] ; 5 uses
  %i.ik = getelementptr i8, ptr %.3.i.i, i64 72
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !91
  %.not46.i = icmp eq i32 %i.il, 0
  br i1 %.not46.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %compare_stacks.exit.thread.i
  %i.im = call fastcc i32 @flush_pending_rle(ptr noundef %0, ptr noundef nonnull %.3.i.i)
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %process_thread_sample.exit.thread49, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %compare_stacks.exit.thread.i
  %.val.i = load i64, ptr %.3.i.i, align 8
  %i.io = getelementptr i8, ptr %.3.i.i, i64 16
  %.val47.i = load i32, ptr %i.io, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.val.i, ptr %i.a, align 16
  store i32 %.val47.i, ptr %i.z, align 8
  %i.ip = trunc nuw nsw i32 %.2.i96.i to i8
  store i8 %i.ip, ptr %i.aa, align 4, !tbaa !39
  %i.iq = icmp ult i64 %i.dh, 128
  br i1 %i.iq, label %encode_varint_u64.exit.thread.i.i, label %.preheader.i.i.i

encode_varint_u64.exit.thread.i.i:                ; preds = %bb.cd
  %i.ir = trunc nuw nsw i64 %i.dh to i8
  store i8 %i.ir, ptr %i.ab, align 1, !tbaa !39
  store i8 %i.bt, ptr %i.ac, align 2, !tbaa !39
  br label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.cd, %.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %i.iu, %.preheader.i.i.i ], [ 0, %bb.cd ] ; 4 uses
  %.01215.i.i.i = phi i64 [ %i.iw, %.preheader.i.i.i ], [ %i.dh, %bb.cd ] ; 3 uses
  %i.is = trunc i64 %.01215.i.i.i to i8
  %i.it = or i8 %i.is, -128
  %i.iu = add nuw nsw i64 %.016.i.i.i, 1          ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ab, i64 %.016.i.i.i
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !39
  %i.iw = lshr i64 %.01215.i.i.i, 7               ; 2 uses
  %i.ix = icmp ugt i64 %.01215.i.i.i, 16383
  br i1 %i.ix, label %.preheader.i.i.i, label %encode_varint_u64.exit.i.i, !llvm.loop !92

encode_varint_u64.exit.i.i:                       ; preds = %.preheader.i.i.i
  %i.iy = trunc nuw nsw i64 %i.iw to i8
  %i.iz = getelementptr i8, ptr %i.ab, i64 %i.iu
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !39
  %i.ja = getelementptr i8, ptr %i.a, i64 %.016.i.i.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 15
  store i8 %i.bt, ptr %i.jb, align 1, !tbaa !39
  %i.jc = add nuw i64 %.016.i.i.i, 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %encode_varint_u64.exit.i.i, %encode_varint_u64.exit.thread.i.i
  %i.jd = phi i64 [ 15, %encode_varint_u64.exit.thread.i.i ], [ %i.jc, %encode_varint_u64.exit.i.i ] ; 2 uses
  %.pre.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !93
  br label %bb.ce

bb.ce:                                            ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %i.je = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %.pre.i110.i.i, %.critedge.i.i.i ] ; 2 uses
  %.02631.i.i.i = phi i64 [ %i.jd, %.lr.ph.i.i.i ], [ %i.jn, %.critedge.i.i.i ] ; 2 uses
  %.02730.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.jm, %.critedge.i.i.i ] ; 2 uses
  %i.jf = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.jg = sub i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %.02631.i.i.i, i64 %i.jg) ; 4 uses
  %i.ji = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr align 1 %.02730.i.i.i, i64 %i.jh, i1 false)
  %i.jk = load i64, ptr %i.ae, align 8, !tbaa !93
  %i.jl = add i64 %i.jk, %i.jh                    ; 6 uses
  store i64 %i.jl, ptr %i.ae, align 8, !tbaa !93
  %i.jm = getelementptr i8, ptr %.02730.i.i.i, i64 %i.jh
  %i.jn = sub i64 %.02631.i.i.i, %i.jh            ; 2 uses
  %i.jo = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.jp = icmp ne i64 %i.jl, %i.jo
  %i.jq = icmp eq i64 %i.jl, 0
  %or.cond.i.i.i = or i1 %i.jq, %i.jp
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jr = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.js = load ptr, ptr %0, align 8, !tbaa !38
  %i.jt = call ptr @PyEval_SaveThread() #12
  %i.ju = call i64 @fwrite(ptr noundef readonly %i.jr, i64 noundef 1, i64 noundef %i.jl, ptr noundef %i.js)
  call void @PyEval_RestoreThread(ptr noundef %i.jt) #12
  %.not.i.i.i.i60.i = icmp eq i64 %i.ju, %i.jl
  br i1 %.not.i.i.i.i60.i, label %fwrite_checked_allow_threads.exit.i.i.i.i, label %write_sample_with_encoding.exit.thread.i

fwrite_checked_allow_threads.exit.i.i.i.i:        ; preds = %bb.cf
  store i64 0, ptr %i.ae, align 8, !tbaa !93
  br label %.critedge.i.i.i

write_sample_with_encoding.exit.thread.i:         ; preds = %bb.cf
  %i.jv = load ptr, ptr @PyExc_IOError, align 8, !tbaa !36
  %i.jw = call ptr @PyErr_SetFromErrno(ptr noundef %i.jv) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %process_thread_sample.exit.thread49

.critedge.i.i.i:                                  ; preds = %fwrite_checked_allow_threads.exit.i.i.i.i, %bb.ce
  %.pre.i110.i.i = phi i64 [ 0, %fwrite_checked_allow_threads.exit.i.i.i.i ], [ %i.jl, %bb.ce ] ; 2 uses
  %.not.i.i61.i = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i61.i, label %bb.cg, label %bb.ce

bb.cg:                                            ; preds = %.critedge.i.i.i
  %i.jx = load i64, ptr %i.ag, align 8, !tbaa !94
  %i.jy = add i64 %i.jx, %i.jd                    ; 2 uses
  store i64 %i.jy, ptr %i.ag, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  switch i32 %.2.i96.i, label %default.unreachable [
    i32 1, label %bb.ch
    i32 2, label %bb.ck
    i32 3, label %bb.cp
    i32 0, label %bb.cu
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.jz = and i64 %i.dj, 4294967168
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %encode_varint_u32.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ch
  %i.kb = and i64 %i.dj, 4294967295               ; 7 uses
  %i.kc = trunc i64 %i.dj to i8
  %i.kd = or i8 %i.kc, -128
  store i8 %i.kd, ptr %i.b, align 16, !tbaa !39
  %i.ke = lshr i64 %i.kb, 7                       ; 2 uses
  %i.kf = icmp samesign ugt i64 %i.kb, 16383
  br i1 %i.kf, label %.preheader.i.i.i.i.1, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.1:                             ; preds = %.preheader.i.i.i.i
  %i.kg = trunc i64 %i.ke to i8
  %i.kh = or i8 %i.kg, -128
  store i8 %i.kh, ptr %i.aq, align 1, !tbaa !39
  %i.ki = lshr i64 %i.kb, 14                      ; 2 uses
  %i.kj = icmp samesign ugt i64 %i.kb, 2097151
  br i1 %i.kj, label %.preheader.i.i.i.i.2, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.2:                             ; preds = %.preheader.i.i.i.i.1
  %i.kk = trunc i64 %i.ki to i8
  %i.kl = or i8 %i.kk, -128
  store i8 %i.kl, ptr %i.ar, align 2, !tbaa !39
  %i.km = lshr i64 %i.kb, 21                      ; 2 uses
  %i.kn = icmp samesign ugt i64 %i.kb, 268435455
  br i1 %i.kn, label %.preheader.i.i.i.i.3, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.3:                             ; preds = %.preheader.i.i.i.i.2
  %i.ko = trunc i64 %i.km to i8
  %i.kp = or i8 %i.ko, -128
  store i8 %i.kp, ptr %i.as, align 1, !tbaa !39
  %i.kq = lshr i64 %i.kb, 28
  br label %encode_varint_u32.exit.thread.i.i

encode_varint_u32.exit.thread.i.i:                ; preds = %.preheader.i.i.i.i.3, %.preheader.i.i.i.i.2, %.preheader.i.i.i.i.1, %.preheader.i.i.i.i
  %.016.i.i.i.i.lcssa = phi i64 [ 2, %.preheader.i.i.i.i ], [ 3, %.preheader.i.i.i.i.1 ], [ 4, %.preheader.i.i.i.i.2 ], [ 5, %.preheader.i.i.i.i.3 ]
  %.lcssa359.sroa.phi = phi ptr [ %.lcssa359.sroa.gep, %.preheader.i.i.i.i ], [ %.lcssa359.sroa.gep399, %.preheader.i.i.i.i.1 ], [ %.lcssa359.sroa.gep400, %.preheader.i.i.i.i.2 ], [ %.lcssa359.sroa.gep401, %.preheader.i.i.i.i.3 ]
  %.lcssa358 = phi i64 [ %i.ke, %.preheader.i.i.i.i ], [ %i.ki, %.preheader.i.i.i.i.1 ], [ %i.km, %.preheader.i.i.i.i.2 ], [ %i.kq, %.preheader.i.i.i.i.3 ]
  %i.kr = trunc nuw nsw i64 %.lcssa358 to i8
  store i8 %i.kr, ptr %.lcssa359.sroa.phi, align 1, !tbaa !39
  br label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %encode_varint_u32.exit.i.i, %encode_varint_u32.exit.thread.i.i
end_hunk_0
begin_hunk_1_@flush_pending_rle:bb.a
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %.02730.i.i41, i64 %i.cy, i1 false)
  %i.db = load i64, ptr %i.m, align 8, !tbaa !93
  %i.dc = add i64 %i.db, %i.cy                    ; 6 uses
  store i64 %i.dc, ptr %i.m, align 8, !tbaa !93
  %i.dd = getelementptr i8, ptr %.02730.i.i41, i64 %i.cy
  %i.de = sub i64 %.02631.i.i40, %i.cy            ; 2 uses
  %i.df = load i64, ptr %i.l, align 8, !tbaa !26
  %i.dg = icmp ne i64 %i.dc, %i.df
  %i.dh = icmp eq i64 %i.dc, 0
  %or.cond.i.i42 = or i1 %i.dh, %i.dg
  br i1 %or.cond.i.i42, label %.critedge.i.i47, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.dj = load ptr, ptr %0, align 8, !tbaa !38
  %i.dk = tail call ptr @PyEval_SaveThread() #12
  %i.dl = tail call i64 @fwrite(ptr noundef readonly %i.di, i64 noundef 1, i64 noundef %i.dc, ptr noundef %i.dj)
  tail call void @PyEval_RestoreThread(ptr noundef %i.dk) #12
  %.not.i.i.i.i43 = icmp eq i64 %i.dl, %i.dc
  br i1 %.not.i.i.i.i43, label %fwrite_checked_allow_threads.exit.i.i.i46, label %writer_write_varint_u64.exit.thread

fwrite_checked_allow_threads.exit.i.i.i46:        ; preds = %bb.o
  store i64 0, ptr %i.m, align 8, !tbaa !93
  br label %.critedge.i.i47

writer_write_varint_u64.exit.thread:              ; preds = %bb.o
  %i.dm = load ptr, ptr @PyExc_IOError, align 8, !tbaa !36
  %i.dn = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.dm) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread

.critedge.i.i47:                                  ; preds = %fwrite_checked_allow_threads.exit.i.i.i46, %bb.n
  %.pre.i = phi i64 [ 0, %fwrite_checked_allow_threads.exit.i.i.i46 ], [ %i.dc, %bb.n ] ; 2 uses
  %.not.i.i48 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i48, label %bb.p, label %bb.n

bb.p:                                             ; preds = %.critedge.i.i47
  %i.do = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.dp = add i64 %i.do, %.013.i.i
  store i64 %i.dp, ptr %i.ah, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.dr = getelementptr [16 x i8], ptr %i.dq, i64 %.02558
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i, %bb.p
  %i.dt = phi i64 [ %.pre.i, %bb.p ], [ %i.el, %.critedge.i ] ; 2 uses
  %.02730.i = phi ptr [ %i.ds, %bb.p ], [ %i.eb, %.critedge.i ] ; 2 uses
  %i.du = load i64, ptr %i.l, align 8, !tbaa !26
  %i.dv = icmp ne i64 %i.du, %i.dt                ; 2 uses
  %i.dw = zext i1 %i.dv to i64                    ; 3 uses
  %i.dx = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %.02730.i, i64 %i.dw, i1 false)
  %i.dz = load i64, ptr %i.m, align 8, !tbaa !93
  %i.ea = add i64 %i.dz, %i.dw                    ; 6 uses
  store i64 %i.ea, ptr %i.m, align 8, !tbaa !93
  %i.eb = getelementptr i8, ptr %.02730.i, i64 %i.dw
  %i.ec = load i64, ptr %i.l, align 8, !tbaa !26
  %i.ed = icmp ne i64 %i.ea, %i.ec
  %i.ee = icmp eq i64 %i.ea, 0
  %or.cond.i = or i1 %i.ee, %i.ed
  br i1 %or.cond.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.eg = load ptr, ptr %0, align 8, !tbaa !38
  %i.eh = tail call ptr @PyEval_SaveThread() #12
  %i.ei = tail call i64 @fwrite(ptr noundef readonly %i.ef, i64 noundef 1, i64 noundef %i.ea, ptr noundef %i.eg)
  tail call void @PyEval_RestoreThread(ptr noundef %i.eh) #12
  %.not.i.i.i = icmp eq i64 %i.ei, %i.ea
  br i1 %.not.i.i.i, label %fwrite_checked_allow_threads.exit.i.i, label %writer_write_bytes.exit.thread

fwrite_checked_allow_threads.exit.i.i:            ; preds = %bb.r
  store i64 0, ptr %i.m, align 8, !tbaa !93
  br label %.critedge.i

writer_write_bytes.exit.thread:                   ; preds = %bb.r
  %i.ej = load ptr, ptr @PyExc_IOError, align 8, !tbaa !36
  %i.ek = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ej) #12 ; 0 uses
  br label %.thread

.critedge.i:                                      ; preds = %fwrite_checked_allow_threads.exit.i.i, %bb.q
  %i.el = phi i64 [ 0, %fwrite_checked_allow_threads.exit.i.i ], [ %i.ea, %bb.q ] ; 2 uses
  br i1 %i.dv, label %bb.s, label %bb.q

bb.s:                                             ; preds = %.critedge.i
  %i.em = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.ah, align 8, !tbaa !94
  %i.eo = load i32, ptr %i.cg, align 8, !tbaa !99
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.cg, align 8, !tbaa !99
  %i.eq = add nuw i64 %.02558, 1                  ; 2 uses
  %i.er = load i64, ptr %i.f, align 8, !tbaa !87  ; 2 uses
  %i.es = icmp ult i64 %i.eq, %i.er
  br i1 %i.es, label %bb.k, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.s, %writer_write_varint_u32.exit
  %i.et = phi i64 [ 0, %writer_write_varint_u32.exit ], [ %i.er, %bb.s ] ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.ev = load <2 x i64>, ptr %i.eu, align 8, !tbaa !75
  %i.ew = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.et, i64 1
  %i.ex = add <2 x i64> %i.ev, %i.ew
  store <2 x i64> %i.ex, ptr %i.eu, align 8, !tbaa !75
  %i.ey = getelementptr i8, ptr %1, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !84
  %i.fa = mul i64 %i.ez, %i.et
  %i.fb = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !106
  %i.fd = add i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !106
  store i64 0, ptr %i.f, align 8, !tbaa !87
  store i32 0, ptr %i.d, align 8, !tbaa !91
  br label %.thread

.thread:                                          ; preds = %writer_write_bytes.exit.thread, %writer_write_varint_u64.exit.thread, %writer_write_varint_u32.exit.thread, %write_sample_header.exit.thread, %bb.a, %bb.b, %._crit_edge
  %.1 = phi i32 [ -1, %writer_write_varint_u32.exit.thread ], [ 0, %bb.a ], [ -1, %write_sample_header.exit.thread ], [ 0, %._crit_edge ], [ 0, %bb.b ], [ -1, %writer_write_varint_u64.exit.thread ], [ -1, %writer_write_bytes.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko64(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare void @_Py_hashtable_destroy(ptr noundef) local_unnamed_addr #3

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyEval_SaveThread() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @PyList_Size(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @writer_intern_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call ptr @_Py_hashtable_get(ptr noundef %i.c, ptr noundef %1) #12 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !6
  br label %grow_parallel_arrays.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 120        ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30   ; 6 uses
  %.not32 = icmp ult i64 %i.i, %i.k
  br i1 %.not32, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.n = icmp slt i64 %i.k, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.4) #12
  br label %grow_parallel_arrays.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 %i.k, 1
  %i.q = icmp samesign ugt i64 %i.k, 1152921504606846975
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.5) #12
  br label %grow_parallel_arrays.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw i64 %i.k, 4                      ; 2 uses
  %i.t = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  %i.u = tail call ptr @PyMem_Malloc(i64 noundef %i.s) #12 ; 4 uses
  %.not.i35 = icmp eq ptr %i.u, null
  br i1 %.not.i35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @PyErr_NoMemory() #12      ; 0 uses
  br label %grow_parallel_arrays.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.w = tail call ptr @PyMem_Malloc(i64 noundef %i.s) #12 ; 3 uses
  %.not38.i = icmp eq ptr %i.w, null
  br i1 %.not38.i, label %bb.k, label %grow_parallel_arrays.exit

bb.k:                                             ; preds = %bb.j
  tail call void @PyMem_Free(ptr noundef nonnull %i.u) #12
  %i.x = tail call ptr @PyErr_NoMemory() #12      ; 0 uses
  br label %grow_parallel_arrays.exit.thread

grow_parallel_arrays.exit:                        ; preds = %bb.j
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.y, i64 %i.t, i1 false)
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.z, i64 %i.t, i1 false)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !81
  tail call void @PyMem_Free(ptr noundef %i.aa) #12
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @PyMem_Free(ptr noundef %i.ab) #12
  store ptr %i.u, ptr %i.l, align 8, !tbaa !81
  store ptr %i.w, ptr %i.m, align 8, !tbaa !81
  store i64 %i.p, ptr %i.j, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %grow_parallel_arrays.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ac = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not33 = icmp eq ptr %i.ac, null
  br i1 %.not33, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !75
  %i.ae = add i64 %i.ad, 1
  %i.af = call ptr @PyMem_Malloc(i64 noundef %i.ae) #12 ; 4 uses
  %.not34 = icmp eq ptr %i.af, null
  br i1 %.not34, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !75
  %i.ai = add i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ac, i64 %i.ai, i1 false)
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !48
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  store i32 %i.ak, ptr %2, align 4, !tbaa !6
  %i.al = load i32, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %Py_INCREF.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %1, align 8, !tbaa !39
  %.pre = load i32, ptr %2, align 4, !tbaa !6
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.o, %bb.p
  %i.ao = phi i32 [ %i.ak, %bb.o ], [ %.pre, %bb.p ]
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.aq = add i32 %i.ao, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = call i32 @_Py_hashtable_set(ptr noundef %i.ap, ptr noundef nonnull %1, ptr noundef %i.as) #12
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.t

bb.q:                                             ; preds = %Py_INCREF.exit
  %i.av = load i32, ptr %1, align 8, !tbaa !39    ; 2 uses
  %.not.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %1, align 8, !tbaa !39
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %1) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.r, %bb.s
  call void @PyMem_Free(ptr noundef nonnull %i.af) #12
  %i.ay = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %Py_INCREF.exit
  %i.az = getelementptr i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %i.bb
  store ptr %i.af, ptr %i.bc, align 8, !tbaa !49
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !75
  %i.be = getelementptr i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.bb
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !75
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !48
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.h, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %Py_DECREF.exit, %bb.t, %bb.l
  %.1 = phi i32 [ -1, %bb.l ], [ -1, %Py_DECREF.exit ], [ 0, %bb.t ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %grow_parallel_arrays.exit.thread

grow_parallel_arrays.exit.thread:                 ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.u, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %.1, %bb.u ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ]
  ret i32 %.2
}

declare ptr @_Py_hashtable_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_hashtable_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 8}
!11 = !{!"", !12, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !7, i64 40, !16, i64 48, !15, i64 72, !15, i64 80, !7, i64 88, !17, i64 96, !18, i64 104, !20, i64 112, !15, i64 120, !15, i64 128, !17, i64 136, !13, i64 144, !15, i64 152, !15, i64 160, !13, i64 168, !15, i64 176, !15, i64 184, !21, i64 192}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"", !13, i64 0, !14, i64 8, !15, i64 16}
!17 = !{!"p1 _ZTS15_Py_hashtable_t", !13, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !13, i64 0}
!20 = !{!"p1 long", !13, i64 0}
!21 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!22 = !{!11, !15, i64 72}
!23 = !{!11, !15, i64 80}
!24 = !{!11, !7, i64 40}
!25 = !{!11, !14, i64 16}
!26 = !{!11, !15, i64 32}
!27 = !{!11, !17, i64 96}
!28 = !{!11, !18, i64 104}
!29 = !{!11, !20, i64 112}
!30 = !{!11, !15, i64 128}
!31 = !{!11, !17, i64 136}
!32 = !{!11, !13, i64 144}
!33 = !{!11, !15, i64 160}
!34 = !{!11, !13, i64 168}
!35 = !{!11, !15, i64 184}
end_hunk_1
