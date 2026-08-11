inline.NumInlined: 175
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@init_flags:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = or i32 %i.f, 8
  store i32 %i.g, ptr %i.e, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49
  %i.l = or i32 %i.k, 16
  store i32 %i.l, ptr %i.j, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 67) #15
  %.not8 = icmp eq i32 %i.m, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49
  %i.p = or i32 %i.o, 256
  store i32 %i.p, ptr %i.n, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.a, i8 noundef signext 70) #15
  %.not9 = icmp eq i32 %i.q, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49
  %i.t = or i32 %i.s, 4
  store i32 %i.t, ptr %i.r, align 8, !tbaa !49
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = getelementptr i8, ptr %i.h, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val63 = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %.val63, i64 168
  %.val65 = load i64, ptr %i.n, align 8, !tbaa !19
  %i.o = and i64 %.val65, 67108864
  %.not56 = icmp eq i64 %i.o, 0
  br i1 %.not56, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val67 = load i64, ptr %i.p, align 8, !tbaa !30
  %i.q = icmp eq i64 %.val67, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.s = getelementptr i8, ptr %i.h, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr i8, ptr %i.h, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = tail call fastcc ptr @unpack_single(ptr noundef %i.r, ptr noundef %i.t, i64 noundef %i.v)
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.x = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %0, align 8, !tbaa !16
  br label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
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
  store ptr null, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr i8, ptr %i.ai, i64 80
  %i.an = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef %i.am, i32 noundef 284) #15
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i59, label %bb.o, label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !16
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

bb.q:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  store ptr %i.as, ptr %i.al, align 8, !tbaa !41
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
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !49
  %i.az = getelementptr i8, ptr %i.ai, i64 72
  store i64 0, ptr %i.az, align 8, !tbaa !56
  %i.ba = getelementptr i8, ptr %i.ai, i64 80     ; 6 uses
  %i.bb = getelementptr i8, ptr %i.ai, i64 116    ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = tail call ptr @PyMem_Malloc(i64 noundef %i.be) #15 ; 13 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 8 uses
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = tail call ptr @PyMem_Malloc(i64 noundef %i.bj) #15 ; 12 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 8 uses
  %i.bm = icmp eq ptr %i.bf, null                 ; 2 uses
  %i.bn = icmp eq ptr %i.bk, null                 ; 2 uses
  %or.cond.i = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %i.ai, i64 144    ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46
  %.not.i71 = icmp eq ptr %i.bp, null
  %i.bq = load i32, ptr %i.bb, align 4, !tbaa !27 ; 4 uses
  %2 = sext i32 %i.bq to i64                      ; 5 uses
  br i1 %.not.i71, label %.thread52.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = shl nsw i64 %2, 3
  %i.bs = tail call ptr @PyMem_Malloc(i64 noundef %i.br) #15 ; 10 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 5 uses
  %i.bu = icmp eq ptr %i.bs, null
  br i1 %i.bu, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %bb.s
  %i.bv = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.bx = zext i32 %i.bw to i64                   ; 5 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph.split.i, label %.loopexit

.thread52.i:                                      ; preds = %bb.r
  %i.bz = icmp sgt i32 %i.bq, 0
  br i1 %i.bz, label %.lr.ph.split.us.preheader.i, label %.loopexit

.lr.ph.split.us.preheader.i:                      ; preds = %.thread52.i
  %i.ca = getelementptr i8, ptr %i.ai, i64 128
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 5 uses
  %i.cc = getelementptr i8, ptr %i.ai, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !45 ; 5 uses
  %min.iters.check175 = icmp ult i32 %i.bq, 32
  br i1 %min.iters.check175, label %.lr.ph.split.us.i.preheader, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph.split.us.preheader.i
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 2 uses
  %i.cf = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.cg = sub i64 %i.bg, %i.bl
  %diff.check165 = icmp ugt i64 %i.cg, -32
  %i.ch = sub i64 %i.cf, %i.bg
  %diff.check166 = icmp ugt i64 %i.ch, -32
  %conflict.rdx167 = or i1 %diff.check165, %diff.check166
  %i.ci = sub i64 %i.bg, %i.ce
  %diff.check168 = icmp ugt i64 %i.ci, -32
  %conflict.rdx169 = or i1 %conflict.rdx167, %diff.check168
  %i.cj = sub i64 %i.cf, %i.bl
  %diff.check170 = icmp ugt i64 %i.cj, -32
  %conflict.rdx171 = or i1 %conflict.rdx169, %diff.check170
  %i.ck = sub i64 %i.ce, %i.bl
  %diff.check172 = icmp ugt i64 %i.ck, -32
  %conflict.rdx173 = or i1 %conflict.rdx171, %diff.check172
  br i1 %conflict.rdx173, label %.lr.ph.split.us.i.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck164
  %n.vec177 = and i64 %2, 2147483644              ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 5 uses
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %index179 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %wide.load180 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !17
  %wide.load181 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr [8 x i8], ptr %i.bf, i64 %index179 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store <2 x i64> %wide.load180, ptr %i.cn, align 8, !tbaa !17
  store <2 x i64> %wide.load181, ptr %i.co, align 8, !tbaa !17
  %i.cp = getelementptr [8 x i8], ptr %i.cd, i64 %index179 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %wide.load182 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !17
  %wide.load183 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !17
  %i.cr = getelementptr [8 x i8], ptr %i.bk, i64 %index179 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store <2 x i64> %wide.load182, ptr %i.cr, align 8, !tbaa !17
  store <2 x i64> %wide.load183, ptr %i.cs, align 8, !tbaa !17
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ct, label %middle.block185, label %vector.body178, !llvm.loop !62

