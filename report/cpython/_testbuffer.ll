Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_testbuffer?download=true
inline.NumInlined: 175
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ptr_from_index:bb.a
  %i.q = load ptr, ptr %.023, align 8, !tbaa !58
  %i.r = getelementptr i8, ptr %i.q, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.025 = phi ptr [ null, %bb.b ], [ %i.r, %bb.e ], [ %.023, %bb.d ], [ %.023, %bb.c ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_flags(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 92
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = or i32 %i.f, 8
  store i32 %i.g, ptr %i.e, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50
  %i.l = or i32 %i.k, 16
  store i32 %i.l, ptr %i.j, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 67) #15
  %.not8 = icmp eq i32 %i.m, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50
  %i.p = or i32 %i.o, 256
  store i32 %i.p, ptr %i.n, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 70) #15
  %.not9 = icmp eq i32 %i.q, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = or i32 %i.s, 4
  store i32 %i.t, ptr %i.r, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_subscript(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = getelementptr i8, ptr %i.h, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val63 = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %.val63, i64 168
  %.val65 = load i64, ptr %i.n, align 8, !tbaa !29
  %i.o = and i64 %.val65, 67108864
  %.not56 = icmp eq i64 %i.o, 0
  br i1 %.not56, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val67 = load i64, ptr %i.p, align 8, !tbaa !33
  %i.q = icmp eq i64 %.val67, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.s = getelementptr i8, ptr %i.h, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr i8, ptr %i.h, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41
  %i.w = tail call fastcc ptr @unpack_single(ptr noundef %i.r, ptr noundef %i.t, i64 noundef %i.v)
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.x = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %0, align 8, !tbaa !19
  br label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull @.str.28) #15
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.a
  %i.ac = tail call i32 @PyIndex_Check(ptr noundef %1) #15
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #15 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.k, label %.split

.split:                                           ; preds = %bb.j
  %i.af = tail call ptr @ndarray_item(ptr noundef nonnull %0, i64 noundef %i.ad)
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @PyErr_Occurred() #15
  %.not55 = icmp eq ptr %i.ag, null
  br i1 %.not55, label %.split49, label %_Py_NewRef.exit

.split49:                                         ; preds = %bb.k
  %i.ah = tail call ptr @ndarray_item(ptr noundef nonnull %0, i64 noundef -1)
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.i
  %i.ai = tail call ptr @_PyObject_New(ptr noundef nonnull @NDArray_Type) #15, !inline_history !59 ; 35 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr i8, ptr %i.ai, i64 160    ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr i8, ptr %i.ai, i64 80
  %i.an = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef %i.am, i32 noundef 284) #15
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i59, label %bb.o, label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !19
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

bb.q:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  store ptr %i.as, ptr %i.al, align 8, !tbaa !46
  %i.at = getelementptr i8, ptr %i.ai, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.au = getelementptr i8, ptr %i.ai, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 -1, i64 16, i1 false)
  store ptr null, ptr %i.au, align 8, !tbaa !55
  %i.av = getelementptr i8, ptr %i.ai, i64 112
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !53
  %.not.i70 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i70, i32 2, i32 0
  %i.ay = getelementptr i8, ptr %i.ai, i64 64
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !50
  %i.az = getelementptr i8, ptr %i.ai, i64 72
  store i64 0, ptr %i.az, align 8, !tbaa !56
  %i.ba = getelementptr i8, ptr %i.ai, i64 80     ; 6 uses
  %i.bb = getelementptr i8, ptr %i.ai, i64 116    ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = tail call ptr @PyMem_Malloc(i64 noundef %i.be) #15 ; 14 uses
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = tail call ptr @PyMem_Malloc(i64 noundef %i.bi) #15 ; 13 uses
  %i.bk = icmp eq ptr %i.bf, null                 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, null                 ; 2 uses
  %or.cond.i = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %i.ai, i64 144    ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %.not.i71 = icmp eq ptr %i.bn, null
  %i.bo = load i32, ptr %i.bb, align 4, !tbaa !32 ; 4 uses
  br i1 %.not.i71, label %.thread52.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3
  %i.br = tail call ptr @PyMem_Malloc(i64 noundef %i.bq) #15 ; 10 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %bb.s
  %i.bt = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.bb, align 4, !tbaa !32 ; 3 uses
  %i.bv = zext i32 %i.bu to i64                   ; 5 uses
  %i.bw = icmp sgt i32 %i.bu, 0
  br i1 %i.bw, label %.lr.ph.split.i, label %.loopexit

.thread52.i:                                      ; preds = %bb.r
  %i.bx = zext i32 %i.bo to i64                   ; 5 uses
  %i.by = icmp sgt i32 %i.bo, 0
  br i1 %i.by, label %.lr.ph.split.us.preheader.i, label %.loopexit

