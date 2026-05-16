inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@_Py_call_instrumentation_line:bb.a
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !39
  switch i8 %i.cy, label %Py_DECREF.exit [
    i8 -12, label %bb.e
    i8 -128, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %_Py_Instrumentation_GetLine.exit111
  %i.cz = getelementptr i8, ptr %i.k, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext87 = shl i64 %i.g, 31
  %i.db = ashr i64 %sext87, 32
  %i.dc = getelementptr i8, ptr %i.da, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !39
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.de = getelementptr i8, ptr %i.o, i64 223461
  %i.df = load i8, ptr %i.de, align 1, !tbaa !39
  %i.dg = getelementptr i8, ptr %i.k, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !39
  %i.di = or i8 %i.dh, %i.df
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.in = phi i8 [ %i.dd, %bb.f ], [ %i.di, %bb.g ] ; 3 uses
  %.not88 = icmp sgt i8 %.in, -1
  br i1 %.not88, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !74
  %.not89 = icmp eq ptr %i.dk, null
  br i1 %.not89, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = getelementptr i8, ptr %1, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !75 ; 2 uses
  %.not.i112 = icmp eq ptr %i.dm, null
  br i1 %.not.i112, label %_PyFrame_GetFrameObject.exit, label %_PyFrame_GetFrameObject.exit.thread

_PyFrame_GetFrameObject.exit:                     ; preds = %bb.j
  %i.dn = tail call ptr @_PyFrame_MakeAndSetFrameObject(ptr noundef nonnull %1) #12 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.critedge, label %_PyFrame_GetFrameObject.exit.thread

_PyFrame_GetFrameObject.exit.thread:              ; preds = %bb.j, %_PyFrame_GetFrameObject.exit
  %.0.i116 = phi ptr [ %i.dn, %_PyFrame_GetFrameObject.exit ], [ %i.dm, %bb.j ] ; 8 uses
  %i.dp = getelementptr i8, ptr %.0.i116, i64 44
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !76
  %.not90 = icmp eq i8 %i.dq, 0
  br i1 %.not90, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_PyFrame_GetFrameObject.exit.thread
  %i.dr = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !78
  store i32 5, ptr %i.dr, align 4, !tbaa !78
  %i.dt = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !42
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !42
  %i.dw = load i32, ptr %.0.i116, align 8, !tbaa !39 ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, -1073741825
  br i1 %i.dx, label %Py_INCREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = add nuw i32 %i.dw, 1
  store i32 %i.dy, ptr %.0.i116, align 8, !tbaa !39
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.k, %bb.l
  %i.dz = getelementptr i8, ptr %.0.i116, i64 40  ; 2 uses
  store i32 %.0.i.i, ptr %i.dz, align 8, !tbaa !79
  %i.ea = load ptr, ptr %i.dj, align 8, !tbaa !74
  %i.eb = getelementptr i8, ptr %0, i64 120
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !80
  %i.ed = tail call i32 %i.ea(ptr noundef %i.ec, ptr noundef nonnull %.0.i116, i32 noundef 2, ptr noundef nonnull @_Py_NoneStruct) #12
  store i32 0, ptr %i.dz, align 8, !tbaa !79
  %i.ee = load i32, ptr %i.dt, align 8, !tbaa !42
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !42
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !78
  %i.eg = load i32, ptr %.0.i116, align 8, !tbaa !39 ; 2 uses
  %.not.i98 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i98, label %bb.m, label %Py_DECREF.exit99

bb.m:                                             ; preds = %Py_INCREF.exit
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %.0.i116, align 8, !tbaa !39
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %Py_DECREF.exit99

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i116) #12
  br label %Py_DECREF.exit99

Py_DECREF.exit99:                                 ; preds = %Py_INCREF.exit, %bb.m, %bb.n
  %.not91 = icmp eq i32 %i.ed, 0
  br i1 %.not91, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_PyFrame_GetFrameObject.exit.thread, %Py_DECREF.exit99, %bb.i
  %i.ej = and i8 %.in, 127
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.081 = phi i8 [ %i.ej, %bb.o ], [ %.in, %bb.h ] ; 2 uses
  %i.ek = icmp eq i8 %.081, 0
  br i1 %i.ek, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = sext i32 %.0.i.i to i64
  %i.em = tail call ptr @PyLong_FromLong(i64 noundef %i.el) #12 ; 8 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.a, align 16, !tbaa !55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.eo, align 8, !tbaa !55
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.em, ptr %i.ep, align 16, !tbaa !55
  %sext117 = shl i64 %i.g, 31                     ; 2 uses
  %i.eq = ashr i64 %sext117, 32                   ; 3 uses
  %i.er = getelementptr [2 x i8], ptr %i.d, i64 %i.eq ; 3 uses
  %i.es = getelementptr i8, ptr %i.er, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.af, %bb.r
  %.182 = phi i8 [ %.081, %bb.r ], [ %i.fh, %bb.af ] ; 4 uses
  %i.et = icmp ugt i8 %.182, 15
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eu = lshr i8 %.182, 4
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !39
  %i.ey = sext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, 4
  br label %most_significant_bit.exit

bb.u:                                             ; preds = %bb.s
  %i.fa = zext nneg i8 %.182 to i64
  %i.fb = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !39
  %i.fd = sext i8 %i.fc to i32
  br label %most_significant_bit.exit

most_significant_bit.exit:                        ; preds = %bb.t, %bb.u
  %.0.i113 = phi i32 [ %i.ez, %bb.t ], [ %i.fd, %bb.u ] ; 2 uses
  %i.fe = shl nuw i32 1, %.0.i113                 ; 2 uses
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = xor i8 %i.ff, -1                        ; 2 uses
  %i.fh = and i8 %.182, %i.fg                     ; 2 uses
  %i.fi = trunc i32 %.0.i113 to i8
  %i.fj = call fastcc i32 @call_one_instrument(ptr noundef %i.o, ptr noundef %0, ptr noundef nonnull %i.eo, i64 noundef -9223372036854775806, i8 noundef signext %i.fi, i32 noundef 5) ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.af, label %bb.v

bb.v:                                             ; preds = %most_significant_bit.exit
  %i.fl = icmp slt i32 %i.fj, 0
  br i1 %i.fl, label %.critedge95, label %bb.y

.critedge95:                                      ; preds = %bb.v
  %i.fm = load i32, ptr %i.em, align 8, !tbaa !39 ; 2 uses
  %.not.i96 = icmp sgt i32 %i.fm, -1
  br i1 %.not.i96, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.critedge95
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.em, align 8, !tbaa !39
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.em) #12
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.fp = load ptr, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  call void @_PyEval_StopTheWorld(ptr noundef %i.fp) #12
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !32  ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !73 ; 2 uses
  %.not.i114 = icmp eq ptr %i.fs, null
  br i1 %.not.i114, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.eq  ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !39
  %i.fv = and i8 %i.fu, %i.fg                     ; 2 uses
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !39
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %._crit_edge.i, label %remove_line_tools.exit

bb.aa:                                            ; preds = %bb.y
  %i.fx = getelementptr i8, ptr %i.fq, i64 16
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !39
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = and i32 %i.fe, %i.fz
  %i.gb = icmp eq i32 %i.ga, %i.fz
  br i1 %i.gb, label %._crit_edge.i, label %remove_line_tools.exit

._crit_edge.i:                                    ; preds = %bb.aa, %bb.z
  %i.gc = load i8, ptr %i.er, align 2, !tbaa !39
  %.not.i.i = icmp eq i8 %i.gc, -3
  br i1 %.not.i.i, label %bb.ab, label %remove_line_tools.exit

bb.ab:                                            ; preds = %._crit_edge.i
  %i.gd = getelementptr i8, ptr %i.fq, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !33 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !37
  %i.gh = zext i8 %i.gg to i64
  %sext119 = mul i64 %sext117, %i.gh
  %i.gi = ashr exact i64 %sext119, 32
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.gi  ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !39  ; 3 uses
  %i.gl = icmp eq i8 %i.gk, -19
  br i1 %i.gl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr i8, ptr %i.fq, i64 112
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !40
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.eq
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !39
  store i8 %i.gp, ptr %i.gj, align 1, !tbaa !39
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i8 %i.gk, ptr %i.er, align 2, !tbaa !39
  %i.gq = zext i8 %i.gk to i64
  %i.gr = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !39
  %.not15.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not15.i.i, label %remove_line_tools.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 9, ptr %i.es, align 2, !tbaa !39
  br label %remove_line_tools.exit

remove_line_tools.exit:                           ; preds = %bb.z, %bb.aa, %._crit_edge.i, %bb.ad, %bb.ae
  call void @_PyEval_StartTheWorld(ptr noundef %i.fp) #12
  br label %bb.af

bb.af:                                            ; preds = %most_significant_bit.exit, %remove_line_tools.exit
  %.not92 = icmp eq i8 %i.fh, 0
  br i1 %.not92, label %bb.ag, label %bb.s, !llvm.loop !81

bb.ag:                                            ; preds = %bb.af
  %i.gt = load i32, ptr %i.em, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp sgt i32 %i.gt, -1
  br i1 %.not.i, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gu = add nsw i32 %i.gt, -1                   ; 2 uses
  store i32 %i.gu, ptr %i.em, align 8, !tbaa !39
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.ai, label %Py_DECREF.exit

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.em) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.ai, %bb.ah, %bb.ag, %bb.p
  %i.gw = load i8, ptr %i.m, align 1, !tbaa !37
  %i.gx = zext i8 %i.gw to i64
  %i.gy = shl i64 %i.g, 31
  %sext120 = mul i64 %i.gy, %i.gx
  %i.gz = ashr exact i64 %sext120, 32
  %i.ha = getelementptr i8, ptr %i.p, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !39
  %i.hc = zext i8 %i.hb to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %.critedge95, %Py_DECREF.exit99, %_PyFrame_GetFrameObject.exit, %bb.q, %Py_DECREF.exit
  %.7 = phi i32 [ -1, %bb.q ], [ %i.hc, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit99 ], [ -1, %_PyFrame_GetFrameObject.exit ], [ -1, %.critedge95 ], [ -1, %bb.w ], [ -1, %bb.x ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @call_one_instrument(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 -9223372036854775808, -9223372036854775800) %3, i8 noundef signext %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 223496
  %i.b = sext i8 %4 to i64
  %i.c = getelementptr [152 x i8], ptr %i.a, i64 %i.b
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78
  store i32 %5, ptr %i.h, align 4, !tbaa !78
  %i.j = getelementptr i8, ptr %1, i64 64         ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !42
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !42
  %i.m = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !82 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i.i, i64 168
  %.val6.i.i = load i64, ptr %i.n, align 8, !tbaa !83
  %i.o = and i64 %.val6.i.i, 2048
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.val.i.i, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !88
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  %.0.copyload.i.i = load ptr, ptr %i.r, align 1  ; 2 uses
  %i.s = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.s, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.c

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %bb.b
  %i.t = and i64 %3, 7
  %i.u = tail call ptr @_PyObject_MakeTpCall(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef %i.t, ptr noundef null) #12
  br label %_PyObject_VectorcallTstate.exit

bb.c:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.v = tail call ptr %.0.copyload.i.i(ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef range(i64 -9223372036854775808, -9223372036854775800) %3, ptr noundef null) #12, !inline_history !89
  %i.w = tail call ptr @_Py_CheckFunctionResult(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.v, ptr noundef null) #12
  br label %_PyObject_VectorcallTstate.exit

_PyObject_VectorcallTstate.exit:                  ; preds = %_PyVectorcall_FunctionInline.exit.thread.i, %bb.c
  %.0.i = phi ptr [ %i.u, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.x = load i32, ptr %i.j, align 8, !tbaa !42
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.j, align 8, !tbaa !42
  store i32 %i.i, ptr %i.h, align 4, !tbaa !78
  %i.z = icmp eq ptr %.0.i, null
  br i1 %i.z, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_PyObject_VectorcallTstate.exit
  %i.aa = load i32, ptr %.0.i, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %.0.i, align 8, !tbaa !39
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %i.ad = icmp eq ptr %.0.i, @_PyInstrumentation_DISABLE
  %i.ae = zext i1 %i.ad to i32
  br label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit, %_PyObject_VectorcallTstate.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.ae, %Py_DECREF.exit ], [ -1, %_PyObject_VectorcallTstate.exit ]
  ret i32 %.1
}

declare void @_PyEval_StopTheWorld(ptr noundef) local_unnamed_addr #5