middle.block185:                                  ; preds = %vector.body178
  %cmp.n186 = icmp eq i64 %n.vec177, %2
  br i1 %cmp.n186, label %.loopexit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %vector.memcheck164, %.lr.ph.split.us.preheader.i, %middle.block185
  %.047.us.i.ph = phi i64 [ 0, %vector.memcheck164 ], [ 0, %.lr.ph.split.us.preheader.i ], [ %n.vec177, %middle.block185 ] ; 7 uses
  %3 = and i32 %i.bq, 1
  %lcmp.mod216.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.cu = getelementptr [8 x i8], ptr %i.cb, i64 %.047.us.i.ph
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !17
  %i.cw = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i.ph
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !17
  %i.cx = getelementptr [8 x i8], ptr %i.cd, i64 %.047.us.i.ph
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.cz = getelementptr [8 x i8], ptr %i.bk, i64 %.047.us.i.ph
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !17
  %i.da = or disjoint i64 %.047.us.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.047.us.i.unr = phi i64 [ %.047.us.i.ph, %.lr.ph.split.us.i.preheader ], [ %i.da, %.lr.ph.split.us.i.prol ]
  %i.db = add nsw i64 %2, -1
  %i.dc = icmp eq i64 %.047.us.i.ph, %i.db
  br i1 %i.dc, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.047.us.i = phi i64 [ %i.dq, %.lr.ph.split.us.i ], [ %.047.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr [8 x i8], ptr %i.cb, i64 %.047.us.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.df = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i
  store i64 %i.de, ptr %i.df, align 8, !tbaa !17
  %i.dg = getelementptr [8 x i8], ptr %i.cd, i64 %.047.us.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.di = getelementptr [8 x i8], ptr %i.bk, i64 %.047.us.i
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !17
  %i.dj = add nuw nsw i64 %.047.us.i, 1           ; 4 uses
  %i.dk = getelementptr [8 x i8], ptr %i.cb, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !17
  %i.dm = getelementptr [8 x i8], ptr %i.bf, i64 %i.dj
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !17
  %i.dn = getelementptr [8 x i8], ptr %i.cd, i64 %i.dj
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !17
  %i.dp = getelementptr [8 x i8], ptr %i.bk, i64 %i.dj
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !17
  %i.dq = add nuw nsw i64 %.047.us.i, 2           ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.dq, %2
  br i1 %exitcond49.not.i.1, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !65

.lr.ph.split.i:                                   ; preds = %bb.t
  %i.dr = getelementptr i8, ptr %i.ai, i64 128
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 5 uses
  %i.dt = getelementptr i8, ptr %i.ai, i64 136
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !45 ; 5 uses
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bw, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 3 uses
  %i.dx = ptrtoaddr ptr %i.du to i64              ; 3 uses
  %i.dy = ptrtoaddr ptr %i.ds to i64              ; 3 uses
  %i.dz = sub i64 %i.bg, %i.bl
  %diff.check = icmp ugt i64 %i.dz, -32
  %i.ea = sub i64 %i.bg, %i.bt
  %diff.check138 = icmp ugt i64 %i.ea, -32
  %conflict.rdx = or i1 %diff.check, %diff.check138
  %i.eb = sub i64 %i.dy, %i.bg
  %diff.check139 = icmp ugt i64 %i.eb, -32
  %conflict.rdx140 = or i1 %conflict.rdx, %diff.check139
  %i.ec = sub i64 %i.bg, %i.dx
  %diff.check141 = icmp ugt i64 %i.ec, -32
  %conflict.rdx142 = or i1 %conflict.rdx140, %diff.check141
  %i.ed = sub i64 %i.bg, %i.dw
  %diff.check143 = icmp ugt i64 %i.ed, -32
  %conflict.rdx144 = or i1 %conflict.rdx142, %diff.check143
  %i.ee = sub i64 %i.bl, %i.bt
  %diff.check145 = icmp ugt i64 %i.ee, -32
  %conflict.rdx146 = or i1 %conflict.rdx144, %diff.check145
  %i.ef = sub i64 %i.dy, %i.bl
  %diff.check147 = icmp ugt i64 %i.ef, -32
  %conflict.rdx148 = or i1 %conflict.rdx146, %diff.check147
  %i.eg = sub i64 %i.dx, %i.bl
  %diff.check149 = icmp ugt i64 %i.eg, -32
  %conflict.rdx150 = or i1 %conflict.rdx148, %diff.check149
  %i.eh = sub i64 %i.bl, %i.dw
  %diff.check151 = icmp ugt i64 %i.eh, -32
  %conflict.rdx152 = or i1 %conflict.rdx150, %diff.check151
  %i.ei = sub i64 %i.dy, %i.bt
  %diff.check153 = icmp ugt i64 %i.ei, -32
  %conflict.rdx154 = or i1 %conflict.rdx152, %diff.check153
  %i.ej = sub i64 %i.dx, %i.bt
  %diff.check155 = icmp ugt i64 %i.ej, -32
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  %i.ek = sub i64 %i.dw, %i.bt
  %diff.check157 = icmp ugt i64 %i.ek, -32
  %conflict.rdx158 = or i1 %conflict.rdx156, %diff.check157
  br i1 %conflict.rdx158, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.el = getelementptr [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %wide.load = load <2 x i64>, ptr %i.el, align 8, !tbaa !17
  %wide.load159 = load <2 x i64>, ptr %i.em, align 8, !tbaa !17
  %i.en = getelementptr [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  store <2 x i64> %wide.load, ptr %i.en, align 8, !tbaa !17
  store <2 x i64> %wide.load159, ptr %i.eo, align 8, !tbaa !17
  %i.ep = getelementptr [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %wide.load160 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !17
  %wide.load161 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !17
  %i.er = getelementptr [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  store <2 x i64> %wide.load160, ptr %i.er, align 8, !tbaa !17
  store <2 x i64> %wide.load161, ptr %i.es, align 8, !tbaa !17
  %i.et = getelementptr [8 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %wide.load162 = load <2 x i64>, ptr %i.et, align 8, !tbaa !17
  %wide.load163 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !17
  %i.ev = getelementptr [8 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  store <2 x i64> %wide.load162, ptr %i.ev, align 8, !tbaa !17
  store <2 x i64> %wide.load163, ptr %i.ew, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.i, %middle.block
  %.047.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ey = getelementptr [8 x i8], ptr %i.ds, i64 %.047.i.ph
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.fa = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i.ph
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !17
  %i.fb = getelementptr [8 x i8], ptr %i.du, i64 %.047.i.ph
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !17
  %i.fd = getelementptr [8 x i8], ptr %i.bk, i64 %.047.i.ph
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !17
  %i.fe = getelementptr [8 x i8], ptr %i.dv, i64 %.047.i.ph
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !17
  %i.fg = getelementptr [8 x i8], ptr %i.bs, i64 %.047.i.ph
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !17
  %i.fh = or disjoint i64 %.047.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.047.i.unr = phi i64 [ %.047.i.ph, %scalar.ph.preheader ], [ %i.fh, %scalar.ph.prol ]
  %i.fi = add nsw i64 %i.bx, -1
  %i.fj = icmp eq i64 %.047.i.ph, %i.fi
  br i1 %i.fj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.047.i = phi i64 [ %i.gd, %scalar.ph ], [ %.047.i.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.fk = getelementptr [8 x i8], ptr %i.ds, i64 %.047.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !17
  %i.fn = getelementptr [8 x i8], ptr %i.du, i64 %.047.i
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !17
  %i.fp = getelementptr [8 x i8], ptr %i.bk, i64 %.047.i
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !17
  %i.fq = getelementptr [8 x i8], ptr %i.dv, i64 %.047.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.fs = getelementptr [8 x i8], ptr %i.bs, i64 %.047.i
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !17
  %i.ft = add nuw nsw i64 %.047.i, 1              ; 6 uses
  %i.fu = getelementptr [8 x i8], ptr %i.ds, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fw = getelementptr [8 x i8], ptr %i.bf, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !17
  %i.fx = getelementptr [8 x i8], ptr %i.du, i64 %i.ft
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !17
  %i.fz = getelementptr [8 x i8], ptr %i.bk, i64 %i.ft
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !17
  %i.ga = getelementptr [8 x i8], ptr %i.dv, i64 %i.ft
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !17
  %i.gc = getelementptr [8 x i8], ptr %i.bs, i64 %i.ft
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !17
  %i.gd = add nuw nsw i64 %.047.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gd, %i.bx
  br i1 %exitcond.not.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !67

bb.u:                                             ; preds = %bb.q
  %i.ge = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br i1 %i.bm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.bf) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.bn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @PyMem_Free(ptr noundef nonnull %i.bk) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gf = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.gf, -1
  br i1 %.not.i57, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  %i.gg = add nsw i32 %i.gf, -1                   ; 2 uses
  store i32 %i.gg, ptr %i.ai, align 8, !tbaa !16
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.aa, label %_Py_NewRef.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %middle.block185, %.thread52.i, %bb.t
  %.03655.i = phi ptr [ null, %.thread52.i ], [ null, %middle.block185 ], [ %i.bs, %bb.t ], [ %i.bs, %middle.block ], [ null, %.lr.ph.split.us.i.prol.loopexit ], [ null, %.lr.ph.split.us.i ], [ %i.bs, %scalar.ph ], [ %i.bs, %scalar.ph.prol.loopexit ]
  %i.gi = getelementptr i8, ptr %i.ai, i64 128    ; 5 uses
  store ptr %i.bf, ptr %i.gi, align 8, !tbaa !35
  %i.gj = getelementptr i8, ptr %i.ai, i64 136    ; 4 uses
  store ptr %i.bk, ptr %i.gj, align 8, !tbaa !45
  store ptr %.03655.i, ptr %i.bo, align 8, !tbaa !46
  %i.gk = getelementptr i8, ptr %i.ai, i64 64     ; 10 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !49
  %i.gm = or i32 %i.gl, 512
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !49
  %i.gn = getelementptr i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.gn, align 8, !tbaa !10 ; 2 uses
  %.not90 = icmp eq ptr %.val69, @PySlice_Type
  br i1 %.not90, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.go = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %init_slice.exit.thread, label %init_slice.exit

init_slice.exit.thread:                           ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.as

init_slice.exit:                                  ; preds = %bb.ab
  %i.gq = load ptr, ptr %i.gi, align 8, !tbaa !35
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !17
  %i.gs = load i64, ptr %i.f, align 8, !tbaa !17
  %i.gt = call i64 @PySlice_AdjustIndices(i64 noundef %i.gr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %i.gs) #15
  %i.gu = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.gv = load ptr, ptr %i.gj, align 8, !tbaa !45 ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !17
  %i.gy = mul i64 %i.gx, %i.gw
  %i.gz = getelementptr i8, ptr %i.gu, i64 %i.gy
  store ptr %i.gz, ptr %i.ba, align 8, !tbaa !48
  %i.ha = load ptr, ptr %i.gi, align 8, !tbaa !35 ; 2 uses
  store i64 %i.gt, ptr %i.ha, align 8, !tbaa !17
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.hc = load i64, ptr %i.f, align 8, !tbaa !17
  %i.hd = mul i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread

bb.ac:                                            ; preds = %.loopexit
  %i.he = getelementptr i8, ptr %.val69, i64 168
  %.val64 = load i64, ptr %i.he, align 8, !tbaa !19
  %i.hf = and i64 %.val64, 67108864
  %.not53 = icmp eq i64 %i.hf, 0
  br i1 %.not53, label %.thread87, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = getelementptr i8, ptr %1, i64 16
  %.val66 = load i64, ptr %i.hg, align 8, !tbaa !30 ; 2 uses
  %i.hh = icmp sgt i64 %.val66, 0
  br i1 %i.hh, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ad
  %i.hi = getelementptr i8, ptr %1, i64 32
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.aj
  %.04599 = phi i64 [ 0, %.lr.ph ], [ %i.jb, %bb.aj ] ; 4 uses
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %.04599
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !14 ; 3 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val68 = load ptr, ptr %i.hl, align 8, !tbaa !10
  %.not91 = icmp eq ptr %.val68, @PySlice_Type
  br i1 %.not91, label %bb.af, label %.thread87

bb.af:                                            ; preds = %bb.ae
  %i.hm = trunc i64 %.04599 to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.hn = call i32 @PySlice_Unpack(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = load ptr, ptr %i.gi, align 8, !tbaa !35
  %sext = shl i64 %.04599, 32
  %i.hq = ashr exact i64 %sext, 32                ; 5 uses
  %i.hr = getelementptr [8 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !17
  %i.ht = load i64, ptr %i.c, align 8, !tbaa !17
  %i.hu = call i64 @PySlice_AdjustIndices(i64 noundef %i.hs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ht) #15
  %i.hv = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  %i.hx = icmp eq i32 %i.hm, 0
  %or.cond.i73 = or i1 %i.hx, %i.hw
  br i1 %or.cond.i73, label %.loopexit.i, label %bb.ah

.loopexit.i:                                      ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.hy = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.hz = load ptr, ptr %i.gj, align 8, !tbaa !45 ; 2 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hz, i64 %i.hq
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !17
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !17
  %i.id = mul i64 %i.ic, %i.ib
  %i.ie = getelementptr i8, ptr %i.hy, i64 %i.id
  store ptr %i.ie, ptr %i.ba, align 8, !tbaa !48
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.if = add i32 %i.hm, -1                       ; 2 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.ih = zext nneg i32 %i.if to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.il, %bb.ai ], [ %i.ih, %.lr.ph.preheader.i ] ; 4 uses
  %i.ii = getelementptr [8 x i8], ptr %i.hv, i64 %.035.i
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !17 ; 2 uses
  %i.ik = icmp slt i64 %i.ij, 0
  br i1 %i.ik, label %bb.ai, label %.thread.i75

bb.ai:                                            ; preds = %.lr.ph.i
  %i.il = add nsw i64 %.035.i, -1
  %i.im = icmp sgt i64 %.035.i, 0
  br i1 %i.im, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !68

.thread.i75:                                      ; preds = %.lr.ph.i
  %i.in = getelementptr [8 x i8], ptr %i.hv, i64 %.035.i
  %i.io = load ptr, ptr %i.gj, align 8, !tbaa !45 ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %i.io, i64 %i.hq
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !17
  %i.ir = load i64, ptr %i.a, align 8, !tbaa !17
  %i.is = mul i64 %i.ir, %i.iq
  %i.it = add i64 %i.is, %i.ij
  store i64 %i.it, ptr %i.in, align 8, !tbaa !17
  br label %bb.aj

bb.aj:                                            ; preds = %.thread.i75, %.loopexit.i
  %i.iu = phi ptr [ %i.io, %.thread.i75 ], [ %i.hz, %.loopexit.i ]
  %i.iv = load ptr, ptr %i.gi, align 8, !tbaa !35 ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.hq
  store i64 %i.hu, ptr %i.iw, align 8, !tbaa !17
  %i.ix = getelementptr [8 x i8], ptr %i.iu, i64 %i.hq ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !17
  %i.iz = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ja = mul i64 %i.iz, %i.iy
  store i64 %i.ja, ptr %i.ix, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.jb = add nuw nsw i64 %.04599, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.jb, %.val66
  br i1 %exitcond.not, label %.thread, label %bb.ae, !llvm.loop !69

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.as

.thread:                                          ; preds = %bb.aj, %bb.ad, %init_slice.exit
  %i.jc = phi ptr [ %i.ha, %init_slice.exit ], [ %i.bf, %bb.ad ], [ %i.iv, %bb.aj ] ; 8 uses
  %i.jd = getelementptr i8, ptr %i.ai, i64 96     ; 10 uses
  store i64 1, ptr %i.jd, align 8, !tbaa !40
  %i.je = load i32, ptr %i.bb, align 4, !tbaa !27 ; 5 uses
  %4 = sext i32 %i.je to i64                      ; 6 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph.i78.preheader, label %init_len.exit

.lr.ph.i78.preheader:                             ; preds = %.thread
  %min.iters.check191 = icmp ult i32 %i.je, 8
  br i1 %min.iters.check191, label %.lr.ph.i78.preheader203, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph.i78.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 104
  %i.jg = shl nuw nsw i64 %4, 3
  %scevgep189 = getelementptr i8, ptr %i.jc, i64 %i.jg
  %bound0 = icmp ult ptr %i.jd, %scevgep189
  %bound1 = icmp ult ptr %i.jc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader203, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck188
  %n.vec193 = and i64 %4, 2147483644              ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body194 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph192 ], [ %i.jj, %vector.body194 ]
  %vec.phi196 = phi <2 x i64> [ splat (i64 1), %vector.ph192 ], [ %i.jk, %vector.body194 ]
  %i.jh = getelementptr [8 x i8], ptr %i.jc, i64 %index195 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %wide.load197 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !17, !alias.scope !70
  %wide.load198 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !17, !alias.scope !70
  %i.jj = mul <2 x i64> %wide.load197, %vec.phi   ; 2 uses
  %i.jk = mul <2 x i64> %wide.load198, %vec.phi196 ; 2 uses
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.jl, label %middle.block200, label %vector.body194, !llvm.loop !73

middle.block200:                                  ; preds = %vector.body194
  %bin.rdx = mul <2 x i64> %i.jk, %i.jj
  %i.jm = call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.jm, ptr %i.jd, align 8, !tbaa !40, !alias.scope !74, !noalias !70
  %cmp.n201 = icmp eq i64 %n.vec193, %4
  br i1 %cmp.n201, label %init_len.exit.thread, label %.lr.ph.i78.preheader203

.lr.ph.i78.preheader203:                          ; preds = %vector.memcheck188, %.lr.ph.i78.preheader, %middle.block200
  %.ph = phi i64 [ 1, %vector.memcheck188 ], [ 1, %.lr.ph.i78.preheader ], [ %i.jm, %middle.block200 ] ; 2 uses
  %.08.i.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec193, %middle.block200 ] ; 3 uses
  %xtraiter217 = and i64 %4, 3
  %5 = and i32 %i.je, 3
  %lcmp.mod218.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod218.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol

.lr.ph.i78.prol:                                  ; preds = %.lr.ph.i78.preheader203, %.lr.ph.i78.prol
  %i.jn = phi i64 [ %i.jq, %.lr.ph.i78.prol ], [ %.ph, %.lr.ph.i78.preheader203 ]
  %.08.i.prol = phi i64 [ %i.jr, %.lr.ph.i78.prol ], [ %.08.i.ph, %.lr.ph.i78.preheader203 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i78.prol ], [ 0, %.lr.ph.i78.preheader203 ]
  %i.jo = getelementptr [8 x i8], ptr %i.jc, i64 %.08.i.prol
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !17
  %i.jq = mul i64 %i.jp, %i.jn                    ; 4 uses
  store i64 %i.jq, ptr %i.jd, align 8, !tbaa !40
  %i.jr = add nuw nsw i64 %.08.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter217
  br i1 %prol.iter.cmp.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol, !llvm.loop !76

.lr.ph.i78.prol.loopexit:                         ; preds = %.lr.ph.i78.prol, %.lr.ph.i78.preheader203
  %.lcssa204.unr = phi i64 [ poison, %.lr.ph.i78.preheader203 ], [ %i.jq, %.lr.ph.i78.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i78.preheader203 ], [ %i.jq, %.lr.ph.i78.prol ]
  %.08.i.unr = phi i64 [ %.08.i.ph, %.lr.ph.i78.preheader203 ], [ %i.jr, %.lr.ph.i78.prol ]
  %i.js = sub nsw i64 %.08.i.ph, %4
  %i.jt = icmp ugt i64 %i.js, -4
  br i1 %i.jt, label %init_len.exit.thread, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78
  %i.ju = phi i64 [ %i.kj, %.lr.ph.i78 ], [ %.unr, %.lr.ph.i78.prol.loopexit ]
  %.08.i = phi i64 [ %i.kk, %.lr.ph.i78 ], [ %.08.i.unr, %.lr.ph.i78.prol.loopexit ] ; 5 uses
  %i.jv = getelementptr [8 x i8], ptr %i.jc, i64 %.08.i
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !17
  %i.jx = mul i64 %i.jw, %i.ju                    ; 2 uses
  store i64 %i.jx, ptr %i.jd, align 8, !tbaa !40
  %i.jy = getelementptr [8 x i8], ptr %i.jc, i64 %.08.i
  %i.jz = getelementptr i8, ptr %i.jy, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !17
  %i.kb = mul i64 %i.ka, %i.jx                    ; 2 uses
  store i64 %i.kb, ptr %i.jd, align 8, !tbaa !40
  %i.kc = getelementptr [8 x i8], ptr %i.jc, i64 %.08.i
  %i.kd = getelementptr i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !17
  %i.kf = mul i64 %i.ke, %i.kb                    ; 2 uses
  store i64 %i.kf, ptr %i.jd, align 8, !tbaa !40
  %i.kg = getelementptr [8 x i8], ptr %i.jc, i64 %.08.i
  %i.kh = getelementptr i8, ptr %i.kg, i64 24
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !17
  %i.kj = mul i64 %i.ki, %i.kf                    ; 3 uses
  store i64 %i.kj, ptr %i.jd, align 8, !tbaa !40
  %i.kk = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i79.3 = icmp eq i64 %i.kk, %4
  br i1 %exitcond.not.i79.3, label %init_len.exit.thread, label %.lr.ph.i78, !llvm.loop !78

init_len.exit.thread:                             ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78, %middle.block200
  %.lcssa = phi i64 [ %i.jm, %middle.block200 ], [ %.lcssa204.unr, %.lr.ph.i78.prol.loopexit ], [ %i.kj, %.lr.ph.i78 ]
  %i.kl = getelementptr i8, ptr %i.ai, i64 104
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !39
  %i.kn = mul i64 %i.km, %.lcssa
  store i64 %i.kn, ptr %i.jd, align 8, !tbaa !40
  br label %bb.am

init_len.exit:                                    ; preds = %.thread
  %i.ko = getelementptr i8, ptr %i.ai, i64 104
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !39
  store i64 %i.kp, ptr %i.jd, align 8, !tbaa !40
  %i.kq = icmp eq i32 %i.je, 0
  br i1 %i.kq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %init_len.exit
  %i.kr = load i32, ptr %i.gk, align 8, !tbaa !49
  %i.ks = or i32 %i.kr, 8
  store i32 %i.ks, ptr %i.gk, align 8, !tbaa !49
  br label %bb.am

bb.am:                                            ; preds = %init_len.exit.thread, %bb.al, %init_len.exit
  %i.kt = load ptr, ptr %i.bo, align 8, !tbaa !61
  %.not.i80 = icmp eq ptr %i.kt, null
  br i1 %.not.i80, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ku = load i32, ptr %i.gk, align 8, !tbaa !49
  %i.kv = or i32 %i.ku, 16
  store i32 %i.kv, ptr %i.gk, align 8, !tbaa !49
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kw = call i32 @PyBuffer_IsContiguous(ptr noundef %i.ba, i8 noundef signext 67) #15
  %.not8.i = icmp eq i32 %i.kw, 0
  br i1 %.not8.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kx = load i32, ptr %i.gk, align 8, !tbaa !49
  %i.ky = or i32 %i.kx, 256
  store i32 %i.ky, ptr %i.gk, align 8, !tbaa !49
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kz = call i32 @PyBuffer_IsContiguous(ptr noundef %i.ba, i8 noundef signext 70) #15
  %.not9.i = icmp eq i32 %i.kz, 0
  br i1 %.not9.i, label %_Py_NewRef.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.la = load i32, ptr %i.gk, align 8, !tbaa !49
  %i.lb = or i32 %i.la, 4
  store i32 %i.lb, ptr %i.gk, align 8, !tbaa !49
  br label %_Py_NewRef.exit

.thread87:                                        ; preds = %bb.ae, %bb.ac
  %.2 = phi ptr [ %1, %bb.ac ], [ %i.hk, %bb.ae ]
  %i.lc = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  %i.ld = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.lc, ptr noundef nonnull @.str.30, ptr noundef nonnull %.2) #15 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ak, %init_slice.exit.thread, %.thread87
  %i.le = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.le, -1
  br i1 %.not.i, label %bb.at, label %_Py_NewRef.exit

bb.at:                                            ; preds = %bb.as
  %i.lf = add nsw i32 %i.le, -1                   ; 2 uses
  store i32 %i.lf, ptr %i.ai, align 8, !tbaa !16
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.au, label %_Py_NewRef.exit

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.l, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.n, %bb.g, %bb.f, %bb.k, %.split49, %.split, %bb.h, %bb.d
  %.1 = phi ptr [ %i.w, %bb.d ], [ %i.af, %.split ], [ null, %bb.h ], [ null, %bb.au ], [ %i.ah, %.split49 ], [ %0, %bb.g ], [ null, %bb.p ], [ %i.ai, %bb.ar ], [ null, %bb.aa ], [ null, %bb.k ], [ %0, %bb.f ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.y ], [ null, %bb.z ], [ %i.ai, %bb.aq ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @ndarray_ass_subscript(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 12 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.d = getelementptr i8, ptr %i.b, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.31) #15
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.32) #15
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  switch i32 %i.j, label %bb.r [
    i32 0, label %bb.f
    i32 1, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %.val, i64 168
  %.val43 = load i64, ptr %i.m, align 8, !tbaa !19
  %i.n = and i64 %.val43, 67108864
  %.not42 = icmp eq i64 %i.n, 0
  br i1 %.not42, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val44 = load i64, ptr %i.o, align 8, !tbaa !30
  %i.p = icmp eq i64 %.val44, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.r = getelementptr i8, ptr %i.b, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr i8, ptr %i.b, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = tail call fastcc i32 @pack_single(ptr noundef %i.q, ptr noundef %2, ptr noundef %i.s, i64 noundef %i.u)
  br label %bb.w

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.28) #15
  br label %bb.w

bb.k:                                             ; preds = %bb.e
  %i.x = tail call i32 @PyIndex_Check(ptr noundef %1) #15
  %.not39 = icmp eq i32 %i.x, 0
end_hunk_0
begin_hunk_1_@ndarray_push_base:bb.a
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %._crit_edge145.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge145.i.i.i.loopexit.unr-lcssa, %.lr.ph144.i.i.i
  %.174143.i.i.i.epil.init = phi i64 [ 2, %.lr.ph144.i.i.i ], [ %i.iq, %._crit_edge145.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod146 = trunc i64 %.val124.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.ir = getelementptr [8 x i8], ptr %i.id, i64 %.174143.i.i.i.epil.init
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !14 ; 3 uses
  %.not.i128.i.i.i.epil = icmp eq ptr %i.is, null
  br i1 %.not.i128.i.i.i.epil, label %._crit_edge145.i.i.i, label %bb.br

bb.br:                                            ; preds = %.epil.preheader
  %i.it = load i32, ptr %i.is, align 8, !tbaa !16 ; 2 uses
  %i.iu = icmp ugt i32 %i.it, -1073741825
  br i1 %i.iu, label %._crit_edge145.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iv = add nuw i32 %i.it, 1
  store i32 %i.iv, ptr %i.is, align 8, !tbaa !16
  br label %._crit_edge145.i.i.i

._crit_edge145.i.i.i:                             ; preds = %._crit_edge145.i.i.i.loopexit.unr-lcssa, %bb.bs, %bb.br, %.epil.preheader, %Py_INCREF.exit.i.i.i
  %i.iw = load i32, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %.not.i93.i.i.i = icmp sgt i32 %i.iw, -1
  br i1 %.not.i93.i.i.i, label %bb.bt, label %Py_DECREF.exit94.i.i.i

bb.bt:                                            ; preds = %._crit_edge145.i.i.i
  %i.ix = add nsw i32 %i.iw, -1                   ; 2 uses
  store i32 %i.ix, ptr %i.cj, align 8, !tbaa !16
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.bu, label %Py_DECREF.exit94.i.i.i

bb.bu:                                            ; preds = %bb.bt
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #15
  br label %Py_DECREF.exit94.i.i.i

Py_DECREF.exit94.i.i.i:                           ; preds = %bb.bu, %bb.bt, %._crit_edge145.i.i.i
  %i.iz = load i32, ptr %i.cd, align 8, !tbaa !16 ; 2 uses
  %.not.i91.i.i.i = icmp sgt i32 %i.iz, -1
  br i1 %.not.i91.i.i.i, label %bb.bv, label %Py_DECREF.exit92.i.i.i

bb.bv:                                            ; preds = %Py_DECREF.exit94.i.i.i
  %i.ja = add nsw i32 %i.iz, -1                   ; 2 uses
  store i32 %i.ja, ptr %i.cd, align 8, !tbaa !16
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bw, label %Py_DECREF.exit92.i.i.i

bb.bw:                                            ; preds = %bb.bv
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cd) #15
  br label %Py_DECREF.exit92.i.i.i

Py_DECREF.exit92.i.i.i:                           ; preds = %bb.bw, %bb.bv, %Py_DECREF.exit94.i.i.i
  %i.jc = load i32, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.jc, -1
  br i1 %.not.i.i.i.i, label %bb.bx, label %pack_from_list.exit.i.i

bb.bx:                                            ; preds = %Py_DECREF.exit92.i.i.i
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %i.bz, align 8, !tbaa !16
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %Py_DECREF.exit102.sink.split.i.i.i, label %pack_from_list.exit.i.i

Py_DECREF.exit102.sink.split.i.i.i:               ; preds = %bb.bx, %bb.av, %bb.aq
  %.075.ph.i.i.i = phi i32 [ -1, %bb.av ], [ -1, %bb.aq ], [ %.0.i.i.i, %bb.bx ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #15
  br label %pack_from_list.exit.i.i

pack_from_list.exit.i.i:                          ; preds = %Py_DECREF.exit102.sink.split.i.i.i, %bb.bx, %Py_DECREF.exit92.i.i.i, %bb.av, %Py_DECREF.exit100.i.i.i, %bb.aq, %bb.ap, %bb.an
  %.075.i.i.i = phi i32 [ %.0.i.i.i, %Py_DECREF.exit92.i.i.i ], [ -1, %bb.an ], [ %.0.i.i.i, %bb.bx ], [ -1, %bb.ap ], [ -1, %bb.aq ], [ -1, %Py_DECREF.exit100.i.i.i ], [ -1, %bb.av ], [ %.075.ph.i.i.i, %Py_DECREF.exit102.sink.split.i.i.i ]
  %i.jf = load i32, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %.not.i.i107.i = icmp sgt i32 %i.jf, -1
  br i1 %.not.i.i107.i, label %bb.by, label %Py_DECREF.exit.i.i

bb.by:                                            ; preds = %pack_from_list.exit.i.i
  %i.jg = add nsw i32 %i.jf, -1                   ; 2 uses
  store i32 %i.jg, ptr %i.bw, align 8, !tbaa !16
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bz, label %Py_DECREF.exit.i.i

bb.bz:                                            ; preds = %bb.by
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #15
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.bz, %bb.by, %pack_from_list.exit.i.i
  %i.ji = icmp slt i32 %.075.i.i.i, 0
  br i1 %i.ji, label %init_simple.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %Py_DECREF.exit.i.i
  %i.jj = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.jk = lshr i32 %i.jj, 1
  %.lobit.i108.i = and i32 %i.jk, 1
  %i.jl = xor i32 %.lobit.i108.i, 1
  store i32 %i.jl, ptr %i.br, align 8, !tbaa !53
  store i64 %i.u, ptr %i.bq, align 8, !tbaa !39
  %i.jm = tail call ptr @PyUnicode_AsASCIIString(ptr noundef %5) #15 ; 9 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %init_simple.exit.thread123.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jo = getelementptr i8, ptr %i.jm, i64 16
  %.val.i17.i.i = load i64, ptr %i.jo, align 8, !tbaa !30
  %i.jp = add i64 %.val.i17.i.i, 1
  %i.jq = tail call ptr @PyMem_Malloc(i64 noundef %i.jp) #15 ; 3 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.js = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  %i.jt = load i32, ptr %i.jm, align 8, !tbaa !16 ; 2 uses
  %.not.i12.i.i.i = icmp sgt i32 %i.jt, -1
  br i1 %.not.i12.i.i.i, label %bb.cd, label %init_simple.exit.thread123.i

bb.cd:                                            ; preds = %bb.cc
  %i.ju = add nsw i32 %i.jt, -1                   ; 2 uses
  store i32 %i.ju, ptr %i.jm, align 8, !tbaa !16
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %init_simple.exit.thread200.i, label %init_simple.exit.thread123.i

init_simple.exit.thread200.i:                     ; preds = %bb.cd
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.jm) #15
  store ptr null, ptr %i.bs, align 8, !tbaa !38
  br label %init_simple.exit.thread.i

bb.ce:                                            ; preds = %bb.cb
  %i.jw = getelementptr i8, ptr %i.jm, i64 32
  %i.jx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.jq, ptr noundef nonnull dereferenceable(1) %i.jw) #15 ; 0 uses
  %i.jy = load i32, ptr %i.jm, align 8, !tbaa !16 ; 2 uses
  %.not.i.i18.i.i = icmp sgt i32 %i.jy, -1
  br i1 %.not.i.i18.i.i, label %bb.cf, label %init_simple.exit.thread127.i

bb.cf:                                            ; preds = %bb.ce
  %i.jz = add nsw i32 %i.jy, -1                   ; 2 uses
  store i32 %i.jz, ptr %i.jm, align 8, !tbaa !16
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %init_simple.exit.i, label %init_simple.exit.thread127.i

init_simple.exit.thread123.i:                     ; preds = %bb.cd, %bb.cc, %bb.ca
  store ptr null, ptr %i.bs, align 8, !tbaa !38
  br label %init_simple.exit.thread.i

init_simple.exit.i:                               ; preds = %bb.cf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.jm) #15
  br label %init_simple.exit.thread127.i

init_simple.exit.thread127.i:                     ; preds = %init_simple.exit.i, %bb.cf, %bb.ce
  store ptr %i.jq, ptr %i.bs, align 8, !tbaa !38
  %i.kb = trunc i64 %i.e to i32
  store i32 %i.kb, ptr %i.bt, align 4, !tbaa !27
  br i1 %i.ab, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %init_simple.exit.thread127.i
  %i.kc = load i32, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.kd = and i32 %i.kc, 16
  %.not40.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not40.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ke = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.ke, ptr noundef nonnull @.str.75) #15
  br label %init_simple.exit.thread.i

bb.ci:                                            ; preds = %bb.cg
  %i.kf = or i32 %i.kc, 268
  store i32 %i.kf, ptr %i.bl, align 8, !tbaa !49
  br label %init_structure.exit.i

bb.cj:                                            ; preds = %init_simple.exit.thread127.i
  %i.kg = tail call fastcc ptr @seq_as_ssize_array(ptr noundef readonly %2, i64 noundef range(i64 -9223372036854775808, 129) %i.e, i32 noundef 1) ; 2 uses
  store ptr %i.kg, ptr %i.bu, align 8, !tbaa !35
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %init_simple.exit.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not.i110.i = icmp eq ptr %.050.i, null
  br i1 %.not.i110.i, label %bb.cl, label %strides_from_shape.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ki = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.kj = load i32, ptr %i.bt, align 4, !tbaa !27
  %i.kk = sext i32 %i.kj to i64
  %i.kl = shl nsw i64 %i.kk, 3
  %i.km = tail call ptr @PyMem_Malloc(i64 noundef %i.kl) #15 ; 16 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %strides_from_shape.exit.i.thread132.i, label %bb.cm

strides_from_shape.exit.i.thread132.i:            ; preds = %bb.cl
  %i.ko = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  %i.kp = getelementptr i8, ptr %i.az, i64 112
  store ptr null, ptr %i.kp, align 8, !tbaa !45
  br label %init_simple.exit.thread.i

bb.cm:                                            ; preds = %bb.cl
  %i.kq = and i32 %i.ki, 4
  %.not.i.i113.i = icmp eq i32 %i.kq, 0
  %i.kr = load i64, ptr %i.bq, align 8, !tbaa !39 ; 4 uses
  br i1 %.not.i.i113.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i64 %i.kr, ptr %i.km, align 8, !tbaa !17
  %i.ks = load i32, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, 1
  br i1 %i.kt, label %.lr.ph.i.i.i, label %strides_from_shape.exit.i.thread.i

.lr.ph.i.i.i:                                     ; preds = %bb.cn
  %7 = sext i32 %i.ks to i64                      ; 2 uses
  %i.ku = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 5 uses
  %i.kv = add nsw i64 %7, -1                      ; 2 uses
  %8 = add nsw i64 %7, -2
  %xtraiter148 = and i64 %i.kv, 3                 ; 3 uses
  %i.kw = icmp ult i64 %8, 3
  br i1 %i.kw, label %.epil.preheader147, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter151 = and i64 %i.kv, -4
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i.i.i.new
  %i.kx = phi i64 [ %i.kr, %.lr.ph.i.i.i.new ], [ %i.lt, %bb.co ]
  %.031.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.new ], [ %i.lv, %bb.co ] ; 6 uses
  %niter152 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter152.next.3, %bb.co ]
  %i.ky = getelementptr [8 x i8], ptr %i.ku, i64 %.031.i.i.i
  %i.kz = getelementptr i8, ptr %i.ky, i64 -8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !17
  %i.lb = mul i64 %i.la, %i.kx                    ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.km, i64 %.031.i.i.i
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !17
  %i.ld = add nuw nsw i64 %.031.i.i.i, 1          ; 2 uses
  %i.le = getelementptr [8 x i8], ptr %i.ku, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 -8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !17
  %i.lh = mul i64 %i.lg, %i.lb                    ; 2 uses
  %i.li = getelementptr [8 x i8], ptr %i.km, i64 %i.ld
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !17
  %i.lj = add nuw nsw i64 %.031.i.i.i, 2          ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %i.ku, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !17
  %i.ln = mul i64 %i.lm, %i.lh                    ; 2 uses
  %i.lo = getelementptr [8 x i8], ptr %i.km, i64 %i.lj
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !17
  %i.lp = add nuw nsw i64 %.031.i.i.i, 3          ; 2 uses
  %i.lq = getelementptr [8 x i8], ptr %i.ku, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -8
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !17
  %i.lt = mul i64 %i.ls, %i.ln                    ; 3 uses
  %i.lu = getelementptr [8 x i8], ptr %i.km, i64 %i.lp
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !17
  %i.lv = add nuw nsw i64 %.031.i.i.i, 4          ; 2 uses
  %niter152.next.3 = add nuw i64 %niter152, 4     ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa, label %bb.co, !llvm.loop !110