.lr.ph.split.us.preheader.i:                      ; preds = %.thread52.i
  %i.bz = getelementptr i8, ptr %i.ai, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !38 ; 5 uses
  %i.cb = getelementptr i8, ptr %i.ai, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 5 uses
  %min.iters.check174 = icmp ult i32 %i.bo, 32
  br i1 %min.iters.check174, label %.lr.ph.split.us.i.preheader, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.split.us.preheader.i
  %i.cd = ptrtoaddr ptr %i.bj to i64              ; 3 uses
  %i.ce = ptrtoaddr ptr %i.bf to i64              ; 3 uses
  %i.cf = sub i64 %i.ce, %i.cd
  %diff.check164 = icmp ugt i64 %i.cf, -32
  %2 = ptrtoaddr ptr %i.ca to i64                 ; 2 uses
  %i.cg = sub i64 %2, %i.ce
  %diff.check165.a = icmp ugt i64 %i.cg, -32
  %conflict.rdx166.a = or i1 %diff.check164, %diff.check165.a
  %3 = ptrtoaddr ptr %i.cc to i64                 ; 2 uses
  %i.ch = sub i64 %i.ce, %3
  %diff.check167.a = icmp ugt i64 %i.ch, -32
  %conflict.rdx168.a = or i1 %conflict.rdx166.a, %diff.check167.a
  %i.ci = sub i64 %2, %i.cd
  %diff.check169.a = icmp ugt i64 %i.ci, -32
  %conflict.rdx170.a = or i1 %conflict.rdx168.a, %diff.check169.a
  %i.cj = sub i64 %3, %i.cd
  %diff.check171.a = icmp ugt i64 %i.cj, -32
  %conflict.rdx172.a = or i1 %conflict.rdx170.a, %diff.check171.a
  br i1 %conflict.rdx172.a, label %.lr.ph.split.us.i.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck163
  %n.vec176 = and i64 %i.bx, 2147483644           ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 5 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ca, i64 %index178 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %wide.load179.a = load <2 x i64>, ptr %i.ck, align 8, !tbaa !21
  %wide.load180.a = load <2 x i64>, ptr %i.cl, align 8, !tbaa !21
  %i.cm = getelementptr [8 x i8], ptr %i.bf, i64 %index178 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store <2 x i64> %wide.load179.a, ptr %i.cm, align 8, !tbaa !21
  store <2 x i64> %wide.load180.a, ptr %i.cn, align 8, !tbaa !21
  %i.co = getelementptr [8 x i8], ptr %i.cc, i64 %index178 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %wide.load181.a = load <2 x i64>, ptr %i.co, align 8, !tbaa !21
  %wide.load182.a = load <2 x i64>, ptr %i.cp, align 8, !tbaa !21
  %i.cq = getelementptr [8 x i8], ptr %i.bj, i64 %index178 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store <2 x i64> %wide.load181.a, ptr %i.cq, align 8, !tbaa !21
  store <2 x i64> %wide.load182.a, ptr %i.cr, align 8, !tbaa !21
  %index.next183 = add nuw i64 %index178, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.cs, label %middle.block184, label %vector.body177, !llvm.loop !77

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %n.vec176, %i.bx
  br i1 %cmp.n185, label %.loopexit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %vector.memcheck163, %.lr.ph.split.us.preheader.i, %middle.block184
  %.047.us.i.ph = phi i64 [ 0, %vector.memcheck163 ], [ 0, %.lr.ph.split.us.preheader.i ], [ %n.vec176, %middle.block184 ] ; 7 uses
  %xtraiter215 = and i64 %i.bx, 1
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.ct = getelementptr [8 x i8], ptr %i.ca, i64 %.047.us.i.ph
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !21
  %i.cv = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i.ph
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !21
  %i.cw = getelementptr [8 x i8], ptr %i.cc, i64 %.047.us.i.ph
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr [8 x i8], ptr %i.bj, i64 %.047.us.i.ph
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !21
  %i.cz = or disjoint i64 %.047.us.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.047.us.i.unr = phi i64 [ %.047.us.i.ph, %.lr.ph.split.us.i.preheader ], [ %i.cz, %.lr.ph.split.us.i.prol ]
  %i.da = add nsw i64 %i.bx, -1
  %i.db = icmp eq i64 %.047.us.i.ph, %i.da
  br i1 %i.db, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.047.us.i = phi i64 [ %i.dp, %.lr.ph.split.us.i ], [ %.047.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr [8 x i8], ptr %i.ca, i64 %.047.us.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.de = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !21
  %i.df = getelementptr [8 x i8], ptr %i.cc, i64 %.047.us.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !21
  %i.dh = getelementptr [8 x i8], ptr %i.bj, i64 %.047.us.i
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !21
  %i.di = add nuw nsw i64 %.047.us.i, 1           ; 4 uses
  %i.dj = getelementptr [8 x i8], ptr %i.ca, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !21
  %i.dl = getelementptr [8 x i8], ptr %i.bf, i64 %i.di
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !21
  %i.dm = getelementptr [8 x i8], ptr %i.cc, i64 %i.di
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !21
  %i.do = getelementptr [8 x i8], ptr %i.bj, i64 %i.di
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !21
  %i.dp = add nuw nsw i64 %.047.us.i, 2           ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.dp, %i.bx
  br i1 %exitcond49.not.i.1, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !78

.lr.ph.split.i:                                   ; preds = %bb.t
  %i.dq = getelementptr i8, ptr %i.ai, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 5 uses
  %i.ds = getelementptr i8, ptr %i.ai, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47 ; 5 uses
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bu, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i
  %i.dv = ptrtoaddr ptr %i.bj to i64              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.bf to i64              ; 5 uses
  %4 = sub i64 %i.dw, %i.dv
  %diff.check = icmp ugt i64 %4, -32
  %5 = ptrtoaddr ptr %i.br to i64                 ; 5 uses
  %i.dx = sub i64 %i.dw, %5
  %diff.check137 = icmp ugt i64 %i.dx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check137
  %6 = ptrtoaddr ptr %i.dr to i64                 ; 3 uses
  %i.dy = sub i64 %6, %i.dw
  %diff.check138 = icmp ugt i64 %i.dy, -32
  %conflict.rdx139 = or i1 %conflict.rdx, %diff.check138
  %7 = ptrtoaddr ptr %i.dt to i64                 ; 3 uses
  %i.dz = sub i64 %i.dw, %7
  %diff.check140 = icmp ugt i64 %i.dz, -32
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %8 = ptrtoaddr ptr %i.du to i64                 ; 3 uses
  %i.ea = sub i64 %i.dw, %8
  %diff.check142 = icmp ugt i64 %i.ea, -32
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  %i.eb = sub i64 %i.dv, %5
  %diff.check144 = icmp ugt i64 %i.eb, -32
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.ec = sub i64 %6, %i.dv
  %diff.check146 = icmp ugt i64 %i.ec, -32
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.ed = sub i64 %7, %i.dv
  %diff.check148 = icmp ugt i64 %i.ed, -32
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  %i.ee = sub i64 %i.dv, %8
  %diff.check150 = icmp ugt i64 %i.ee, -32
  %conflict.rdx151 = or i1 %conflict.rdx149, %diff.check150
  %i.ef = sub i64 %6, %5
  %diff.check152 = icmp ugt i64 %i.ef, -32
  %conflict.rdx153 = or i1 %conflict.rdx151, %diff.check152
  %i.eg = sub i64 %7, %5
  %diff.check154 = icmp ugt i64 %i.eg, -32
  %conflict.rdx155 = or i1 %conflict.rdx153, %diff.check154
  %i.eh = sub i64 %8, %5
  %diff.check156 = icmp ugt i64 %i.eh, -32
  %conflict.rdx157 = or i1 %conflict.rdx155, %diff.check156
  br i1 %conflict.rdx157, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ei = getelementptr [8 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %wide.load = load <2 x i64>, ptr %i.ei, align 8, !tbaa !21
  %wide.load158 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !21
  %i.ek = getelementptr [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  store <2 x i64> %wide.load, ptr %i.ek, align 8, !tbaa !21
  store <2 x i64> %wide.load158, ptr %i.el, align 8, !tbaa !21
  %i.em = getelementptr [8 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %wide.load159 = load <2 x i64>, ptr %i.em, align 8, !tbaa !21
  %wide.load160 = load <2 x i64>, ptr %i.en, align 8, !tbaa !21
  %i.eo = getelementptr [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store <2 x i64> %wide.load159, ptr %i.eo, align 8, !tbaa !21
  store <2 x i64> %wide.load160, ptr %i.ep, align 8, !tbaa !21
  %i.eq = getelementptr [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !21
  %wide.load162 = load <2 x i64>, ptr %i.er, align 8, !tbaa !21
  %i.es = getelementptr [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16
  store <2 x i64> %wide.load161, ptr %i.es, align 8, !tbaa !21
  store <2 x i64> %wide.load162, ptr %i.et, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.i, %middle.block
  %.047.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ev = getelementptr [8 x i8], ptr %i.dr, i64 %.047.i.ph
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.ex = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i.ph
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !21
  %i.ey = getelementptr [8 x i8], ptr %i.dt, i64 %.047.i.ph
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fa = getelementptr [8 x i8], ptr %i.bj, i64 %.047.i.ph
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !21
  %i.fb = getelementptr [8 x i8], ptr %i.du, i64 %.047.i.ph
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !21
  %i.fd = getelementptr [8 x i8], ptr %i.br, i64 %.047.i.ph
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !21
  %i.fe = or disjoint i64 %.047.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.047.i.unr = phi i64 [ %.047.i.ph, %scalar.ph.preheader ], [ %i.fe, %scalar.ph.prol ]
  %i.ff = add nsw i64 %i.bv, -1
  %i.fg = icmp eq i64 %.047.i.ph, %i.ff
  br i1 %i.fg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.047.i = phi i64 [ %i.ga, %scalar.ph ], [ %.047.i.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.fh = getelementptr [8 x i8], ptr %i.dr, i64 %.047.i
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !21
  %i.fj = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !21
  %i.fk = getelementptr [8 x i8], ptr %i.dt, i64 %.047.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !21
  %i.fm = getelementptr [8 x i8], ptr %i.bj, i64 %.047.i
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !21
  %i.fn = getelementptr [8 x i8], ptr %i.du, i64 %.047.i
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !21
  %i.fp = getelementptr [8 x i8], ptr %i.br, i64 %.047.i
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !21
  %i.fq = add nuw nsw i64 %.047.i, 1              ; 6 uses
  %i.fr = getelementptr [8 x i8], ptr %i.dr, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !21
  %i.ft = getelementptr [8 x i8], ptr %i.bf, i64 %i.fq
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !21
  %i.fu = getelementptr [8 x i8], ptr %i.dt, i64 %i.fq
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !21
  %i.fw = getelementptr [8 x i8], ptr %i.bj, i64 %i.fq
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !21
  %i.fx = getelementptr [8 x i8], ptr %i.du, i64 %i.fq
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !21
  %i.fz = getelementptr [8 x i8], ptr %i.br, i64 %i.fq
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !21
  %i.ga = add nuw nsw i64 %.047.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ga, %i.bv
  br i1 %exitcond.not.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !80

bb.u:                                             ; preds = %bb.q
  %i.gb = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br i1 %i.bk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.bf) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.bl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @PyMem_Free(ptr noundef nonnull %i.bj) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gc = load i32, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.gc, -1
  br i1 %.not.i57, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %i.ai, align 8, !tbaa !19
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.aa, label %_Py_NewRef.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %middle.block184, %.thread52.i, %bb.t
  %.03655.i = phi ptr [ null, %.thread52.i ], [ null, %middle.block184 ], [ %i.br, %bb.t ], [ %i.br, %middle.block ], [ null, %.lr.ph.split.us.i.prol.loopexit ], [ null, %.lr.ph.split.us.i ], [ %i.br, %scalar.ph ], [ %i.br, %scalar.ph.prol.loopexit ]
  %i.gf = getelementptr i8, ptr %i.ai, i64 128    ; 5 uses
  store ptr %i.bf, ptr %i.gf, align 8, !tbaa !38
  %i.gg = getelementptr i8, ptr %i.ai, i64 136    ; 4 uses
  store ptr %i.bj, ptr %i.gg, align 8, !tbaa !47
  store ptr %.03655.i, ptr %i.bm, align 8, !tbaa !48
  %i.gh = getelementptr i8, ptr %i.ai, i64 64     ; 10 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !50
  %i.gj = or i32 %i.gi, 512
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !50
  %i.gk = getelementptr i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.gk, align 8, !tbaa !16 ; 2 uses
  %.not90 = icmp eq ptr %.val69, @PySlice_Type
  br i1 %.not90, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.gl = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %init_slice.exit.thread, label %init_slice.exit

init_slice.exit.thread:                           ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.as

init_slice.exit:                                  ; preds = %bb.ab
  %i.gn = load ptr, ptr %i.gf, align 8, !tbaa !38
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !21
  %i.gp = load i64, ptr %i.f, align 8, !tbaa !21
  %i.gq = call i64 @PySlice_AdjustIndices(i64 noundef %i.go, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %i.gp) #15
  %i.gr = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.gs = load ptr, ptr %i.gg, align 8, !tbaa !47 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !21
  %i.gu = load i64, ptr %i.d, align 8, !tbaa !21
  %i.gv = mul i64 %i.gu, %i.gt
  %i.gw = getelementptr i8, ptr %i.gr, i64 %i.gv
  store ptr %i.gw, ptr %i.ba, align 8, !tbaa !49
  %i.gx = load ptr, ptr %i.gf, align 8, !tbaa !38 ; 2 uses
  store i64 %i.gq, ptr %i.gx, align 8, !tbaa !21
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !21
  %i.gz = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ha = mul i64 %i.gz, %i.gy
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread

bb.ac:                                            ; preds = %.loopexit
  %i.hb = getelementptr i8, ptr %.val69, i64 168
  %.val64 = load i64, ptr %i.hb, align 8, !tbaa !29
  %i.hc = and i64 %.val64, 67108864
  %.not53 = icmp eq i64 %i.hc, 0
  br i1 %.not53, label %.thread87, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hd = getelementptr i8, ptr %1, i64 16
  %.val66 = load i64, ptr %i.hd, align 8, !tbaa !33 ; 2 uses
  %i.he = icmp sgt i64 %.val66, 0
  br i1 %i.he, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ad
  %i.hf = getelementptr i8, ptr %1, i64 32
  br label %bb.ae
end_hunk_0
begin_hunk_1_@ndarray_subscript:bb.a

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.l, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.n, %bb.g, %bb.f, %bb.k, %.split49, %.split, %bb.h, %bb.d
  %.148 = phi ptr [ %i.w, %bb.d ], [ %i.af, %.split ], [ null, %bb.h ], [ null, %bb.au ], [ %i.ah, %.split49 ], [ %0, %bb.g ], [ null, %bb.p ], [ %i.ai, %bb.ar ], [ null, %bb.aa ], [ null, %bb.k ], [ %0, %bb.f ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.y ], [ null, %bb.z ], [ %i.ai, %bb.aq ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.l ]
  ret ptr %.148
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @ndarray_ass_subscript(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 12 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.d = getelementptr i8, ptr %i.b, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.31) #15
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.32) #15
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  switch i32 %i.j, label %bb.r [
    i32 0, label %bb.f
    i32 1, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %.val, i64 168
  %.val43 = load i64, ptr %i.m, align 8, !tbaa !29
  %i.n = and i64 %.val43, 67108864
  %.not42 = icmp eq i64 %i.n, 0
  br i1 %.not42, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val44 = load i64, ptr %i.o, align 8, !tbaa !33
  %i.p = icmp eq i64 %.val44, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.r = getelementptr i8, ptr %i.b, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr i8, ptr %i.b, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = tail call fastcc i32 @pack_single(ptr noundef %i.q, ptr noundef %2, ptr noundef %i.s, i64 noundef %i.u)
  br label %bb.w

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.28) #15
  br label %bb.w

bb.k:                                             ; preds = %bb.e
  %i.x = tail call i32 @PyIndex_Check(ptr noundef %1) #15
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #15 ; 3 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.p, label %.split

.split:                                           ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %i.b, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ab, null
  %i.ac = getelementptr i8, ptr %i.b, i64 72
  %.0.in.i = select i1 %.not.i45, ptr %i.ac, ptr %i.ab
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !21 ; 2 uses
  %i.ad = icmp slt i64 %i.y, 0
  %i.ae = select i1 %i.ad, i64 %.0.i, i64 0
  %.024.i = add i64 %i.ae, %i.y                   ; 3 uses
  %i.af = icmp sgt i64 %.024.i, -1
  %.not31.i = icmp slt i64 %.024.i, %.0.i
  %or.cond.i = select i1 %i.af, i1 %.not31.i, i1 false
  br i1 %or.cond.i, label %bb.m, label %ptr_from_index.exit.thread

ptr_from_index.exit.thread:                       ; preds = %.split
  %i.ag = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.29) #15
  br label %bb.w

bb.m:                                             ; preds = %.split
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.ai = getelementptr i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr i8, ptr %i.b, i64 80
  %.pn32.in.i = select i1 %i.ak, ptr %i.al, ptr %i.aj
  %.pn32.i = load i64, ptr %.pn32.in.i, align 8, !tbaa !21
  %.pn.i = mul i64 %.pn32.i, %.024.i
  %.023.i = getelementptr i8, ptr %i.ah, i64 %.pn.i ; 3 uses
  %i.am = getelementptr i8, ptr %i.b, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not33.i = icmp eq ptr %i.an, null
  br i1 %.not33.i, label %ptr_from_index.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %ptr_from_index.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %.023.i, align 8, !tbaa !58
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  br label %ptr_from_index.exit

bb.p:                                             ; preds = %bb.l
  %i.as = tail call ptr @PyErr_Occurred() #15
  %.not41 = icmp eq ptr %i.as, null
  br i1 %.not41, label %.split33, label %bb.w

.split33:                                         ; preds = %bb.p
  %i.at = tail call fastcc ptr @ptr_from_index(ptr noundef %i.c, i64 noundef -1)
  br label %ptr_from_index.exit

ptr_from_index.exit:                              ; preds = %bb.o, %bb.n, %bb.m, %.split33
  %phi.call = phi ptr [ %i.at, %.split33 ], [ %.023.i, %bb.m ], [ %i.ar, %bb.o ], [ %.023.i, %bb.n ] ; 2 uses
  %i.au = icmp eq ptr %phi.call, null
  br i1 %i.au, label %bb.w, label %bb.q

bb.q:                                             ; preds = %ptr_from_index.exit
  %i.av = getelementptr i8, ptr %i.b, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr i8, ptr %i.b, i64 80
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41
  %i.az = tail call fastcc i32 @pack_single(ptr noundef nonnull %phi.call, ptr noundef %2, ptr noundef %i.aw, i64 noundef %i.ay)
  br label %bb.w

bb.r:                                             ; preds = %bb.e, %bb.k
  %i.ba = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 284) #15
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call ptr @ndarray_subscript(ptr noundef nonnull %0, ptr noundef %1) ; 5 uses
  %.not40 = icmp eq ptr %i.bc, null
  br i1 %.not40, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr i8, ptr %i.bc, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46
  %i.bf = getelementptr i8, ptr %i.be, i64 56
  %i.bg = call fastcc i32 @copy_buffer(ptr noundef %i.bf, ptr noundef nonnull %3) ; 3 uses
  %i.bh = load i32, ptr %i.bc, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bc, align 8, !tbaa !19
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.v, label %Py_DECREF.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.0 = phi i32 [ -1, %bb.s ], [ %i.bg, %bb.t ], [ %i.bg, %bb.u ], [ %i.bg, %bb.v ]
  call void @PyBuffer_Release(ptr noundef nonnull %3) #15
  br label %bb.w

bb.w:                                             ; preds = %ptr_from_index.exit.thread, %bb.r, %ptr_from_index.exit, %bb.p, %Py_DECREF.exit, %bb.q, %bb.j, %bb.i, %bb.d, %bb.b
  %.032 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.v, %bb.i ], [ -1, %bb.j ], [ %.0, %Py_DECREF.exit ], [ -1, %bb.p ], [ %i.az, %bb.q ], [ -1, %ptr_from_index.exit ], [ -1, %bb.r ], [ -1, %ptr_from_index.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.032
}

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @pack_single(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.a, ptr @.str.16, ptr %2
  %i.b = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %spec.store.select) #15 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_XDECREF.exit107, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @Struct, align 8, !tbaa !18
  %i.e = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.d, ptr noundef nonnull %i.b, ptr noundef null) #15 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit104.thread174, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %.val88 = load i64, ptr %i.g, align 8, !tbaa !65 ; 20 uses
  %i.h = tail call ptr @PyMemoryView_FromMemory(ptr noundef %0, i64 noundef %3, i32 noundef 512) #15 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %Py_XDECREF.exit101.thread166, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyLong_FromLong(i64 noundef 0) #15 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_XDECREF.exit98.thread154, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.33) #15 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_XDECREF.exit95.thread138, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %.val88, 2                       ; 3 uses
  %i.o = tail call ptr @PyTuple_New(i64 noundef %i.n) #15 ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_XDECREF.exit.thread118, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.o, i64 32       ; 24 uses
  store ptr %i.h, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr i8, ptr %i.o, i64 40
  store ptr %i.j, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val82 = load ptr, ptr %i.s, align 8, !tbaa !16 ; 3 uses
  %i.t = getelementptr i8, ptr %.val82, i64 168
  %.val87 = load i64, ptr %i.t, align 8, !tbaa !29 ; 2 uses
  %i.u = and i64 %.val87, 150994944
  %or.cond177 = icmp eq i64 %i.u, 0
  br i1 %or.cond177, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i90 = icmp eq ptr %.val82, @PyFloat_Type
  br i1 %.not.i90, label %PyObject_TypeCheck.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @PyType_IsSubtype(ptr noundef %.val82, ptr noundef nonnull @PyFloat_Type) #15
  %i.w = icmp ne i32 %i.v, 0
  br label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.h, %bb.i
  %i.x = phi i1 [ true, %bb.h ], [ %i.w, %bb.i ]
  %i.y = icmp eq i64 %.val88, 1
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.k, label %PyObject_TypeCheck.exit._crit_edge

PyObject_TypeCheck.exit._crit_edge:               ; preds = %PyObject_TypeCheck.exit
  %.val80.pre = load ptr, ptr %i.s, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr i8, ptr %.val80.pre, i64 168
  %.val85.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.old1 = icmp eq i64 %.val88, 1
  br i1 %.old1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %PyObject_TypeCheck.exit, %bb.j
  %i.z = getelementptr i8, ptr %i.o, i64 48
  store ptr %1, ptr %i.z, align 8, !tbaa !18
  br label %.loopexit

bb.l:                                             ; preds = %PyObject_TypeCheck.exit._crit_edge, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %PyObject_TypeCheck.exit._crit_edge ], [ %.val87, %bb.j ]
  %i.aa = and i64 %.val85, 100663296
  %or.cond178 = icmp eq i64 %i.aa, 0
  br i1 %or.cond178, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i64 @PySequence_Size(ptr noundef nonnull %1) #15
  %i.ac = icmp eq i64 %i.ab, %.val88
  br i1 %i.ac, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp sgt i64 %.val88, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.val = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.ae = getelementptr i8, ptr %.val, i64 168
  %.val83 = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.af = and i64 %.val83, 33554432
  %.not77 = icmp eq i64 %i.af, 0
  %i.ag = getelementptr i8, ptr %1, i64 32        ; 10 uses
  br i1 %.not77, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check211 = icmp ult i64 %.val88, 10
  br i1 %min.iters.check211, label %.lr.ph.split.us.preheader222, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.split.us.preheader
  %4 = ptrtoaddr ptr %i.o to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.ah = sub i64 %4, %5
  %i.ai = add i64 %i.ah, 15
  %diff.check209 = icmp ult i64 %i.ai, 31
  br i1 %diff.check209, label %.lr.ph.split.us.preheader222, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec213 = and i64 %.val88, 9223372036854775804 ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %index215 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load216 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !18
  %wide.load217 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr [8 x i8], ptr %i.q, i64 %index215 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = getelementptr i8, ptr %i.al, i64 32
  store <2 x ptr> %wide.load216, ptr %i.am, align 8, !tbaa !18
  store <2 x ptr> %wide.load217, ptr %i.an, align 8, !tbaa !18
  %index.next218 = add nuw i64 %index215, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.ao, label %middle.block219, label %vector.body214, !llvm.loop !91

middle.block219:                                  ; preds = %vector.body214
  %cmp.n220 = icmp eq i64 %.val88, %n.vec213
  br i1 %cmp.n220, label %.loopexit, label %.lr.ph.split.us.preheader222

.lr.ph.split.us.preheader222:                     ; preds = %vector.memcheck208, %.lr.ph.split.us.preheader, %middle.block219
  %.056179.us.ph = phi i64 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec213, %middle.block219 ] ; 4 uses
  %i.ap = sub nsw i64 %.val88, %.056179.us.ph
  %xtraiter224 = and i64 %i.ap, 7                 ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader222, %.lr.ph.split.us.prol
  %.056179.us.prol = phi i64 [ %i.at, %.lr.ph.split.us.prol ], [ %.056179.us.ph, %.lr.ph.split.us.preheader222 ] ; 3 uses
  %prol.iter226 = phi i64 [ %prol.iter226.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader222 ]
  %.in.us.prol = getelementptr [8 x i8], ptr %i.ag, i64 %.056179.us.prol
  %i.aq = load ptr, ptr %.in.us.prol, align 8, !tbaa !18
  %i.ar = getelementptr [8 x i8], ptr %i.q, i64 %.056179.us.prol
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !18
  %i.at = add nuw nsw i64 %.056179.us.prol, 1     ; 2 uses
  %prol.iter226.next = add i64 %prol.iter226, 1   ; 2 uses
  %prol.iter226.cmp.not = icmp eq i64 %prol.iter226.next, %xtraiter224
  br i1 %prol.iter226.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !92

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader222
  %.056179.us.unr = phi i64 [ %.056179.us.ph, %.lr.ph.split.us.preheader222 ], [ %i.at, %.lr.ph.split.us.prol ]
  %i.au = sub nsw i64 %.056179.us.ph, %.val88
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.056179.us = phi i64 [ %i.cb, %.lr.ph.split.us ], [ %.056179.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 10 uses
  %.in.us = getelementptr [8 x i8], ptr %i.ag, i64 %.056179.us
  %i.aw = load ptr, ptr %.in.us, align 8, !tbaa !18
  %i.ax = getelementptr [8 x i8], ptr %i.q, i64 %.056179.us
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !18
  %i.az = add nuw nsw i64 %.056179.us, 1          ; 2 uses
  %.in.us.1 = getelementptr [8 x i8], ptr %i.ag, i64 %i.az
  %i.ba = load ptr, ptr %.in.us.1, align 8, !tbaa !18
  %i.bb = getelementptr [8 x i8], ptr %i.q, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !18
  %i.bd = add nuw nsw i64 %.056179.us, 2          ; 2 uses
  %.in.us.2 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bd
  %i.be = load ptr, ptr %.in.us.2, align 8, !tbaa !18
  %i.bf = getelementptr [8 x i8], ptr %i.q, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !18
  %i.bh = add nuw nsw i64 %.056179.us, 3          ; 2 uses
  %.in.us.3 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bh
  %i.bi = load ptr, ptr %.in.us.3, align 8, !tbaa !18
  %i.bj = getelementptr [8 x i8], ptr %i.q, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !18
  %i.bl = add nuw nsw i64 %.056179.us, 4          ; 2 uses
  %.in.us.4 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bl
  %i.bm = load ptr, ptr %.in.us.4, align 8, !tbaa !18
  %i.bn = getelementptr [8 x i8], ptr %i.q, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !18
  %i.bp = add nuw nsw i64 %.056179.us, 5          ; 2 uses
  %.in.us.5 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bp
  %i.bq = load ptr, ptr %.in.us.5, align 8, !tbaa !18
  %i.br = getelementptr [8 x i8], ptr %i.q, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !18
  %i.bt = add nuw nsw i64 %.056179.us, 6          ; 2 uses
  %.in.us.6 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bt
  %i.bu = load ptr, ptr %.in.us.6, align 8, !tbaa !18
  %i.bv = getelementptr [8 x i8], ptr %i.q, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !18
  %i.bx = add nuw nsw i64 %.056179.us, 7          ; 2 uses
  %.in.us.7 = getelementptr [8 x i8], ptr %i.ag, i64 %i.bx
  %i.by = load ptr, ptr %.in.us.7, align 8, !tbaa !18
  %i.bz = getelementptr [8 x i8], ptr %i.q, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !18
  %i.cb = add nuw nsw i64 %.056179.us, 8          ; 2 uses
  %exitcond183.not.7 = icmp eq i64 %i.cb, %.val88
  br i1 %exitcond183.not.7, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !93

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cc = getelementptr i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37 ; 11 uses
  %min.iters.check = icmp ult i64 %.val88, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %6 = ptrtoaddr ptr %i.o to i64
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = sub i64 %6, %i.ce
  %i.cg = add i64 %i.cf, 47
  %diff.check = icmp ult i64 %i.cg, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.val88, 9223372036854775804   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !18
  %wide.load207 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = getelementptr i8, ptr %i.cj, i64 32
  store <2 x ptr> %wide.load, ptr %i.ck, align 8, !tbaa !18
  store <2 x ptr> %wide.load207, ptr %i.cl, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val88, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.056179.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cn = sub nsw i64 %.val88, %.056179.ph
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.056179.prol = phi i64 [ %i.cr, %scalar.ph.prol ], [ %.056179.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.in.prol = getelementptr [8 x i8], ptr %i.cd, i64 %.056179.prol
  %i.co = load ptr, ptr %.in.prol, align 8, !tbaa !18
  %i.cp = getelementptr [8 x i8], ptr %i.q, i64 %.056179.prol
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !18
  %i.cr = add nuw nsw i64 %.056179.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !95

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.056179.unr = phi i64 [ %.056179.ph, %scalar.ph.preheader ], [ %i.cr, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %.056179.ph, %.val88
  %i.ct = icmp ugt i64 %i.cs, -8
  br i1 %i.ct, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.056179 = phi i64 [ %i.dz, %scalar.ph ], [ %.056179.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %.in = getelementptr [8 x i8], ptr %i.cd, i64 %.056179
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !18
  %i.cv = getelementptr [8 x i8], ptr %i.q, i64 %.056179
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !18
  %i.cx = add nuw nsw i64 %.056179, 1             ; 2 uses
  %.in.1 = getelementptr [8 x i8], ptr %i.cd, i64 %i.cx
  %i.cy = load ptr, ptr %.in.1, align 8, !tbaa !18
  %i.cz = getelementptr [8 x i8], ptr %i.q, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !18
  %i.db = add nuw nsw i64 %.056179, 2             ; 2 uses
  %.in.2 = getelementptr [8 x i8], ptr %i.cd, i64 %i.db
  %i.dc = load ptr, ptr %.in.2, align 8, !tbaa !18
  %i.dd = getelementptr [8 x i8], ptr %i.q, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !18
  %i.df = add nuw nsw i64 %.056179, 3             ; 2 uses
  %.in.3 = getelementptr [8 x i8], ptr %i.cd, i64 %i.df
  %i.dg = load ptr, ptr %.in.3, align 8, !tbaa !18
  %i.dh = getelementptr [8 x i8], ptr %i.q, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !18
  %i.dj = add nuw nsw i64 %.056179, 4             ; 2 uses
  %.in.4 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dj
  %i.dk = load ptr, ptr %.in.4, align 8, !tbaa !18
  %i.dl = getelementptr [8 x i8], ptr %i.q, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !18
  %i.dn = add nuw nsw i64 %.056179, 5             ; 2 uses
  %.in.5 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dn
  %i.do = load ptr, ptr %.in.5, align 8, !tbaa !18
  %i.dp = getelementptr [8 x i8], ptr %i.q, i64 %i.dn
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !18
  %i.dr = add nuw nsw i64 %.056179, 6             ; 2 uses
  %.in.6 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dr
  %i.ds = load ptr, ptr %.in.6, align 8, !tbaa !18
  %i.dt = getelementptr [8 x i8], ptr %i.q, i64 %i.dr
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !18
  %i.dv = add nuw nsw i64 %.056179, 7             ; 2 uses
  %.in.7 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dv
  %i.dw = load ptr, ptr %.in.7, align 8, !tbaa !18
  %i.dx = getelementptr [8 x i8], ptr %i.q, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !18
  %i.dz = add nuw nsw i64 %.056179, 8             ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.dz, %.val88
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !96

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ea = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.ea, ptr noundef nonnull @.str.34) #15
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %middle.block219, %.preheader, %bb.k
  %i.eb = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.l, ptr noundef nonnull %i.o) #15 ; 4 uses
  %.not78 = icmp eq ptr %i.eb, null
  br i1 %.not78, label %Py_DECREF.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !19
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eb) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %.loopexit, %bb.n
  %.0 = phi i32 [ -1, %bb.n ], [ -1, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ] ; 3 uses
  %i.ef = icmp sgt i64 %i.n, 0
  br i1 %i.ef, label %.lr.ph181.preheader, label %._crit_edge

.lr.ph181.preheader:                              ; preds = %Py_DECREF.exit
  %xtraiter227 = and i64 %.val88, 1
  %i.eg = icmp eq i64 %.val88, -1
  br i1 %i.eg, label %.lr.ph181.epil.preheader, label %.lr.ph181.preheader.new

.lr.ph181.preheader.new:                          ; preds = %.lr.ph181.preheader
  %unroll_iter = and i64 %i.n, 9223372036854775806
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %Py_XINCREF.exit.1, %.lr.ph181.preheader.new
  %.157180 = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %i.es, %Py_XINCREF.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %niter.next.1, %Py_XINCREF.exit.1 ]
  %i.eh = getelementptr [8 x i8], ptr %i.q, i64 %.157180
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !18 ; 3 uses
  %.not.i91 = icmp eq ptr %i.ei, null
  br i1 %.not.i91, label %Py_XINCREF.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph181
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !19 ; 2 uses
  %i.ek = icmp ugt i32 %i.ej, -1073741825
  br i1 %i.ek, label %Py_XINCREF.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = add nuw i32 %i.ej, 1
  store i32 %i.el, ptr %i.ei, align 8, !tbaa !19
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %.lr.ph181, %bb.r, %bb.s
  %i.em = getelementptr [8 x i8], ptr %i.q, i64 %.157180
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !18 ; 3 uses
  %.not.i91.1 = icmp eq ptr %i.eo, null
  br i1 %.not.i91.1, label %Py_XINCREF.exit.1, label %bb.t

bb.t:                                             ; preds = %Py_XINCREF.exit
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !19 ; 2 uses
  %i.eq = icmp ugt i32 %i.ep, -1073741825
  br i1 %i.eq, label %Py_XINCREF.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = add nuw i32 %i.ep, 1
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !19
  br label %Py_XINCREF.exit.1

Py_XINCREF.exit.1:                                ; preds = %bb.u, %bb.t, %Py_XINCREF.exit
  %i.es = add nuw nsw i64 %.157180, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph181, !llvm.loop !97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %Py_XINCREF.exit.1
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %._crit_edge, label %.lr.ph181.epil.preheader

.lr.ph181.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph181.preheader
  %.157180.epil.init = phi i64 [ 0, %.lr.ph181.preheader ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i64 %.val88 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.et = getelementptr [8 x i8], ptr %i.q, i64 %.157180.epil.init
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !18 ; 3 uses
  %.not.i91.epil = icmp eq ptr %i.eu, null
  br i1 %.not.i91.epil, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph181.epil.preheader
end_hunk_1
