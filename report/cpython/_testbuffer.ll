inline.NumInlined: 175
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@init_flags:bb.a
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
  %i.br = sext i32 %i.bq to i64                   ; 5 uses
  br i1 %.not.i71, label %.thread52.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = tail call ptr @PyMem_Malloc(i64 noundef %i.bs) #15 ; 10 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 5 uses
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %bb.s
  %i.bw = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.by = zext i32 %i.bx to i64                   ; 5 uses
  %i.bz = icmp sgt i32 %i.bx, 0
  br i1 %i.bz, label %.lr.ph.split.i, label %.loopexit

.thread52.i:                                      ; preds = %bb.r
  %i.ca = icmp sgt i32 %i.bq, 0
  br i1 %i.ca, label %.lr.ph.split.us.preheader.i, label %.loopexit

.lr.ph.split.us.preheader.i:                      ; preds = %.thread52.i
  %i.cb = getelementptr i8, ptr %i.ai, i64 128
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 5 uses
  %i.cd = getelementptr i8, ptr %i.ai, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 5 uses
  %min.iters.check175 = icmp ult i32 %i.bq, 32
  br i1 %min.iters.check175, label %.lr.ph.split.us.i.preheader, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph.split.us.preheader.i
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 2 uses
  %i.cg = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %i.ch = sub i64 %i.bg, %i.bl
  %diff.check165 = icmp ugt i64 %i.ch, -32
  %i.ci = sub i64 %i.cg, %i.bg
  %diff.check166 = icmp ugt i64 %i.ci, -32
  %conflict.rdx167 = or i1 %diff.check165, %diff.check166
  %i.cj = sub i64 %i.bg, %i.cf
  %diff.check168 = icmp ugt i64 %i.cj, -32
  %conflict.rdx169 = or i1 %conflict.rdx167, %diff.check168
  %i.ck = sub i64 %i.cg, %i.bl
  %diff.check170 = icmp ugt i64 %i.ck, -32
  %conflict.rdx171 = or i1 %conflict.rdx169, %diff.check170
  %i.cl = sub i64 %i.cf, %i.bl
  %diff.check172 = icmp ugt i64 %i.cl, -32
  %conflict.rdx173 = or i1 %conflict.rdx171, %diff.check172
  br i1 %conflict.rdx173, label %.lr.ph.split.us.i.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck164
  %n.vec178 = and i64 %i.br, 2147483644           ; 3 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next185, %vector.body179 ] ; 5 uses
  %i.cm = getelementptr [8 x i8], ptr %i.cc, i64 %index180 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %wide.load181 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !17
  %wide.load182 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !17
  %i.co = getelementptr [8 x i8], ptr %i.bf, i64 %index180 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store <2 x i64> %wide.load181, ptr %i.co, align 8, !tbaa !17
  store <2 x i64> %wide.load182, ptr %i.cp, align 8, !tbaa !17
  %i.cq = getelementptr [8 x i8], ptr %i.ce, i64 %index180 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %wide.load183 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !17
  %wide.load184 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !17
  %i.cs = getelementptr [8 x i8], ptr %i.bk, i64 %index180 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store <2 x i64> %wide.load183, ptr %i.cs, align 8, !tbaa !17
  store <2 x i64> %wide.load184, ptr %i.ct, align 8, !tbaa !17
  %index.next185 = add nuw i64 %index180, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.cu, label %middle.block186, label %vector.body179, !llvm.loop !62

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %n.vec178, %i.br
  br i1 %cmp.n187, label %.loopexit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %vector.memcheck164, %.lr.ph.split.us.preheader.i, %middle.block186
  %.047.us.i.ph = phi i64 [ 0, %vector.memcheck164 ], [ 0, %.lr.ph.split.us.preheader.i ], [ %n.vec178, %middle.block186 ] ; 7 uses
  %i.cv = and i32 %i.bq, 1
  %lcmp.mod218.not = icmp eq i32 %i.cv, 0
  br i1 %lcmp.mod218.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.cw = getelementptr [8 x i8], ptr %i.cc, i64 %.047.us.i.ph
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.cy = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i.ph
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !17
  %i.cz = getelementptr [8 x i8], ptr %i.ce, i64 %.047.us.i.ph
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.db = getelementptr [8 x i8], ptr %i.bk, i64 %.047.us.i.ph
  store i64 %i.da, ptr %i.db, align 8, !tbaa !17
  %i.dc = or disjoint i64 %.047.us.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.047.us.i.unr = phi i64 [ %.047.us.i.ph, %.lr.ph.split.us.i.preheader ], [ %i.dc, %.lr.ph.split.us.i.prol ]
  %i.dd = add nsw i64 %i.br, -1
  %i.de = icmp eq i64 %.047.us.i.ph, %i.dd
  br i1 %i.de, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.047.us.i = phi i64 [ %i.ds, %.lr.ph.split.us.i ], [ %.047.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.df = getelementptr [8 x i8], ptr %i.cc, i64 %.047.us.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !17
  %i.dh = getelementptr [8 x i8], ptr %i.bf, i64 %.047.us.i
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !17
  %i.di = getelementptr [8 x i8], ptr %i.ce, i64 %.047.us.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !17
  %i.dk = getelementptr [8 x i8], ptr %i.bk, i64 %.047.us.i
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !17
  %i.dl = add nuw nsw i64 %.047.us.i, 1           ; 4 uses
  %i.dm = getelementptr [8 x i8], ptr %i.cc, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = getelementptr [8 x i8], ptr %i.bf, i64 %i.dl
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !17
  %i.dp = getelementptr [8 x i8], ptr %i.ce, i64 %i.dl
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !17
  %i.dr = getelementptr [8 x i8], ptr %i.bk, i64 %i.dl
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !17
  %i.ds = add nuw nsw i64 %.047.us.i, 2           ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.ds, %i.br
  br i1 %exitcond49.not.i.1, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !65

.lr.ph.split.i:                                   ; preds = %bb.t
  %i.dt = getelementptr i8, ptr %i.ai, i64 128
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !35 ; 5 uses
  %i.dv = getelementptr i8, ptr %i.ai, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !45 ; 5 uses
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bx, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 3 uses
  %i.dz = ptrtoaddr ptr %i.dw to i64              ; 3 uses
  %i.ea = ptrtoaddr ptr %i.du to i64              ; 3 uses
  %i.eb = sub i64 %i.bg, %i.bl
  %diff.check = icmp ugt i64 %i.eb, -32
  %i.ec = sub i64 %i.bg, %i.bu
  %diff.check138 = icmp ugt i64 %i.ec, -32
  %conflict.rdx = or i1 %diff.check, %diff.check138
  %i.ed = sub i64 %i.ea, %i.bg
  %diff.check139 = icmp ugt i64 %i.ed, -32
  %conflict.rdx140 = or i1 %conflict.rdx, %diff.check139
  %i.ee = sub i64 %i.bg, %i.dz
  %diff.check141 = icmp ugt i64 %i.ee, -32
  %conflict.rdx142 = or i1 %conflict.rdx140, %diff.check141
  %i.ef = sub i64 %i.bg, %i.dy
  %diff.check143 = icmp ugt i64 %i.ef, -32
  %conflict.rdx144 = or i1 %conflict.rdx142, %diff.check143
  %i.eg = sub i64 %i.bl, %i.bu
  %diff.check145 = icmp ugt i64 %i.eg, -32
  %conflict.rdx146 = or i1 %conflict.rdx144, %diff.check145
  %i.eh = sub i64 %i.ea, %i.bl
  %diff.check147 = icmp ugt i64 %i.eh, -32
  %conflict.rdx148 = or i1 %conflict.rdx146, %diff.check147
  %i.ei = sub i64 %i.dz, %i.bl
  %diff.check149 = icmp ugt i64 %i.ei, -32
  %conflict.rdx150 = or i1 %conflict.rdx148, %diff.check149
  %i.ej = sub i64 %i.bl, %i.dy
  %diff.check151 = icmp ugt i64 %i.ej, -32
  %conflict.rdx152 = or i1 %conflict.rdx150, %diff.check151
  %i.ek = sub i64 %i.ea, %i.bu
  %diff.check153 = icmp ugt i64 %i.ek, -32
  %conflict.rdx154 = or i1 %conflict.rdx152, %diff.check153
  %i.el = sub i64 %i.dz, %i.bu
  %diff.check155 = icmp ugt i64 %i.el, -32
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  %i.em = sub i64 %i.dy, %i.bu
  %diff.check157 = icmp ugt i64 %i.em, -32
  %conflict.rdx158 = or i1 %conflict.rdx156, %diff.check157
  br i1 %conflict.rdx158, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.en = getelementptr [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !17
  %wide.load159 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !17
  %i.ep = getelementptr [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  store <2 x i64> %wide.load, ptr %i.ep, align 8, !tbaa !17
  store <2 x i64> %wide.load159, ptr %i.eq, align 8, !tbaa !17
  %i.er = getelementptr [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %wide.load160 = load <2 x i64>, ptr %i.er, align 8, !tbaa !17
  %wide.load161 = load <2 x i64>, ptr %i.es, align 8, !tbaa !17
  %i.et = getelementptr [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  store <2 x i64> %wide.load160, ptr %i.et, align 8, !tbaa !17
  store <2 x i64> %wide.load161, ptr %i.eu, align 8, !tbaa !17
  %i.ev = getelementptr [8 x i8], ptr %i.dx, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %wide.load162 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !17
  %wide.load163 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !17
  %i.ex = getelementptr [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  store <2 x i64> %wide.load162, ptr %i.ex, align 8, !tbaa !17
  store <2 x i64> %wide.load163, ptr %i.ey, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.by
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.i, %middle.block
  %.047.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %i.by, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fa = getelementptr [8 x i8], ptr %i.du, i64 %.047.i.ph
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fc = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i.ph
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !17
  %i.fd = getelementptr [8 x i8], ptr %i.dw, i64 %.047.i.ph
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !17
  %i.ff = getelementptr [8 x i8], ptr %i.bk, i64 %.047.i.ph
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !17
  %i.fg = getelementptr [8 x i8], ptr %i.dx, i64 %.047.i.ph
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !17
  %i.fi = getelementptr [8 x i8], ptr %i.bt, i64 %.047.i.ph
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !17
  %i.fj = or disjoint i64 %.047.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.047.i.unr = phi i64 [ %.047.i.ph, %scalar.ph.preheader ], [ %i.fj, %scalar.ph.prol ]
  %i.fk = add nsw i64 %i.by, -1
  %i.fl = icmp eq i64 %.047.i.ph, %i.fk
  br i1 %i.fl, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.047.i = phi i64 [ %i.gf, %scalar.ph ], [ %.047.i.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.fm = getelementptr [8 x i8], ptr %i.du, i64 %.047.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = getelementptr [8 x i8], ptr %i.bf, i64 %.047.i
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !17
  %i.fp = getelementptr [8 x i8], ptr %i.dw, i64 %.047.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fr = getelementptr [8 x i8], ptr %i.bk, i64 %.047.i
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !17
  %i.fs = getelementptr [8 x i8], ptr %i.dx, i64 %.047.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !17
  %i.fu = getelementptr [8 x i8], ptr %i.bt, i64 %.047.i
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !17
  %i.fv = add nuw nsw i64 %.047.i, 1              ; 6 uses
  %i.fw = getelementptr [8 x i8], ptr %i.du, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !17
  %i.fy = getelementptr [8 x i8], ptr %i.bf, i64 %i.fv
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !17
  %i.fz = getelementptr [8 x i8], ptr %i.dw, i64 %i.fv
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.gb = getelementptr [8 x i8], ptr %i.bk, i64 %i.fv
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !17
  %i.gc = getelementptr [8 x i8], ptr %i.dx, i64 %i.fv
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !17
  %i.ge = getelementptr [8 x i8], ptr %i.bt, i64 %i.fv
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !17
  %i.gf = add nuw nsw i64 %.047.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gf, %i.by
  br i1 %exitcond.not.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !67

bb.u:                                             ; preds = %bb.q
  %i.gg = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
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
  %i.gh = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.gh, -1
  br i1 %.not.i57, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  %i.gi = add nsw i32 %i.gh, -1                   ; 2 uses
  store i32 %i.gi, ptr %i.ai, align 8, !tbaa !16
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aa, label %_Py_NewRef.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #15
  br label %_Py_NewRef.exit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %middle.block186, %.thread52.i, %bb.t
  %.03655.i = phi ptr [ null, %.thread52.i ], [ null, %middle.block186 ], [ %i.bt, %bb.t ], [ %i.bt, %middle.block ], [ null, %.lr.ph.split.us.i.prol.loopexit ], [ null, %.lr.ph.split.us.i ], [ %i.bt, %scalar.ph ], [ %i.bt, %scalar.ph.prol.loopexit ]
  %i.gk = getelementptr i8, ptr %i.ai, i64 128    ; 5 uses
  store ptr %i.bf, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr i8, ptr %i.ai, i64 136    ; 4 uses
  store ptr %i.bk, ptr %i.gl, align 8, !tbaa !45
  store ptr %.03655.i, ptr %i.bo, align 8, !tbaa !46
  %i.gm = getelementptr i8, ptr %i.ai, i64 64     ; 10 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.go = or i32 %i.gn, 512
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !49
  %i.gp = getelementptr i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 2 uses
  %.not90 = icmp eq ptr %.val69, @PySlice_Type
  br i1 %.not90, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.gq = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %init_slice.exit.thread, label %init_slice.exit

init_slice.exit.thread:                           ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.as

init_slice.exit:                                  ; preds = %bb.ab
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !35
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !17
  %i.gu = load i64, ptr %i.f, align 8, !tbaa !17
  %i.gv = call i64 @PySlice_AdjustIndices(i64 noundef %i.gt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %i.gu) #15
  %i.gw = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.gx = load ptr, ptr %i.gl, align 8, !tbaa !45 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !17
  %i.gz = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = getelementptr i8, ptr %i.gw, i64 %i.ha
  store ptr %i.hb, ptr %i.ba, align 8, !tbaa !48
  %i.hc = load ptr, ptr %i.gk, align 8, !tbaa !35 ; 2 uses
  store i64 %i.gv, ptr %i.hc, align 8, !tbaa !17
  %i.hd = load i64, ptr %i.gx, align 8, !tbaa !17
  %i.he = load i64, ptr %i.f, align 8, !tbaa !17
  %i.hf = mul i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.gx, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread

bb.ac:                                            ; preds = %.loopexit
  %i.hg = getelementptr i8, ptr %.val69, i64 168
  %.val64 = load i64, ptr %i.hg, align 8, !tbaa !19
  %i.hh = and i64 %.val64, 67108864
  %.not53 = icmp eq i64 %i.hh, 0
  br i1 %.not53, label %.thread87, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr i8, ptr %1, i64 16
  %.val66 = load i64, ptr %i.hi, align 8, !tbaa !30 ; 2 uses
  %i.hj = icmp sgt i64 %.val66, 0
  br i1 %i.hj, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ad
  %i.hk = getelementptr i8, ptr %1, i64 32
  br label %bb.ae

end_hunk_0
begin_hunk_1_@ndarray_ass_subscript:bb.a
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.29) #15
  br label %bb.w

bb.m:                                             ; preds = %.split
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ai = getelementptr i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr i8, ptr %i.b, i64 80
  %.pn32.in.i = select i1 %i.ak, ptr %i.al, ptr %i.aj
  %.pn32.i = load i64, ptr %.pn32.in.i, align 8, !tbaa !17
  %.pn.i = mul i64 %.pn32.i, %.024.i
  %.023.i = getelementptr i8, ptr %i.ah, i64 %.pn.i ; 3 uses
  %i.am = getelementptr i8, ptr %i.b, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %.not33.i = icmp eq ptr %i.an, null
  br i1 %.not33.i, label %ptr_from_index.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
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
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr i8, ptr %i.b, i64 80
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !39
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr i8, ptr %i.be, i64 56
  %i.bg = call fastcc i32 @copy_buffer(ptr noundef %i.bf, ptr noundef nonnull %3) ; 3 uses
  %i.bh = load i32, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bc, align 8, !tbaa !16
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
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.b, ptr @.str.16, ptr %2
  %i.c = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %spec.store.select) #15 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit107, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @Struct, align 8, !tbaa !14
  %i.f = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef null) #15 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_XDECREF.exit104.thread174, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 24
  %.val88 = load i64, ptr %i.h, align 8, !tbaa !79 ; 20 uses
  %i.i = tail call ptr @PyMemoryView_FromMemory(ptr noundef %0, i64 noundef %3, i32 noundef 512) #15 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_XDECREF.exit101.thread166, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @PyLong_FromLong(i64 noundef 0) #15 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_XDECREF.exit98.thread154, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.33) #15 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %Py_XDECREF.exit95.thread138, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %.val88, 2                       ; 3 uses
  %i.p = tail call ptr @PyTuple_New(i64 noundef %i.o) #15 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %Py_XDECREF.exit.thread118, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.p, i64 32       ; 24 uses
  store ptr %i.i, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %i.p, i64 40
  store ptr %i.k, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val82 = load ptr, ptr %i.u, align 8, !tbaa !10 ; 3 uses
  %i.v = getelementptr i8, ptr %.val82, i64 168
  %.val87 = load i64, ptr %i.v, align 8, !tbaa !19 ; 2 uses
  %i.w = and i64 %.val87, 150994944
  %or.cond177 = icmp eq i64 %i.w, 0
  br i1 %or.cond177, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i90 = icmp eq ptr %.val82, @PyFloat_Type
  br i1 %.not.i90, label %PyObject_TypeCheck.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @PyType_IsSubtype(ptr noundef %.val82, ptr noundef nonnull @PyFloat_Type) #15
  %i.y = icmp ne i32 %i.x, 0
  br label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.h, %bb.i
  %i.z = phi i1 [ true, %bb.h ], [ %i.y, %bb.i ]
  %i.aa = icmp eq i64 %.val88, 1
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.k, label %PyObject_TypeCheck.exit._crit_edge

PyObject_TypeCheck.exit._crit_edge:               ; preds = %PyObject_TypeCheck.exit
  %.val80.pre = load ptr, ptr %i.u, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr i8, ptr %.val80.pre, i64 168
  %.val85.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.old1 = icmp eq i64 %.val88, 1
  br i1 %.old1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %PyObject_TypeCheck.exit, %bb.j
  %i.ab = getelementptr i8, ptr %i.p, i64 48
  store ptr %1, ptr %i.ab, align 8, !tbaa !14
  br label %.loopexit

bb.l:                                             ; preds = %PyObject_TypeCheck.exit._crit_edge, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %PyObject_TypeCheck.exit._crit_edge ], [ %.val87, %bb.j ]
  %i.ac = and i64 %.val85, 100663296
  %or.cond178 = icmp eq i64 %i.ac, 0
  br i1 %or.cond178, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i64 @PySequence_Size(ptr noundef nonnull %1) #15
  %i.ae = icmp eq i64 %i.ad, %.val88
  br i1 %i.ae, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.m
  %i.af = icmp sgt i64 %.val88, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.val = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.ag = getelementptr i8, ptr %.val, i64 168
  %.val83 = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ah = and i64 %.val83, 33554432
  %.not77 = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 10 uses
  br i1 %.not77, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check211 = icmp ult i64 %.val88, 10
  br i1 %min.iters.check211, label %.lr.ph.split.us.preheader223, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.split.us.preheader
  %4 = sub i64 %i.q, %i.a
  %5 = add i64 %4, 15
  %diff.check209 = icmp ult i64 %5, 31
  br i1 %diff.check209, label %.lr.ph.split.us.preheader223, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec214 = and i64 %.val88, 9223372036854775804 ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next219, %vector.body215 ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %index216 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load217 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !14
  %wide.load218 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr [8 x i8], ptr %i.s, i64 %index216 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = getelementptr i8, ptr %i.al, i64 32
  store <2 x ptr> %wide.load217, ptr %i.am, align 8, !tbaa !14
  store <2 x ptr> %wide.load218, ptr %i.an, align 8, !tbaa !14
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ao, label %middle.block220, label %vector.body215, !llvm.loop !81

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %.val88, %n.vec214
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph.split.us.preheader223

.lr.ph.split.us.preheader223:                     ; preds = %vector.memcheck208, %.lr.ph.split.us.preheader, %middle.block220
  %.057179.us.ph = phi i64 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec214, %middle.block220 ] ; 4 uses
  %i.ap = sub nsw i64 %.val88, %.057179.us.ph
  %xtraiter225 = and i64 %i.ap, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader223, %.lr.ph.split.us.prol
  %.057179.us.prol = phi i64 [ %i.at, %.lr.ph.split.us.prol ], [ %.057179.us.ph, %.lr.ph.split.us.preheader223 ] ; 3 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader223 ]
  %.in.us.prol = getelementptr [8 x i8], ptr %i.ai, i64 %.057179.us.prol
  %i.aq = load ptr, ptr %.in.us.prol, align 8, !tbaa !14
  %i.ar = getelementptr [8 x i8], ptr %i.s, i64 %.057179.us.prol
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !14
  %i.at = add nuw nsw i64 %.057179.us.prol, 1     ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !82

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader223
  %.057179.us.unr = phi i64 [ %.057179.us.ph, %.lr.ph.split.us.preheader223 ], [ %i.at, %.lr.ph.split.us.prol ]
  %i.au = sub nsw i64 %.057179.us.ph, %.val88
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.057179.us = phi i64 [ %i.cb, %.lr.ph.split.us ], [ %.057179.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 10 uses
  %.in.us = getelementptr [8 x i8], ptr %i.ai, i64 %.057179.us
  %i.aw = load ptr, ptr %.in.us, align 8, !tbaa !14
  %i.ax = getelementptr [8 x i8], ptr %i.s, i64 %.057179.us
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !14
  %i.az = add nuw nsw i64 %.057179.us, 1          ; 2 uses
  %.in.us.1 = getelementptr [8 x i8], ptr %i.ai, i64 %i.az
  %i.ba = load ptr, ptr %.in.us.1, align 8, !tbaa !14
  %i.bb = getelementptr [8 x i8], ptr %i.s, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = add nuw nsw i64 %.057179.us, 2          ; 2 uses
  %.in.us.2 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bd
  %i.be = load ptr, ptr %.in.us.2, align 8, !tbaa !14
  %i.bf = getelementptr [8 x i8], ptr %i.s, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !14
  %i.bh = add nuw nsw i64 %.057179.us, 3          ; 2 uses
  %.in.us.3 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bh
  %i.bi = load ptr, ptr %.in.us.3, align 8, !tbaa !14
  %i.bj = getelementptr [8 x i8], ptr %i.s, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !14
  %i.bl = add nuw nsw i64 %.057179.us, 4          ; 2 uses
  %.in.us.4 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bl
  %i.bm = load ptr, ptr %.in.us.4, align 8, !tbaa !14
  %i.bn = getelementptr [8 x i8], ptr %i.s, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !14
  %i.bp = add nuw nsw i64 %.057179.us, 5          ; 2 uses
  %.in.us.5 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bp
  %i.bq = load ptr, ptr %.in.us.5, align 8, !tbaa !14
  %i.br = getelementptr [8 x i8], ptr %i.s, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !14
  %i.bt = add nuw nsw i64 %.057179.us, 6          ; 2 uses
  %.in.us.6 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bt
  %i.bu = load ptr, ptr %.in.us.6, align 8, !tbaa !14
  %i.bv = getelementptr [8 x i8], ptr %i.s, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !14
  %i.bx = add nuw nsw i64 %.057179.us, 7          ; 2 uses
  %.in.us.7 = getelementptr [8 x i8], ptr %i.ai, i64 %i.bx
  %i.by = load ptr, ptr %.in.us.7, align 8, !tbaa !14
  %i.bz = getelementptr [8 x i8], ptr %i.s, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !14
  %i.cb = add nuw nsw i64 %.057179.us, 8          ; 2 uses
  %exitcond183.not.7 = icmp eq i64 %i.cb, %.val88
  br i1 %exitcond183.not.7, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cc = getelementptr i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31 ; 11 uses
  %min.iters.check = icmp ult i64 %.val88, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %6 = sub i64 %i.q, %i.ce
  %7 = add i64 %6, 47
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.val88, 9223372036854775804   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !14
  %wide.load207 = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !14
  %i.ch = getelementptr [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = getelementptr i8, ptr %i.ch, i64 32
  store <2 x ptr> %wide.load, ptr %i.ci, align 8, !tbaa !14
  store <2 x ptr> %wide.load207, ptr %i.cj, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val88, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %.057179.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cl = sub nsw i64 %.val88, %.057179.ph
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.057179.prol = phi i64 [ %i.cp, %scalar.ph.prol ], [ %.057179.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.in.prol = getelementptr [8 x i8], ptr %i.cd, i64 %.057179.prol
  %i.cm = load ptr, ptr %.in.prol, align 8, !tbaa !14
  %i.cn = getelementptr [8 x i8], ptr %i.s, i64 %.057179.prol
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !14
  %i.cp = add nuw nsw i64 %.057179.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !85

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.057179.unr = phi i64 [ %.057179.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %i.cq = sub nsw i64 %.057179.ph, %.val88
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.057179 = phi i64 [ %i.dx, %scalar.ph ], [ %.057179.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %.in = getelementptr [8 x i8], ptr %i.cd, i64 %.057179
  %i.cs = load ptr, ptr %.in, align 8, !tbaa !14
  %i.ct = getelementptr [8 x i8], ptr %i.s, i64 %.057179
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !14
  %i.cv = add nuw nsw i64 %.057179, 1             ; 2 uses
  %.in.1 = getelementptr [8 x i8], ptr %i.cd, i64 %i.cv
  %i.cw = load ptr, ptr %.in.1, align 8, !tbaa !14
  %i.cx = getelementptr [8 x i8], ptr %i.s, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !14
  %i.cz = add nuw nsw i64 %.057179, 2             ; 2 uses
  %.in.2 = getelementptr [8 x i8], ptr %i.cd, i64 %i.cz
  %i.da = load ptr, ptr %.in.2, align 8, !tbaa !14
  %i.db = getelementptr [8 x i8], ptr %i.s, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !14
  %i.dd = add nuw nsw i64 %.057179, 3             ; 2 uses
  %.in.3 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dd
  %i.de = load ptr, ptr %.in.3, align 8, !tbaa !14
  %i.df = getelementptr [8 x i8], ptr %i.s, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !14
  %i.dh = add nuw nsw i64 %.057179, 4             ; 2 uses
  %.in.4 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dh
  %i.di = load ptr, ptr %.in.4, align 8, !tbaa !14
  %i.dj = getelementptr [8 x i8], ptr %i.s, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !14
  %i.dl = add nuw nsw i64 %.057179, 5             ; 2 uses
  %.in.5 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dl
  %i.dm = load ptr, ptr %.in.5, align 8, !tbaa !14
  %i.dn = getelementptr [8 x i8], ptr %i.s, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !14
  %i.dp = add nuw nsw i64 %.057179, 6             ; 2 uses
  %.in.6 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dp
  %i.dq = load ptr, ptr %.in.6, align 8, !tbaa !14
  %i.dr = getelementptr [8 x i8], ptr %i.s, i64 %i.dp
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !14
  %i.dt = add nuw nsw i64 %.057179, 7             ; 2 uses
  %.in.7 = getelementptr [8 x i8], ptr %i.cd, i64 %i.dt
  %i.du = load ptr, ptr %.in.7, align 8, !tbaa !14
  %i.dv = getelementptr [8 x i8], ptr %i.s, i64 %i.dt
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !14
  %i.dx = add nuw nsw i64 %.057179, 8             ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.dx, %.val88
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !86

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.dy, ptr noundef nonnull @.str.34) #15
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %middle.block220, %.preheader, %bb.k
  %i.dz = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.m, ptr noundef nonnull %i.p) #15 ; 4 uses
  %.not78 = icmp eq ptr %i.dz, null
  br i1 %.not78, label %Py_DECREF.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.ea, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !16
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dz) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %.loopexit, %bb.n
  %.0 = phi i32 [ -1, %bb.n ], [ -1, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ] ; 3 uses
  %i.ed = icmp sgt i64 %i.o, 0
  br i1 %i.ed, label %.lr.ph181.preheader, label %._crit_edge

.lr.ph181.preheader:                              ; preds = %Py_DECREF.exit
  %xtraiter228 = and i64 %.val88, 1
  %i.ee = icmp eq i64 %.val88, -1
  br i1 %i.ee, label %.lr.ph181.epil.preheader, label %.lr.ph181.preheader.new

.lr.ph181.preheader.new:                          ; preds = %.lr.ph181.preheader
  %unroll_iter = and i64 %i.o, 9223372036854775806
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %Py_XINCREF.exit.1, %.lr.ph181.preheader.new
  %.158180 = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %i.eq, %Py_XINCREF.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %niter.next.1, %Py_XINCREF.exit.1 ]
  %i.ef = getelementptr [8 x i8], ptr %i.s, i64 %.158180
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !14 ; 3 uses
  %.not.i91 = icmp eq ptr %i.eg, null
  br i1 %.not.i91, label %Py_XINCREF.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph181
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !16 ; 2 uses
  %i.ei = icmp ugt i32 %i.eh, -1073741825
  br i1 %i.ei, label %Py_XINCREF.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = add nuw i32 %i.eh, 1
  store i32 %i.ej, ptr %i.eg, align 8, !tbaa !16
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %.lr.ph181, %bb.r, %bb.s
  %i.ek = getelementptr [8 x i8], ptr %i.s, i64 %.158180
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14 ; 3 uses
  %.not.i91.1 = icmp eq ptr %i.em, null
  br i1 %.not.i91.1, label %Py_XINCREF.exit.1, label %bb.t

bb.t:                                             ; preds = %Py_XINCREF.exit
  %i.en = load i32, ptr %i.em, align 8, !tbaa !16 ; 2 uses
  %i.eo = icmp ugt i32 %i.en, -1073741825
  br i1 %i.eo, label %Py_XINCREF.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = add nuw i32 %i.en, 1
  store i32 %i.ep, ptr %i.em, align 8, !tbaa !16
  br label %Py_XINCREF.exit.1

Py_XINCREF.exit.1:                                ; preds = %bb.u, %bb.t, %Py_XINCREF.exit
  %i.eq = add nuw nsw i64 %.158180, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph181, !llvm.loop !87

._crit_edge.loopexit.unr-lcssa:                   ; preds = %Py_XINCREF.exit.1
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %._crit_edge, label %.lr.ph181.epil.preheader

.lr.ph181.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph181.preheader
  %.158180.epil.init = phi i64 [ 0, %.lr.ph181.preheader ], [ %i.eq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod230 = trunc i64 %.val88 to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.er = getelementptr [8 x i8], ptr %i.s, i64 %.158180.epil.init
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14 ; 3 uses
  %.not.i91.epil = icmp eq ptr %i.es, null
  br i1 %.not.i91.epil, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph181.epil.preheader
  %i.et = load i32, ptr %i.es, align 8, !tbaa !16 ; 2 uses
  %i.eu = icmp ugt i32 %i.et, -1073741825
end_hunk_1
begin_hunk_2_@ndarray_push_base:bb.a
bb.r:                                             ; preds = %bb.q
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.70) #15
  br label %init_ndbuf.exit.thread

bb.s:                                             ; preds = %get_itemsize.exit.i
  %i.ab = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef %1) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %init_ndbuf.exit.thread, label %Py_INCREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ae = getelementptr i8, ptr %1, i64 8
  %.val79.i = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr i8, ptr %.val79.i, i64 168
  %.val89.i = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ag = and i64 %.val89.i, 100663296
  %or.cond.i = icmp eq i64 %i.ag, 0
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ah = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.71) #15
  br label %init_ndbuf.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ai = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %Py_INCREF.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %1, align 8, !tbaa !16
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.x, %bb.w, %bb.t
  %.049.i = phi ptr [ %i.ac, %bb.t ], [ %1, %bb.w ], [ %1, %bb.x ] ; 16 uses
  %i.al = getelementptr i8, ptr %.049.i, i64 8
  %.in137.i = getelementptr i8, ptr %.049.i, i64 16 ; 2 uses
  %i.am = load i64, ptr %.in137.i, align 8, !tbaa !30 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %Py_INCREF.exit.i
  %i.ao = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.ao, ptr noundef nonnull @.str.72) #15
  %i.ap = load i32, ptr %.049.i, align 8, !tbaa !16 ; 2 uses
  %.not.i74.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i74.i, label %bb.z, label %init_ndbuf.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %.049.i, align 8, !tbaa !16
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %init_ndbuf.exit.thread

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %.049.i) #15
  br label %init_ndbuf.exit.thread

