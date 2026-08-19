inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@code_new:bb.a

bb.t:                                             ; preds = %bb.s
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ap) #14
  br label %bb.at

bb.u:                                             ; preds = %bb.s
  %i.at = getelementptr i8, ptr %1, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !105 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val108 = load ptr, ptr %i.av, align 8, !tbaa !114
  %i.aw = getelementptr i8, ptr %.val108, i64 168
  %.val119 = load i64, ptr %i.aw, align 8, !tbaa !115
  %i.ax = and i64 %.val119, 67108864
  %.not89 = icmp eq i64 %i.ax, 0
  br i1 %.not89, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.au) #14
  br label %bb.at

bb.w:                                             ; preds = %bb.u
  %i.ay = getelementptr i8, ptr %1, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val107 = load ptr, ptr %i.ba, align 8, !tbaa !114
  %i.bb = getelementptr i8, ptr %.val107, i64 168
  %.val118 = load i64, ptr %i.bb, align 8, !tbaa !115
  %i.bc = and i64 %.val118, 67108864
  %.not90 = icmp eq i64 %i.bc, 0
  br i1 %.not90, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.az) #14
  br label %bb.at

bb.y:                                             ; preds = %bb.w
  %i.bd = getelementptr i8, ptr %1, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !105 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val106 = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bg = getelementptr i8, ptr %.val106, i64 168
  %.val117 = load i64, ptr %i.bg, align 8, !tbaa !115
  %i.bh = and i64 %.val117, 67108864
  %.not91 = icmp eq i64 %i.bh, 0
  br i1 %.not91, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.be) #14
  br label %bb.at

bb.aa:                                            ; preds = %bb.y
  %i.bi = getelementptr i8, ptr %1, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !105 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val105 = load ptr, ptr %i.bk, align 8, !tbaa !114
  %i.bl = getelementptr i8, ptr %.val105, i64 168
  %.val116 = load i64, ptr %i.bl, align 8, !tbaa !115
  %i.bm = and i64 %.val116, 268435456
  %.not92 = icmp eq i64 %i.bm, 0
  br i1 %.not92, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bj) #14
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.bn = getelementptr i8, ptr %1, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val104 = load ptr, ptr %i.bp, align 8, !tbaa !114
  %i.bq = getelementptr i8, ptr %.val104, i64 168
  %.val115 = load i64, ptr %i.bq, align 8, !tbaa !115
  %i.br = and i64 %.val115, 268435456
  %.not93 = icmp eq i64 %i.br, 0
  br i1 %.not93, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bo) #14
  br label %bb.at

bb.ae:                                            ; preds = %bb.ac
  %i.bs = getelementptr i8, ptr %1, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105 ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val103 = load ptr, ptr %i.bu, align 8, !tbaa !114
  %i.bv = getelementptr i8, ptr %.val103, i64 168
  %.val114 = load i64, ptr %i.bv, align 8, !tbaa !115
  %i.bw = and i64 %.val114, 268435456
  %.not94 = icmp eq i64 %i.bw, 0
  br i1 %.not94, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.bt) #14
  br label %bb.at

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr i8, ptr %1, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105
  %i.bz = tail call i32 @PyLong_AsInt(ptr noundef %i.by) #14 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cb = tail call ptr @PyErr_Occurred() #14
  %.not95 = icmp eq ptr %i.cb, null
  br i1 %.not95, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cc = getelementptr i8, ptr %1, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !105 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val102 = load ptr, ptr %i.ce, align 8, !tbaa !114
  %i.cf = getelementptr i8, ptr %.val102, i64 168
  %.val113 = load i64, ptr %i.cf, align 8, !tbaa !115
  %i.cg = and i64 %.val113, 134217728
  %.not96 = icmp eq i64 %i.cg, 0
  br i1 %.not96, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.cd) #14
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %i.ch = getelementptr i8, ptr %1, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !105 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val101 = load ptr, ptr %i.cj, align 8, !tbaa !114
  %i.ck = getelementptr i8, ptr %.val101, i64 168
  %.val112 = load i64, ptr %i.ck, align 8, !tbaa !115
  %i.cl = and i64 %.val112, 134217728
  %.not97 = icmp eq i64 %i.cl, 0
  br i1 %.not97, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ci) #14
  br label %bb.at

