Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codeobject?download=true
inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@code_new:bb.a
  %i.bd = getelementptr i8, ptr %1, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val106 = load ptr, ptr %i.bf, align 8, !tbaa !122
  %i.bg = getelementptr i8, ptr %.val106, i64 168
  %.val117 = load i64, ptr %i.bg, align 8, !tbaa !128
  %i.bh = and i64 %.val117, 67108864
  %.not91 = icmp eq i64 %i.bh, 0
  br i1 %.not91, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.be) #14
  br label %bb.at

bb.aa:                                            ; preds = %bb.y
  %i.bi = getelementptr i8, ptr %1, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !113 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val105 = load ptr, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr i8, ptr %.val105, i64 168
  %.val116 = load i64, ptr %i.bl, align 8, !tbaa !128
  %i.bm = and i64 %.val116, 268435456
  %.not92 = icmp eq i64 %i.bm, 0
  br i1 %.not92, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bj) #14
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.bn = getelementptr i8, ptr %1, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !113 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val104 = load ptr, ptr %i.bp, align 8, !tbaa !122
  %i.bq = getelementptr i8, ptr %.val104, i64 168
  %.val115 = load i64, ptr %i.bq, align 8, !tbaa !128
  %i.br = and i64 %.val115, 268435456
  %.not93 = icmp eq i64 %i.br, 0
  br i1 %.not93, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bo) #14
  br label %bb.at

bb.ae:                                            ; preds = %bb.ac
  %i.bs = getelementptr i8, ptr %1, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !113 ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val103 = load ptr, ptr %i.bu, align 8, !tbaa !122
  %i.bv = getelementptr i8, ptr %.val103, i64 168
  %.val114 = load i64, ptr %i.bv, align 8, !tbaa !128
  %i.bw = and i64 %.val114, 268435456
  %.not94 = icmp eq i64 %i.bw, 0
  br i1 %.not94, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bt) #14
  br label %bb.at

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr i8, ptr %1, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !113
  %i.bz = tail call i32 @PyLong_AsInt(ptr noundef %i.by) #14 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cb = tail call ptr @PyErr_Occurred() #14
  %.not95 = icmp eq ptr %i.cb, null
  br i1 %.not95, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cc = getelementptr i8, ptr %1, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !113 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val102 = load ptr, ptr %i.ce, align 8, !tbaa !122
  %i.cf = getelementptr i8, ptr %.val102, i64 168
  %.val113 = load i64, ptr %i.cf, align 8, !tbaa !128
  %i.cg = and i64 %.val113, 134217728
  %.not96 = icmp eq i64 %i.cg, 0
  br i1 %.not96, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.cd) #14
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %i.ch = getelementptr i8, ptr %1, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !113 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val101 = load ptr, ptr %i.cj, align 8, !tbaa !122
  %i.ck = getelementptr i8, ptr %.val101, i64 168
  %.val112 = load i64, ptr %i.ck, align 8, !tbaa !128
  %i.cl = and i64 %.val112, 134217728
  %.not97 = icmp eq i64 %i.cl, 0
  br i1 %.not97, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ci) #14
  br label %bb.at

bb.am:                                            ; preds = %bb.ak
  %.val122 = load i64, ptr %i.h, align 8, !tbaa !133 ; 2 uses
  %i.cm = icmp slt i64 %.val122, 17
  br i1 %i.cm, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr i8, ptr %1, i64 160
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %.val100 = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cq = getelementptr i8, ptr %.val100, i64 168
  %.val111 = load i64, ptr %i.cq, align 8, !tbaa !128
  %i.cr = and i64 %.val111, 67108864
  %.not98 = icmp eq i64 %i.cr, 0
  br i1 %.not98, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.co) #14
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.cs = icmp eq i64 %.val122, 17
  br i1 %i.cs, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ct = getelementptr i8, ptr %1, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !113 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !122
  %i.cw = getelementptr i8, ptr %.val, i64 168
  %.val110 = load i64, ptr %i.cw, align 8, !tbaa !128
  %i.cx = and i64 %.val110, 67108864
  %.not99 = icmp eq i64 %i.cx, 0
  br i1 %.not99, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.cu) #14
  br label %bb.at

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.am
  %.078 = phi ptr [ null, %bb.am ], [ %i.co, %bb.ap ], [ %i.co, %bb.aq ]
  %.0 = phi ptr [ null, %bb.am ], [ null, %bb.ap ], [ %i.cu, %bb.aq ]
  %i.cy = tail call fastcc ptr @code_new_impl(i32 noundef %i.m, i32 noundef %i.r, i32 noundef %i.w, i32 noundef %i.ab, i32 noundef %i.ag, i32 noundef %i.al, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.au, ptr noundef nonnull %i.az, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bt, i32 noundef %i.bz, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ci, ptr noundef %.078, ptr noundef %.0)
  br label %bb.at