bb.ab:                                            ; preds = %Py_INCREF.exit.i
  %i.as = mul i64 %i.am, %i.u                     ; 4 uses
  %i.at = srem i64 %4, %i.u
  %.not.i105.i = icmp eq i64 %i.at, 0
  br i1 %.not.i105.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.73) #15
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.av = icmp slt i64 %4, 0
  %i.aw = add nuw i64 %i.u, %4
  %i.ax = icmp sgt i64 %i.aw, %i.as
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ay = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.74) #15
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.az = tail call ptr @PyMem_Malloc(i64 noundef 136) #15 ; 28 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bb = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.bc = getelementptr i8, ptr %i.az, i64 16     ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr i8, ptr %i.az, i64 24     ; 4 uses
  store i64 %4, ptr %i.bd, align 8, !tbaa !101
  %i.be = tail call ptr @PyMem_Malloc(i64 noundef %i.as) #15 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.az, i64 32     ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !55
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.bh = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.az) #15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %i.bi = load i32, ptr %.049.i, align 8, !tbaa !16 ; 2 uses
  %.not.i72.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i72.i, label %bb.ak, label %init_ndbuf.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %.049.i, align 8, !tbaa !16
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.al, label %init_ndbuf.exit.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %.049.i) #15
  br label %init_ndbuf.exit.thread