declare void @_PyEval_StartTheWorld(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 256) i32 @_Py_call_instrumentation_instruction(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  %.val = load i64, ptr %1, align 8
  %i.b = and i64 %.val, -2
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 208      ; 2 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 176      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %sext = shl i64 %i.g, 31                        ; 2 uses
  %i.l = ashr i64 %sext, 32                       ; 5 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_Py_call_instrumentation_instruction:bb.a
  %i.bi = getelementptr i8, ptr %i.bh, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !90 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bj, null
  br i1 %.not.i49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.l   ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = and i8 %i.bl, %i.ax                     ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !39
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %._crit_edge.i, label %remove_per_instruction_tools.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr i8, ptr %i.bh, i64 17
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = and i32 %i.av, %i.bq
  %i.bs = icmp eq i32 %i.br, %i.bq
  br i1 %i.bs, label %._crit_edge.i, label %remove_per_instruction_tools.exit

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.bt = load i8, ptr %i.ai, align 2, !tbaa !39  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, -3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i
  %i.bv = getelementptr i8, ptr %i.bh, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.bz = zext i8 %i.by to i64
  %sext52 = mul i64 %sext, %i.bz
  %i.ca = ashr exact i64 %sext52, 32
  %i.cb = getelementptr i8, ptr %i.bx, i64 %i.ca  ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.014.in.i.i = phi i8 [ %i.cc, %bb.o ], [ %i.bt, %._crit_edge.i ]
  %.0.i.i = phi ptr [ %i.cb, %bb.o ], [ %i.ai, %._crit_edge.i ]
  %.not.i.i = icmp eq i8 %.014.in.i.i, -19
  br i1 %.not.i.i, label %bb.q, label %remove_per_instruction_tools.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr i8, ptr %i.bh, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !40
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.l
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39  ; 2 uses
  store i8 %i.cg, ptr %.0.i.i, align 1, !tbaa !39
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !39
  %.not16.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not16.i.i, label %remove_per_instruction_tools.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 9, ptr %i.aj, align 2, !tbaa !39
  br label %remove_per_instruction_tools.exit

remove_per_instruction_tools.exit:                ; preds = %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  call void @_PyEval_StartTheWorld(ptr noundef %i.bg) #12
  br label %bb.s

bb.s:                                             ; preds = %remove_per_instruction_tools.exit, %most_significant_bit.exit
  %.not44 = icmp eq i8 %i.ay, 0
  br i1 %.not44, label %._crit_edge, label %bb.g, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.s, %bb.f
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit46

bb.t:                                             ; preds = %._crit_edge
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.ae, align 8, !tbaa !39
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %Py_DECREF.exit46.sink.split, label %Py_DECREF.exit46

Py_DECREF.exit46.sink.split:                      ; preds = %bb.t, %bb.k
  %.2.ph = phi i32 [ -1, %bb.k ], [ %i.o, %bb.t ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #12
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %Py_DECREF.exit46.sink.split, %bb.t, %._crit_edge, %bb.k, %.critedge
  %.2 = phi i32 [ %i.o, %bb.t ], [ -1, %.critedge ], [ -1, %bb.k ], [ %i.o, %._crit_edge ], [ %.2.ph, %Py_DECREF.exit46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit46, %bb.e, %bb.a
  %.4 = phi i32 [ %i.o, %bb.a ], [ %.2, %Py_DECREF.exit46 ], [ -1, %bb.e ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_Instrument(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 8
  %i.b = and i64 %i.a, 4294967295
  %i.c = getelementptr i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %instrument_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull readonly %1)
  br label %instrument_lock_held.exit

instrument_lock_held.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_SetEvents(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 7 uses
  %i.e = icmp slt i32 %0, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 224712
  %i.g = sext i32 %0 to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %check_tool.exit, label %bb.c

check_tool.exit:                                  ; preds = %bb.b
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.11, i32 noundef %0) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %i.d, i64 223456   ; 2 uses
  %i.n = shl nuw i32 1, %0                        ; 4 uses
  %i.o = load <16 x i8>, ptr %i.m, align 1, !tbaa !39 ; 5 uses
  %i.p = extractelement <16 x i8> %i.o, i64 0
  %i.q = zext i8 %i.p to i32
  %i.r = lshr i32 %i.q, %0
  %i.s = and i32 %i.r, 1
  %i.t = shufflevector <16 x i8> %i.o, <16 x i8> poison, <12 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.u = trunc i32 %i.n to i8
  %i.v = insertelement <12 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <12 x i8> %i.v, <12 x i8> poison, <12 x i32> zeroinitializer
  %i.x = and <12 x i8> %i.w, %i.t
  %i.y = icmp eq <12 x i8> %i.x, zeroinitializer
  %i.z = select <12 x i1> %i.y, <12 x i32> zeroinitializer, <12 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %i.aa = extractelement <16 x i8> %i.o, i64 13
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.n, %i.ab
  %.not.13.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.13.i, i32 0, i32 8192
  %i.ae = shufflevector <16 x i8> %i.o, <16 x i8> poison, <2 x i32> <i32 14, i32 15>
  %i.af = zext <2 x i8> %i.ae to <2 x i32>
  %i.ag = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ai = and <2 x i32> %i.ah, %i.af
  %i.aj = icmp eq <2 x i32> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i32> zeroinitializer, <2 x i32> <i32 16384, i32 32768> ; 2 uses
  %i.al = tail call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %i.z)
  %op.rdx = or disjoint i32 %i.al, %i.ad
  %shift = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %i.ak, %shift
  %op.rdx26 = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %op.rdx27 = or disjoint i32 %op.rdx, %op.rdx26
  %op.rdx28 = or disjoint i32 %op.rdx27, %i.s
  %i.am = icmp eq i32 %op.rdx28, %1
  br i1 %i.am, label %instrument_all_executing_code_objects.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load atomic i64, ptr %i.d monotonic, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 256                      ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !55
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.f:                                             ; preds = %bb.d
  %i.at = trunc i32 %i.n to i8
  %i.au = xor i8 %i.at, -1
  %i.av = insertelement <8 x i32> poison, i32 %1, i64 0
  %i.aw = shufflevector <8 x i32> %i.av, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.ax = lshr <16 x i32> %i.aw, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = and <16 x i32> %i.ax, splat (i32 1)
  %i.az = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bb = and <16 x i8> %i.o, %i.ba
  %i.bc = insertelement <16 x i32> poison, i32 %0, i64 0
  %i.bd = shufflevector <16 x i32> %i.bc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.be = shl nuw <16 x i32> %i.ay, %i.bd
  %i.bf = trunc <16 x i32> %i.be to <16 x i8>
  %i.bg = or <16 x i8> %i.bb, %i.bf
  store <16 x i8> %i.bg, ptr %i.m, align 1, !tbaa !39
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = zext i32 %i.ap to i64                   ; 4 uses
  %i.bk = and i64 %i.bi, 255
  %i.bl = or i64 %i.bk, %i.bj
  %i.bm = cmpxchg ptr %i.bh, i64 %i.bi, i64 %i.bl seq_cst seq_cst, align 8 ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %bb.f, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.bo = phi { i64, i1 } [ %i.bs, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.bm, %bb.f ]
  %i.bp = extractvalue { i64, i1 } %i.bo, 0       ; 2 uses
  %i.bq = and i64 %i.bp, 255
  %i.br = or i64 %i.bq, %i.bj
  %i.bs = cmpxchg ptr %i.bh, i64 %i.bp, i64 %i.br seq_cst seq_cst, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

set_version_raw.exit.i:                           ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.f
  %i.bu = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, 255
  %i.bx = or i64 %i.bw, %i.bj
  %i.by = cmpxchg ptr %i.bu, i64 %i.bv, i64 %i.bx seq_cst seq_cst, align 8 ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1
  br i1 %i.bz, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i:    ; preds = %set_version_raw.exit.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i
  %i.ca = phi { i64, i1 } [ %i.ce, %_Py_atomic_compare_exchange_uintptr.exit.i4.i ], [ %i.by, %set_version_raw.exit.i ]
  %i.cb = extractvalue { i64, i1 } %i.ca, 0       ; 2 uses
  %i.cc = and i64 %i.cb, 255
  %i.cd = or i64 %i.cc, %i.bj
  %i.ce = cmpxchg ptr %i.bu, i64 %i.cb, i64 %i.cd seq_cst seq_cst, align 8 ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

set_global_version.exit:                          ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i, %set_version_raw.exit.i
  %i.cg = getelementptr i8, ptr %i.d, i64 7376    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr i8, ptr %i.ch, i64 864    ; 2 uses
  %i.cj = cmpxchg ptr %i.ci, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %PyMutex_LockFlags.exit.i, label %bb.g

bb.g:                                             ; preds = %set_global_version.exit
  %i.cl = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.ci, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i

PyMutex_LockFlags.exit.i:                         ; preds = %bb.g, %set_global_version.exit
  %i.cm = getelementptr i8, ptr %i.d, i64 7336
  %.01633.i = load ptr, ptr %i.cm, align 8, !tbaa !93 ; 2 uses
  %.not34.i = icmp eq ptr %.01633.i, null
  br i1 %.not34.i, label %.loopexit.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %PyMutex_LockFlags.exit.i, %._crit_edge.i
  %.01635.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01633.i, %PyMutex_LockFlags.exit.i ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.01635.i, i64 72
  %.030.i = load ptr, ptr %i.cn, align 8, !tbaa !161 ; 2 uses
  %.not2231.i = icmp eq ptr %.030.i, null
  br i1 %.not2231.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %instrument_lock_held.exit.thread.i
  %.032.i = phi ptr [ %.0.i17, %instrument_lock_held.exit.thread.i ], [ %.030.i, %.lr.ph36.i ] ; 3 uses
  %i.co = getelementptr i8, ptr %.032.i, i64 74
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !162
  %i.cq = icmp slt i8 %i.cp, 3
  br i1 %i.cq, label %bb.h, label %instrument_lock_held.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.032.i, align 8
  %i.cr = and i64 %.0.val.i, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load atomic i64, ptr %i.d monotonic, align 8
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr i8, ptr %i.cs, i64 168
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !92
  %i.cx = icmp eq i64 %i.cw, %i.cu
  br i1 %i.cx, label %instrument_lock_held.exit.thread.i, label %instrument_lock_held.exit.i

instrument_lock_held.exit.i:                      ; preds = %bb.h
  %i.cy = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %i.d)
  %.not23.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i, label %instrument_lock_held.exit.thread.i, label %.loopexit.i

instrument_lock_held.exit.thread.i:               ; preds = %instrument_lock_held.exit.i, %bb.h, %.lr.ph.i
  %i.cz = getelementptr i8, ptr %.032.i, i64 8
  %.0.i17 = load ptr, ptr %i.cz, align 8, !tbaa !161 ; 2 uses
  %.not22.i = icmp eq ptr %.0.i17, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %instrument_lock_held.exit.thread.i, %.lr.ph36.i
  %i.da = getelementptr i8, ptr %.01635.i, i64 8
  %.016.i = load ptr, ptr %i.da, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph36.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %._crit_edge.i, %instrument_lock_held.exit.i, %PyMutex_LockFlags.exit.i
  %.4.i = phi i32 [ 0, %PyMutex_LockFlags.exit.i ], [ -1, %instrument_lock_held.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.dc = getelementptr i8, ptr %i.db, i64 864    ; 2 uses
  %i.dd = cmpxchg ptr %i.dc, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.de = extractvalue { i8, i1 } %i.dd, 1
  br i1 %i.de, label %instrument_all_executing_code_objects.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.dc) #12
  br label %instrument_all_executing_code_objects.exit

instrument_all_executing_code_objects.exit:       ; preds = %bb.i, %.loopexit.i, %check_tool.exit, %bb.c, %bb.e
  %.2 = phi i32 [ -1, %check_tool.exit ], [ 0, %bb.c ], [ -1, %bb.e ], [ %.4.i, %.loopexit.i ], [ %.4.i, %bb.i ]
  ret i32 %.2
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_SetLocalEvents(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 192
  %i.d = load i32, ptr %i.c, align 8, !tbaa !166
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !167
  %.not = icmp sgt i64 %.val, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !55
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.1, ptr noundef %i.i) #12 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %1, 6
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 224712
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %check_tool.exit, label %bb.e

check_tool.exit:                                  ; preds = %bb.d
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.11, i32 noundef %1) #12 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 176        ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @PyMem_Malloc(i64 noundef 128) #12 ; 3 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !32
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %allocate_instrumentation_data.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.v, i8 0, i64 11, i1 false)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %i.x, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.y, i8 0, i64 11, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr i8, ptr %i.z, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %bb.h

allocate_instrumentation_data.exit:               ; preds = %bb.f
  %i.ac = tail call ptr @PyErr_NoMemory() #12     ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ad = phi ptr [ %.pre, %bb.g ], [ %i.t, %bb.e ] ; 13 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 224776
  %i.af = sext i32 %1 to i64                      ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !169
  %i.ai = getelementptr i8, ptr %i.ad, i64 32
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.af
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !169
  %i.ak = shl nuw i32 1, %1                       ; 4 uses
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !39  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %i.am, %1
  %i.ao = and i32 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.aq = load <8 x i8>, ptr %i.ap, align 1, !tbaa !39 ; 9 uses
  %i.ar = trunc i32 %i.ak to i8
  %i.as = insertelement <8 x i8> poison, i8 %i.ar, i64 0
  %i.at = shufflevector <8 x i8> %i.as, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_PyMonitoring_SetLocalEvents:bb.a
  %i.cf = and i32 %i.ce, 1
  %i.cg = extractelement <8 x i8> %i.aq, i64 1
  %i.ch = and i8 %i.cg, %i.br
  %i.ci = shl nuw i32 %i.cf, %1
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = or i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.bp, align 1, !tbaa !39
  %i.cl = lshr i32 %2, 3
  %i.cm = and i32 %i.cl, 1
  %i.cn = extractelement <8 x i8> %i.aq, i64 2
  %i.co = and i8 %i.cn, %i.br
  %i.cp = shl nuw i32 %i.cm, %1
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = or i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.bo, align 1, !tbaa !39
  %i.cs = lshr i32 %2, 4
  %i.ct = and i32 %i.cs, 1
  %i.cu = extractelement <8 x i8> %i.aq, i64 3
  %i.cv = and i8 %i.cu, %i.br
  %i.cw = shl nuw i32 %i.ct, %1
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = or i8 %i.cv, %i.cx
  store i8 %i.cy, ptr %i.bn, align 1, !tbaa !39
  %i.cz = lshr i32 %2, 5
  %i.da = and i32 %i.cz, 1
  %i.db = extractelement <8 x i8> %i.aq, i64 4
  %i.dc = and i8 %i.db, %i.br
  %i.dd = shl nuw i32 %i.da, %1
  %i.de = trunc i32 %i.dd to i8
  %i.df = or i8 %i.dc, %i.de
  store i8 %i.df, ptr %i.bm, align 1, !tbaa !39
  %i.dg = lshr i32 %2, 6
  %i.dh = and i32 %i.dg, 1
  %i.di = extractelement <8 x i8> %i.aq, i64 5
  %i.dj = and i8 %i.di, %i.br
  %i.dk = shl nuw i32 %i.dh, %1
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = or i8 %i.dj, %i.dl
  store i8 %i.dm, ptr %i.bl, align 1, !tbaa !39
  %i.dn = lshr i32 %2, 7
  %i.do = and i32 %i.dn, 1
  %i.dp = extractelement <8 x i8> %i.aq, i64 6
  %i.dq = and i8 %i.dp, %i.br
  %i.dr = shl nuw i32 %i.do, %1
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = or i8 %i.dq, %i.ds
  store i8 %i.dt, ptr %i.bk, align 1, !tbaa !39
  %i.du = lshr i32 %2, 8
  %i.dv = and i32 %i.du, 1
  %i.dw = extractelement <8 x i8> %i.aq, i64 7
  %i.dx = and i8 %i.dw, %i.br
  %i.dy = shl nuw i32 %i.dv, %1
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = or i8 %i.dx, %i.dz
  store i8 %i.ea, ptr %i.bj, align 1, !tbaa !39
  %i.eb = lshr i32 %2, 9
  %i.ec = and i32 %i.eb, 1
  %i.ed = and i8 %i.ay, %i.br
  %i.ee = shl nuw i32 %i.ec, %1
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = or i8 %i.ed, %i.ef
  store i8 %i.eg, ptr %i.ax, align 1, !tbaa !39
  %i.eh = lshr i32 %2, 10
  %i.ei = and i32 %i.eh, 1
  %i.ej = and i8 %i.bd, %i.br
  %i.ek = shl nuw i32 %i.ei, %1
  %i.el = trunc i32 %i.ek to i8
  %i.em = or i8 %i.ej, %i.el
  store i8 %i.em, ptr %i.bc, align 1, !tbaa !39
  %i.en = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %allocate_instrumentation_data.exit, %check_tool.exit, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %allocate_instrumentation_data.exit ], [ -1, %check_tool.exit ], [ %i.en, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @force_instrument_lock_held(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct._line_offsets, align 8      ; 4 uses
  %3 = alloca %struct._line_offsets, align 8      ; 6 uses
  %4 = alloca %struct._Py_LocalMonitors, align 8  ; 7 uses
  %5 = alloca %struct._Py_LocalMonitors, align 8  ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !167 ; 12 uses
  %i.b = trunc i64 %.val to i32                   ; 15 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !170
  %i.e = and i32 %i.d, 33554432
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %update_instrumentation_data.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 176        ; 81 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef 128) #12 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !32
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %allocate_instrumentation_data.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.i, i8 0, i64 11, i1 false)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.k, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, i8 0, i64 11, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.m, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.e