bb.am:                                            ; preds = %bb.ak
  %.val122 = load i64, ptr %i.h, align 8, !tbaa !125 ; 2 uses
  %i.cm = icmp slt i64 %.val122, 17
  br i1 %i.cm, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr i8, ptr %1, i64 160
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !105 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %.val100 = load ptr, ptr %i.cp, align 8, !tbaa !114
  %i.cq = getelementptr i8, ptr %.val100, i64 168
  %.val111 = load i64, ptr %i.cq, align 8, !tbaa !115
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !105 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !114
  %i.cw = getelementptr i8, ptr %.val, i64 168
  %.val110 = load i64, ptr %i.cw, align 8, !tbaa !115
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
  %.val183 = load ptr, ptr %i.f, align 8, !tbaa !114 ; 11 uses
  %.not = icmp eq ptr %.val183, @PyLong_Type
  %.not190 = icmp eq ptr %.val183, @PyUnicode_Type
  %or.cond199 = or i1 %.not, %.not190
  %.not191 = icmp eq ptr %.val183, @PyCode_Type
  %or.cond200 = or i1 %.not191, %or.cond199
  br i1 %or.cond200, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %Py_DECREF.exit158, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !106
  br label %Py_DECREF.exit158

bb.e:                                             ; preds = %bb.b
  %.not192 = icmp eq ptr %.val183, @PyBool_Type
  %.not193 = icmp eq ptr %.val183, @PyBytes_Type
  %or.cond201 = or i1 %.not192, %.not193
  br i1 %or.cond201, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %.val183, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.g:                                             ; preds = %bb.e
  %.not194 = icmp eq ptr %.val183, @PyFloat_Type
  br i1 %.not194, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val184 = load double, ptr %i.k, align 8, !tbaa !255 ; 2 uses
  %i.l = fcmp oeq double %.val184, 0.000000e+00
  %i.m = bitcast double %.val184 to i64
  %i.n = icmp slt i64 %i.m, 0
  %or.cond148 = and i1 %i.l, %i.n
  br i1 %or.cond148, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef nonnull @PyFloat_Type, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #14
  br label %Py_DECREF.exit158

bb.j:                                             ; preds = %bb.h
  %i.p = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull @PyFloat_Type, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.k:                                             ; preds = %bb.g
  %.not195 = icmp eq ptr %.val183, @PyComplex_Type
  br i1 %.not195, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.q = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %0) #14 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0  ; 2 uses
  %i.s = extractvalue { double, double } %i.q, 1  ; 2 uses
  %i.t = fcmp oeq double %i.r, 0.000000e+00
  %i.u = bitcast double %i.r to i64
  %i.v = icmp slt i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v                        ; 2 uses
  %i.x = fcmp oeq double %i.s, 0.000000e+00
  %i.y = bitcast double %i.s to i64
  %i.z = icmp slt i64 %i.y, 0
  %i.aa = and i1 %i.x, %i.z                       ; 2 uses
  %or.cond6 = select i1 %i.w, i1 %i.aa, i1 false
  %.val169 = load ptr, ptr %i.f, align 8, !tbaa !114 ; 4 uses
  br i1 %or.cond6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_TrueStruct) #14
  br label %Py_DECREF.exit158

bb.n:                                             ; preds = %bb.l
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_FalseStruct) #14
  br label %Py_DECREF.exit158

bb.p:                                             ; preds = %bb.n
  br i1 %i.w, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val169, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #14
  br label %Py_DECREF.exit158

bb.r:                                             ; preds = %bb.p
  %i.ae = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %.val169, ptr noundef %0) #14
  br label %Py_DECREF.exit158

bb.s:                                             ; preds = %bb.k
  %.not196 = icmp eq ptr %.val183, @PyTuple_Type
  br i1 %.not196, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.af = getelementptr i8, ptr %0, i64 16
  %.val173 = load i64, ptr %i.af, align 8, !tbaa !125 ; 3 uses
  %i.ag = tail call ptr @PyTuple_New(i64 noundef %.val173) #14 ; 9 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %Py_DECREF.exit158, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.ai = icmp sgt i64 %.val173, 0
  br i1 %i.ai, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = getelementptr i8, ptr %i.ag, i64 32
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph206, %bb.y
  %.0113205 = phi i64 [ 0, %.lr.ph206 ], [ %i.as, %bb.y ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %.0113205
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.an = tail call ptr @_PyCode_ConstantKey(ptr noundef %i.am) ; 2 uses
  %.not146 = icmp eq ptr %i.an, null
  br i1 %.not146, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ao = load i32, ptr %i.ag, align 8, !tbaa !106 ; 2 uses
  %.not.i159 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i159, label %bb.w, label %Py_DECREF.exit158

bb.w:                                             ; preds = %bb.v
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ag, align 8, !tbaa !106
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.x, label %Py_DECREF.exit158

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #14
  br label %Py_DECREF.exit158

bb.y:                                             ; preds = %bb.u
  %i.ar = getelementptr [8 x i8], ptr %i.ak, i64 %.0113205
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !105
  %i.as = add nuw nsw i64 %.0113205, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %.val173
  br i1 %exitcond.not, label %._crit_edge207, label %bb.u, !llvm.loop !258

._crit_edge207:                                   ; preds = %bb.y, %.preheader
  %i.at = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.ag, ptr noundef %0) #14 ; 3 uses
  %i.au = load i32, ptr %i.ag, align 8, !tbaa !106 ; 2 uses
  %.not.i157 = icmp sgt i32 %i.au, -1
  br i1 %.not.i157, label %bb.z, label %Py_DECREF.exit158