bb.am:                                            ; preds = %bb.ah
  %i.bl = getelementptr i8, ptr %i.az, i64 40     ; 11 uses
  store i32 %6, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr i8, ptr %i.az, i64 48
  store i64 0, ptr %i.bm, align 8, !tbaa !56
  %i.bn = getelementptr i8, ptr %i.az, i64 56     ; 8 uses
  %i.bo = getelementptr i8, ptr %i.az, i64 64
  store ptr null, ptr %i.bo, align 8, !tbaa !54
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !48
  %i.bp = getelementptr i8, ptr %i.az, i64 72     ; 11 uses
  store i64 %i.as, ptr %i.bp, align 8, !tbaa !40
  %i.bq = getelementptr i8, ptr %i.az, i64 80     ; 4 uses
  store i64 1, ptr %i.bq, align 8, !tbaa !39
  %i.br = getelementptr i8, ptr %i.az, i64 88     ; 2 uses
  store i32 0, ptr %i.br, align 8, !tbaa !53
  %i.bs = getelementptr i8, ptr %i.az, i64 96     ; 4 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr i8, ptr %i.az, i64 92     ; 8 uses
  store i32 1, ptr %i.bt, align 4, !tbaa !27
  %i.bu = getelementptr i8, ptr %i.az, i64 104    ; 8 uses
  %i.bv = getelementptr i8, ptr %i.az, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.bv, align 8, !tbaa !97
  %i.bw = tail call ptr @PyMemoryView_FromBuffer(ptr noundef nonnull %i.bn) #15 ; 7 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %init_simple.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.by = load ptr, ptr @Struct, align 8, !tbaa !14
  %i.bz = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.by, ptr noundef %5, ptr noundef null) #15 ; 10 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %pack_from_list.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = load i64, ptr %.in137.i, align 8, !tbaa !30 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 24
  %.val124.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !79 ; 22 uses
  %i.cd = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.bz, ptr noundef nonnull @.str.33) #15 ; 8 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %.not.i101.i.i.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i101.i.i.i, label %bb.aq, label %pack_from_list.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.bz, align 8, !tbaa !16
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %Py_DECREF.exit102.sink.split.i.i.i, label %pack_from_list.exit.i.i