bb.cp:                                            ; preds = %bb.cm
  %i.lw = load i32, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.lx = add i32 %i.lw, -1
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr [8 x i8], ptr %i.km, i64 %i.ly
  store i64 %i.kr, ptr %i.lz, align 8, !tbaa !17
  %i.ma = add i32 %i.lw, -2                       ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, -1
  br i1 %i.mb, label %.lr.ph33.i.i.i, label %strides_from_shape.exit.i.thread.i

.lr.ph33.i.i.i:                                   ; preds = %bb.cp
  %i.mc = zext nneg i32 %i.ma to i64              ; 4 uses
  %i.md = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 5 uses
  %i.me = shl nuw nsw i64 %i.mc, 3
  %i.mf = getelementptr i8, ptr %i.km, i64 %i.me
  %scevgep128 = getelementptr i8, ptr %i.mf, i64 8
  %load_initial = load i64, ptr %scevgep128, align 8 ; 2 uses
  %i.mg = add nuw nsw i64 %i.mc, 1
  %xtraiter153 = and i64 %i.mg, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph33.i.i.i, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.mk, %.prol.preheader ], [ %load_initial, %.lr.ph33.i.i.i ]
  %.132.i.i.i.prol = phi i64 [ %i.mm, %.prol.preheader ], [ %i.mc, %.lr.ph33.i.i.i ] ; 3 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.prol.preheader ], [ 0, %.lr.ph33.i.i.i ]
  %i.mh = getelementptr [8 x i8], ptr %i.md, i64 %.132.i.i.i.prol
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !17
  %i.mk = mul i64 %i.mj, %store_forwarded.prol    ; 3 uses
  %i.ml = getelementptr [8 x i8], ptr %i.km, i64 %.132.i.i.i.prol
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !17
  %i.mm = add nsw i64 %.132.i.i.i.prol, -1        ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !111

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph33.i.i.i
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph33.i.i.i ], [ %i.mk, %.prol.preheader ]
  %.132.i.i.i.unr = phi i64 [ %i.mc, %.lr.ph33.i.i.i ], [ %i.mm, %.prol.preheader ]
  %i.mn = icmp ult i32 %i.ma, 3
  br i1 %i.mn, label %strides_from_shape.exit.i.thread.i, label %.lr.ph33.i.i.i.new