bb.at:                                            ; preds = %bb.ah, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.as, %bb.ar, %bb.ao, %bb.al, %bb.aj, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t
  %.079 = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.ah ], [ %i.cy, %bb.as ], [ null, %bb.ar ], [ null, %bb.ao ], [ null, %bb.al ], [ null, %bb.aj ], [ null, %bb.af ], [ null, %bb.ad ], [ null, %bb.ab ], [ null, %bb.z ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.t ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.079
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCode_ConstantKey(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp eq ptr %0, @_Py_NoneStruct
  %i.e = icmp eq ptr %0, @_Py_EllipsisObject
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val183.a = load ptr, ptr %i.f, align 8, !tbaa !122 ; 13 uses
  %.not = icmp eq ptr %.val183.a, @PyLong_Type
  %.not190.a = icmp eq ptr %.val183.a, @PyUnicode_Type
  %or.cond199.a = or i1 %.not, %.not190.a
  %.not191.a = icmp eq ptr %.val183.a, @PyCode_Type
  %or.cond200.a = or i1 %.not191.a, %or.cond199.a
  br i1 %or.cond200.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %Py_DECREF.exit158, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !114
  br label %Py_DECREF.exit158

bb.e:                                             ; preds = %bb.b
  %.not192.a = icmp eq ptr %.val183.a, @PyBool_Type
  %.not193.a = icmp eq ptr %.val183.a, @PyBytes_Type
  %or.cond201 = or i1 %.not192.a, %.not193.a
  br i1 %or.cond201, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %.val183.a, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.g:                                             ; preds = %bb.e
  %.not194.a = icmp eq ptr %.val183.a, @PyFloat_Type
  br i1 %.not194.a, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val184.a = load double, ptr %i.k, align 8, !tbaa !259 ; 2 uses
  %i.l = fcmp oeq double %.val184.a, 0.000000e+00
  br i1 %i.l, label %1, label %bb.j

1:                                                ; preds = %bb.h
  %.not147 = tail call i1 @llvm.is.fpclass.f64(double %.val184.a, /* (pzero) */ i32 64)
  br i1 %.not147, label %bb.j, label %bb.i

bb.i:                                             ; preds = %1
  %i.m = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef nonnull %.val183.a, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #14
  br label %Py_DECREF.exit158

bb.j:                                             ; preds = %1, %bb.h
  %i.n = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.val183.a, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.k:                                             ; preds = %bb.g
  %.not195.a = icmp eq ptr %.val183.a, @PyComplex_Type
  br i1 %.not195.a, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.o = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %0) #14 ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 2 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  %i.r = fcmp oeq double %i.p, 0.000000e+00
  %i.s = bitcast double %i.p to i64
  %i.t = icmp slt i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t                        ; 2 uses
  %i.v = fcmp oeq double %i.q, 0.000000e+00
  %i.w = bitcast double %i.q to i64
  %i.x = icmp slt i64 %i.w, 0
  %i.y = and i1 %i.v, %i.x                        ; 2 uses
  %or.cond6 = select i1 %i.u, i1 %i.y, i1 false
  %.val169 = load ptr, ptr %i.f, align 8, !tbaa !122 ; 4 uses
  br i1 %or.cond6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_TrueStruct) #14
  br label %Py_DECREF.exit158

bb.n:                                             ; preds = %bb.l
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_FalseStruct) #14
  br label %Py_DECREF.exit158

bb.p:                                             ; preds = %bb.n
  br i1 %i.u, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #14
  br label %Py_DECREF.exit158

bb.r:                                             ; preds = %bb.p
  %i.ac = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %.val169, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.s:                                             ; preds = %bb.k
  %.not196.a = icmp eq ptr %.val183.a, @PyTuple_Type
  br i1 %.not196.a, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.ad = getelementptr i8, ptr %0, i64 16
  %.val173 = load i64, ptr %i.ad, align 8, !tbaa !133 ; 3 uses
  %i.ae = tail call ptr @PyTuple_New(i64 noundef %.val173) #14 ; 9 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %Py_DECREF.exit158, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.ag = icmp sgt i64 %.val173, 0
  br i1 %i.ag, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = getelementptr i8, ptr %i.ae, i64 32
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph206, %bb.y
  %.0113205 = phi i64 [ 0, %.lr.ph206 ], [ %i.aq, %bb.y ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ah, i64 %.0113205
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !113
  %i.al = tail call ptr @_PyCode_ConstantKey(ptr noundef %i.ak) ; 2 uses
  %.not146 = icmp eq ptr %i.al, null
  br i1 %.not146, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.am = load i32, ptr %i.ae, align 8, !tbaa !114 ; 2 uses
  %.not.i159 = icmp sgt i32 %i.am, -1
  br i1 %.not.i159, label %bb.w, label %Py_DECREF.exit158

bb.w:                                             ; preds = %bb.v
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !114
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.x, label %Py_DECREF.exit158

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #14
  br label %Py_DECREF.exit158

bb.y:                                             ; preds = %bb.u
  %i.ap = getelementptr [8 x i8], ptr %i.ai, i64 %.0113205
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !113
  %i.aq = add nuw nsw i64 %.0113205, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %.val173
  br i1 %exitcond.not, label %._crit_edge207, label %bb.u, !llvm.loop !255

._crit_edge207:                                   ; preds = %bb.y, %.preheader
  %i.ar = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.ae, ptr noundef %0) #14 ; 3 uses
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !114 ; 2 uses
  %.not.i157 = icmp sgt i32 %i.as, -1
  br i1 %.not.i157, label %bb.z, label %Py_DECREF.exit158