bb.ar:                                            ; preds = %bb.ao
  %i.ci = add i64 %.val124.i.i.i, 2               ; 2 uses
  %i.cj = tail call ptr @PyTuple_New(i64 noundef %i.ci) #15 ; 10 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %bb.as, label %.preheader132.i.i.i

.preheader132.i.i.i:                              ; preds = %bb.ar
  %i.cm = icmp sgt i64 %i.cb, 0
  br i1 %i.cm, label %.lr.ph139.i.i.i, label %.loopexit133.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.preheader132.i.i.i
  %i.cn = getelementptr i8, ptr %i.cj, i64 32     ; 21 uses
  %i.co = icmp ult i64 %.val124.i.i.i, 9223372036854775806
  %i.cp = getelementptr i8, ptr %i.cj, i64 40     ; 2 uses
  %i.cq = getelementptr i8, ptr %.049.i, i64 24
  %i.cr = getelementptr i8, ptr %.049.i, i64 32
  %.old1.i.i.i = icmp eq i64 %.val124.i.i.i, 1    ; 3 uses
  %i.cs = icmp sgt i64 %.val124.i.i.i, 0
  %i.ct = getelementptr i8, ptr %i.cj, i64 48
  %i.cu = shl i64 %.val124.i.i.i, 3
  %i.cv = add i64 %i.cu, 8
  %min.iters.check80 = icmp ult i64 %.val124.i.i.i, 4
  %n.vec83 = and i64 %.val124.i.i.i, 9223372036854775804 ; 3 uses
  %cmp.n90 = icmp eq i64 %.val124.i.i.i, %n.vec83
  %min.iters.check = icmp ult i64 %.val124.i.i.i, 4
  %n.vec = and i64 %.val124.i.i.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %.val124.i.i.i, %n.vec
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.cw = load i32, ptr %i.cd, align 8, !tbaa !16 ; 2 uses
  %.not.i99.i.i.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i99.i.i.i, label %bb.at, label %Py_DECREF.exit100.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cd, align 8, !tbaa !16
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.au, label %Py_DECREF.exit100.i.i.i

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cd) #15
  br label %Py_DECREF.exit100.i.i.i