.lr.ph33.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph33.i.i.i.new
  %store_forwarded = phi i64 [ %i.nj, %.lr.ph33.i.i.i.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %.132.i.i.i = phi i64 [ %i.nl, %.lr.ph33.i.i.i.new ], [ %.132.i.i.i.unr, %.prol.loopexit ] ; 6 uses
  %i.mo = getelementptr [8 x i8], ptr %i.md, i64 %.132.i.i.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !17
  %i.mr = mul i64 %i.mq, %store_forwarded         ; 2 uses
  %i.ms = getelementptr [8 x i8], ptr %i.km, i64 %.132.i.i.i
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !17
  %i.mt = add nsw i64 %.132.i.i.i, -1             ; 2 uses
  %i.mu = getelementptr [8 x i8], ptr %i.md, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !17
  %i.mx = mul i64 %i.mw, %i.mr                    ; 2 uses
  %i.my = getelementptr [8 x i8], ptr %i.km, i64 %i.mt
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !17
  %i.mz = add nsw i64 %.132.i.i.i, -2             ; 2 uses
  %i.na = getelementptr [8 x i8], ptr %i.md, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !17
  %i.nd = mul i64 %i.nc, %i.mx                    ; 2 uses
  %i.ne = getelementptr [8 x i8], ptr %i.km, i64 %i.mz
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !17
  %i.nf = add nsw i64 %.132.i.i.i, -3             ; 3 uses
  %i.ng = getelementptr [8 x i8], ptr %i.md, i64 %i.nf
  %i.nh = getelementptr i8, ptr %i.ng, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !17
  %i.nj = mul i64 %i.ni, %i.nd                    ; 2 uses
  %i.nk = getelementptr [8 x i8], ptr %i.km, i64 %i.nf
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !17
  %i.nl = add nsw i64 %.132.i.i.i, -4
  %.not37.i.i.i.3 = icmp eq i64 %i.nf, 0
  br i1 %.not37.i.i.i.3, label %strides_from_shape.exit.i.thread.i, label %.lr.ph33.i.i.i.new, !llvm.loop !96

strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa: ; preds = %bb.co
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %strides_from_shape.exit.i.thread.i, label %.epil.preheader147

.epil.preheader147:                               ; preds = %strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa, %.lr.ph.i.i.i
  %.epil.init = phi i64 [ %i.kr, %.lr.ph.i.i.i ], [ %i.lt, %strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa ]
  %.031.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.lv, %strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.epil.preheader147
  %i.nm = phi i64 [ %.epil.init, %.epil.preheader147 ], [ %i.nq, %bb.cq ]
  %.031.i.i.i.epil = phi i64 [ %.031.i.i.i.epil.init, %.epil.preheader147 ], [ %i.ns, %bb.cq ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader147 ], [ %epil.iter.next, %bb.cq ]
  %i.nn = getelementptr [8 x i8], ptr %i.ku, i64 %.031.i.i.i.epil
  %i.no = getelementptr i8, ptr %i.nn, i64 -8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !17
  %i.nq = mul i64 %i.np, %i.nm                    ; 2 uses
  %i.nr = getelementptr [8 x i8], ptr %i.km, i64 %.031.i.i.i.epil
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !17
  %i.ns = add nuw nsw i64 %.031.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %strides_from_shape.exit.i.thread.i, label %bb.cq, !llvm.loop !112

strides_from_shape.exit.i.thread.i:               ; preds = %strides_from_shape.exit.i.thread.i.loopexit138.unr-lcssa, %bb.cq, %.prol.loopexit, %.lr.ph33.i.i.i.new, %bb.cp, %bb.cn
  %i.nt = getelementptr i8, ptr %i.az, i64 112    ; 2 uses
  store ptr %i.km, ptr %i.nt, align 8, !tbaa !45
  br label %bb.cr

strides_from_shape.exit.i.i:                      ; preds = %bb.ck
  %i.nu = tail call fastcc ptr @seq_as_ssize_array(ptr noundef nonnull readonly %.050.i, i64 noundef range(i64 -9223372036854775808, 129) %i.e, i32 noundef 0) ; 3 uses
  %i.nv = getelementptr i8, ptr %i.az, i64 112    ; 2 uses
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !45
  %i.nw = icmp eq ptr %i.nu, null
  br i1 %i.nw, label %init_simple.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %strides_from_shape.exit.i.i, %strides_from_shape.exit.i.thread.i
  %i.nx = phi ptr [ %i.nt, %strides_from_shape.exit.i.thread.i ], [ %i.nv, %strides_from_shape.exit.i.i ] ; 3 uses
  %.sink.i131.i = phi ptr [ %i.km, %strides_from_shape.exit.i.thread.i ], [ %i.nu, %strides_from_shape.exit.i.i ] ; 3 uses
  %i.ny = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.nz = load i64, ptr %i.bq, align 8, !tbaa !39 ; 4 uses
  %i.oa = load i64, ptr %i.bd, align 8, !tbaa !101 ; 3 uses
  %i.ob = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 11 uses
  %i.oc = icmp sgt i64 %i.e, 0
  br i1 %i.oc, label %.lr.ph.i41.i.i, label %._crit_edge.i.i111.i

bb.cs:                                            ; preds = %.lr.ph.i41.i.i
  %i.od = add nuw nsw i64 %.048.i.i.i, 1          ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.od, %i.e
  br i1 %exitcond.not.i43.i.i, label %.lr.ph50.i.i.i, label %.lr.ph.i41.i.i, !llvm.loop !113

.lr.ph.i41.i.i:                                   ; preds = %bb.cr, %bb.cs
  %.048.i.i.i = phi i64 [ %i.od, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %i.oe = getelementptr [8 x i8], ptr %.sink.i131.i, i64 %.048.i.i.i
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !17
  %i.og = srem i64 %i.of, %i.nz
  %.not.i42.i.i = icmp eq i64 %i.og, 0
  br i1 %.not.i42.i.i, label %bb.cs, label %verify_structure.exit.i.i

bb.ct:                                            ; preds = %.lr.ph50.i.i.i
  %i.oh = add nuw nsw i64 %.149.i.i.i, 1          ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i64 %i.oh, %i.e
  br i1 %exitcond56.not.i.i.i, label %.lr.ph54.i.i.i.preheader, label %.lr.ph50.i.i.i, !llvm.loop !114

.lr.ph54.i.i.i.preheader:                         ; preds = %bb.ct
  %min.iters.check92 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check92, label %.lr.ph54.i.i.i.preheader133, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph54.i.i.i.preheader
  %n.vec94 = and i64 %i.e, 9223372036854775804    ; 3 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body95 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.oy, %vector.body95 ]
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.oz, %vector.body95 ]
  %vec.phi98 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.ou, %vector.body95 ]
  %vec.phi99 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.ov, %vector.body95 ]
  %i.oi = getelementptr [8 x i8], ptr %.sink.i131.i, i64 %index96 ; 2 uses
  %i.oj = getelementptr i8, ptr %i.oi, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !17 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.oj, align 8, !tbaa !17 ; 2 uses
  %i.ok = icmp slt <2 x i64> %wide.load100, splat (i64 1) ; 2 uses
  %i.ol = icmp slt <2 x i64> %wide.load101, splat (i64 1) ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %i.ob, i64 %index96 ; 2 uses
  %i.on = getelementptr i8, ptr %i.om, i64 16
  %wide.load102 = load <2 x i64>, ptr %i.om, align 8, !tbaa !17
  %wide.load103 = load <2 x i64>, ptr %i.on, align 8, !tbaa !17
  %i.oo = add <2 x i64> %wide.load102, splat (i64 -1)
  %i.op = add <2 x i64> %wide.load103, splat (i64 -1)
  %i.oq = mul <2 x i64> %i.oo, %wide.load100      ; 2 uses
  %i.or = mul <2 x i64> %i.op, %wide.load101      ; 2 uses
  %i.os = select <2 x i1> %i.ok, <2 x i64> %i.oq, <2 x i64> zeroinitializer
  %i.ot = select <2 x i1> %i.ol, <2 x i64> %i.or, <2 x i64> zeroinitializer
  %i.ou = add <2 x i64> %i.os, %vec.phi98         ; 2 uses
  %i.ov = add <2 x i64> %i.ot, %vec.phi99         ; 2 uses
  %i.ow = select <2 x i1> %i.ok, <2 x i64> zeroinitializer, <2 x i64> %i.oq
  %i.ox = select <2 x i1> %i.ol, <2 x i64> zeroinitializer, <2 x i64> %i.or
  %i.oy = add <2 x i64> %i.ow, %vec.phi           ; 2 uses
  %i.oz = add <2 x i64> %i.ox, %vec.phi97         ; 2 uses
  %index.next104 = add nuw i64 %index96, 4        ; 2 uses
  %i.pa = icmp eq i64 %index.next104, %n.vec94
  br i1 %i.pa, label %middle.block105, label %vector.body95, !llvm.loop !115