allocate_instrumentation_data.exit.i:             ; preds = %bb.c
  %i.p = tail call ptr @PyErr_NoMemory() #12      ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.b ] ; 42 uses
  %i.r = getelementptr i8, ptr %1, i64 224776
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169
  %i.u = load i64, ptr %i.r, align 8, !tbaa !169
  %.not98.i = icmp eq i64 %i.t, %i.u
  br i1 %.not98.i, label %.loopexit136.i, label %.preheader135.i

bb.f:                                             ; preds = %.loopexit136.7.i
  %.sroa.0.1.extract.shift.i = lshr i64 %i.fq, 8
  %.sroa.0.1.extract.trunc.i = trunc i64 %.sroa.0.1.extract.shift.i to i8
  %i.v = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.1.extract.trunc.i)
  %i.w = icmp samesign ugt i8 %i.v, 1
  br i1 %i.w, label %multiple_tools.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.2.extract.shift.i = lshr i64 %i.fq, 16
  %.sroa.0.2.extract.trunc.i = trunc i64 %.sroa.0.2.extract.shift.i to i8
  %i.x = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.2.extract.trunc.i)
  %i.y = icmp samesign ugt i8 %i.x, 1
  br i1 %i.y, label %multiple_tools.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.3.extract.shift.i = lshr i64 %i.fq, 24
  %.sroa.0.3.extract.trunc.i = trunc i64 %.sroa.0.3.extract.shift.i to i8
  %i.z = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.3.extract.trunc.i)
  %i.aa = icmp samesign ugt i8 %i.z, 1
  br i1 %i.aa, label %multiple_tools.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.extract.shift.i = lshr i64 %i.fq, 32
  %.sroa.0.4.extract.trunc.i = trunc i64 %.sroa.0.4.extract.shift.i to i8
  %i.ab = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.4.extract.trunc.i)
  %i.ac = icmp samesign ugt i8 %i.ab, 1
  br i1 %i.ac, label %multiple_tools.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.5.extract.shift121.i = lshr i64 %i.fq, 40
  %.sroa.0.5.extract.trunc122.i = trunc i64 %.sroa.0.5.extract.shift121.i to i8
  %i.ad = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.5.extract.trunc122.i)
  %i.ae = icmp samesign ugt i8 %i.ad, 1
  br i1 %i.ae, label %multiple_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.6.extract.shift124.i = lshr i64 %i.fq, 48
  %.sroa.0.6.extract.trunc125.i = trunc i64 %.sroa.0.6.extract.shift124.i to i8
  %i.af = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.6.extract.trunc125.i)
  %i.ag = icmp samesign ugt i8 %i.af, 1
  br i1 %i.ag, label %multiple_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.7.extract.shift.i = lshr i64 %i.fq, 56
  %.sroa.0.7.extract.trunc.i = trunc nuw i64 %.sroa.0.7.extract.shift.i to i8
  %i.ah = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.7.extract.trunc.i)
  %i.ai = icmp samesign ugt i8 %i.ah, 1
  %i.aj = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fr)
  %i.ak = icmp samesign ugt i8 %i.aj, 1
  %or.cond130.i = select i1 %i.ai, i1 true, i1 %i.ak
  %i.al = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fs)
  %i.am = icmp samesign ugt i8 %i.al, 1
  %or.cond132.i = select i1 %or.cond130.i, i1 true, i1 %i.am
  br i1 %or.cond132.i, label %multiple_tools.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ft)
  %i.ao = icmp samesign ugt i8 %i.an, 1
  br label %multiple_tools.exit.i

multiple_tools.exit.i:                            ; preds = %.loopexit136.7.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa.i.i = phi i1 [ true, %bb.j ], [ true, %.loopexit136.7.i ], [ true, %bb.f ], [ %i.ao, %bb.m ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.i ] ; 3 uses
  %i.ap = getelementptr i8, ptr %i.fl, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond.i = select i1 %i.ar, i1 %.lcssa.i.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %initialize_tools.exit.i

.preheader135.i:                                  ; preds = %bb.e
  %i.as = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.at = and <8 x i8> %i.as, splat (i8 -2)
  store <8 x i8> %i.at, ptr %i.q, align 1, !tbaa !39
  %i.au = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !39
  %i.ax = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !39
  %i.ba = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !39
  %i.bc = and i8 %i.bb, -2
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !39
  %.pre175.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.i