Py_DECREF.exit100.i.i.i:                          ; preds = %bb.au, %bb.at, %bb.as
  %i.cz = load i32, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %.not.i97.i.i.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i97.i.i.i, label %bb.av, label %pack_from_list.exit.i.i

bb.av:                                            ; preds = %Py_DECREF.exit100.i.i.i
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.bz, align 8, !tbaa !16
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %Py_DECREF.exit102.sink.split.i.i.i, label %pack_from_list.exit.i.i

bb.aw:                                            ; preds = %Py_DECREF.exit96.i.i.i, %.lr.ph139.i.i.i
  %.073138.i.i.i = phi i64 [ 0, %.lr.ph139.i.i.i ], [ %i.hu, %Py_DECREF.exit96.i.i.i ] ; 3 uses
  %.076137.i.i.i = phi ptr [ null, %.lr.ph139.i.i.i ], [ %i.dg, %Py_DECREF.exit96.i.i.i ] ; 4 uses
  store ptr %i.bw, ptr %i.cn, align 8, !tbaa !14
  br i1 %i.co, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aw
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.cv, i1 false), !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.aw
  %.not.i126.i.i.i = icmp eq ptr %.076137.i.i.i, null
  br i1 %.not.i126.i.i.i, label %Py_XDECREF.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i
  %i.dc = load i32, ptr %.076137.i.i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %Py_XDECREF.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %.076137.i.i.i, align 8, !tbaa !16
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.az, label %Py_XDECREF.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_Py_Dealloc(ptr noundef nonnull %.076137.i.i.i) #15
  br label %Py_XDECREF.exit.i.i.i

Py_XDECREF.exit.i.i.i:                            ; preds = %bb.az, %bb.ay, %bb.ax, %._crit_edge.i.i.i
  %i.df = mul i64 %.073138.i.i.i, %i.u
  %i.dg = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.df) #15 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.loopexit133.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %Py_XDECREF.exit.i.i.i
  store ptr %i.dg, ptr %i.cp, align 8, !tbaa !14
  %.val113.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !10
  %i.di = getelementptr i8, ptr %.val113.i.i.i, i64 168
  %.val120.i.i.i = load i64, ptr %i.di, align 8, !tbaa !19
  %i.dj = and i64 %.val120.i.i.i, 33554432
  %.not83.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not83.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dk = load ptr, ptr %i.cq, align 8, !tbaa !31
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn.i.i.i = phi ptr [ %i.dk, %bb.bb ], [ %i.cr, %bb.ba ]
  %.in.i.i.i = getelementptr [8 x i8], ptr %.pn.i.i.i, i64 %.073138.i.i.i
  %i.dl = load ptr, ptr %.in.i.i.i, align 8, !tbaa !14 ; 6 uses
  %i.dm = ptrtoaddr ptr %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.dl, i64 8      ; 3 uses
  %.val112.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !10 ; 3 uses
  %i.do = getelementptr i8, ptr %.val112.i.i.i, i64 168
  %.val119.i.i.i = load i64, ptr %i.do, align 8, !tbaa !19 ; 3 uses
  %i.dp = and i64 %.val119.i.i.i, 150994944
  %or.cond130.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %or.cond130.i.i.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.not.i127.i.i.i = icmp eq ptr %.val112.i.i.i, @PyFloat_Type
  br i1 %.not.i127.i.i.i, label %PyObject_TypeCheck.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dq = tail call i32 @PyType_IsSubtype(ptr noundef %.val112.i.i.i, ptr noundef nonnull @PyFloat_Type) #15
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = select i1 %i.dr, i1 %.old1.i.i.i, i1 false
  br i1 %i.ds, label %bb.bg, label %.PyObject_TypeCheck.exit._crit_edge.i_crit_edge.i.i

.PyObject_TypeCheck.exit._crit_edge.i_crit_edge.i.i: ; preds = %bb.be
  %.val110.pre.i.pre.i.i = load ptr, ptr %i.dn, align 8, !tbaa !10
  %.phi.trans.insert.i.phi.trans.insert.i.i = getelementptr i8, ptr %.val110.pre.i.pre.i.i, i64 168
  %.val117.pre.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.phi.trans.insert.i.i, align 8, !tbaa !19
  br label %PyObject_TypeCheck.exit._crit_edge.i.i.i

PyObject_TypeCheck.exit.i.i.i:                    ; preds = %bb.bd
  br i1 %.old1.i.i.i, label %bb.bg, label %PyObject_TypeCheck.exit._crit_edge.i.i.i

bb.bf:                                            ; preds = %bb.bc
  br i1 %.old1.i.i.i, label %bb.bg, label %PyObject_TypeCheck.exit._crit_edge.i.i.i

bb.bg:                                            ; preds = %bb.bf, %PyObject_TypeCheck.exit.i.i.i, %bb.be
  store ptr %i.dl, ptr %i.ct, align 8, !tbaa !14
  br label %.loopexit.i.i.i

PyObject_TypeCheck.exit._crit_edge.i.i.i:         ; preds = %bb.bf, %PyObject_TypeCheck.exit.i.i.i, %.PyObject_TypeCheck.exit._crit_edge.i_crit_edge.i.i
  %.val117.i.i.i = phi i64 [ %.val119.i.i.i, %bb.bf ], [ %.val117.pre.i.pre.i.i, %.PyObject_TypeCheck.exit._crit_edge.i_crit_edge.i.i ], [ %.val119.i.i.i, %PyObject_TypeCheck.exit.i.i.i ]
  %i.dt = and i64 %.val117.i.i.i, 100663296
  %or.cond131.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %or.cond131.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %PyObject_TypeCheck.exit._crit_edge.i.i.i
  %i.du = tail call i64 @PySequence_Size(ptr noundef nonnull %i.dl) #15
  %i.dv = icmp eq i64 %i.du, %.val124.i.i.i
  br i1 %i.dv, label %.preheader.i.i.i, label %bb.bi