middle.block105:                                  ; preds = %vector.body95
  %bin.rdx = add <2 x i64> %i.oz, %i.oy
  %i.pb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx106 = add <2 x i64> %i.ov, %i.ou
  %i.pc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx106) ; 2 uses
  %cmp.n107 = icmp eq i64 %i.e, %n.vec94
  br i1 %cmp.n107, label %._crit_edge.i.i111.i, label %.lr.ph54.i.i.i.preheader133

.lr.ph54.i.i.i.preheader133:                      ; preds = %.lr.ph54.i.i.i.preheader, %middle.block105
  %.253.i.i.i.ph = phi i64 [ 0, %.lr.ph54.i.i.i.preheader ], [ %n.vec94, %middle.block105 ]
  %.03752.i.i.i.ph = phi i64 [ 0, %.lr.ph54.i.i.i.preheader ], [ %i.pb, %middle.block105 ]
  %.03951.i.i.i.ph = phi i64 [ 0, %.lr.ph54.i.i.i.preheader ], [ %i.pc, %middle.block105 ]
  br label %.lr.ph54.i.i.i

.lr.ph50.i.i.i:                                   ; preds = %bb.cs, %bb.ct
  %.149.i.i.i = phi i64 [ %i.oh, %bb.ct ], [ 0, %bb.cs ] ; 2 uses
  %i.pd = getelementptr [8 x i8], ptr %i.ob, i64 %.149.i.i.i
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !17
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %.loopexit.i.i, label %bb.ct