bb.z:                                             ; preds = %._crit_edge207
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ae, align 8, !tbaa !114
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.aa, label %Py_DECREF.exit158

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #14
  br label %Py_DECREF.exit158

bb.ab:                                            ; preds = %bb.s
  %.not197.a = icmp eq ptr %.val183.a, @PyFrozenSet_Type
  br i1 %.not197.a, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.av = getelementptr i8, ptr %0, i64 24
  %.val185 = load i64, ptr %i.av, align 8, !tbaa !262
  %i.aw = tail call ptr @PyTuple_New(i64 noundef %.val185) #14 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %Py_DECREF.exit152, label %.preheader202

.preheader202:                                    ; preds = %bb.ac
  %i.ay = call i32 @_PySet_NextEntry(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %.not144203 = icmp eq i32 %i.ay, 0
  br i1 %.not144203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader202
  %i.az = getelementptr i8, ptr %i.aw, i64 32
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %Py_DECREF.exit156
  %.0107204 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %Py_DECREF.exit156 ] ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.bb = call ptr @_PyCode_ConstantKey(ptr noundef %i.ba) ; 2 uses
  %.not145 = icmp eq ptr %i.bb, null
  br i1 %.not145, label %bb.ae, label %Py_DECREF.exit156

bb.ae:                                            ; preds = %bb.ad
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !114 ; 2 uses
  %.not.i155 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i155, label %bb.af, label %Py_DECREF.exit152

bb.af:                                            ; preds = %bb.ae
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.aw, align 8, !tbaa !114
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Py_DECREF.exit152.sink.split, label %Py_DECREF.exit152

Py_DECREF.exit156:                                ; preds = %bb.ad
  %i.bf = getelementptr [8 x i8], ptr %i.az, i64 %.0107204
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !113
  %i.bg = add i64 %.0107204, 1
  %i.bh = call i32 @_PySet_NextEntry(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %.not144 = icmp eq i32 %i.bh, 0
  br i1 %.not144, label %._crit_edge, label %bb.ad, !llvm.loop !256

._crit_edge:                                      ; preds = %Py_DECREF.exit156, %.preheader202
  %i.bi = call ptr @PyFrozenSet_New(ptr noundef nonnull %i.aw) #14 ; 5 uses
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !114 ; 2 uses
  %.not.i153 = icmp sgt i32 %i.bj, -1
  br i1 %.not.i153, label %bb.ag, label %Py_DECREF.exit154

bb.ag:                                            ; preds = %._crit_edge
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.aw, align 8, !tbaa !114
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ah, label %Py_DECREF.exit154

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.aw) #14
  br label %Py_DECREF.exit154

Py_DECREF.exit154:                                ; preds = %._crit_edge, %bb.ag, %bb.ah
  %i.bm = icmp eq ptr %i.bi, null
  br i1 %i.bm, label %Py_DECREF.exit152, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit154
  %i.bn = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.bi, ptr noundef %0) #14 ; 3 uses
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !114 ; 2 uses
  %.not.i151 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i151, label %bb.aj, label %Py_DECREF.exit152

bb.aj:                                            ; preds = %bb.ai
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bi, align 8, !tbaa !114
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit152.sink.split, label %Py_DECREF.exit152