.preheader.i.i.i:                                 ; preds = %bb.bh
  br i1 %i.cs, label %.lr.ph136.i.i.i, label %.loopexit.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.val.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !10
  %i.dw = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val115.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dx = and i64 %.val115.i.i.i, 33554432
  %.not88.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr i8, ptr %i.dl, i64 32     ; 10 uses
  br i1 %.not88.i.i.i, label %.lr.ph136.split.us.i.i.i.preheader, label %.lr.ph136.split.i.i.i

.lr.ph136.split.us.i.i.i.preheader:               ; preds = %.lr.ph136.i.i.i
  br i1 %min.iters.check, label %.lr.ph136.split.us.i.i.i.preheader144, label %.lr.ph136.split.us.i.i.i.preheader.a

.lr.ph136.split.us.i.i.i.preheader.a:             ; preds = %.lr.ph136.split.us.i.i.i.preheader
  %i.dz = sub i64 %i.ck, %i.dm
  %7 = add i64 %i.dz, 15
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %.lr.ph136.split.us.i.i.i.preheader144, label %vector.body

vector.body:                                      ; preds = %.lr.ph136.split.us.i.i.i.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph136.split.us.i.i.i.preheader.a ] ; 3 uses
  %i.ea = getelementptr [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !14
  %wide.load76 = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !14
  %i.ec = getelementptr [8 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = getelementptr i8, ptr %i.ec, i64 32
  store <2 x ptr> %wide.load, ptr %i.ed, align 8, !tbaa !14
  store <2 x ptr> %wide.load76, ptr %i.ee, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i.i, label %.lr.ph136.split.us.i.i.i.preheader144

.lr.ph136.split.us.i.i.i.preheader144:            ; preds = %.lr.ph136.split.us.i.i.i.preheader.a, %.lr.ph136.split.us.i.i.i.preheader, %middle.block
  %.1135.us.i.i.i.ph = phi i64 [ 0, %.lr.ph136.split.us.i.i.i.preheader.a ], [ 0, %.lr.ph136.split.us.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.eg = sub nsw i64 %.val124.i.i.i, %.1135.us.i.i.i.ph
  %xtraiter146 = and i64 %i.eg, 7                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph136.split.us.i.i.i.prol.loopexit, label %.lr.ph136.split.us.i.i.i.prol

.lr.ph136.split.us.i.i.i.prol:                    ; preds = %.lr.ph136.split.us.i.i.i.preheader144, %.lr.ph136.split.us.i.i.i.prol
  %.1135.us.i.i.i.prol = phi i64 [ %i.ek, %.lr.ph136.split.us.i.i.i.prol ], [ %.1135.us.i.i.i.ph, %.lr.ph136.split.us.i.i.i.preheader144 ] ; 3 uses
  %prol.iter148 = phi i64 [ %prol.iter148.next, %.lr.ph136.split.us.i.i.i.prol ], [ 0, %.lr.ph136.split.us.i.i.i.preheader144 ]
  %.in89.us.i.i.i.prol = getelementptr [8 x i8], ptr %i.dy, i64 %.1135.us.i.i.i.prol
  %i.eh = load ptr, ptr %.in89.us.i.i.i.prol, align 8, !tbaa !14
  %i.ei = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.us.i.i.i.prol
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !14
  %i.ek = add nuw nsw i64 %.1135.us.i.i.i.prol, 1 ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph136.split.us.i.i.i.prol.loopexit, label %.lr.ph136.split.us.i.i.i.prol, !llvm.loop !103

.lr.ph136.split.us.i.i.i.prol.loopexit:           ; preds = %.lr.ph136.split.us.i.i.i.prol, %.lr.ph136.split.us.i.i.i.preheader144
  %.1135.us.i.i.i.unr = phi i64 [ %.1135.us.i.i.i.ph, %.lr.ph136.split.us.i.i.i.preheader144 ], [ %i.ek, %.lr.ph136.split.us.i.i.i.prol ]
  %i.el = sub nsw i64 %.1135.us.i.i.i.ph, %.val124.i.i.i
  %i.em = icmp ugt i64 %i.el, -8
  br i1 %i.em, label %.loopexit.i.i.i, label %.lr.ph136.split.us.i.i.i

.lr.ph136.split.us.i.i.i:                         ; preds = %.lr.ph136.split.us.i.i.i.prol.loopexit, %.lr.ph136.split.us.i.i.i
  %.1135.us.i.i.i = phi i64 [ %i.fs, %.lr.ph136.split.us.i.i.i ], [ %.1135.us.i.i.i.unr, %.lr.ph136.split.us.i.i.i.prol.loopexit ] ; 10 uses
  %.in89.us.i.i.i = getelementptr [8 x i8], ptr %i.dy, i64 %.1135.us.i.i.i
  %i.en = load ptr, ptr %.in89.us.i.i.i, align 8, !tbaa !14
  %i.eo = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.us.i.i.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store ptr %i.en, ptr %i.ep, align 8, !tbaa !14
  %i.eq = add nuw nsw i64 %.1135.us.i.i.i, 1      ; 2 uses
  %.in89.us.i.i.i.1 = getelementptr [8 x i8], ptr %i.dy, i64 %i.eq
  %i.er = load ptr, ptr %.in89.us.i.i.i.1, align 8, !tbaa !14
  %i.es = getelementptr [8 x i8], ptr %i.cn, i64 %i.eq
  %i.et = getelementptr i8, ptr %i.es, i64 16
  store ptr %i.er, ptr %i.et, align 8, !tbaa !14
  %i.eu = add nuw nsw i64 %.1135.us.i.i.i, 2      ; 2 uses
  %.in89.us.i.i.i.2 = getelementptr [8 x i8], ptr %i.dy, i64 %i.eu
  %i.ev = load ptr, ptr %.in89.us.i.i.i.2, align 8, !tbaa !14
  %i.ew = getelementptr [8 x i8], ptr %i.cn, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !14
  %i.ey = add nuw nsw i64 %.1135.us.i.i.i, 3      ; 2 uses
  %.in89.us.i.i.i.3 = getelementptr [8 x i8], ptr %i.dy, i64 %i.ey
  %i.ez = load ptr, ptr %.in89.us.i.i.i.3, align 8, !tbaa !14
  %i.fa = getelementptr [8 x i8], ptr %i.cn, i64 %i.ey
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !14
  %i.fc = add nuw nsw i64 %.1135.us.i.i.i, 4      ; 2 uses
  %.in89.us.i.i.i.4 = getelementptr [8 x i8], ptr %i.dy, i64 %i.fc
  %i.fd = load ptr, ptr %.in89.us.i.i.i.4, align 8, !tbaa !14
  %i.fe = getelementptr [8 x i8], ptr %i.cn, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !14
  %i.fg = add nuw nsw i64 %.1135.us.i.i.i, 5      ; 2 uses
  %.in89.us.i.i.i.5 = getelementptr [8 x i8], ptr %i.dy, i64 %i.fg
  %i.fh = load ptr, ptr %.in89.us.i.i.i.5, align 8, !tbaa !14
  %i.fi = getelementptr [8 x i8], ptr %i.cn, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store ptr %i.fh, ptr %i.fj, align 8, !tbaa !14
  %i.fk = add nuw nsw i64 %.1135.us.i.i.i, 6      ; 2 uses
  %.in89.us.i.i.i.6 = getelementptr [8 x i8], ptr %i.dy, i64 %i.fk
  %i.fl = load ptr, ptr %.in89.us.i.i.i.6, align 8, !tbaa !14
  %i.fm = getelementptr [8 x i8], ptr %i.cn, i64 %i.fk
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !14
  %i.fo = add nuw nsw i64 %.1135.us.i.i.i, 7      ; 2 uses
  %.in89.us.i.i.i.7 = getelementptr [8 x i8], ptr %i.dy, i64 %i.fo
  %i.fp = load ptr, ptr %.in89.us.i.i.i.7, align 8, !tbaa !14
  %i.fq = getelementptr [8 x i8], ptr %i.cn, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !14
  %i.fs = add nuw nsw i64 %.1135.us.i.i.i, 8      ; 2 uses
  %exitcond147.not.i.i.i.7 = icmp eq i64 %i.fs, %.val124.i.i.i
  br i1 %exitcond147.not.i.i.i.7, label %.loopexit.i.i.i, label %.lr.ph136.split.us.i.i.i, !llvm.loop !104

.lr.ph136.split.i.i.i:                            ; preds = %.lr.ph136.i.i.i
  %8 = getelementptr i8, ptr %i.dl, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !31       ; 11 uses
  br i1 %min.iters.check80, label %scalar.ph79.preheader, label %.lr.ph136.split.i.i.i.a

.lr.ph136.split.i.i.i.a:                          ; preds = %.lr.ph136.split.i.i.i
  %i.ft = ptrtoaddr ptr %9 to i64
  %i.fu = sub i64 %i.ck, %i.ft
  %10 = add i64 %i.fu, 47
  %diff.check78 = icmp ult i64 %10, 31
  br i1 %diff.check78, label %scalar.ph79.preheader, label %vector.body84

vector.body84:                                    ; preds = %.lr.ph136.split.i.i.i.a, %vector.body84
  %index85 = phi i64 [ %index.next88, %vector.body84 ], [ 0, %.lr.ph136.split.i.i.i.a ] ; 3 uses
  %i.fv = getelementptr [8 x i8], ptr %9, i64 %index85 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %wide.load86 = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !14
  %wide.load87 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !14
  %i.fx = getelementptr [8 x i8], ptr %i.cn, i64 %index85 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  %i.fz = getelementptr i8, ptr %i.fx, i64 32
  store <2 x ptr> %wide.load86, ptr %i.fy, align 8, !tbaa !14
  store <2 x ptr> %wide.load87, ptr %i.fz, align 8, !tbaa !14
  %index.next88 = add nuw i64 %index85, 4         ; 2 uses
  %i.ga = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.ga, label %middle.block89, label %vector.body84, !llvm.loop !105

middle.block89:                                   ; preds = %vector.body84
  br i1 %cmp.n90, label %.loopexit.i.i.i, label %scalar.ph79.preheader

scalar.ph79.preheader:                            ; preds = %.lr.ph136.split.i.i.i.a, %.lr.ph136.split.i.i.i, %middle.block89
  %.1135.i.i.i.ph = phi i64 [ 0, %.lr.ph136.split.i.i.i.a ], [ 0, %.lr.ph136.split.i.i.i ], [ %n.vec83, %middle.block89 ] ; 4 uses
  %i.gb = sub nsw i64 %.val124.i.i.i, %.1135.i.i.i.ph
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph79.prol.loopexit, label %scalar.ph79.prol

scalar.ph79.prol:                                 ; preds = %scalar.ph79.preheader, %scalar.ph79.prol
  %.1135.i.i.i.prol = phi i64 [ %i.gf, %scalar.ph79.prol ], [ %.1135.i.i.i.ph, %scalar.ph79.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph79.prol ], [ 0, %scalar.ph79.preheader ]
  %.in89.i.i.i.prol = getelementptr [8 x i8], ptr %9, i64 %.1135.i.i.i.prol
  %i.gc = load ptr, ptr %.in89.i.i.i.prol, align 8, !tbaa !14
  %i.gd = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.i.i.i.prol
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !14
  %i.gf = add nuw nsw i64 %.1135.i.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph79.prol.loopexit, label %scalar.ph79.prol, !llvm.loop !106

scalar.ph79.prol.loopexit:                        ; preds = %scalar.ph79.prol, %scalar.ph79.preheader
  %.1135.i.i.i.unr = phi i64 [ %.1135.i.i.i.ph, %scalar.ph79.preheader ], [ %i.gf, %scalar.ph79.prol ]
  %i.gg = sub nsw i64 %.1135.i.i.i.ph, %.val124.i.i.i
  %i.gh = icmp ugt i64 %i.gg, -8
  br i1 %i.gh, label %.loopexit.i.i.i, label %scalar.ph79

scalar.ph79:                                      ; preds = %scalar.ph79.prol.loopexit, %scalar.ph79
  %.1135.i.i.i = phi i64 [ %i.hn, %scalar.ph79 ], [ %.1135.i.i.i.unr, %scalar.ph79.prol.loopexit ] ; 10 uses
  %.in89.i.i.i = getelementptr [8 x i8], ptr %9, i64 %.1135.i.i.i
  %i.gi = load ptr, ptr %.in89.i.i.i, align 8, !tbaa !14
  %i.gj = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.i.i.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !14
  %i.gl = add nuw nsw i64 %.1135.i.i.i, 1         ; 2 uses
  %.in89.i.i.i.1 = getelementptr [8 x i8], ptr %9, i64 %i.gl
  %i.gm = load ptr, ptr %.in89.i.i.i.1, align 8, !tbaa !14
  %i.gn = getelementptr [8 x i8], ptr %i.cn, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !14
  %i.gp = add nuw nsw i64 %.1135.i.i.i, 2         ; 2 uses
  %.in89.i.i.i.2 = getelementptr [8 x i8], ptr %9, i64 %i.gp
  %i.gq = load ptr, ptr %.in89.i.i.i.2, align 8, !tbaa !14
  %i.gr = getelementptr [8 x i8], ptr %i.cn, i64 %i.gp
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !14
  %i.gt = add nuw nsw i64 %.1135.i.i.i, 3         ; 2 uses
  %.in89.i.i.i.3 = getelementptr [8 x i8], ptr %9, i64 %i.gt
  %i.gu = load ptr, ptr %.in89.i.i.i.3, align 8, !tbaa !14
  %i.gv = getelementptr [8 x i8], ptr %i.cn, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  store ptr %i.gu, ptr %i.gw, align 8, !tbaa !14
  %i.gx = add nuw nsw i64 %.1135.i.i.i, 4         ; 2 uses
  %.in89.i.i.i.4 = getelementptr [8 x i8], ptr %9, i64 %i.gx
  %i.gy = load ptr, ptr %.in89.i.i.i.4, align 8, !tbaa !14
  %i.gz = getelementptr [8 x i8], ptr %i.cn, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store ptr %i.gy, ptr %i.ha, align 8, !tbaa !14
  %i.hb = add nuw nsw i64 %.1135.i.i.i, 5         ; 2 uses
  %.in89.i.i.i.5 = getelementptr [8 x i8], ptr %9, i64 %i.hb
  %i.hc = load ptr, ptr %.in89.i.i.i.5, align 8, !tbaa !14
  %i.hd = getelementptr [8 x i8], ptr %i.cn, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !14
  %i.hf = add nuw nsw i64 %.1135.i.i.i, 6         ; 2 uses
  %.in89.i.i.i.6 = getelementptr [8 x i8], ptr %9, i64 %i.hf
  %i.hg = load ptr, ptr %.in89.i.i.i.6, align 8, !tbaa !14
  %i.hh = getelementptr [8 x i8], ptr %i.cn, i64 %i.hf
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store ptr %i.hg, ptr %i.hi, align 8, !tbaa !14
  %i.hj = add nuw nsw i64 %.1135.i.i.i, 7         ; 2 uses
  %.in89.i.i.i.7 = getelementptr [8 x i8], ptr %9, i64 %i.hj
  %i.hk = load ptr, ptr %.in89.i.i.i.7, align 8, !tbaa !14
  %i.hl = getelementptr [8 x i8], ptr %i.cn, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !14
  %i.hn = add nuw nsw i64 %.1135.i.i.i, 8         ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %i.hn, %.val124.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %.loopexit.i.i.i, label %scalar.ph79, !llvm.loop !107

bb.bi:                                            ; preds = %bb.bh, %PyObject_TypeCheck.exit._crit_edge.i.i.i
  %i.ho = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.ho, ptr noundef nonnull @.str.34) #15
  br label %.loopexit133.i.i.i

.loopexit.i.i.i:                                  ; preds = %scalar.ph79.prol.loopexit, %scalar.ph79, %.lr.ph136.split.us.i.i.i.prol.loopexit, %.lr.ph136.split.us.i.i.i, %middle.block89, %middle.block, %.preheader.i.i.i, %bb.bg
  %i.hp = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cj) #15 ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.loopexit133.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit.i.i.i
  %i.hr = load i32, ptr %i.hp, align 8, !tbaa !16 ; 2 uses
  %.not.i95.i.i.i = icmp sgt i32 %i.hr, -1
  br i1 %.not.i95.i.i.i, label %bb.bk, label %Py_DECREF.exit96.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr %i.hp, align 8, !tbaa !16
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bl, label %Py_DECREF.exit96.i.i.i

bb.bl:                                            ; preds = %bb.bk
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.hp) #15
  br label %Py_DECREF.exit96.i.i.i