.lr.ph54.i.i.i:                                   ; preds = %.lr.ph54.i.i.i.preheader133, %.lr.ph54.i.i.i
  %.253.i.i.i = phi i64 [ %i.pp, %.lr.ph54.i.i.i ], [ %.253.i.i.i.ph, %.lr.ph54.i.i.i.preheader133 ] ; 3 uses
  %.03752.i.i.i = phi i64 [ %.138.i.i.i, %.lr.ph54.i.i.i ], [ %.03752.i.i.i.ph, %.lr.ph54.i.i.i.preheader133 ]
  %.03951.i.i.i = phi i64 [ %.140.i.i.i, %.lr.ph54.i.i.i ], [ %.03951.i.i.i.ph, %.lr.ph54.i.i.i.preheader133 ]
  %i.pg = getelementptr [8 x i8], ptr %.sink.i131.i, i64 %.253.i.i.i
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !17 ; 2 uses
  %i.pi = icmp slt i64 %i.ph, 1                   ; 2 uses
  %i.pj = getelementptr [8 x i8], ptr %i.ob, i64 %.253.i.i.i
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !17
  %i.pl = add i64 %i.pk, -1
  %i.pm = mul i64 %i.pl, %i.ph                    ; 2 uses
  %i.pn = select i1 %i.pi, i64 %i.pm, i64 0
  %.140.i.i.i = add i64 %i.pn, %.03951.i.i.i      ; 2 uses
  %i.po = select i1 %i.pi, i64 0, i64 %i.pm
  %.138.i.i.i = add i64 %i.po, %.03752.i.i.i      ; 2 uses
  %i.pp = add nuw nsw i64 %.253.i.i.i, 1          ; 2 uses
  %exitcond57.not.i.i.i = icmp eq i64 %i.pp, %i.e
  br i1 %exitcond57.not.i.i.i, label %._crit_edge.i.i111.i, label %.lr.ph54.i.i.i, !llvm.loop !116