.loopexit136.i:                                   ; preds = %.preheader135.i, %bb.e
  %i.bd = phi ptr [ %.pre175.i, %.preheader135.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !169
  %i.bg = getelementptr i8, ptr %1, i64 224784
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !169
  %.not98.1.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not98.1.i, label %.loopexit136.1.i, label %.preheader135.1.i

.preheader135.1.i:                                ; preds = %.loopexit136.i
  %i.bi = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.bj = and <8 x i8> %i.bi, splat (i8 -3)
  store <8 x i8> %i.bj, ptr %i.q, align 1, !tbaa !39
  %i.bk = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = and i8 %i.bl, -3
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !39
  %i.bn = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = and i8 %i.bo, -3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !39
  %i.bs = and i8 %i.br, -3
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !39
  %.pre176.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.1.i

.loopexit136.1.i:                                 ; preds = %.preheader135.1.i, %.loopexit136.i
  %i.bt = phi ptr [ %.pre176.i, %.preheader135.1.i ], [ %i.bd, %.loopexit136.i ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !169
  %i.bw = getelementptr i8, ptr %1, i64 224792
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !169
  %.not98.2.i = icmp eq i64 %i.bv, %i.bx
  br i1 %.not98.2.i, label %.loopexit136.2.i, label %.preheader135.2.i

.preheader135.2.i:                                ; preds = %.loopexit136.1.i
  %i.by = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.bz = and <8 x i8> %i.by, splat (i8 -5)
  store <8 x i8> %i.bz, ptr %i.q, align 1, !tbaa !39
  %i.ca = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %i.cc = and i8 %i.cb, -5
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !39
  %i.cd = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = and i8 %i.ce, -5
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !39
  %i.cg = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !39
  %i.ci = and i8 %i.ch, -5
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !39
  %.pre177.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.2.i

.loopexit136.2.i:                                 ; preds = %.preheader135.2.i, %.loopexit136.1.i
  %i.cj = phi ptr [ %.pre177.i, %.preheader135.2.i ], [ %i.bt, %.loopexit136.1.i ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !169
  %i.cm = getelementptr i8, ptr %1, i64 224800
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !169
  %.not98.3.i = icmp eq i64 %i.cl, %i.cn
  br i1 %.not98.3.i, label %.loopexit136.3.i, label %.preheader135.3.i

.preheader135.3.i:                                ; preds = %.loopexit136.2.i
  %i.co = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.cp = and <8 x i8> %i.co, splat (i8 -9)
  store <8 x i8> %i.cp, ptr %i.q, align 1, !tbaa !39
  %i.cq = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39
  %i.cs = and i8 %i.cr, -9
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !39
  %i.ct = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !39
  %i.cv = and i8 %i.cu, -9
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !39
  %i.cw = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !39
  %i.cy = and i8 %i.cx, -9
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !39
  %.pre178.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.3.i

.loopexit136.3.i:                                 ; preds = %.preheader135.3.i, %.loopexit136.2.i
  %i.cz = phi ptr [ %.pre178.i, %.preheader135.3.i ], [ %i.cj, %.loopexit136.2.i ] ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !169
  %i.dc = getelementptr i8, ptr %1, i64 224808
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !169
  %.not98.4.i = icmp eq i64 %i.db, %i.dd
  br i1 %.not98.4.i, label %.loopexit136.4.i, label %.preheader135.4.i

.preheader135.4.i:                                ; preds = %.loopexit136.3.i
  %i.de = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.df = and <8 x i8> %i.de, splat (i8 -17)
  store <8 x i8> %i.df, ptr %i.q, align 1, !tbaa !39
  %i.dg = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !39
  %i.di = and i8 %i.dh, -17
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !39
  %i.dj = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !39
  %i.dl = and i8 %i.dk, -17
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !39
  %i.dm = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !39
  %i.do = and i8 %i.dn, -17
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !39
  %.pre179.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.4.i

.loopexit136.4.i:                                 ; preds = %.preheader135.4.i, %.loopexit136.3.i
  %i.dp = phi ptr [ %.pre179.i, %.preheader135.4.i ], [ %i.cz, %.loopexit136.3.i ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 72
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !169
  %i.ds = getelementptr i8, ptr %1, i64 224816
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !169
  %.not98.5.i = icmp eq i64 %i.dr, %i.dt
  br i1 %.not98.5.i, label %.loopexit136.5.i, label %.preheader135.5.i

.preheader135.5.i:                                ; preds = %.loopexit136.4.i
  %i.du = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.dv = and <8 x i8> %i.du, splat (i8 -33)
  store <8 x i8> %i.dv, ptr %i.q, align 1, !tbaa !39
  %i.dw = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !39
  %i.dy = and i8 %i.dx, -33
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !39
  %i.dz = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !39
  %i.eb = and i8 %i.ea, -33
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !39
  %i.ec = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !39
  %i.ee = and i8 %i.ed, -33
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !39
  %.pre180.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.5.i

.loopexit136.5.i:                                 ; preds = %.preheader135.5.i, %.loopexit136.4.i
  %i.ef = phi ptr [ %.pre180.i, %.preheader135.5.i ], [ %i.dp, %.loopexit136.4.i ] ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !169
  %i.ei = getelementptr i8, ptr %1, i64 224824
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !169
  %.not98.6.i = icmp eq i64 %i.eh, %i.ej
  br i1 %.not98.6.i, label %.loopexit136.6.i, label %.preheader135.6.i

.preheader135.6.i:                                ; preds = %.loopexit136.5.i
  %i.ek = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.el = and <8 x i8> %i.ek, splat (i8 -65)
  store <8 x i8> %i.el, ptr %i.q, align 1, !tbaa !39
  %i.em = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !39
  %i.eo = and i8 %i.en, -65
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !39
  %i.ep = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !39
  %i.er = and i8 %i.eq, -65
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !39
  %i.es = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !39
  %i.eu = and i8 %i.et, -65
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !39
  %.pre181.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.6.i

.loopexit136.6.i:                                 ; preds = %.preheader135.6.i, %.loopexit136.5.i
  %i.ev = phi ptr [ %.pre181.i, %.preheader135.6.i ], [ %i.ef, %.loopexit136.5.i ] ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !169
  %i.ey = getelementptr i8, ptr %1, i64 224832
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !169
  %.not98.7.i = icmp eq i64 %i.ex, %i.ez
  br i1 %.not98.7.i, label %.loopexit136.7.i, label %.preheader135.7.i

.preheader135.7.i:                                ; preds = %.loopexit136.6.i
  %i.fa = load <8 x i8>, ptr %i.q, align 1, !tbaa !39
  %i.fb = and <8 x i8> %i.fa, splat (i8 127)
  store <8 x i8> %i.fb, ptr %i.q, align 1, !tbaa !39
  %i.fc = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !39
  %i.fe = and i8 %i.fd, 127
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !39
  %i.ff = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !39
  %i.fh = and i8 %i.fg, 127
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !39
  %i.fi = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !39
  %i.fk = and i8 %i.fj, 127
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !39
  %.pre182.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.7.i

.loopexit136.7.i:                                 ; preds = %.preheader135.7.i, %.loopexit136.6.i
  %i.fl = phi ptr [ %.pre182.i, %.preheader135.7.i ], [ %i.ev, %.loopexit136.6.i ] ; 4 uses
  %i.fm = getelementptr i8, ptr %1, i64 223456    ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr i8, ptr %1, i64 223464    ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %.sroa.026.0.copyload.i = load i64, ptr %i.fl, align 8
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.227.0.copyload.i = load i24, ptr %.sroa.227.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.917.8.extract.trunc.i.i = trunc i64 %i.fp to i8
  %.sroa.1118.8.extract.shift.i.i = lshr i64 %i.fp, 8
  %.sroa.1118.8.extract.trunc.i.i = trunc i64 %.sroa.1118.8.extract.shift.i.i to i8
  %.sroa.1219.8.extract.shift.i.i = lshr i64 %i.fp, 16
  %.sroa.1219.8.extract.trunc.i.i = trunc i64 %.sroa.1219.8.extract.shift.i.i to i8
  %.sroa.9.8.extract.trunc.i.i = trunc i24 %.sroa.227.0.copyload.i to i8
  %.sroa.11.8.extract.shift.i.i = lshr i24 %.sroa.227.0.copyload.i, 8
  %.sroa.11.8.extract.trunc.i.i = trunc i24 %.sroa.11.8.extract.shift.i.i to i8
  %.sroa.12.8.extract.shift.i.i = lshr i24 %.sroa.227.0.copyload.i, 16
  %.sroa.12.8.extract.trunc.i.i = trunc nuw i24 %.sroa.12.8.extract.shift.i.i to i8
  %i.fq = or i64 %.sroa.026.0.copyload.i, %i.fn   ; 10 uses
  %i.fr = or i8 %.sroa.9.8.extract.trunc.i.i, %.sroa.917.8.extract.trunc.i.i
  %i.fs = or i8 %.sroa.11.8.extract.trunc.i.i, %.sroa.1118.8.extract.trunc.i.i
  %i.ft = or i8 %.sroa.12.8.extract.trunc.i.i, %.sroa.1219.8.extract.trunc.i.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fq to i8
  %i.fu = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.0.extract.trunc.i)
  %i.fv = icmp samesign ugt i8 %i.fu, 1
  br i1 %i.fv, label %multiple_tools.exit.i, label %bb.f

bb.n:                                             ; preds = %multiple_tools.exit.i
  %sext.i = shl i64 %.val, 32
  %i.fw = ashr exact i64 %sext.i, 32
  %i.fx = tail call ptr @PyMem_Malloc(i64 noundef %i.fw) #12 ; 3 uses
  %i.fy = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 24
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !57
  %i.ga = icmp eq ptr %i.fx, null
  br i1 %i.ga, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gb = tail call ptr @PyErr_NoMemory() #12     ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.p:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !167
  %i.gc = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i, label %initialize_tools.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ge = getelementptr i8, ptr %0, i64 208
  br label %bb.q

bb.q:                                             ; preds = %opcode_has_event.exit.thread.i.i, %.lr.ph.i.i
  %.03034.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ib, %opcode_has_event.exit.thread.i.i ] ; 3 uses
  %i.gf = sext i32 %.03034.i.i to i64             ; 3 uses
  %i.gg = getelementptr [2 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 2, !tbaa !39  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, -3
  br i1 %i.gi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gk = getelementptr i8, ptr %i.gj, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !33 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !37
  %i.go = zext i8 %i.gn to i32
  %i.gp = mul i32 %.03034.i.i, %i.go
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.031.in.i.i = phi i8 [ %i.gs, %bb.r ], [ %i.gh, %bb.q ] ; 2 uses
  %i.gt = icmp eq i8 %.031.in.i.i, -19
  br i1 %i.gt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gu = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gv = getelementptr i8, ptr %i.gu, i64 112
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gf
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.in.i.i = phi i8 [ %i.gy, %bb.t ], [ %.031.in.i.i, %bb.s ] ; 3 uses
  %i.gz = add i8 %.1.in.i.i, 23
  %i.ha = icmp ult i8 %i.gz, 21                   ; 2 uses
  br i1 %i.ha, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hb = zext i8 %.1.in.i.i to i64
  %i.hc = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.in.i.i = phi i8 [ %i.hd, %bb.v ], [ %.1.in.i.i, %bb.u ]
  %i.he = zext i8 %.2.in.i.i to i64
  %i.hf = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !39  ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.hg, -3
  br i1 %.not.i.i.i, label %opcode_has_event.exit.thread.i.i, label %opcode_has_event.exit.i.i

opcode_has_event.exit.i.i:                        ; preds = %bb.w
  %i.hh = zext i8 %i.hg to i64                    ; 4 uses
  %i.hi = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i, label %opcode_has_event.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %opcode_has_event.exit.i.i
  br i1 %i.ha, label %bb.y, label %opcode_has_event.exit.thread.sink.split.i.i

bb.y:                                             ; preds = %bb.x
  %i.hk = icmp eq i8 %i.hg, -128
  br i1 %i.hk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hl = getelementptr i8, ptr %i.gg, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !39
  %i.hn = icmp ne i8 %i.hm, 0
  %i.ho = zext i1 %i.hn to i8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.hp = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.hh
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i102.i = phi i8 [ %i.ho, %bb.z ], [ %i.hq, %bb.aa ]
  %i.hr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.hs = getelementptr i8, ptr %i.hr, i64 11
  %i.ht = sext i8 %.0.i102.i to i64
  %i.hu = getelementptr i8, ptr %i.hs, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.sink.split.i.i

opcode_has_event.exit.thread.sink.split.i.i:      ; preds = %bb.ab, %bb.x
  %.sink.i.i = phi i8 [ %i.hv, %bb.ab ], [ 0, %bb.x ]
  %i.hw = getelementptr i8, ptr %i.fx, i64 %i.gf
  store i8 %.sink.i.i, ptr %i.hw, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.i.i

opcode_has_event.exit.thread.i.i:                 ; preds = %opcode_has_event.exit.thread.sink.split.i.i, %opcode_has_event.exit.i.i, %bb.w
  %.pre-phi.i.i = phi i64 [ %i.hh, %opcode_has_event.exit.i.i ], [ 253, %bb.w ], [ %i.hh, %opcode_has_event.exit.thread.sink.split.i.i ]
  %i.hx = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pre-phi.i.i
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !39
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nsw i32 %.03034.i.i, 1
  %i.ib = add i32 %i.ia, %i.hz                    ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.gc
  br i1 %i.ic, label %bb.q, label %initialize_tools.exit.i.loopexit, !llvm.loop !171

initialize_tools.exit.i.loopexit:                 ; preds = %opcode_has_event.exit.thread.i.i
  %.pre365.pre370.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %initialize_tools.exit.i

initialize_tools.exit.i:                          ; preds = %initialize_tools.exit.i.loopexit, %bb.p, %multiple_tools.exit.i
  %.pre365.pre370 = phi ptr [ %.pre365.pre370.pre, %initialize_tools.exit.i.loopexit ], [ %i.fy, %bb.p ], [ %i.fl, %multiple_tools.exit.i ] ; 3 uses
  %.sroa.0.5.extract.shift.i = lshr i64 %i.fq, 40
  %.sroa.0.5.extract.trunc.i = trunc i64 %.sroa.0.5.extract.shift.i to i8 ; 2 uses
  %.not92.i = icmp eq i8 %.sroa.0.5.extract.trunc.i, 0
  br i1 %.not92.i, label %initialize_line_tools.exit.i, label %bb.ac

bb.ac:                                            ; preds = %initialize_tools.exit.i
  %i.id = getelementptr i8, ptr %.pre365.pre370, i64 96
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !33
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.ad, label %bb.dj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ig = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.ih = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !68
  %i.ij = add i32 %i.ii, 1                        ; 2 uses
  %i.ik = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.il = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !166 ; 2 uses
  %i.in = icmp slt i32 %i.im, %i.b
  br i1 %i.in, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.io = getelementptr i8, ptr %0, i64 208
  %i.ip = getelementptr i8, ptr %0, i64 152
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_PyInstruction_GetLength.exit.i, %bb.ad
  %.087.lcssa.i = phi i32 [ %i.ij, %bb.ad ], [ %spec.select.i, %_PyInstruction_GetLength.exit.i ]
  %i.iq = load i32, ptr %i.ih, align 4, !tbaa !68
  %i.ir = sub i32 %.087.lcssa.i, %i.iq            ; 3 uses
  %i.is = icmp slt i32 %i.ir, 254
  br i1 %i.is, label %bb.ao, label %bb.am
end_hunk_2
begin_hunk_3_@force_instrument_lock_held:bb.a
  %.sroa.930.8.insert.insert.i = or disjoint i24 %.sroa.1131.8.insert.insert.i, %.sroa.930.8.insert.ext.i
  store i64 %i.ahs, ptr %5, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i24 %.sroa.930.8.insert.insert.i, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !39
  %i.ahz = xor i64 %.sroa.078.0.copyload, -1
  %i.aia = and i64 %i.ahg, %i.ahz
  %i.aib = xor i8 %.sroa.919.8.extract.trunc.i, -1
  %i.aic = and i8 %i.ahh, %i.aib
  %i.aid = xor i8 %.sroa.1120.8.extract.trunc.i, -1
  %i.aie = and i8 %i.ahi, %i.aid
  %i.aif = xor i8 %.sroa.1221.8.extract.trunc.i, -1
  %i.aig = and i8 %i.ahj, %i.aif
  %.sroa.1232.8.insert.ext.i196 = zext i8 %i.aig to i24
  %.sroa.1232.8.insert.shift.i197 = shl nuw i24 %.sroa.1232.8.insert.ext.i196, 16
  %.sroa.1131.8.insert.ext.i198 = zext i8 %i.aie to i24
  %.sroa.1131.8.insert.shift.i199 = shl nuw nsw i24 %.sroa.1131.8.insert.ext.i198, 8
  %.sroa.1131.8.insert.insert.i200 = or disjoint i24 %.sroa.1232.8.insert.shift.i197, %.sroa.1131.8.insert.shift.i199
  %.sroa.930.8.insert.ext.i201 = zext i8 %i.aic to i24
  %.sroa.930.8.insert.insert.i202 = or disjoint i24 %.sroa.1131.8.insert.insert.i200, %.sroa.930.8.insert.ext.i201
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sink = phi i64 [ %i.ahg, %bb.dv ], [ %i.aia, %bb.dw ] ; 2 uses
  %.sroa.930.8.insert.insert.i202.sink = phi i24 [ %.sroa.928.8.insert.insert.i, %bb.dv ], [ %.sroa.930.8.insert.insert.i202, %bb.dw ] ; 2 uses
  store i64 %.sink, ptr %4, align 8
  %i.aih = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i24 %.sroa.930.8.insert.insert.i202.sink, ptr %i.aih, align 8, !tbaa !39
  %i.aii = getelementptr i8, ptr %i.ahd, i64 11
  store i64 %i.ahg, ptr %i.aii, align 1
  %.sroa.7.0..sroa_idx91 = getelementptr i8, ptr %i.ahd, i64 19
  store i24 %.sroa.928.8.insert.insert.i, ptr %.sroa.7.0..sroa_idx91, align 1, !tbaa !39
  %.not.7.i = icmp eq i64 %.sink, 0
  %.not.10.i = icmp eq i24 %.sroa.930.8.insert.insert.i202.sink, 0
  %or.cond16.i = select i1 %.not.7.i, i1 %.not.10.i, i1 false
  br i1 %or.cond16.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.sroa.061.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i24, ptr %.sroa.2.0..sroa_idx, align 8
  %.not.7.i205 = icmp eq i64 %.sroa.061.0.copyload, 0
  %.not.10.i206 = icmp eq i24 %.sroa.2.0.copyload, 0
  %or.cond16.i207 = select i1 %.not.7.i205, i1 %.not.10.i206, i1 false
  br i1 %or.cond16.i207, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aij = getelementptr i8, ptr %0, i64 192      ; 5 uses
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.ail = icmp slt i32 %i.aik, %i.b
  br i1 %i.ail, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.dz
  %i.aim = getelementptr i8, ptr %0, i64 208
  %i.ain = getelementptr i8, ptr %0, i64 152      ; 2 uses
  br label %bb.ea

._crit_edge:                                      ; preds = %_PyInstruction_GetLength.exit, %bb.dz
  %i.aio = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !39 ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.air = load i8, ptr %i.aiq, align 2, !tbaa !39 ; 3 uses
  %.not154 = icmp eq i8 %i.aip, 0
  br i1 %.not154, label %.loopexit328, label %bb.fn

bb.ea:                                            ; preds = %.lr.ph, %_PyInstruction_GetLength.exit
  %.0138340 = phi i32 [ %i.aik, %.lr.ph ], [ %i.apj, %_PyInstruction_GetLength.exit ] ; 6 uses
  %i.ais = sext i32 %.0138340 to i64              ; 8 uses
  %i.ait = getelementptr [2 x i8], ptr %i.aim, i64 %i.ais ; 8 uses
  %i.aiu = load i16, ptr %i.ait, align 2          ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.aiu, 8 ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i16 %.sroa.7.0.extract.shift.i to i8 ; 3 uses
  %i.aiv = and i16 %i.aiu, 255                    ; 3 uses
  %i.aiw = icmp samesign ult i16 %i.aiv, 233
  %i.aix = trunc i16 %i.aiu to i8                 ; 2 uses
  br i1 %i.aiw, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aiy = zext nneg i16 %i.aiv to i64
  %i.aiz = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aiy
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

bb.ec:                                            ; preds = %bb.ea
  %i.ajb = zext nneg i16 %i.aiv to i32
  switch i8 %i.aix, label %bb.ef [
    i8 -2, label %bb.ed
    i8 -3, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.ajc = load ptr, ptr %i.ain, align 8, !tbaa !13
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 8
  %i.aje = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.ajf = getelementptr [8 x i8], ptr %i.ajd, i64 %i.aje
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !22 ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 32
  %i.aji = load i8, ptr %i.ajh, align 8, !tbaa !24
  %i.ajj = zext i8 %i.aji to i64
  %i.ajk = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !39
  %i.ajm = getelementptr i8, ptr %i.ajg, i64 33
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit

bb.ee:                                            ; preds = %bb.ec
  %i.ajo = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 96
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !33 ; 2 uses
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 1
  %i.ajs = load i8, ptr %i.ajq, align 1, !tbaa !37
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = mul i32 %.0138340, %i.ajt
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr i8, ptr %i.ajr, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !39
  %i.ajy = zext i8 %i.ajx to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.0.i = phi i32 [ %i.ajy, %bb.ee ], [ %i.ajb, %bb.ec ] ; 2 uses
  %i.ajz = icmp eq i32 %.0.i, 237
  br i1 %i.ajz, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aka = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.akb = getelementptr i8, ptr %i.aka, i64 112
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !40
  %i.akd = getelementptr i8, ptr %i.akc, i64 %i.ais
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !39
  %i.akf = zext i8 %i.ake to i32
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.1.i = phi i32 [ %i.akf, %bb.eg ], [ %.0.i, %bb.ef ]
  %i.akg = zext nneg i32 %.1.i to i64             ; 2 uses
  %i.akh = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.akg
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i8 %i.aki, 0
  br i1 %.not.i, label %bb.ei, label %_Py_GetBaseCodeUnit.exit

bb.ei:                                            ; preds = %bb.eh
  %i.akj = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.akg
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.eb, %bb.ed, %bb.eh, %bb.ei
  %.sroa.0.1.i = phi i8 [ %i.aja, %bb.eb ], [ %i.ajl, %bb.ed ], [ %i.akk, %bb.ei ], [ %i.aki, %bb.eh ] ; 3 uses
  %.sroa.7.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.eb ], [ %i.ajn, %bb.ed ], [ %.sroa.7.0.extract.trunc.i, %bb.ei ], [ %.sroa.7.0.extract.trunc.i, %bb.eh ]
  %.not.i208 = icmp eq i8 %.sroa.0.1.i, -3
  br i1 %.not.i208, label %add_tools.exit, label %opcode_has_event.exit

opcode_has_event.exit:                            ; preds = %_Py_GetBaseCodeUnit.exit
  %i.akl = zext i8 %.sroa.0.1.i to i64            ; 2 uses
  %i.akm = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !39
  %.not325 = icmp eq i8 %i.akn, 0
  br i1 %.not325, label %add_tools.exit, label %bb.ej

bb.ej:                                            ; preds = %opcode_has_event.exit
  %i.ako = icmp eq i8 %.sroa.0.1.i, -128
  br i1 %i.ako, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.akp = icmp ne i8 %.sroa.7.0.i, 0
  %i.akq = zext i1 %i.akp to i8
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.akr = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.akl
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !39
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0141 = phi i8 [ %i.akq, %bb.ek ], [ %i.aks, %bb.el ]
  %i.akt = sext i8 %.0141 to i64                  ; 3 uses
  %i.aku = getelementptr i8, ptr %5, i64 %i.akt
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !39 ; 3 uses
  %.not161 = icmp eq i8 %i.akv, 0
  br i1 %.not161, label %remove_tools.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.akw = load ptr, ptr %i.f, align 8, !tbaa !32 ; 4 uses
  %i.akx = getelementptr i8, ptr %i.akw, i64 24   ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !57 ; 2 uses
  %.not.i209 = icmp eq ptr %i.aky, null
  br i1 %.not.i209, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.akz = getelementptr i8, ptr %i.aky, i64 %i.ais ; 2 uses
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !39
  %i.alb = xor i8 %i.akv, -1
  %i.alc = and i8 %i.ala, %i.alb
  store i8 %i.alc, ptr %i.akz, align 1, !tbaa !39
  %i.ald = load ptr, ptr %i.akx, align 8, !tbaa !57
  %i.ale = getelementptr i8, ptr %i.ald, i64 %i.ais
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !39
  %i.alg = icmp eq i8 %i.alf, 0
  br i1 %i.alg, label %.._crit_edge.i212_crit_edge, label %remove_tools.exit

.._crit_edge.i212_crit_edge:                      ; preds = %bb.eo
  %.pre366 = load i8, ptr %i.ait, align 1, !tbaa !39
  br label %._crit_edge.i212

bb.ep:                                            ; preds = %bb.en
  %i.alh = getelementptr i8, ptr %i.akw, i64 11
  %i.ali = getelementptr i8, ptr %i.alh, i64 %i.akt
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !39 ; 2 uses
  %i.alk = and i8 %i.alj, %i.akv
  %i.all = icmp eq i8 %i.alk, %i.alj
  br i1 %i.all, label %._crit_edge.i212, label %remove_tools.exit

._crit_edge.i212:                                 ; preds = %.._crit_edge.i212_crit_edge, %bb.ep
  %i.alm = phi i8 [ %.pre366, %.._crit_edge.i212_crit_edge ], [ %i.aix, %bb.ep ] ; 2 uses
  %i.aln = icmp eq i8 %i.alm, -3
  br i1 %i.aln, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %._crit_edge.i212
  %i.alo = getelementptr i8, ptr %i.akw, i64 96
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !33 ; 2 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 1
  %i.alr = load i8, ptr %i.alp, align 1, !tbaa !37
  %i.als = zext i8 %i.alr to i32
  %i.alt = mul i32 %.0138340, %i.als
  %i.alu = sext i32 %i.alt to i64
  %i.alv = getelementptr i8, ptr %i.alq, i64 %i.alu ; 2 uses
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !39
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge.i212
  %.017.in.i.i = phi i8 [ %i.alw, %bb.eq ], [ %i.alm, %._crit_edge.i212 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.alv, %bb.eq ], [ %i.ait, %._crit_edge.i212 ]
  %i.alx = icmp eq i8 %.017.in.i.i, -19
  br i1 %i.alx, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aly = getelementptr i8, ptr %i.akw, i64 112
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !40
  %i.ama = getelementptr i8, ptr %i.alz, i64 %i.ais ; 2 uses
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !39
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.118.in.i.i = phi i8 [ %i.amb, %bb.es ], [ %.017.in.i.i, %bb.er ]
  %.1.i.i210 = phi ptr [ %i.ama, %bb.es ], [ %.0.i.i, %bb.er ]
  %i.amc = zext i8 %.118.in.i.i to i64
  %i.amd = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !39 ; 3 uses
  %i.amf = icmp eq i8 %i.ame, 0
  br i1 %i.amf, label %remove_tools.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i8 %i.ame, ptr %.1.i.i210, align 1, !tbaa !39
  %i.amg = zext i8 %i.ame to i64
  %i.amh = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.amg
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !39
  %.not.i.i211 = icmp eq i8 %i.ami, 0
  br i1 %.not.i.i211, label %remove_tools.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.amj = getelementptr i8, ptr %i.ait, i64 2
  store i16 9, ptr %i.amj, align 2, !tbaa !39
  br label %remove_tools.exit

remove_tools.exit:                                ; preds = %bb.ev, %bb.eu, %bb.et, %bb.ep, %bb.eo, %bb.em
  %i.amk = getelementptr i8, ptr %4, i64 %i.akt
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !39 ; 2 uses
  %.not162 = icmp eq i8 %i.aml, 0
  br i1 %.not162, label %add_tools.exit, label %bb.ew

bb.ew:                                            ; preds = %remove_tools.exit
  %i.amm = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  %.not.i214 = icmp eq ptr %i.amm, null
  br i1 %.not.i214, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.amn = getelementptr i8, ptr %i.amm, i64 24
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %.not9.i = icmp eq ptr %i.amo, null
  br i1 %.not9.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.amp = getelementptr i8, ptr %i.amo, i64 %i.ais ; 2 uses
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !39
  %i.amr = or i8 %i.amq, %i.aml
  store i8 %i.amr, ptr %i.amp, align 1, !tbaa !39
  %.pre.i215 = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %i.ams = phi ptr [ null, %bb.ew ], [ %i.amm, %bb.ex ], [ %.pre.i215, %bb.ey ] ; 2 uses
  %i.amt = load i8, ptr %i.ait, align 1, !tbaa !39 ; 2 uses
  %i.amu = icmp eq i8 %i.amt, -3
  br i1 %i.amu, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.amv = getelementptr i8, ptr %i.ams, i64 96
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !33 ; 2 uses
  %i.amx = getelementptr i8, ptr %i.amw, i64 1
  %i.amy = load i8, ptr %i.amw, align 1, !tbaa !37
  %i.amz = zext i8 %i.amy to i32
  %i.ana = mul i32 %.0138340, %i.amz
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr i8, ptr %i.amx, i64 %i.anb ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !39
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.018.in.i.i = phi i8 [ %i.and, %bb.fa ], [ %i.amt, %bb.ez ] ; 2 uses
  %.0.i.i216 = phi ptr [ %i.anc, %bb.fa ], [ %i.ait, %bb.ez ]
  %i.ane = icmp eq i8 %.018.in.i.i, -19
  br i1 %i.ane, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.anf = getelementptr i8, ptr %i.ams, i64 112
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !40
  %i.anh = getelementptr i8, ptr %i.ang, i64 %i.ais ; 2 uses
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !39
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.119.in.i.i = phi i8 [ %i.ani, %bb.fc ], [ %.018.in.i.i, %bb.fb ] ; 2 uses
  %.1.i.i217 = phi ptr [ %i.anh, %bb.fc ], [ %.0.i.i216, %bb.fb ]
  %i.anj = add i8 %.119.in.i.i, 23
  %i.ank = icmp ult i8 %i.anj, 21
  br i1 %i.ank, label %add_tools.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.anl = zext i8 %.119.in.i.i to i64
  %i.anm = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.anl
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !39
  %i.ano = zext i8 %i.ann to i64                  ; 2 uses
  %i.anp = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.ano
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !39
  store i8 %i.anq, ptr %.1.i.i217, align 1, !tbaa !39
  %i.anr = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ano
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !39
  %.not.i.i218 = icmp eq i8 %i.ans, 0
  br i1 %.not.i.i218, label %add_tools.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ant = getelementptr i8, ptr %i.ait, i64 2
  store i16 9, ptr %i.ant, align 2, !tbaa !39
  br label %add_tools.exit

add_tools.exit:                                   ; preds = %_Py_GetBaseCodeUnit.exit, %bb.ff, %bb.fe, %bb.fd, %remove_tools.exit, %opcode_has_event.exit
  %i.anu = load i16, ptr %i.ait, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i = lshr i16 %i.anu, 8
  %i.anv = and i16 %i.anu, 255                    ; 3 uses
  %i.anw = icmp samesign ult i16 %i.anv, 233
  br i1 %i.anw, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %add_tools.exit
  %i.anx = zext nneg i16 %i.anv to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i

bb.fh:                                            ; preds = %add_tools.exit
  %i.any = zext nneg i16 %i.anv to i32
  %trunc.i.i219 = trunc i16 %i.anu to i8
  switch i8 %trunc.i.i219, label %bb.fk [
    i8 -2, label %bb.fi
    i8 -3, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
  %i.anz = load ptr, ptr %i.ain, align 8, !tbaa !13
  %i.aoa = getelementptr i8, ptr %i.anz, i64 8
  %i.aob = zext nneg i16 %.sroa.7.0.extract.shift.i.i to i64
  %i.aoc = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aob
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !22
  %i.aoe = getelementptr i8, ptr %i.aod, i64 32
  %i.aof = load i8, ptr %i.aoe, align 8, !tbaa !24
  %i.aog = zext i8 %i.aof to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i

bb.fj:                                            ; preds = %bb.fh
  %i.aoh = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 96
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !33 ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aoj, i64 1
  %i.aol = load i8, ptr %i.aoj, align 1, !tbaa !37
  %i.aom = zext i8 %i.aol to i32
  %i.aon = mul i32 %.0138340, %i.aom
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr i8, ptr %i.aok, i64 %i.aoo
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !39
  %i.aor = zext i8 %i.aoq to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fh
  %.0.i.i220 = phi i32 [ %i.aor, %bb.fj ], [ %i.any, %bb.fh ] ; 2 uses
  %i.aos = icmp eq i32 %.0.i.i220, 237
  br i1 %i.aos, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aot = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aou = getelementptr i8, ptr %i.aot, i64 112
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !40
  %i.aow = getelementptr i8, ptr %i.aov, i64 %i.ais
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !39
  %i.aoy = zext i8 %i.aox to i32
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.1.i.i221 = phi i32 [ %i.aoy, %bb.fl ], [ %.0.i.i220, %bb.fk ]
  %i.aoz = zext nneg i32 %.1.i.i221 to i64        ; 2 uses
  %i.apa = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !39 ; 2 uses
  %.not.i.i222 = icmp eq i8 %i.apb, 0
  br i1 %.not.i.i222, label %_Py_GetBaseCodeUnit.exit.sink.split.i, label %_PyInstruction_GetLength.exit

_Py_GetBaseCodeUnit.exit.sink.split.i:            ; preds = %bb.fm, %bb.fi, %bb.fg
  %.sink2.i = phi i64 [ %i.anx, %bb.fg ], [ %i.aog, %bb.fi ], [ %i.aoz, %bb.fm ]
  %i.apc = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit

_PyInstruction_GetLength.exit:                    ; preds = %bb.fm, %_Py_GetBaseCodeUnit.exit.sink.split.i
  %.sroa.0.1.i.i = phi i8 [ %i.apb, %bb.fm ], [ %i.apd, %_Py_GetBaseCodeUnit.exit.sink.split.i ]
  %i.ape = zext i8 %.sroa.0.1.i.i to i64
  %i.apf = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !39
  %i.aph = zext i8 %i.apg to i32
  %i.api = add nsw i32 %.0138340, 1
  %i.apj = add i32 %i.api, %i.aph                 ; 2 uses
  %i.apk = icmp slt i32 %i.apj, %i.b
  br i1 %i.apk, label %bb.ea, label %._crit_edge, !llvm.loop !191

bb.fn:                                            ; preds = %._crit_edge
  %i.apl = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.apm = getelementptr i8, ptr %i.apl, i64 96
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !33 ; 2 uses
  %i.apo = load i32, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.app = icmp slt i32 %i.apo, %i.b
  br i1 %i.app, label %.lr.ph343, label %.loopexit328

.lr.ph343:                                        ; preds = %bb.fn
  %i.apq = getelementptr i8, ptr %i.apn, i64 1
  %i.apr = xor i8 %i.aip, -1
  %i.aps = getelementptr i8, ptr %0, i64 208      ; 2 uses
  %i.apt = getelementptr i8, ptr %0, i64 152
  br label %bb.fo

bb.fo:                                            ; preds = %.lr.ph343, %_PyInstruction_GetLength.exit236
  %.0142341 = phi i32 [ %i.apo, %.lr.ph343 ], [ %i.asx, %_PyInstruction_GetLength.exit236 ] ; 7 uses
  %i.apu = load i8, ptr %i.apn, align 1, !tbaa !37
  %i.apv = zext i8 %i.apu to i32
  %i.apw = mul i32 %.0142341, %i.apv
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr i8, ptr %i.apq, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !39
  %.not160 = icmp eq i8 %i.apz, 0
  br i1 %.not160, label %remove_line_tools.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aqa = load ptr, ptr %i.f, align 8, !tbaa !32 ; 4 uses
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 104
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !73 ; 2 uses
  %.not.i223 = icmp eq ptr %i.aqc, null
  br i1 %.not.i223, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aqd = sext i32 %.0142341 to i64              ; 2 uses
  %i.aqe = getelementptr i8, ptr %i.aqc, i64 %i.aqd ; 2 uses
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !39
  %i.aqg = and i8 %i.aqf, %i.apr                  ; 2 uses
  store i8 %i.aqg, ptr %i.aqe, align 1, !tbaa !39
  %i.aqh = icmp eq i8 %i.aqg, 0
  br i1 %i.aqh, label %bb.fs, label %remove_line_tools.exit

bb.fr:                                            ; preds = %bb.fp
  %i.aqi = getelementptr i8, ptr %i.aqa, i64 16
  %i.aqj = load i8, ptr %i.aqi, align 1, !tbaa !39 ; 2 uses
  %i.aqk = and i8 %i.aqj, %i.aip
  %i.aql = icmp eq i8 %i.aqk, %i.aqj
  br i1 %i.aql, label %._crit_edge.i226, label %remove_line_tools.exit

._crit_edge.i226:                                 ; preds = %bb.fr
  %.pre.i227 = sext i32 %.0142341 to i64
  br label %bb.fs

bb.fs:                                            ; preds = %._crit_edge.i226, %bb.fq
  %.pre-phi.i224 = phi i64 [ %.pre.i227, %._crit_edge.i226 ], [ %i.aqd, %bb.fq ] ; 2 uses
  %i.aqm = getelementptr [2 x i8], ptr %i.aps, i64 %.pre-phi.i224 ; 3 uses
  %i.aqn = load i8, ptr %i.aqm, align 2, !tbaa !39
  %.not.i.i225 = icmp eq i8 %i.aqn, -3
  br i1 %.not.i.i225, label %bb.ft, label %remove_line_tools.exit

bb.ft:                                            ; preds = %bb.fs
  %i.aqo = getelementptr i8, ptr %i.aqa, i64 96
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !33 ; 2 uses
  %i.aqq = getelementptr i8, ptr %i.aqp, i64 1
  %i.aqr = load i8, ptr %i.aqp, align 1, !tbaa !37
  %i.aqs = zext i8 %i.aqr to i32
  %i.aqt = mul i32 %.0142341, %i.aqs
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr i8, ptr %i.aqq, i64 %i.aqu ; 2 uses
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !39 ; 3 uses
  %i.aqx = icmp eq i8 %i.aqw, -19
  br i1 %i.aqx, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aqy = getelementptr i8, ptr %i.aqa, i64 112
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !40
  %i.ara = getelementptr i8, ptr %i.aqz, i64 %.pre-phi.i224
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !39
  store i8 %i.arb, ptr %i.aqv, align 1, !tbaa !39
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  store i8 %i.aqw, ptr %i.aqm, align 2, !tbaa !39
  %i.arc = zext i8 %i.aqw to i64
  %i.ard = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.arc
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !39
  %.not15.i.i = icmp eq i8 %i.are, 0
  br i1 %.not15.i.i, label %remove_line_tools.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.arf = getelementptr i8, ptr %i.aqm, i64 2
  store i16 9, ptr %i.arf, align 2, !tbaa !39
  br label %remove_line_tools.exit

remove_line_tools.exit:                           ; preds = %bb.fw, %bb.fv, %bb.fs, %bb.fr, %bb.fq, %bb.fo
  %i.arg = sext i32 %.0142341 to i64              ; 2 uses
  %i.arh = getelementptr [2 x i8], ptr %i.aps, i64 %i.arg
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i228 = lshr i16 %i.ari, 8
  %i.arj = and i16 %i.ari, 255                    ; 3 uses
  %i.ark = icmp samesign ult i16 %i.arj, 233
  br i1 %i.ark, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %remove_line_tools.exit
  %i.arl = zext nneg i16 %i.arj to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i234

bb.fy:                                            ; preds = %remove_line_tools.exit
  %i.arm = zext nneg i16 %i.arj to i32
  %trunc.i.i229 = trunc i16 %i.ari to i8
  switch i8 %trunc.i.i229, label %bb.gb [
    i8 -2, label %bb.fz
    i8 -3, label %bb.ga
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.arn = load ptr, ptr %i.apt, align 8, !tbaa !13
  %i.aro = getelementptr i8, ptr %i.arn, i64 8
  %i.arp = zext nneg i16 %.sroa.7.0.extract.shift.i.i228 to i64
  %i.arq = getelementptr [8 x i8], ptr %i.aro, i64 %i.arp
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !22
  %i.ars = getelementptr i8, ptr %i.arr, i64 32
  %i.art = load i8, ptr %i.ars, align 8, !tbaa !24
  %i.aru = zext i8 %i.art to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i234

bb.ga:                                            ; preds = %bb.fy
  %i.arv = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.arw = getelementptr i8, ptr %i.arv, i64 96
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !33 ; 2 uses
  %i.ary = getelementptr i8, ptr %i.arx, i64 1
  %i.arz = load i8, ptr %i.arx, align 1, !tbaa !37
  %i.asa = zext i8 %i.arz to i32
  %i.asb = mul i32 %.0142341, %i.asa
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr i8, ptr %i.ary, i64 %i.asc
  %i.ase = load i8, ptr %i.asd, align 1, !tbaa !39
  %i.asf = zext i8 %i.ase to i32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy
  %.0.i.i230 = phi i32 [ %i.asf, %bb.ga ], [ %i.arm, %bb.fy ] ; 2 uses
  %i.asg = icmp eq i32 %.0.i.i230, 237
  br i1 %i.asg, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ash = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.asi = getelementptr i8, ptr %i.ash, i64 112
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !40
  %i.ask = getelementptr i8, ptr %i.asj, i64 %i.arg
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !39
  %i.asm = zext i8 %i.asl to i32
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.1.i.i231 = phi i32 [ %i.asm, %bb.gc ], [ %.0.i.i230, %bb.gb ]
  %i.asn = zext nneg i32 %.1.i.i231 to i64        ; 2 uses
  %i.aso = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.asn
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !39 ; 2 uses
  %.not.i.i232 = icmp eq i8 %i.asp, 0
  br i1 %.not.i.i232, label %_Py_GetBaseCodeUnit.exit.sink.split.i234, label %_PyInstruction_GetLength.exit236

_Py_GetBaseCodeUnit.exit.sink.split.i234:         ; preds = %bb.gd, %bb.fz, %bb.fx
  %.sink2.i235 = phi i64 [ %i.arl, %bb.fx ], [ %i.aru, %bb.fz ], [ %i.asn, %bb.gd ]
  %i.asq = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i235
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit236

_PyInstruction_GetLength.exit236:                 ; preds = %bb.gd, %_Py_GetBaseCodeUnit.exit.sink.split.i234
  %.sroa.0.1.i.i233 = phi i8 [ %i.asp, %bb.gd ], [ %i.asr, %_Py_GetBaseCodeUnit.exit.sink.split.i234 ]
  %i.ass = zext i8 %.sroa.0.1.i.i233 to i64
  %i.ast = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ass
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !39
  %i.asv = zext i8 %i.asu to i32
  %i.asw = add nsw i32 %.0142341, 1
  %i.asx = add i32 %i.asw, %i.asv                 ; 2 uses
  %i.asy = icmp slt i32 %i.asx, %i.b
  br i1 %i.asy, label %bb.fo, label %.loopexit328, !llvm.loop !192

.loopexit328:                                     ; preds = %_PyInstruction_GetLength.exit236, %bb.fn, %._crit_edge
  %.not155 = icmp eq i8 %i.air, 0
  br i1 %.not155, label %.loopexit327, label %bb.ge

bb.ge:                                            ; preds = %.loopexit328
  %i.asz = load i32, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.ata = icmp slt i32 %i.asz, %i.b
  br i1 %i.ata, label %.lr.ph346, label %.loopexit327

.lr.ph346:                                        ; preds = %bb.ge
  %i.atb = getelementptr i8, ptr %0, i64 208
  %i.atc = getelementptr i8, ptr %0, i64 152      ; 3 uses
  %i.atd = xor i8 %i.air, -1
  br label %bb.gf

bb.gf:                                            ; preds = %.lr.ph346, %_PyInstruction_GetLength.exit258
  %.0143344 = phi i32 [ %i.asz, %.lr.ph346 ], [ %.1144, %_PyInstruction_GetLength.exit258 ] ; 6 uses
  %i.ate = sext i32 %.0143344 to i64              ; 6 uses
  %i.atf = getelementptr [2 x i8], ptr %i.atb, i64 %i.ate ; 5 uses
  %i.atg = load i16, ptr %i.atf, align 2          ; 3 uses
  %.sroa.7.0.extract.shift.i237 = lshr i16 %i.atg, 8 ; 2 uses
  %i.ath = and i16 %i.atg, 255                    ; 5 uses
  %i.ati = icmp samesign ult i16 %i.ath, 233      ; 2 uses
  %i.atj = trunc i16 %i.atg to i8                 ; 3 uses
  br i1 %i.ati, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.atk = zext nneg i16 %i.ath to i64
  br label %_Py_GetBaseCodeUnit.exit249.sink.split

bb.gh:                                            ; preds = %bb.gf
  %i.atl = zext nneg i16 %i.ath to i32
  switch i8 %i.atj, label %bb.gk [
    i8 -2, label %bb.gi
    i8 -3, label %bb.gj
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.atm = load ptr, ptr %i.atc, align 8, !tbaa !13
  %i.atn = getelementptr i8, ptr %i.atm, i64 8
  %i.ato = zext nneg i16 %.sroa.7.0.extract.shift.i237 to i64
  %i.atp = getelementptr [8 x i8], ptr %i.atn, i64 %i.ato
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !22
  %i.atr = getelementptr i8, ptr %i.atq, i64 32
  %i.ats = load i8, ptr %i.atr, align 8, !tbaa !24
  %i.att = zext i8 %i.ats to i64
  br label %_Py_GetBaseCodeUnit.exit249.sink.split

bb.gj:                                            ; preds = %bb.gh
  %i.atu = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.atv = getelementptr i8, ptr %i.atu, i64 96
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !33 ; 2 uses
  %i.atx = getelementptr i8, ptr %i.atw, i64 1
  %i.aty = load i8, ptr %i.atw, align 1, !tbaa !37
  %i.atz = zext i8 %i.aty to i32
  %i.aua = mul i32 %.0143344, %i.atz
  %i.aub = sext i32 %i.aua to i64
  %i.auc = getelementptr i8, ptr %i.atx, i64 %i.aub
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !39
  %i.aue = zext i8 %i.aud to i32
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %.0.i240 = phi i32 [ %i.aue, %bb.gj ], [ %i.atl, %bb.gh ] ; 2 uses
  %i.auf = icmp eq i32 %.0.i240, 237
  br i1 %i.auf, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aug = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.auh = getelementptr i8, ptr %i.aug, i64 112
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !40
  %i.auj = getelementptr i8, ptr %i.aui, i64 %i.ate
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !39
  %i.aul = zext i8 %i.auk to i32
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.1.i241 = phi i32 [ %i.aul, %bb.gl ], [ %.0.i240, %bb.gk ]
  %i.aum = zext nneg i32 %.1.i241 to i64          ; 2 uses
  %i.aun = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !39 ; 2 uses
  %.not.i242 = icmp eq i8 %i.auo, 0
  br i1 %.not.i242, label %_Py_GetBaseCodeUnit.exit249.sink.split, label %_Py_GetBaseCodeUnit.exit249

_Py_GetBaseCodeUnit.exit249.sink.split:           ; preds = %bb.gm, %bb.gi, %bb.gg
  %.sink493 = phi i64 [ %i.atk, %bb.gg ], [ %i.att, %bb.gi ], [ %i.aum, %bb.gm ]
  %i.aup = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink493
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit249

_Py_GetBaseCodeUnit.exit249:                      ; preds = %_Py_GetBaseCodeUnit.exit249.sink.split, %bb.gm
  %.sroa.0.1.i243 = phi i8 [ %i.auo, %bb.gm ], [ %i.auq, %_Py_GetBaseCodeUnit.exit249.sink.split ]
  switch i8 %.sroa.0.1.i243, label %bb.gv [
    i8 -128, label %bb.gn
    i8 9, label %bb.gn
  ]

bb.gn:                                            ; preds = %_Py_GetBaseCodeUnit.exit249, %_Py_GetBaseCodeUnit.exit249
  br i1 %i.ati, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aur = zext nneg i16 %i.ath to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i256

bb.gp:                                            ; preds = %bb.gn
  %i.aus = zext nneg i16 %i.ath to i32
  switch i8 %i.atj, label %bb.gs [
    i8 -2, label %bb.gq
    i8 -3, label %bb.gr
  ]

bb.gq:                                            ; preds = %bb.gp
  %i.aut = load ptr, ptr %i.atc, align 8, !tbaa !13
  %i.auu = getelementptr i8, ptr %i.aut, i64 8
  %i.auv = zext nneg i16 %.sroa.7.0.extract.shift.i237 to i64
  %i.auw = getelementptr [8 x i8], ptr %i.auu, i64 %i.auv
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !22
  %i.auy = getelementptr i8, ptr %i.aux, i64 32
  %i.auz = load i8, ptr %i.auy, align 8, !tbaa !24
  %i.ava = zext i8 %i.auz to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i256

bb.gr:                                            ; preds = %bb.gp
  %i.avb = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.avc = getelementptr i8, ptr %i.avb, i64 96
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !33 ; 2 uses
  %i.ave = getelementptr i8, ptr %i.avd, i64 1
  %i.avf = load i8, ptr %i.avd, align 1, !tbaa !37
  %i.avg = zext i8 %i.avf to i32
  %i.avh = mul i32 %.0143344, %i.avg
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr i8, ptr %i.ave, i64 %i.avi
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !39
  %i.avl = zext i8 %i.avk to i32
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gp
  %.0.i.i252 = phi i32 [ %i.avl, %bb.gr ], [ %i.aus, %bb.gp ] ; 2 uses
  %i.avm = icmp eq i32 %.0.i.i252, 237
  br i1 %i.avm, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.avn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.avo = getelementptr i8, ptr %i.avn, i64 112
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !40
  %i.avq = getelementptr i8, ptr %i.avp, i64 %i.ate
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !39
  %i.avs = zext i8 %i.avr to i32
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.1.i.i253 = phi i32 [ %i.avs, %bb.gt ], [ %.0.i.i252, %bb.gs ]
  %i.avt = zext nneg i32 %.1.i.i253 to i64        ; 2 uses
  %i.avu = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !39 ; 2 uses
  %.not.i.i254 = icmp eq i8 %i.avv, 0
  br i1 %.not.i.i254, label %_Py_GetBaseCodeUnit.exit.sink.split.i256, label %_PyInstruction_GetLength.exit258, !llvm.loop !193

_Py_GetBaseCodeUnit.exit.sink.split.i256:         ; preds = %bb.gu, %bb.gq, %bb.go
  %.sink2.i257 = phi i64 [ %i.aur, %bb.go ], [ %i.ava, %bb.gq ], [ %i.avt, %bb.gu ]
  br label %_PyInstruction_GetLength.exit258.sink.split, !llvm.loop !193

bb.gv:                                            ; preds = %_Py_GetBaseCodeUnit.exit249
  %i.avw = load ptr, ptr %i.f, align 8, !tbaa !32 ; 4 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 120
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !90 ; 2 uses
  %.not.i259 = icmp eq ptr %i.avy, null
  br i1 %.not.i259, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.avz = getelementptr i8, ptr %i.avy, i64 %i.ate ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !39
  %i.awb = and i8 %i.awa, %i.atd                  ; 2 uses
  store i8 %i.awb, ptr %i.avz, align 1, !tbaa !39
  %i.awc = icmp eq i8 %i.awb, 0
  br i1 %i.awc, label %.._crit_edge.i263_crit_edge, label %remove_per_instruction_tools.exit

.._crit_edge.i263_crit_edge:                      ; preds = %bb.gw
  %.pre367 = load i8, ptr %i.atf, align 1, !tbaa !39
  br label %._crit_edge.i263

bb.gx:                                            ; preds = %bb.gv
  %i.awd = getelementptr i8, ptr %i.avw, i64 17
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !39 ; 2 uses
  %i.awf = and i8 %i.awe, %i.air
  %i.awg = icmp eq i8 %i.awf, %i.awe
  br i1 %i.awg, label %._crit_edge.i263, label %remove_per_instruction_tools.exit

._crit_edge.i263:                                 ; preds = %.._crit_edge.i263_crit_edge, %bb.gx
  %i.awh = phi i8 [ %.pre367, %.._crit_edge.i263_crit_edge ], [ %i.atj, %bb.gx ] ; 2 uses
  %i.awi = icmp eq i8 %i.awh, -3
  br i1 %i.awi, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %._crit_edge.i263
  %i.awj = getelementptr i8, ptr %i.avw, i64 96
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !33 ; 2 uses
  %i.awl = getelementptr i8, ptr %i.awk, i64 1
  %i.awm = load i8, ptr %i.awk, align 1, !tbaa !37
  %i.awn = zext i8 %i.awm to i32
  %i.awo = mul i32 %.0143344, %i.awn
  %i.awp = sext i32 %i.awo to i64
  %i.awq = getelementptr i8, ptr %i.awl, i64 %i.awp ; 2 uses
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !39
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %._crit_edge.i263
  %.014.in.i.i = phi i8 [ %i.awr, %bb.gy ], [ %i.awh, %._crit_edge.i263 ]
  %.0.i.i261 = phi ptr [ %i.awq, %bb.gy ], [ %i.atf, %._crit_edge.i263 ]
  %.not.i.i262 = icmp eq i8 %.014.in.i.i, -19
  br i1 %.not.i.i262, label %bb.ha, label %remove_per_instruction_tools.exit

bb.ha:                                            ; preds = %bb.gz
  %i.aws = getelementptr i8, ptr %i.avw, i64 112
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !40
  %i.awu = getelementptr i8, ptr %i.awt, i64 %i.ate
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !39 ; 2 uses
  store i8 %i.awv, ptr %.0.i.i261, align 1, !tbaa !39
  %i.aww = zext i8 %i.awv to i64
  %i.awx = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.aww
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !39
  %.not16.i.i = icmp eq i8 %i.awy, 0
  br i1 %.not16.i.i, label %remove_per_instruction_tools.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awz = getelementptr i8, ptr %i.atf, i64 2
  store i16 9, ptr %i.awz, align 2, !tbaa !39
  br label %remove_per_instruction_tools.exit

remove_per_instruction_tools.exit:                ; preds = %bb.gw, %bb.gx, %bb.gz, %bb.ha, %bb.hb
  %i.axa = load i16, ptr %i.atf, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i265 = lshr i16 %i.axa, 8
  %i.axb = and i16 %i.axa, 255                    ; 3 uses
  %i.axc = icmp samesign ult i16 %i.axb, 233
  br i1 %i.axc, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %remove_per_instruction_tools.exit
  %i.axd = zext nneg i16 %i.axb to i64
  br label %_PyInstruction_GetLength.exit258.sink.split

bb.hd:                                            ; preds = %remove_per_instruction_tools.exit
  %i.axe = zext nneg i16 %i.axb to i32
  %trunc.i.i266 = trunc i16 %i.axa to i8
  switch i8 %trunc.i.i266, label %bb.hg [
    i8 -2, label %bb.he
    i8 -3, label %bb.hf
  ]

bb.he:                                            ; preds = %bb.hd
  %i.axf = load ptr, ptr %i.atc, align 8, !tbaa !13
  %i.axg = getelementptr i8, ptr %i.axf, i64 8
  %i.axh = zext nneg i16 %.sroa.7.0.extract.shift.i.i265 to i64
  %i.axi = getelementptr [8 x i8], ptr %i.axg, i64 %i.axh
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !22
  %i.axk = getelementptr i8, ptr %i.axj, i64 32
  %i.axl = load i8, ptr %i.axk, align 8, !tbaa !24
  %i.axm = zext i8 %i.axl to i64
  br label %_PyInstruction_GetLength.exit258.sink.split

bb.hf:                                            ; preds = %bb.hd
  %i.axn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.axo = getelementptr i8, ptr %i.axn, i64 96
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !33 ; 2 uses
  %i.axq = getelementptr i8, ptr %i.axp, i64 1
  %i.axr = load i8, ptr %i.axp, align 1, !tbaa !37
  %i.axs = zext i8 %i.axr to i32
  %i.axt = mul i32 %.0143344, %i.axs
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr i8, ptr %i.axq, i64 %i.axu
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !39
  %i.axx = zext i8 %i.axw to i32
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.hd
  %.0.i.i267 = phi i32 [ %i.axx, %bb.hf ], [ %i.axe, %bb.hd ] ; 2 uses
  %i.axy = icmp eq i32 %.0.i.i267, 237
  br i1 %i.axy, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.axz = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aya = getelementptr i8, ptr %i.axz, i64 112
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !40
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 %i.ate
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !39
  %i.aye = zext i8 %i.ayd to i32
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.1.i.i268 = phi i32 [ %i.aye, %bb.hh ], [ %.0.i.i267, %bb.hg ]
  %i.ayf = zext nneg i32 %.1.i.i268 to i64        ; 2 uses
  %i.ayg = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ayf
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !39 ; 2 uses
  %.not.i.i269 = icmp eq i8 %i.ayh, 0
  br i1 %.not.i.i269, label %_PyInstruction_GetLength.exit258.sink.split, label %_PyInstruction_GetLength.exit258

_PyInstruction_GetLength.exit258.sink.split:      ; preds = %bb.hc, %bb.he, %bb.hi, %_Py_GetBaseCodeUnit.exit.sink.split.i256
  %.sink2.i272.sink = phi i64 [ %.sink2.i257, %_Py_GetBaseCodeUnit.exit.sink.split.i256 ], [ %i.axd, %bb.hc ], [ %i.axm, %bb.he ], [ %i.ayf, %bb.hi ]
  %i.ayi = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i272.sink
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit258

_PyInstruction_GetLength.exit258:                 ; preds = %_PyInstruction_GetLength.exit258.sink.split, %bb.hi, %bb.gu
  %.pn323.in = phi i8 [ %i.ayh, %bb.hi ], [ %i.avv, %bb.gu ], [ %i.ayj, %_PyInstruction_GetLength.exit258.sink.split ]
  %.pn323 = zext i8 %.pn323.in to i64
  %.pn159.in.in.in = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pn323
  %.pn159.in.in = load i8, ptr %.pn159.in.in.in, align 1, !tbaa !39
  %.pn159.in = zext i8 %.pn159.in.in to i32
  %.pn159 = add nsw i32 %.0143344, 1
  %.1144 = add i32 %.pn159, %.pn159.in            ; 2 uses
  %i.ayk = icmp slt i32 %.1144, %i.b
  br i1 %i.ayk, label %bb.gf, label %.loopexit327

.loopexit327:                                     ; preds = %_PyInstruction_GetLength.exit258, %bb.ge, %.loopexit328
  %i.ayl = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !39 ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ayo = load i8, ptr %i.ayn, align 2, !tbaa !39 ; 2 uses
  %.not156 = icmp eq i8 %i.aym, 0
  br i1 %.not156, label %.loopexit326, label %bb.hj

bb.hj:                                            ; preds = %.loopexit327
  %i.ayp = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 96
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !33 ; 2 uses
  %i.ays = load i32, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.ayt = icmp slt i32 %i.ays, %i.b
  br i1 %i.ayt, label %.lr.ph349, label %.loopexit326

.lr.ph349:                                        ; preds = %bb.hj
  %i.ayu = getelementptr i8, ptr %i.ayr, i64 1
  %i.ayv = getelementptr i8, ptr %0, i64 208      ; 2 uses
  %i.ayw = getelementptr i8, ptr %0, i64 152
  br label %bb.hk

bb.hk:                                            ; preds = %.lr.ph349, %_PyInstruction_GetLength.exit285
  %.0140347 = phi i32 [ %i.ays, %.lr.ph349 ], [ %i.bbo, %_PyInstruction_GetLength.exit285 ] ; 6 uses
  %i.ayx = load i8, ptr %i.ayr, align 1, !tbaa !37
  %i.ayy = zext i8 %i.ayx to i32
  %i.ayz = mul i32 %.0140347, %i.ayy
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr i8, ptr %i.ayu, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !39
  %.not158 = icmp eq i8 %i.azc, 0
  br i1 %.not158, label %.add_line_tools.exit_crit_edge, label %bb.hl

.add_line_tools.exit_crit_edge:                   ; preds = %bb.hk
  %.pre375 = sext i32 %.0140347 to i64
  br label %add_line_tools.exit

bb.hl:                                            ; preds = %bb.hk
  %i.azd = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aze = getelementptr i8, ptr %i.azd, i64 104
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !73 ; 2 uses
  %.not.i274 = icmp eq ptr %i.azf, null
  %.pre.i275 = sext i32 %.0140347 to i64          ; 4 uses
  br i1 %.not.i274, label %._crit_edge.i276, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.azg = getelementptr i8, ptr %i.azf, i64 %.pre.i275 ; 2 uses
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !39
  %i.azi = or i8 %i.azh, %i.aym
  store i8 %i.azi, ptr %i.azg, align 1, !tbaa !39
  br label %._crit_edge.i276

._crit_edge.i276:                                 ; preds = %bb.hm, %bb.hl
  %i.azj = getelementptr [2 x i8], ptr %i.ayv, i64 %.pre.i275 ; 2 uses
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !39 ; 2 uses
  %i.azl = icmp eq i8 %i.azk, -3
  br i1 %i.azl, label %add_line_tools.exit, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge.i276
  %i.azm = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.azn = getelementptr i8, ptr %i.azm, i64 96
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !33 ; 2 uses
  %i.azp = zext i8 %i.azk to i64
  %i.azq = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !39
  %i.azs = getelementptr i8, ptr %i.azo, i64 1
  %i.azt = load i8, ptr %i.azo, align 1, !tbaa !37
  %i.azu = zext i8 %i.azt to i32
end_hunk_3
begin_hunk_4_@force_instrument_lock_held:bb.a

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.1.i.i280 = phi i32 [ %i.bbd, %bb.ht ], [ %.0.i.i279, %bb.hs ]
  %i.bbe = zext nneg i32 %.1.i.i280 to i64        ; 2 uses
  %i.bbf = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.bbe
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !39 ; 2 uses
  %.not.i.i281 = icmp eq i8 %i.bbg, 0
  br i1 %.not.i.i281, label %_Py_GetBaseCodeUnit.exit.sink.split.i283, label %_PyInstruction_GetLength.exit285

_Py_GetBaseCodeUnit.exit.sink.split.i283:         ; preds = %bb.hu, %bb.hq, %bb.ho
  %.sink2.i284 = phi i64 [ %i.bac, %bb.ho ], [ %i.bal, %bb.hq ], [ %i.bbe, %bb.hu ]
  %i.bbh = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i284
  %i.bbi = load i8, ptr %i.bbh, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit285

_PyInstruction_GetLength.exit285:                 ; preds = %bb.hu, %_Py_GetBaseCodeUnit.exit.sink.split.i283
  %.sroa.0.1.i.i282 = phi i8 [ %i.bbg, %bb.hu ], [ %i.bbi, %_Py_GetBaseCodeUnit.exit.sink.split.i283 ]
  %i.bbj = zext i8 %.sroa.0.1.i.i282 to i64
  %i.bbk = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.bbj
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !39
  %i.bbm = zext i8 %i.bbl to i32
  %i.bbn = add nsw i32 %.0140347, 1
  %i.bbo = add i32 %i.bbn, %i.bbm                 ; 2 uses
  %i.bbp = icmp slt i32 %i.bbo, %i.b
  br i1 %i.bbp, label %bb.hk, label %.loopexit326, !llvm.loop !194

.loopexit326:                                     ; preds = %_PyInstruction_GetLength.exit285, %bb.hj, %.loopexit327
  %.not157 = icmp eq i8 %i.ayo, 0
  br i1 %.not157, label %.loopexit, label %bb.hv

bb.hv:                                            ; preds = %.loopexit326
  %i.bbq = load i32, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.bbr = icmp slt i32 %i.bbq, %i.b
  br i1 %i.bbr, label %.lr.ph352, label %.loopexit

.lr.ph352:                                        ; preds = %bb.hv
  %i.bbs = getelementptr i8, ptr %0, i64 208
  %i.bbt = getelementptr i8, ptr %0, i64 152      ; 3 uses
  br label %bb.hw

bb.hw:                                            ; preds = %.lr.ph352, %_PyInstruction_GetLength.exit307
  %.0139350 = phi i32 [ %i.bbq, %.lr.ph352 ], [ %.1, %_PyInstruction_GetLength.exit307 ] ; 6 uses
  %i.bbu = sext i32 %.0139350 to i64              ; 6 uses
  %i.bbv = getelementptr [2 x i8], ptr %i.bbs, i64 %i.bbu ; 4 uses
  %i.bbw = load i16, ptr %i.bbv, align 2          ; 3 uses
  %.sroa.7.0.extract.shift.i286 = lshr i16 %i.bbw, 8 ; 2 uses
  %i.bbx = and i16 %i.bbw, 255                    ; 5 uses
  %i.bby = icmp samesign ult i16 %i.bbx, 233      ; 2 uses
  %i.bbz = trunc i16 %i.bbw to i8                 ; 3 uses
  br i1 %i.bby, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bca = zext nneg i16 %i.bbx to i64
  br label %_Py_GetBaseCodeUnit.exit298.sink.split

bb.hy:                                            ; preds = %bb.hw
  %i.bcb = zext nneg i16 %i.bbx to i32
  switch i8 %i.bbz, label %bb.ib [
    i8 -2, label %bb.hz
    i8 -3, label %bb.ia
  ]

bb.hz:                                            ; preds = %bb.hy
  %i.bcc = load ptr, ptr %i.bbt, align 8, !tbaa !13
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 8
  %i.bce = zext nneg i16 %.sroa.7.0.extract.shift.i286 to i64
  %i.bcf = getelementptr [8 x i8], ptr %i.bcd, i64 %i.bce
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !22
  %i.bch = getelementptr i8, ptr %i.bcg, i64 32
  %i.bci = load i8, ptr %i.bch, align 8, !tbaa !24
  %i.bcj = zext i8 %i.bci to i64
  br label %_Py_GetBaseCodeUnit.exit298.sink.split

bb.ia:                                            ; preds = %bb.hy
  %i.bck = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bcl = getelementptr i8, ptr %i.bck, i64 96
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !33 ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 1
  %i.bco = load i8, ptr %i.bcm, align 1, !tbaa !37
  %i.bcp = zext i8 %i.bco to i32
  %i.bcq = mul i32 %.0139350, %i.bcp
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr i8, ptr %i.bcn, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !39
  %i.bcu = zext i8 %i.bct to i32
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hy
  %.0.i289 = phi i32 [ %i.bcu, %bb.ia ], [ %i.bcb, %bb.hy ] ; 2 uses
  %i.bcv = icmp eq i32 %.0.i289, 237
  br i1 %i.bcv, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.bcw = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 112
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !40
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 %i.bbu
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !39
  %i.bdb = zext i8 %i.bda to i32
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.1.i290 = phi i32 [ %i.bdb, %bb.ic ], [ %.0.i289, %bb.ib ]
  %i.bdc = zext nneg i32 %.1.i290 to i64          ; 2 uses
  %i.bdd = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.bdc
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !39 ; 2 uses
  %.not.i291 = icmp eq i8 %i.bde, 0
  br i1 %.not.i291, label %_Py_GetBaseCodeUnit.exit298.sink.split, label %_Py_GetBaseCodeUnit.exit298

_Py_GetBaseCodeUnit.exit298.sink.split:           ; preds = %bb.id, %bb.hz, %bb.hx
  %.sink496 = phi i64 [ %i.bca, %bb.hx ], [ %i.bcj, %bb.hz ], [ %i.bdc, %bb.id ]
  %i.bdf = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink496
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit298

_Py_GetBaseCodeUnit.exit298:                      ; preds = %_Py_GetBaseCodeUnit.exit298.sink.split, %bb.id
  %.sroa.0.1.i292 = phi i8 [ %i.bde, %bb.id ], [ %i.bdg, %_Py_GetBaseCodeUnit.exit298.sink.split ]
  switch i8 %.sroa.0.1.i292, label %bb.im [
    i8 -128, label %bb.ie
    i8 9, label %bb.ie
  ]

bb.ie:                                            ; preds = %_Py_GetBaseCodeUnit.exit298, %_Py_GetBaseCodeUnit.exit298
  br i1 %i.bby, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bdh = zext nneg i16 %i.bbx to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i305

bb.ig:                                            ; preds = %bb.ie
  %i.bdi = zext nneg i16 %i.bbx to i32
  switch i8 %i.bbz, label %bb.ij [
    i8 -2, label %bb.ih
    i8 -3, label %bb.ii
  ]

bb.ih:                                            ; preds = %bb.ig
  %i.bdj = load ptr, ptr %i.bbt, align 8, !tbaa !13
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 8
  %i.bdl = zext nneg i16 %.sroa.7.0.extract.shift.i286 to i64
  %i.bdm = getelementptr [8 x i8], ptr %i.bdk, i64 %i.bdl
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !22
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 32
  %i.bdp = load i8, ptr %i.bdo, align 8, !tbaa !24
  %i.bdq = zext i8 %i.bdp to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i305

bb.ii:                                            ; preds = %bb.ig
  %i.bdr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bds = getelementptr i8, ptr %i.bdr, i64 96
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !33 ; 2 uses
  %i.bdu = getelementptr i8, ptr %i.bdt, i64 1
  %i.bdv = load i8, ptr %i.bdt, align 1, !tbaa !37
  %i.bdw = zext i8 %i.bdv to i32
  %i.bdx = mul i32 %.0139350, %i.bdw
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = getelementptr i8, ptr %i.bdu, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !39
  %i.beb = zext i8 %i.bea to i32
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ig
  %.0.i.i301 = phi i32 [ %i.beb, %bb.ii ], [ %i.bdi, %bb.ig ] ; 2 uses
  %i.bec = icmp eq i32 %.0.i.i301, 237
  br i1 %i.bec, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.bed = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bee = getelementptr i8, ptr %i.bed, i64 112
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !40
  %i.beg = getelementptr i8, ptr %i.bef, i64 %i.bbu
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !39
  %i.bei = zext i8 %i.beh to i32
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.1.i.i302 = phi i32 [ %i.bei, %bb.ik ], [ %.0.i.i301, %bb.ij ]
  %i.bej = zext nneg i32 %.1.i.i302 to i64        ; 2 uses
  %i.bek = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.bej
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !39 ; 2 uses
  %.not.i.i303 = icmp eq i8 %i.bel, 0
  br i1 %.not.i.i303, label %_Py_GetBaseCodeUnit.exit.sink.split.i305, label %_PyInstruction_GetLength.exit307, !llvm.loop !195

_Py_GetBaseCodeUnit.exit.sink.split.i305:         ; preds = %bb.il, %bb.ih, %bb.if
  %.sink2.i306 = phi i64 [ %i.bdh, %bb.if ], [ %i.bdq, %bb.ih ], [ %i.bej, %bb.il ]
  br label %_PyInstruction_GetLength.exit307.sink.split, !llvm.loop !195

bb.im:                                            ; preds = %_Py_GetBaseCodeUnit.exit298
  %i.bem = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.ben = getelementptr i8, ptr %i.bem, i64 120
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !90 ; 2 uses
  %.not.i308 = icmp eq ptr %i.beo, null
  br i1 %.not.i308, label %._crit_edge.i310, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bep = getelementptr i8, ptr %i.beo, i64 %i.bbu ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 1, !tbaa !39
  %i.ber = or i8 %i.beq, %i.ayo
  store i8 %i.ber, ptr %i.bep, align 1, !tbaa !39
  %.pre.i309 = load ptr, ptr %i.f, align 8, !tbaa !32
  %.pre368 = load i8, ptr %i.bbv, align 1, !tbaa !39
  br label %._crit_edge.i310

._crit_edge.i310:                                 ; preds = %bb.in, %bb.im
  %i.bes = phi i8 [ %.pre368, %bb.in ], [ %i.bbz, %bb.im ] ; 2 uses
  %i.bet = phi ptr [ %.pre.i309, %bb.in ], [ %i.bem, %bb.im ] ; 2 uses
  %i.beu = icmp eq i8 %i.bes, -3
  br i1 %i.beu, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %._crit_edge.i310
  %i.bev = getelementptr i8, ptr %i.bet, i64 96
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !33 ; 2 uses
  %i.bex = getelementptr i8, ptr %i.bew, i64 1
  %i.bey = load i8, ptr %i.bew, align 1, !tbaa !37
  %i.bez = zext i8 %i.bey to i32
  %i.bfa = mul i32 %.0139350, %i.bez
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = getelementptr i8, ptr %i.bex, i64 %i.bfb ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !39
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %._crit_edge.i310
  %.016.i.i = phi ptr [ %i.bfc, %bb.io ], [ %i.bbv, %._crit_edge.i310 ]
  %.0.in.i.i = phi i8 [ %i.bfd, %bb.io ], [ %i.bes, %._crit_edge.i310 ] ; 4 uses
  %i.bfe = icmp eq i8 %.0.in.i.i, -19
  br i1 %i.bfe, label %add_per_instruction_tools.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bff = add i8 %.0.in.i.i, 23
  %i.bfg = icmp ult i8 %i.bff, 21
  br i1 %i.bfg, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bfh = zext i8 %.0.in.i.i to i64
  %i.bfi = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.bfh
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !39
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.sink.i.i311 = phi i8 [ %i.bfj, %bb.ir ], [ %.0.in.i.i, %bb.iq ]
  %i.bfk = getelementptr i8, ptr %i.bet, i64 112
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !40
  %i.bfm = getelementptr i8, ptr %i.bfl, i64 %i.bbu
  store i8 %.sink.i.i311, ptr %i.bfm, align 1, !tbaa !39
  store i8 -19, ptr %.016.i.i, align 1, !tbaa !39
  br label %add_per_instruction_tools.exit

add_per_instruction_tools.exit:                   ; preds = %bb.ip, %bb.is
  %i.bfn = load i16, ptr %i.bbv, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i312 = lshr i16 %i.bfn, 8
  %i.bfo = and i16 %i.bfn, 255                    ; 3 uses
  %i.bfp = icmp samesign ult i16 %i.bfo, 233
  br i1 %i.bfp, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %add_per_instruction_tools.exit
  %i.bfq = zext nneg i16 %i.bfo to i64
  br label %_PyInstruction_GetLength.exit307.sink.split

bb.iu:                                            ; preds = %add_per_instruction_tools.exit
  %i.bfr = zext nneg i16 %i.bfo to i32
  %trunc.i.i313 = trunc i16 %i.bfn to i8
  switch i8 %trunc.i.i313, label %bb.ix [
    i8 -2, label %bb.iv
    i8 -3, label %bb.iw
  ]

bb.iv:                                            ; preds = %bb.iu
  %i.bfs = load ptr, ptr %i.bbt, align 8, !tbaa !13
  %i.bft = getelementptr i8, ptr %i.bfs, i64 8
  %i.bfu = zext nneg i16 %.sroa.7.0.extract.shift.i.i312 to i64
  %i.bfv = getelementptr [8 x i8], ptr %i.bft, i64 %i.bfu
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !22
  %i.bfx = getelementptr i8, ptr %i.bfw, i64 32
  %i.bfy = load i8, ptr %i.bfx, align 8, !tbaa !24
  %i.bfz = zext i8 %i.bfy to i64
  br label %_PyInstruction_GetLength.exit307.sink.split

bb.iw:                                            ; preds = %bb.iu
  %i.bga = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bgb = getelementptr i8, ptr %i.bga, i64 96
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !33 ; 2 uses
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 1
  %i.bge = load i8, ptr %i.bgc, align 1, !tbaa !37
  %i.bgf = zext i8 %i.bge to i32
  %i.bgg = mul i32 %.0139350, %i.bgf
  %i.bgh = sext i32 %i.bgg to i64
  %i.bgi = getelementptr i8, ptr %i.bgd, i64 %i.bgh
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !39
  %i.bgk = zext i8 %i.bgj to i32
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iu
  %.0.i.i314 = phi i32 [ %i.bgk, %bb.iw ], [ %i.bfr, %bb.iu ] ; 2 uses
  %i.bgl = icmp eq i32 %.0.i.i314, 237
  br i1 %i.bgl, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.bgm = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bgn = getelementptr i8, ptr %i.bgm, i64 112
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !40
  %i.bgp = getelementptr i8, ptr %i.bgo, i64 %i.bbu
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !39
  %i.bgr = zext i8 %i.bgq to i32
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.1.i.i315 = phi i32 [ %i.bgr, %bb.iy ], [ %.0.i.i314, %bb.ix ]
  %i.bgs = zext nneg i32 %.1.i.i315 to i64        ; 2 uses
  %i.bgt = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.bgs
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !39 ; 2 uses
  %.not.i.i316 = icmp eq i8 %i.bgu, 0
  br i1 %.not.i.i316, label %_PyInstruction_GetLength.exit307.sink.split, label %_PyInstruction_GetLength.exit307

_PyInstruction_GetLength.exit307.sink.split:      ; preds = %bb.it, %bb.iv, %bb.iz, %_Py_GetBaseCodeUnit.exit.sink.split.i305
  %.sink2.i319.sink = phi i64 [ %.sink2.i306, %_Py_GetBaseCodeUnit.exit.sink.split.i305 ], [ %i.bfq, %bb.it ], [ %i.bfz, %bb.iv ], [ %i.bgs, %bb.iz ]
  %i.bgv = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i319.sink
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit307

_PyInstruction_GetLength.exit307:                 ; preds = %_PyInstruction_GetLength.exit307.sink.split, %bb.iz, %bb.il
  %.pn324.in = phi i8 [ %i.bgu, %bb.iz ], [ %i.bel, %bb.il ], [ %i.bgw, %_PyInstruction_GetLength.exit307.sink.split ]
  %.pn324 = zext i8 %.pn324.in to i64
  %.pn.in.in.in = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pn324
  %.pn.in.in = load i8, ptr %.pn.in.in.in, align 1, !tbaa !39
  %.pn.in = zext i8 %.pn.in.in to i32
  %.pn = add nsw i32 %.0139350, 1
  %.1 = add i32 %.pn, %.pn.in                     ; 2 uses
  %i.bgx = icmp slt i32 %.1, %i.b
  br i1 %i.bgx, label %bb.hw, label %.loopexit

.loopexit:                                        ; preds = %_PyInstruction_GetLength.exit307, %bb.hv, %.loopexit326, %bb.dy
  %i.bgy = load atomic i64, ptr %1 monotonic, align 8
  %i.bgz = and i64 %i.bgy, 4294967295
  store i64 %i.bgz, ptr %i.ahn, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %update_instrumentation_data.exit.thread

update_instrumentation_data.exit.thread:          ; preds = %.thread.i, %bb.du, %bb.dq, %bb.dm, %bb.o, %allocate_instrumentation_data.exit.i, %bb.a, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ 0, %bb.a ], [ -1, %allocate_instrumentation_data.exit.i ], [ -1, %bb.o ], [ -1, %bb.dm ], [ -1, %bb.dq ], [ -1, %bb.du ], [ -1, %.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_GetLocalEvents(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr i8, ptr %i.c, i64 224712
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %check_tool.exit, label %bb.c

check_tool.exit:                                  ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.11, i32 noundef %1) #12 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = shl nuw i32 1, %1                        ; 3 uses
  %i.o = load i8, ptr %i.l, align 1, !tbaa !39
  %i.p = zext i8 %i.o to i32
  %i.q = lshr i32 %i.p, %1
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr i8, ptr %i.l, i64 1
  %i.t = load <8 x i8>, ptr %i.s, align 1, !tbaa !39
  %i.u = trunc i32 %i.n to i8
  %i.v = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <8 x i8> %i.v, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.x = and <8 x i8> %i.w, %i.t
  %i.y = icmp eq <8 x i8> %i.x, zeroinitializer
  %i.z = select <8 x i1> %i.y, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.aa = getelementptr i8, ptr %i.l, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !39
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %i.n, %i.ac
  %.not.9.i = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not.9.i, i32 0, i32 512
  %i.af = getelementptr i8, ptr %i.l, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39
  %i.ah = zext i8 %i.ag to i32
  %i.ai = and i32 %i.n, %i.ah
  %.not.10.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not.10.i, i32 0, i32 1024
  %i.ak = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.z)
end_hunk_4