Py_DECREF.exit96.i.i.i:                           ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.hu = add nuw nsw i64 %.073138.i.i.i, 1       ; 2 uses
  %exitcond148.not.i.i.i = icmp eq i64 %i.hu, %i.cb
  br i1 %exitcond148.not.i.i.i, label %.loopexit133.i.i.i, label %bb.aw, !llvm.loop !108

.loopexit133.i.i.i:                               ; preds = %Py_DECREF.exit96.i.i.i, %.loopexit.i.i.i, %Py_XDECREF.exit.i.i.i, %bb.bi, %.preheader132.i.i.i
  %.0.i.i.i = phi i32 [ -1, %bb.bi ], [ 0, %.preheader132.i.i.i ], [ -1, %.loopexit.i.i.i ], [ 0, %Py_DECREF.exit96.i.i.i ], [ -1, %Py_XDECREF.exit.i.i.i ] ; 3 uses
  %i.hv = load i32, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %i.hw = icmp ugt i32 %i.hv, -1073741825
  br i1 %i.hw, label %Py_INCREF.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.loopexit133.i.i.i
  %i.hx = add nuw i32 %i.hv, 1
  store i32 %i.hx, ptr %i.bw, align 8, !tbaa !16
  br label %Py_INCREF.exit.i.i.i