._crit_edge.i.i111.i:                             ; preds = %.lr.ph54.i.i.i, %middle.block105, %bb.cr
  %.039.lcssa.i.i.i = phi i64 [ 0, %bb.cr ], [ %i.pc, %middle.block105 ], [ %.140.i.i.i, %.lr.ph54.i.i.i ]
  %.037.lcssa.i.i.i = phi i64 [ 0, %bb.cr ], [ %i.pb, %middle.block105 ], [ %.138.i.i.i, %.lr.ph54.i.i.i ]
  %i.pq = add i64 %.039.lcssa.i.i.i, %i.oa
  %i.pr = icmp slt i64 %i.pq, 0
  br i1 %i.pr, label %verify_structure.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i111.i
  %i.ps = add i64 %i.oa, %i.nz
  %i.pt = add i64 %i.ps, %.037.lcssa.i.i.i
  %i.pu = icmp sgt i64 %i.pt, %i.ny
  br i1 %i.pu, label %verify_structure.exit.i.i, label %.loopexit.i.i

verify_structure.exit.i.i:                        ; preds = %.lr.ph.i41.i.i, %bb.cu, %._crit_edge.i.i111.i
  %.str.79.sink.i.i.i = phi ptr [ @.str.79, %bb.cu ], [ @.str.79, %._crit_edge.i.i111.i ], [ @.str.78, %.lr.ph.i41.i.i ]
  %i.pv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.pv, ptr noundef nonnull %.str.79.sink.i.i.i) #15
  br label %init_simple.exit.thread.i

.loopexit.i.i:                                    ; preds = %.lr.ph50.i.i.i, %bb.cu
  %i.pw = load ptr, ptr %i.bf, align 8, !tbaa !55
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.oa
  store ptr %i.px, ptr %i.bn, align 8, !tbaa !48
  store i64 1, ptr %i.bp, align 8, !tbaa !40
  %i.py = load i32, ptr %i.bt, align 4, !tbaa !27 ; 4 uses
  %9 = sext i32 %i.py to i64                      ; 6 uses
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %.lr.ph.i45.i.i.preheader, label %init_len.exit.i.i

.lr.ph.i45.i.i.preheader:                         ; preds = %.loopexit.i.i
  %min.iters.check113 = icmp ult i32 %i.py, 8
  br i1 %min.iters.check113, label %.lr.ph.i45.i.i.preheader129, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph.i45.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.az, i64 80
  %i.qa = shl nuw nsw i64 %9, 3
  %scevgep111 = getelementptr i8, ptr %i.ob, i64 %i.qa
  %bound0 = icmp ult ptr %i.bp, %scevgep111
  %bound1 = icmp ult ptr %i.ob, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i45.i.i.preheader129, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck110
  %n.vec115 = and i64 %9, 2147483644              ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %vec.phi118 = phi <2 x i64> [ splat (i64 1), %vector.ph114 ], [ %i.qd, %vector.body116 ]
  %vec.phi119 = phi <2 x i64> [ splat (i64 1), %vector.ph114 ], [ %i.qe, %vector.body116 ]
  %i.qb = getelementptr [8 x i8], ptr %i.ob, i64 %index117 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 16
  %wide.load120 = load <2 x i64>, ptr %i.qb, align 8, !tbaa !17, !alias.scope !117
  %wide.load121 = load <2 x i64>, ptr %i.qc, align 8, !tbaa !17, !alias.scope !117
  %i.qd = mul <2 x i64> %wide.load120, %vec.phi118 ; 2 uses
  %i.qe = mul <2 x i64> %wide.load121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i64 %index117, 4       ; 2 uses
  %i.qf = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.qf, label %middle.block123, label %vector.body116, !llvm.loop !120

middle.block123:                                  ; preds = %vector.body116
  %bin.rdx124 = mul <2 x i64> %i.qe, %i.qd
  %i.qg = tail call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx124) ; 3 uses
  store i64 %i.qg, ptr %i.bp, align 8, !tbaa !40, !alias.scope !121, !noalias !117
  %cmp.n125 = icmp eq i64 %n.vec115, %9
  br i1 %cmp.n125, label %init_len.exit.loopexit.i.i, label %.lr.ph.i45.i.i.preheader129

.lr.ph.i45.i.i.preheader129:                      ; preds = %vector.memcheck110, %.lr.ph.i45.i.i.preheader, %middle.block123
  %.ph = phi i64 [ 1, %vector.memcheck110 ], [ 1, %.lr.ph.i45.i.i.preheader ], [ %i.qg, %middle.block123 ] ; 2 uses
  %.08.i.i.i.ph = phi i64 [ 0, %vector.memcheck110 ], [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec115, %middle.block123 ] ; 3 uses
  %xtraiter156 = and i64 %9, 3
  %10 = and i32 %i.py, 3
  %lcmp.mod157.not = icmp eq i32 %10, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i45.i.i.prol.loopexit, label %.lr.ph.i45.i.i.prol

.lr.ph.i45.i.i.prol:                              ; preds = %.lr.ph.i45.i.i.preheader129, %.lr.ph.i45.i.i.prol
  %i.qh = phi i64 [ %i.qk, %.lr.ph.i45.i.i.prol ], [ %.ph, %.lr.ph.i45.i.i.preheader129 ]
  %.08.i.i.i.prol = phi i64 [ %i.ql, %.lr.ph.i45.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i45.i.i.preheader129 ] ; 2 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i45.i.i.prol ], [ 0, %.lr.ph.i45.i.i.preheader129 ]
  %i.qi = getelementptr [8 x i8], ptr %i.ob, i64 %.08.i.i.i.prol
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !17
  %i.qk = mul i64 %i.qj, %i.qh                    ; 4 uses
  store i64 %i.qk, ptr %i.bp, align 8, !tbaa !40
  %i.ql = add nuw nsw i64 %.08.i.i.i.prol, 1      ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i45.i.i.prol.loopexit, label %.lr.ph.i45.i.i.prol, !llvm.loop !123

.lr.ph.i45.i.i.prol.loopexit:                     ; preds = %.lr.ph.i45.i.i.prol, %.lr.ph.i45.i.i.preheader129
  %.lcssa130.unr = phi i64 [ poison, %.lr.ph.i45.i.i.preheader129 ], [ %i.qk, %.lr.ph.i45.i.i.prol ]
  %.unr159 = phi i64 [ %.ph, %.lr.ph.i45.i.i.preheader129 ], [ %i.qk, %.lr.ph.i45.i.i.prol ]
  %.08.i.i.i.unr = phi i64 [ %.08.i.i.i.ph, %.lr.ph.i45.i.i.preheader129 ], [ %i.ql, %.lr.ph.i45.i.i.prol ]
  %i.qm = sub nsw i64 %.08.i.i.i.ph, %9
  %i.qn = icmp ugt i64 %i.qm, -4
  br i1 %i.qn, label %init_len.exit.loopexit.i.i, label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.prol.loopexit, %.lr.ph.i45.i.i
  %i.qo = phi i64 [ %i.rd, %.lr.ph.i45.i.i ], [ %.unr159, %.lr.ph.i45.i.i.prol.loopexit ]
  %.08.i.i.i = phi i64 [ %i.re, %.lr.ph.i45.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i45.i.i.prol.loopexit ] ; 5 uses
  %i.qp = getelementptr [8 x i8], ptr %i.ob, i64 %.08.i.i.i
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !17
  %i.qr = mul i64 %i.qq, %i.qo                    ; 2 uses
  store i64 %i.qr, ptr %i.bp, align 8, !tbaa !40
  %i.qs = getelementptr [8 x i8], ptr %i.ob, i64 %.08.i.i.i
  %i.qt = getelementptr i8, ptr %i.qs, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !17
  %i.qv = mul i64 %i.qu, %i.qr                    ; 2 uses
  store i64 %i.qv, ptr %i.bp, align 8, !tbaa !40
  %i.qw = getelementptr [8 x i8], ptr %i.ob, i64 %.08.i.i.i
  %i.qx = getelementptr i8, ptr %i.qw, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !17
  %i.qz = mul i64 %i.qy, %i.qv                    ; 2 uses
  store i64 %i.qz, ptr %i.bp, align 8, !tbaa !40
  %i.ra = getelementptr [8 x i8], ptr %i.ob, i64 %.08.i.i.i
  %i.rb = getelementptr i8, ptr %i.ra, i64 24
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !17
  %i.rd = mul i64 %i.rc, %i.qz                    ; 3 uses
  store i64 %i.rd, ptr %i.bp, align 8, !tbaa !40
  %i.re = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i46.i.i.3 = icmp eq i64 %i.re, %9
  br i1 %exitcond.not.i46.i.i.3, label %init_len.exit.loopexit.i.i, label %.lr.ph.i45.i.i, !llvm.loop !124