bb.z:                                             ; preds = %._crit_edge207
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.ag, align 8, !tbaa !106
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.aa, label %Py_DECREF.exit158

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #14
  br label %Py_DECREF.exit158

bb.ab:                                            ; preds = %bb.s
  %.not197 = icmp eq ptr %.val183, @PyFrozenSet_Type
  br i1 %.not197, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ax = getelementptr i8, ptr %0, i64 24
  %.val185 = load i64, ptr %i.ax, align 8, !tbaa !260
  %i.ay = tail call ptr @PyTuple_New(i64 noundef %.val185) #14 ; 9 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %Py_DECREF.exit152, label %.preheader202

.preheader202:                                    ; preds = %bb.ac
  %i.ba = call i32 @_PySet_NextEntry(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %.not144203 = icmp eq i32 %i.ba, 0
  br i1 %.not144203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader202
  %i.bb = getelementptr i8, ptr %i.ay, i64 32
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %Py_DECREF.exit156
  %.0107204 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %Py_DECREF.exit156 ] ; 2 uses
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.bd = call ptr @_PyCode_ConstantKey(ptr noundef %i.bc) ; 2 uses
  %.not145 = icmp eq ptr %i.bd, null
  br i1 %.not145, label %bb.ae, label %Py_DECREF.exit156

bb.ae:                                            ; preds = %bb.ad
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !106 ; 2 uses
  %.not.i155 = icmp sgt i32 %i.be, -1
  br i1 %.not.i155, label %bb.af, label %Py_DECREF.exit152

bb.af:                                            ; preds = %bb.ae
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.ay, align 8, !tbaa !106
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %Py_DECREF.exit152.sink.split, label %Py_DECREF.exit152

Py_DECREF.exit156:                                ; preds = %bb.ad
  %i.bh = getelementptr [8 x i8], ptr %i.bb, i64 %.0107204
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !105
  %i.bi = add i64 %.0107204, 1
  %i.bj = call i32 @_PySet_NextEntry(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %.not144 = icmp eq i32 %i.bj, 0
  br i1 %.not144, label %._crit_edge, label %bb.ad, !llvm.loop !262

._crit_edge:                                      ; preds = %Py_DECREF.exit156, %.preheader202
  %i.bk = call ptr @PyFrozenSet_New(ptr noundef nonnull %i.ay) #14 ; 5 uses
  %i.bl = load i32, ptr %i.ay, align 8, !tbaa !106 ; 2 uses
  %.not.i153 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i153, label %bb.ag, label %Py_DECREF.exit154

bb.ag:                                            ; preds = %._crit_edge
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.ay, align 8, !tbaa !106
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %Py_DECREF.exit154

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #14
  br label %Py_DECREF.exit154

Py_DECREF.exit154:                                ; preds = %._crit_edge, %bb.ag, %bb.ah
  %i.bo = icmp eq ptr %i.bk, null
  br i1 %i.bo, label %Py_DECREF.exit152, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit154
  %i.bp = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.bk, ptr noundef %0) #14 ; 3 uses
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !106 ; 2 uses
  %.not.i151 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i151, label %bb.aj, label %Py_DECREF.exit152

bb.aj:                                            ; preds = %bb.ai
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bk, align 8, !tbaa !106
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %Py_DECREF.exit152.sink.split, label %Py_DECREF.exit152

Py_DECREF.exit152.sink.split:                     ; preds = %bb.aj, %bb.af
  %.sink = phi ptr [ %i.ay, %bb.af ], [ %i.bk, %bb.aj ]
  %.5.ph = phi ptr [ null, %bb.af ], [ %i.bp, %bb.aj ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #14
  br label %Py_DECREF.exit152

Py_DECREF.exit152:                                ; preds = %Py_DECREF.exit152.sink.split, %bb.ae, %bb.af, %bb.aj, %bb.ai, %Py_DECREF.exit154, %bb.ac
  %.5 = phi ptr [ null, %Py_DECREF.exit154 ], [ null, %bb.af ], [ null, %bb.ac ], [ %i.bp, %bb.ai ], [ %i.bp, %bb.aj ], [ null, %bb.ae ], [ %.5.ph, %Py_DECREF.exit152.sink.split ]
end_hunk_0