Py_INCREF.exit.i.i.i:                             ; preds = %bb.bm, %.loopexit133.i.i.i
  %i.hy = icmp sgt i64 %i.ci, 2
  br i1 %i.hy, label %.lr.ph144.i.i.i, label %._crit_edge145.i.i.i

.lr.ph144.i.i.i:                                  ; preds = %Py_INCREF.exit.i.i.i
  %i.hz = getelementptr i8, ptr %i.cj, i64 32     ; 3 uses
  %xtraiter149 = and i64 %.val124.i.i.i, 1
  %i.ia = icmp eq i64 %.val124.i.i.i, 1
  br i1 %i.ia, label %.epil.preheader, label %.lr.ph144.i.i.i.new

.lr.ph144.i.i.i.new:                              ; preds = %.lr.ph144.i.i.i
  %unroll_iter = and i64 %.val124.i.i.i, 9223372036854775806
  br label %bb.bn

bb.bn:                                            ; preds = %Py_XINCREF.exit.i.i.i.1, %.lr.ph144.i.i.i.new
  %.174143.i.i.i = phi i64 [ 2, %.lr.ph144.i.i.i.new ], [ %i.im, %Py_XINCREF.exit.i.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph144.i.i.i.new ], [ %niter.next.1, %Py_XINCREF.exit.i.i.i.1 ]
  %i.ib = getelementptr [8 x i8], ptr %i.hz, i64 %.174143.i.i.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !14 ; 3 uses
  %.not.i128.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i128.i.i.i, label %Py_XINCREF.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !16 ; 2 uses
  %i.ie = icmp ugt i32 %i.id, -1073741825
  br i1 %i.ie, label %Py_XINCREF.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = add nuw i32 %i.id, 1
  store i32 %i.if, ptr %i.ic, align 8, !tbaa !16
  br label %Py_XINCREF.exit.i.i.i

Py_XINCREF.exit.i.i.i:                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.ig = getelementptr [8 x i8], ptr %i.hz, i64 %.174143.i.i.i
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !14 ; 3 uses
  %.not.i128.i.i.i.1 = icmp eq ptr %i.ii, null
  br i1 %.not.i128.i.i.i.1, label %Py_XINCREF.exit.i.i.i.1, label %bb.bq

bb.bq:                                            ; preds = %Py_XINCREF.exit.i.i.i
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !16 ; 2 uses
  %i.ik = icmp ugt i32 %i.ij, -1073741825
  br i1 %i.ik, label %Py_XINCREF.exit.i.i.i.1, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.il = add nuw i32 %i.ij, 1
  store i32 %i.il, ptr %i.ii, align 8, !tbaa !16
  br label %Py_XINCREF.exit.i.i.i.1

Py_XINCREF.exit.i.i.i.1:                          ; preds = %bb.br, %bb.bq, %Py_XINCREF.exit.i.i.i
  %i.im = add nuw nsw i64 %.174143.i.i.i, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge145.i.i.i.loopexit.unr-lcssa, label %bb.bn, !llvm.loop !109

._crit_edge145.i.i.i.loopexit.unr-lcssa:          ; preds = %Py_XINCREF.exit.i.i.i.1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %._crit_edge145.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge145.i.i.i.loopexit.unr-lcssa, %.lr.ph144.i.i.i
  %.174143.i.i.i.epil.init = phi i64 [ 2, %.lr.ph144.i.i.i ], [ %i.im, %._crit_edge145.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %.val124.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.in = getelementptr [8 x i8], ptr %i.hz, i64 %.174143.i.i.i.epil.init
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !14 ; 3 uses
  %.not.i128.i.i.i.epil = icmp eq ptr %i.io, null
  br i1 %.not.i128.i.i.i.epil, label %._crit_edge145.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.epil.preheader
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !16 ; 2 uses
  %i.iq = icmp ugt i32 %i.ip, -1073741825
  br i1 %i.iq, label %._crit_edge145.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ir = add nuw i32 %i.ip, 1
  store i32 %i.ir, ptr %i.io, align 8, !tbaa !16
  br label %._crit_edge145.i.i.i

._crit_edge145.i.i.i:                             ; preds = %._crit_edge145.i.i.i.loopexit.unr-lcssa, %bb.bt, %bb.bs, %.epil.preheader, %Py_INCREF.exit.i.i.i
  %i.is = load i32, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %.not.i93.i.i.i = icmp sgt i32 %i.is, -1
  br i1 %.not.i93.i.i.i, label %bb.bu, label %Py_DECREF.exit94.i.i.i

bb.bu:                                            ; preds = %._crit_edge145.i.i.i
  %i.it = add nsw i32 %i.is, -1                   ; 2 uses
  store i32 %i.it, ptr %i.cj, align 8, !tbaa !16
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.bv, label %Py_DECREF.exit94.i.i.i

bb.bv:                                            ; preds = %bb.bu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #15
  br label %Py_DECREF.exit94.i.i.i

Py_DECREF.exit94.i.i.i:                           ; preds = %bb.bv, %bb.bu, %._crit_edge145.i.i.i
  %i.iv = load i32, ptr %i.cd, align 8, !tbaa !16 ; 2 uses
  %.not.i91.i.i.i = icmp sgt i32 %i.iv, -1
  br i1 %.not.i91.i.i.i, label %bb.bw, label %Py_DECREF.exit92.i.i.i

bb.bw:                                            ; preds = %Py_DECREF.exit94.i.i.i
  %i.iw = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.cd, align 8, !tbaa !16
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bx, label %Py_DECREF.exit92.i.i.i

bb.bx:                                            ; preds = %bb.bw
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cd) #15
  br label %Py_DECREF.exit92.i.i.i

Py_DECREF.exit92.i.i.i:                           ; preds = %bb.bx, %bb.bw, %Py_DECREF.exit94.i.i.i
  %i.iy = load i32, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.iy, -1
  br i1 %.not.i.i.i.i, label %bb.by, label %pack_from_list.exit.i.i

bb.by:                                            ; preds = %Py_DECREF.exit92.i.i.i
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.iz, ptr %i.bz, align 8, !tbaa !16
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %Py_DECREF.exit102.sink.split.i.i.i, label %pack_from_list.exit.i.i

Py_DECREF.exit102.sink.split.i.i.i:               ; preds = %bb.by, %bb.av, %bb.aq
  %.075.ph.i.i.i = phi i32 [ -1, %bb.av ], [ -1, %bb.aq ], [ %.0.i.i.i, %bb.by ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #15
  br label %pack_from_list.exit.i.i

pack_from_list.exit.i.i:                          ; preds = %Py_DECREF.exit102.sink.split.i.i.i, %bb.by, %Py_DECREF.exit92.i.i.i, %bb.av, %Py_DECREF.exit100.i.i.i, %bb.aq, %bb.ap, %bb.an
  %.075.i.i.i = phi i32 [ %.0.i.i.i, %Py_DECREF.exit92.i.i.i ], [ -1, %bb.an ], [ %.0.i.i.i, %bb.by ], [ -1, %bb.ap ], [ -1, %bb.aq ], [ -1, %Py_DECREF.exit100.i.i.i ], [ -1, %bb.av ], [ %.075.ph.i.i.i, %Py_DECREF.exit102.sink.split.i.i.i ]
  %i.jb = load i32, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %.not.i.i107.i = icmp sgt i32 %i.jb, -1
  br i1 %.not.i.i107.i, label %bb.bz, label %Py_DECREF.exit.i.i

bb.bz:                                            ; preds = %pack_from_list.exit.i.i
  %i.jc = add nsw i32 %i.jb, -1                   ; 2 uses
  store i32 %i.jc, ptr %i.bw, align 8, !tbaa !16
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.ca, label %Py_DECREF.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #15
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.ca, %bb.bz, %pack_from_list.exit.i.i
  %i.je = icmp slt i32 %.075.i.i.i, 0
  br i1 %i.je, label %init_simple.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %Py_DECREF.exit.i.i
  %i.jf = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.jg = lshr i32 %i.jf, 1
  %.lobit.i108.i = and i32 %i.jg, 1
  %i.jh = xor i32 %.lobit.i108.i, 1
  store i32 %i.jh, ptr %i.br, align 8, !tbaa !53
  store i64 %i.u, ptr %i.bq, align 8, !tbaa !39
end_hunk_2