init_len.exit.loopexit.i.i:                       ; preds = %.lr.ph.i45.i.i.prol.loopexit, %.lr.ph.i45.i.i, %middle.block123
  %.lcssa = phi i64 [ %i.qg, %middle.block123 ], [ %.lcssa130.unr, %.lr.ph.i45.i.i.prol.loopexit ], [ %i.rd, %.lr.ph.i45.i.i ]
  %i.rf = mul i64 %.lcssa, %i.nz
  br label %init_len.exit.i.i

init_len.exit.i.i:                                ; preds = %init_len.exit.loopexit.i.i, %.loopexit.i.i
  %i.rg = phi i64 [ %i.nz, %.loopexit.i.i ], [ %i.rf, %init_len.exit.loopexit.i.i ]
  store i64 %i.rg, ptr %i.bp, align 8, !tbaa !40
  %i.rh = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.bn, i8 noundef signext 67) #15
  %.not37.i.i = icmp eq i32 %i.rh, 0
  br i1 %.not37.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %init_len.exit.i.i
  %i.ri = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.rj = or i32 %i.ri, 256
  store i32 %i.rj, ptr %i.bl, align 8, !tbaa !49
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %init_len.exit.i.i
  %i.rk = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.bn, i8 noundef signext 70) #15
  %.not38.i.i = icmp eq i32 %i.rk, 0
  %.pre.i.i = load i32, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  br i1 %.not38.i.i, label %._crit_edge.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rl = or i32 %.pre.i.i, 4                     ; 2 uses
  store i32 %i.rl, ptr %i.bl, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cx, %bb.cw
  %i.rm = phi i32 [ %i.rl, %bb.cx ], [ %.pre.i.i, %bb.cw ]
  %i.rn = and i32 %i.rm, 16
  %.not39.i.i = icmp eq i32 %i.rn, 0
  br i1 %.not39.i.i, label %init_structure.exit.i, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge.i.i
  %i.ro = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !17
  %i.rq = shl i64 %i.rp, 3
  %i.rr = or disjoint i64 %i.rq, 7
  %i.rs = sdiv i64 %i.rr, 8
  %i.rt = shl nsw i64 %i.rs, 3                    ; 3 uses
  %i.ru = load i64, ptr %i.bc, align 8, !tbaa !99
  %i.rv = add i64 %i.rt, %i.ru
  %i.rw = tail call ptr @PyMem_Malloc(i64 noundef %i.rv) #15 ; 9 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ry = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %init_simple.exit.thread.i

bb.da:                                            ; preds = %bb.cy
  %i.rz = getelementptr i8, ptr %i.rw, i64 %i.rt  ; 2 uses
  %i.sa = load ptr, ptr %i.bf, align 8, !tbaa !55
  %i.sb = load i64, ptr %i.bc, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  %i.sc = load ptr, ptr %i.bf, align 8, !tbaa !55
  tail call void @PyMem_Free(ptr noundef %i.sc) #15
  store ptr %i.rw, ptr %i.bf, align 8, !tbaa !55
  %i.sd = load i64, ptr %i.bc, align 8, !tbaa !99
  %i.se = add i64 %i.sd, %i.rt
  store i64 %i.se, ptr %i.bc, align 8, !tbaa !99
  store ptr %i.rw, ptr %i.bn, align 8, !tbaa !48
  %i.sf = load i32, ptr %i.bt, align 4, !tbaa !27 ; 3 uses
  %i.sg = sext i32 %i.sf to i64                   ; 2 uses
  %i.sh = icmp sgt i32 %i.sf, 0
  %.pre.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 2 uses
  %.pre99.i.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !17 ; 6 uses
  br i1 %i.sh, label %.lr.ph.i48.i.i, label %.._crit_edge.i47_crit_edge.i.i

.._crit_edge.i47_crit_edge.i.i:                   ; preds = %bb.da
  %.pre53.i.i = load ptr, ptr %i.nx, align 8, !tbaa !45
  %.pre54.i.i = load i64, ptr %.pre53.i.i, align 8, !tbaa !17
  br label %._crit_edge.i47.i.i

.lr.ph.i48.i.i:                                   ; preds = %bb.da
  %i.si = icmp eq i64 %.pre99.i.i.i, 0
  br i1 %i.si, label %._crit_edge92.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i48.i.i
  %i.sj = load ptr, ptr %i.nx, align 8, !tbaa !45 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !17 ; 5 uses
  %i.sl = add i64 %.pre99.i.i.i, -1
  %i.sm = mul i64 %i.sk, %i.sl
  %.inv.i.i.i = icmp sgt i64 %i.sk, 0
  %.1.peel.i.i.i = select i1 %.inv.i.i.i, i64 0, i64 %i.sm ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.sf, 1
  br i1 %exitcond.peel.not.i.i.i, label %._crit_edge.i47.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.db, %bb.de
  %.06782.i.i.i = phi i64 [ %.1.i.i.i, %bb.de ], [ %.1.peel.i.i.i, %bb.db ] ; 3 uses
  %.06881.i.i.i = phi i64 [ %i.sx, %bb.de ], [ 1, %bb.db ] ; 3 uses
  %.07080.i.i.i = phi i64 [ %.171.i.i.i, %bb.de ], [ 0, %bb.db ] ; 3 uses
  %i.sn = getelementptr [8 x i8], ptr %.pre.i.i.i, i64 %.06881.i.i.i
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !17 ; 2 uses
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %._crit_edge.i47.i.i, label %bb.dc

bb.dc:                                            ; preds = %.peel.next.i.i.i
  %i.sq = getelementptr [8 x i8], ptr %i.sj, i64 %.06881.i.i.i
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !17 ; 2 uses
  %i.ss = icmp slt i64 %i.sr, 1
  br i1 %i.ss, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.st = add i64 %i.so, -1
  %i.su = mul i64 %i.sr, %i.st                    ; 2 uses
  %i.sv = add i64 %i.su, %.06782.i.i.i
  %i.sw = sub i64 %.07080.i.i.i, %i.su
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.171.i.i.i = phi i64 [ %i.sw, %bb.dd ], [ %.07080.i.i.i, %bb.dc ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.sv, %bb.dd ], [ %.06782.i.i.i, %bb.dc ] ; 2 uses
  %i.sx = add nuw nsw i64 %.06881.i.i.i, 1        ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.sx, %i.sg
  br i1 %exitcond.not.i49.i.i, label %._crit_edge.i47.i.i, label %.peel.next.i.i.i, !llvm.loop !125

._crit_edge.i47.i.i:                              ; preds = %bb.de, %.peel.next.i.i.i, %bb.db, %.._crit_edge.i47_crit_edge.i.i
  %i.sy = phi i64 [ %.pre54.i.i, %.._crit_edge.i47_crit_edge.i.i ], [ %i.sk, %bb.db ], [ %i.sk, %.peel.next.i.i.i ], [ %i.sk, %bb.de ]
  %.070.lcssa.i.i.i = phi i64 [ 0, %.._crit_edge.i47_crit_edge.i.i ], [ 0, %bb.db ], [ %.171.i.i.i, %bb.de ], [ %.07080.i.i.i, %.peel.next.i.i.i ] ; 3 uses
  %.067.lcssa.i.i.i = phi i64 [ 0, %.._crit_edge.i47_crit_edge.i.i ], [ %.1.peel.i.i.i, %bb.db ], [ %.1.i.i.i, %bb.de ], [ %.06782.i.i.i, %.peel.next.i.i.i ]
  %i.sz = tail call i64 @llvm.abs.i64(i64 %i.sy, i1 false) ; 5 uses
  %i.ta = icmp sgt i64 %.pre99.i.i.i, 0
  br i1 %i.ta, label %.lr.ph91.i.i.i, label %._crit_edge92.i.i.i

.lr.ph91.i.i.i:                                   ; preds = %._crit_edge.i47.i.i
  %i.tb = load i64, ptr %i.bd, align 8, !tbaa !101
  %i.tc = getelementptr i8, ptr %i.rz, i64 %i.tb
  %i.td = getelementptr i8, ptr %i.tc, i64 %.067.lcssa.i.i.i ; 5 uses
  %xtraiter161 = and i64 %.pre99.i.i.i, 3         ; 3 uses
  %i.te = icmp ult i64 %.pre99.i.i.i, 4
  br i1 %i.te, label %.epil.preheader160, label %.lr.ph91.i.i.i.new

.lr.ph91.i.i.i.new:                               ; preds = %.lr.ph91.i.i.i
  %unroll_iter165 = and i64 %.pre99.i.i.i, 9223372036854775804
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph91.i.i.i.new
  %.16989.i.i.i = phi i64 [ 0, %.lr.ph91.i.i.i.new ], [ %i.tu, %bb.df ] ; 6 uses
  %niter166 = phi i64 [ 0, %.lr.ph91.i.i.i.new ], [ %niter166.next.3, %bb.df ]
  %i.tf = mul i64 %.16989.i.i.i, %i.sz
  %i.tg = getelementptr i8, ptr %i.td, i64 %i.tf
  %i.th = getelementptr [8 x i8], ptr %i.rw, i64 %.16989.i.i.i
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !58
  %i.ti = or disjoint i64 %.16989.i.i.i, 1        ; 2 uses
  %i.tj = mul i64 %i.ti, %i.sz
  %i.tk = getelementptr i8, ptr %i.td, i64 %i.tj
  %i.tl = getelementptr [8 x i8], ptr %i.rw, i64 %i.ti
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !58
end_hunk_1