Py_DECREF.exit152.sink.split:                     ; preds = %bb.aj, %bb.af
  %.sink = phi ptr [ %i.aw, %bb.af ], [ %i.bi, %bb.aj ]
  %.5.ph = phi ptr [ null, %bb.af ], [ %i.bn, %bb.aj ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #14
  br label %Py_DECREF.exit152

Py_DECREF.exit152:                                ; preds = %Py_DECREF.exit152.sink.split, %bb.ae, %bb.af, %bb.aj, %bb.ai, %Py_DECREF.exit154, %bb.ac
end_hunk_0
begin_hunk_1_@code_new_impl:bb.a
bb.o:                                             ; preds = %bb.n, %bb.m
  %.045 = phi ptr [ %i.o, %bb.m ], [ %i.p, %bb.n ] ; 4 uses
  %i.q = icmp eq ptr %.045, null
  br i1 %i.q, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not60 = icmp eq ptr %17, null
  br i1 %.not60, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = tail call fastcc ptr @validate_and_copy_tuple(ptr noundef nonnull %17)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.s = tail call ptr @PyTuple_New(i64 noundef 0) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.r, %bb.q ], [ %i.s, %bb.r ]  ; 3 uses
  %i.t = icmp eq ptr %.0, null
  br i1 %i.t, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.u = tail call ptr @PyUnstable_Code_NewWithPosOnlyArgs(i32 noundef %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %.045, ptr noundef nonnull readonly %.0, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15), !inline_history !2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k, %bb.o, %bb.s
  %.049 = phi ptr [ null, %bb.s ], [ %i.u, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %.146 = phi ptr [ %.045, %bb.s ], [ %.045, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %.1 = phi ptr [ null, %bb.s ], [ %.0, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %i.v = load i32, ptr %i.k, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.k, align 8, !tbaa !114
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.u, %bb.v, %bb.w
  br i1 %i.n, label %Py_XDECREF.exit63, label %bb.x

bb.x:                                             ; preds = %Py_XDECREF.exit
  %i.y = load i32, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %.not.i.i62 = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i62, label %bb.y, label %Py_XDECREF.exit63

bb.y:                                             ; preds = %bb.x
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.m, align 8, !tbaa !114
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.z, label %Py_XDECREF.exit63

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #14
  br label %Py_XDECREF.exit63

Py_XDECREF.exit63:                                ; preds = %Py_XDECREF.exit, %bb.x, %bb.y, %bb.z
  %.not.i64 = icmp eq ptr %.146, null
  br i1 %.not.i64, label %Py_XDECREF.exit66, label %bb.aa

bb.aa:                                            ; preds = %Py_XDECREF.exit63
  %i.ab = load i32, ptr %.146, align 8, !tbaa !114 ; 2 uses
  %.not.i.i65 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i65, label %bb.ab, label %Py_XDECREF.exit66

bb.ab:                                            ; preds = %bb.aa
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.146, align 8, !tbaa !114
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.ac, label %Py_XDECREF.exit66

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.146) #14
  br label %Py_XDECREF.exit66

Py_XDECREF.exit66:                                ; preds = %Py_XDECREF.exit63, %bb.aa, %bb.ab, %bb.ac
  %.not.i67 = icmp eq ptr %.1, null
  br i1 %.not.i67, label %Py_XDECREF.exit69, label %bb.ad

bb.ad:                                            ; preds = %Py_XDECREF.exit66
  %i.ae = load i32, ptr %.1, align 8, !tbaa !114  ; 2 uses
  %.not.i.i68 = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i68, label %bb.ae, label %Py_XDECREF.exit69

bb.ae:                                            ; preds = %bb.ad
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %.1, align 8, !tbaa !114
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.af, label %Py_XDECREF.exit69

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #14
  br label %Py_XDECREF.exit69

Py_XDECREF.exit69:                                ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.j, %Py_XDECREF.exit66, %bb.ad, %bb.ae, %bb.af
  %.0497182328 = phi ptr [ %.049, %bb.af ], [ %.049, %Py_XDECREF.exit66 ], [ %.049, %bb.ad ], [ %.049, %bb.ae ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0497182328
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @validate_and_copy_tuple(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  %i.b = tail call ptr @PyTuple_New(i64 noundef %.val30) #14 ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i64 %.val30, 0
  br i1 %i.d, label %.lr.ph, label %Py_DECREF.exit26

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = getelementptr i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_INCREF.exit
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %Py_INCREF.exit ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.033
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val31 = load ptr, ptr %i.i, align 8, !tbaa !122 ; 3 uses
  %.not = icmp eq ptr %.val31, @PyUnicode_Type
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.h, align 8, !tbaa !114
  br label %Py_INCREF.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val31, i64 168
  %.val29 = load i64, ptr %i.m, align 8, !tbaa !128
  %i.n = and i64 %.val29, 268435456
  %.not24 = icmp eq i64 %i.n, 0
  br i1 %.not24, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !113
  %i.p = getelementptr i8, ptr %.val31, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !283
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.98, ptr noundef %i.q) #14 ; 0 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not.i25 = icmp sgt i32 %i.s, -1
  br i1 %.not.i25, label %bb.g, label %Py_DECREF.exit26

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.b, align 8, !tbaa !114
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit26.sink.split, label %Py_DECREF.exit26

bb.h:                                             ; preds = %bb.e
  %i.v = tail call ptr @_PyUnicode_Copy(ptr noundef nonnull %i.h) #14 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %Py_INCREF.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit26

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !114
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_DECREF.exit26.sink.split, label %Py_DECREF.exit26

Py_INCREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.h
  %.020 = phi ptr [ %i.v, %bb.h ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.aa = getelementptr [8 x i8], ptr %i.f, i64 %.033
  store ptr %.020, ptr %i.aa, align 8, !tbaa !113
  %i.ab = add nuw nsw i64 %.033, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.val30
  br i1 %exitcond.not, label %Py_DECREF.exit26, label %bb.b, !llvm.loop !282

Py_DECREF.exit26.sink.split:                      ; preds = %bb.j, %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %Py_INCREF.exit, %Py_DECREF.exit26.sink.split, %.preheader, %bb.j, %bb.i, %bb.g, %bb.f, %bb.a
  %.021 = phi ptr [ null, %bb.a ], [ %i.b, %.preheader ], [ null, %Py_DECREF.exit26.sink.split ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ %i.b, %Py_INCREF.exit ]
  ret ptr %.021
}

declare ptr @_PyUnicode_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !139}
!1 = distinct !{!1, !139}
!2 = distinct !{null}
!3 = distinct !{!3, !139}
!4 = distinct !{!4, !139}
!5 = distinct !{!5, !139}
!6 = distinct !{!6, !139}
!7 = distinct !{!7, !139}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !16, i64 0}
!20 = !{!"p1 _ZTS3_is", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!"long", !16, i64 0}
!24 = !{!"p1 _ZTS18_gil_runtime_state", !19, i64 0}
!25 = !{!"p1 _ZTS3_ts", !19, i64 0}
!26 = !{!"PyMutex", !16, i64 0}
!27 = !{!"_pending_calls", !25, i64 0, !26, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !16, i64 24, !17, i64 7224, !17, i64 7228}
!28 = !{!"_ceval_state", !23, i64 0, !17, i64 8, !24, i64 16, !17, i64 24, !27, i64 32}
!29 = !{!"p1 _ZTS18_PyThreadStateImpl", !19, i64 0}
!30 = !{!"pythreads", !23, i64 0, !25, i64 8, !29, i64 16, !25, i64 24, !23, i64 32, !23, i64 40}
!31 = !{!"p1 _ZTS14pyruntimestate", !19, i64 0}
!32 = !{!"", !23, i64 0, !23, i64 8}
!33 = !{!"gc_generation", !32, i64 0, !17, i64 16, !17, i64 20}
!34 = !{!"p1 _ZTS19_PyInterpreterFrame", !19, i64 0}
!35 = !{!"p1 _ZTS7_object", !19, i64 0}
!36 = !{!"_gc_runtime_state", !17, i64 0, !17, i64 4, !33, i64 8, !16, i64 32, !33, i64 80, !16, i64 104, !17, i64 224, !34, i64 232, !35, i64 240, !35, i64 248, !23, i64 256, !23, i64 264, !17, i64 272, !17, i64 276}
!37 = !{!"long long", !16, i64 0}
!38 = !{!"", !26, i64 0, !37, i64 8, !23, i64 16}
!39 = !{!"", !17, i64 0, !23, i64 8, !17, i64 16}
!40 = !{!"_import_state", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !35, i64 40, !35, i64 48, !17, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !38, i64 88, !39, i64 112}
!41 = !{!"_gil_runtime_state", !23, i64 0, !25, i64 8, !17, i64 16, !23, i64 24, !16, i64 32, !16, i64 80, !16, i64 120, !16, i64 168}
!42 = !{!"codecs_state", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24}
!43 = !{!"p1 int", !19, i64 0}
!44 = !{!"any p2 pointer", !19, i64 0}
!45 = !{!"p2 int", !44, i64 0}
!46 = !{!"", !23, i64 0, !45, i64 8}
!47 = !{!"PyConfig", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !23, i64 24, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !43, i64 64, !17, i64 72, !17, i64 76, !43, i64 80, !43, i64 88, !43, i64 96, !17, i64 104, !46, i64 112, !46, i64 128, !46, i64 144, !46, i64 160, !17, i64 176, !17, i64 180, !17, i64 184, !17, i64 188, !17, i64 192, !17, i64 196, !17, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !17, i64 284, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !17, i64 320, !46, i64 328, !43, i64 344, !43, i64 352, !43, i64 360, !43, i64 368, !43, i64 376, !43, i64 384, !43, i64 392, !17, i64 400, !43, i64 408, !43, i64 416, !43, i64 424, !43, i64 432, !17, i64 440, !17, i64 444, !17, i64 448}
!48 = !{!"p1 _ZTS12_xid_regitem", !19, i64 0}
!49 = !{!"", !17, i64 0, !17, i64 4, !26, i64 8, !48, i64 16}
!50 = !{!"_xid_lookup_state", !49, i64 0}
!51 = !{!"xi_exceptions", !35, i64 0, !35, i64 8, !35, i64 16}
!52 = !{!"", !50, i64 0, !51, i64 24}
!53 = !{!"_warnings_runtime_state", !35, i64 0, !35, i64 8, !35, i64 16, !38, i64 24, !23, i64 48, !35, i64 56}
!54 = !{!"p1 _ZTS15atexit_callback", !19, i64 0}
!55 = !{!"atexit_state", !54, i64 0, !35, i64 8}
!56 = !{!"_Bool", !16, i64 0}
!57 = !{!"", !16, i64 0}
!58 = !{!"_stoptheworld_state", !26, i64 0, !56, i64 1, !56, i64 2, !56, i64 3, !57, i64 4, !23, i64 8, !25, i64 16}
!59 = !{!"p1 _ZTS9_qsbr_pad", !19, i64 0}
!60 = !{!"p1 _ZTS18_qsbr_thread_state", !19, i64 0}
!61 = !{!"_qsbr_shared", !23, i64 0, !23, i64 8, !59, i64 16, !19, i64 24, !23, i64 32, !26, i64 40, !60, i64 48}
!62 = !{!"p1 _ZTS10llist_node", !19, i64 0}
!63 = !{!"llist_node", !62, i64 0, !62, i64 8}
!64 = !{!"p1 _ZTS15_obmalloc_state", !19, i64 0}
!65 = !{!"_Py_freelist", !19, i64 0, !23, i64 8}
!66 = !{!"_Py_freelists", !65, i64 0, !65, i64 16, !65, i64 32, !16, i64 48, !65, i64 368, !65, i64 384, !65, i64 400, !65, i64 416, !65, i64 432, !65, i64 448, !65, i64 464, !65, i64 480, !65, i64 496, !65, i64 512, !65, i64 528, !65, i64 544, !65, i64 560, !65, i64 576, !65, i64 592, !65, i64 608, !65, i64 624, !65, i64 640}
!67 = !{!"_py_object_state", !66, i64 0, !17, i64 656}
!68 = !{!"p1 omnipotent char", !19, i64 0}
!69 = !{!"_Py_unicode_fs_codec", !68, i64 0, !17, i64 8, !68, i64 16, !17, i64 24}
!70 = !{!"p2 _ZTS7_object", !44, i64 0}
!71 = !{!"_Py_unicode_ids", !23, i64 0, !70, i64 8}
!72 = !{!"_Py_unicode_state", !69, i64 0, !19, i64 32, !71, i64 40}
!73 = !{!"_Py_long_state", !17, i64 0}
!74 = !{!"p1 double", !19, i64 0}
!75 = !{!"_dtoa_state", !16, i64 0, !16, i64 64, !16, i64 128, !74, i64 2432}
!76 = !{!"_py_func_state", !17, i64 0, !16, i64 8}
!77 = !{!"p1 _ZTS15_Py_hashtable_t", !19, i64 0}
!78 = !{!"_py_code_state", !26, i64 0, !77, i64 8}
!79 = !{!"_Py_dict_state", !17, i64 0, !16, i64 8}
!80 = !{!"_Py_exc_state", !35, i64 0, !19, i64 8, !17, i64 16, !35, i64 24}
!81 = !{!"_Py_mem_interp_free_queue", !17, i64 0, !26, i64 4, !63, i64 8}
!82 = !{!"ast_state", !57, i64 0, !17, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !35, i64 312, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !35, i64 488, !35, i64 496, !35, i64 504, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !35, i64 840, !35, i64 848, !35, i64 856, !35, i64 864, !35, i64 872, !35, i64 880, !35, i64 888, !35, i64 896, !35, i64 904, !35, i64 912, !35, i64 920, !35, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992, !35, i64 1000, !35, i64 1008, !35, i64 1016, !35, i64 1024, !35, i64 1032, !35, i64 1040, !35, i64 1048, !35, i64 1056, !35, i64 1064, !35, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680, !35, i64 1688, !35, i64 1696, !35, i64 1704, !35, i64 1712, !35, i64 1720, !35, i64 1728, !35, i64 1736, !35, i64 1744, !35, i64 1752, !35, i64 1760, !35, i64 1768, !35, i64 1776, !35, i64 1784, !35, i64 1792, !35, i64 1800, !35, i64 1808, !35, i64 1816, !35, i64 1824, !35, i64 1832, !35, i64 1840, !35, i64 1848, !35, i64 1856, !35, i64 1864, !35, i64 1872, !35, i64 1880, !35, i64 1888, !35, i64 1896, !35, i64 1904, !35, i64 1912, !35, i64 1920, !35, i64 1928, !35, i64 1936, !35, i64 1944, !35, i64 1952, !35, i64 1960, !35, i64 1968, !35, i64 1976}
!83 = !{!"type_cache", !16, i64 0}
!84 = !{!"", !23, i64 0, !16, i64 8}
!85 = !{!"", !23, i64 0, !23, i64 8, !16, i64 16}
!86 = !{!"types_state", !17, i64 0, !83, i64 8, !84, i64 98312, !85, i64 108016, !26, i64 108512, !16, i64 108520}
!87 = !{!"callable_cache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!88 = !{!"short", !16, i64 0}
!89 = !{!"_PyOptimizationConfig", !88, i64 0, !88, i64 2, !88, i64 4, !88, i64 6, !56, i64 8, !56, i64 9}
!90 = !{!"p1 _ZTS17_PyExecutorObject", !19, i64 0}
!91 = !{!"_rare_events", !16, i64 0, !16, i64 1, !16, i64 2, !16, i64 3, !16, i64 4}
!92 = !{!"_Py_GlobalMonitors", !16, i64 0}
!93 = !{!"p1 _ZTS11_typeobject", !19, i64 0}
!94 = !{!"_Py_interp_cached_objects", !35, i64 0, !35, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !35, i64 72, !35, i64 80}
!95 = !{!"_object", !16, i64 0, !93, i64 8}
!96 = !{!"", !95, i64 0, !19, i64 16, !35, i64 24, !23, i64 32}
!97 = !{!"", !95, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !16, i64 64}
!98 = !{!"", !17, i64 0, !32, i64 8, !96, i64 24, !97, i64 64}
!99 = !{!"_Py_interp_static_objects", !98, i64 0}
!100 = !{!"", !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0}
!101 = !{!"p1 _ZTS14_err_stackitem", !19, i64 0}
!102 = !{!"p1 _ZTS12_stack_chunk", !19, i64 0}
!103 = !{!"_err_stackitem", !35, i64 0, !101, i64 8}
!104 = !{!"p1 _ZTS11_PyExitData", !19, i64 0}
!105 = !{!"", !17, i64 0, !16, i64 4}
!106 = !{!"_ts", !25, i64 0, !25, i64 8, !20, i64 16, !23, i64 24, !100, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !34, i64 72, !34, i64 80, !34, i64 88, !19, i64 96, !19, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !101, i64 136, !35, i64 144, !17, i64 152, !35, i64 160, !23, i64 168, !23, i64 176, !35, i64 184, !23, i64 192, !17, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !23, i64 232, !23, i64 240, !102, i64 248, !70, i64 256, !70, i64 264, !103, i64 272, !35, i64 288, !104, i64 296, !23, i64 304, !35, i64 312, !35, i64 320, !105, i64 328}
!107 = !{!"p1 _ZTS6_frame", !19, i64 0}
!108 = !{!"p1 _ZTS11_PyStackRef", !19, i64 0}
!109 = !{!"_PyInterpreterFrame", !16, i64 0, !34, i64 8, !16, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !107, i64 48, !19, i64 56, !108, i64 64, !88, i64 72, !16, i64 74, !16, i64 75, !16, i64 80}
!110 = !{!"_PyThreadStateImpl", !106, i64 0, !109, i64 848, !23, i64 936, !23, i64 944, !23, i64 952, !23, i64 960, !23, i64 968, !23, i64 976, !35, i64 984, !35, i64 992, !17, i64 1000, !63, i64 1008, !60, i64 1024, !63, i64 1032}
!111 = !{!"_is", !28, i64 0, !20, i64 7264, !23, i64 7272, !23, i64 7280, !17, i64 7288, !23, i64 7296, !17, i64 7304, !17, i64 7308, !17, i64 7312, !23, i64 7320, !30, i64 7328, !31, i64 7376, !25, i64 7384, !23, i64 7392, !36, i64 7400, !35, i64 7680, !35, i64 7688, !40, i64 7696, !41, i64 7832, !23, i64 8040, !42, i64 8048, !47, i64 8080, !23, i64 8536, !35, i64 8544, !35, i64 8552, !35, i64 8560, !19, i64 8568, !16, i64 8576, !16, i64 8640, !23, i64 8648, !16, i64 8656, !52, i64 10696, !35, i64 10744, !35, i64 10752, !35, i64 10760, !53, i64 10768, !55, i64 10832, !58, i64 10848, !61, i64 10872, !63, i64 10928, !26, i64 10944, !64, i64 10952, !35, i64 10960, !16, i64 10968, !16, i64 11032, !16, i64 11096, !16, i64 11160, !16, i64 11161, !67, i64 11168, !72, i64 11832, !73, i64 11888, !75, i64 11896, !76, i64 14336, !78, i64 79880, !79, i64 79896, !80, i64 79968, !81, i64 80000, !82, i64 80024, !86, i64 82008, !87, i64 223296, !16, i64 223328, !56, i64 223384, !56, i64 223385, !89, i64 223386, !90, i64 223400, !90, i64 223408, !90, i64 223416, !90, i64 223424, !23, i64 223432, !91, i64 223440, !19, i64 223448, !92, i64 223456, !57, i64 223472, !57, i64 223473, !23, i64 223480, !23, i64 223488, !16, i64 223496, !16, i64 224712, !16, i64 224776, !94, i64 224840, !99, i64 224928, !23, i64 225064, !110, i64 225072}
!112 = !{!111, !16, i64 11160}
!113 = !{!35, !35, i64 0}
!114 = !{!16, !16, i64 0}
!115 = !{!"_PyCodeConstructor", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24, !35, i64 32, !17, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !35, i64 104}
!116 = !{!115, !17, i64 88}
!117 = !{!115, !17, i64 92}
!118 = !{!115, !17, i64 96}
!119 = !{!115, !17, i64 100}
!120 = !{!115, !17, i64 24}
!121 = !{!115, !35, i64 32}
!122 = !{!95, !93, i64 8}
!123 = !{!"PyVarObject", !95, i64 0, !23, i64 16}
!124 = !{!"p1 _ZTS11PyMethodDef", !19, i64 0}
!125 = !{!"p1 _ZTS11PyMemberDef", !19, i64 0}
!126 = !{!"p1 _ZTS11PyGetSetDef", !19, i64 0}
!127 = !{!"_typeobject", !123, i64 0, !68, i64 24, !23, i64 32, !23, i64 40, !19, i64 48, !23, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !23, i64 168, !68, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !23, i64 208, !19, i64 216, !19, i64 224, !124, i64 232, !125, i64 240, !126, i64 248, !93, i64 256, !35, i64 264, !19, i64 272, !19, i64 280, !23, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !19, i64 360, !35, i64 368, !19, i64 376, !17, i64 384, !19, i64 392, !19, i64 400, !16, i64 408, !88, i64 410}
!128 = !{!127, !23, i64 168}
!129 = !{!115, !35, i64 56}
!130 = !{!115, !35, i64 64}
!131 = !{!115, !35, i64 72}
!132 = !{!115, !35, i64 80}
!133 = !{!123, !23, i64 16}
!134 = !{!115, !35, i64 8}
!135 = !{!115, !35, i64 16}
!136 = !{!115, !35, i64 0}
!137 = !{!115, !35, i64 48}
!138 = !{!115, !35, i64 104}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!"p1 _ZTS19_PyCoMonitoringData", !19, i64 0}
!143 = !{!"PyCodeObject", !123, i64 0, !35, i64 24, !35, i64 32, !35, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !19, i64 152, !19, i64 160, !23, i64 168, !142, i64 176, !23, i64 184, !17, i64 192, !19, i64 200, !16, i64 208}
!144 = !{!143, !35, i64 112}
!145 = !{!143, !35, i64 120}
!146 = !{!143, !35, i64 128}
!147 = !{!143, !17, i64 48}
!148 = !{!115, !17, i64 40}
!149 = !{!143, !17, i64 68}
!150 = !{!143, !35, i64 136}
!151 = !{!143, !35, i64 24}
!152 = !{!143, !35, i64 32}
!153 = !{!143, !35, i64 96}
!154 = !{!143, !35, i64 104}
!155 = !{!143, !35, i64 40}
!156 = !{!143, !17, i64 72}
!157 = !{!143, !17, i64 80}
!158 = !{!143, !17, i64 84}
!159 = !{!143, !17, i64 88}
!160 = !{!143, !17, i64 92}
!161 = !{!143, !19, i64 200}
!162 = !{!143, !142, i64 176}
!163 = !{!"_Py_LocalMonitors", !16, i64 0}
!164 = !{!"_PyCoMonitoringData", !163, i64 0, !163, i64 11, !68, i64 24, !16, i64 32, !19, i64 96, !68, i64 104, !68, i64 112, !68, i64 120}
!165 = !{!164, !19, i64 96}
!166 = !{!"_opaque", !17, i64 0, !68, i64 8, !68, i64 16}
!167 = !{!"_line_offsets", !17, i64 0, !17, i64 4, !17, i64 8, !166, i64 16}
!168 = !{!167, !68, i64 24}
end_hunk_1
