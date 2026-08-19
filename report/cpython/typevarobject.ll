inline.NumInlined: 263
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@typevartuple_evaluate_default:bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !129
  %i.ad = and i64 %i.ac, 3
  %i.ae = or i64 %i.ad, %i.v
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !129
  %i.af = getelementptr i8, ptr %i.s, i64 7672
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !131
  %i.ah = xor i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = ptrtoint ptr %i.t to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.r, align 8, !tbaa !130
  store i64 %i.x, ptr %i.u, align 8, !tbaa !129
  %i.al = getelementptr i8, ptr %i.s, i64 7428    ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !132
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !132
  %i.ao = getelementptr i8, ptr %i.s, i64 7656    ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !133
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !133
  %i.ar = getelementptr i8, ptr %i.s, i64 7424
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !134
  %i.at = icmp sgt i32 %i.an, %i.as
  br i1 %i.at, label %bb.h, label %_Py_NewRef.exit

bb.h:                                             ; preds = %_Py_NewRef.exit.i
  %i.au = getelementptr i8, ptr %i.s, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.au) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %_Py_NewRef.exit.i, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.e ], [ %i.l, %_Py_NewRef.exit.i ], [ %i.l, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @paramspec_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [6 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.c, align 8, !tbaa !11 ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val83 = load i64, ptr %i.d, align 8, !tbaa !17
  %i.e = add i64 %.val83, %.val82
  %i.f = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.val82, 1
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread86.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.f, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.e, %.thread ], [ %.val82, %bb.b ] ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 2 uses
  %i.m = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val82, ptr noundef %2, ptr noundef null, ptr noundef nonnull @paramspec_new._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #9 ; 7 uses
  %.not71 = icmp eq ptr %i.m, null
  br i1 %.not71, label %paramspec_new_impl.exit, label %.thread86

.thread86:                                        ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 7 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr i8, ptr %.val, i64 168
  %.val81 = load i64, ptr %i.p, align 8, !tbaa !24
  %i.q = and i64 %.val81, 268435456
  %.not72 = icmp eq i64 %i.q, 0
  br i1 %.not72, label %bb.d, label %bb.e

.thread86.thread:                                 ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val139 = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %.val139, i64 168
  %.val81140 = load i64, ptr %i.t, align 8, !tbaa !24
  %i.u = and i64 %.val81140, 268435456
  %.not72141 = icmp eq i64 %i.u, 0
  br i1 %.not72141, label %bb.d, label %.thread100

bb.d:                                             ; preds = %.thread86.thread, %.thread86
  %i.v = phi ptr [ %i.r, %.thread86.thread ], [ %i.n, %.thread86 ]
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.v) #9
  br label %paramspec_new_impl.exit

bb.e:                                             ; preds = %.thread86
  %.not73 = icmp eq i64 %i.l, 0
  br i1 %.not73, label %.thread100, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 3 uses
  %.not74 = icmp eq ptr %i.x, null
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add i64 %i.k, -2                         ; 2 uses
  %.not75 = icmp eq i64 %i.y, 0
  br i1 %.not75, label %.thread100, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.054 = phi i64 [ %i.y, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  %.052 = phi ptr [ %i.x, %bb.g ], [ @_Py_NoneStruct, %bb.f ] ; 3 uses
  %i.z = getelementptr i8, ptr %i.m, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 3 uses
  %.not76 = icmp eq ptr %i.aa, null
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add i64 %.054, -1                       ; 2 uses
  %.not77 = icmp eq i64 %i.ab, 0
  br i1 %.not77, label %.thread100, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.155 = phi i64 [ %i.ab, %bb.i ], [ %.054, %bb.h ] ; 2 uses
  %.050 = phi ptr [ %i.aa, %bb.i ], [ @_Py_NoDefaultStruct, %bb.h ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %.not78 = icmp eq ptr %i.ad, null
  br i1 %.not78, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ad) #9 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %paramspec_new_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add i64 %.155, -1                       ; 2 uses
  %.not79 = icmp eq i64 %i.ag, 0
  br i1 %.not79, label %.thread100, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i64 [ %i.ag, %bb.l ], [ %.155, %bb.j ]
  %.048 = phi i32 [ %i.ae, %bb.l ], [ 0, %bb.j ]  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %.not80 = icmp eq ptr %i.ai, null
  br i1 %.not80, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ai) #9 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %paramspec_new_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = icmp ugt i64 %.2, 1
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.047 = phi i32 [ %i.aj, %bb.o ], [ 0, %bb.m ]
  %i.am = getelementptr i8, ptr %i.m, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = call i32 @PyObject_IsTrue(ptr noundef %i.an) #9 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %paramspec_new_impl.exit, label %bb.q

.thread100:                                       ; preds = %.thread86.thread, %bb.l, %bb.e, %bb.g, %bb.i
  %i.aq = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.l ], [ %i.r, %.thread86.thread ]
  %.153.ph = phi ptr [ @_Py_NoneStruct, %bb.e ], [ %i.x, %bb.g ], [ %.052, %bb.i ], [ %.052, %bb.l ], [ @_Py_NoneStruct, %.thread86.thread ]
  %.151.ph = phi ptr [ @_Py_NoDefaultStruct, %bb.e ], [ @_Py_NoDefaultStruct, %bb.g ], [ %i.aa, %bb.i ], [ %.050, %bb.l ], [ @_Py_NoDefaultStruct, %.thread86.thread ]
  %.149.ph = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ %i.ae, %bb.l ], [ 0, %.thread86.thread ]
  %i.ar = icmp ne i32 %.149.ph, 0
  br label %bb.u

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %.047, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %.0 = phi i32 [ %i.ao, %bb.p ], [ 0, %bb.o ]
  %i.as = icmp ne i32 %.048, 0                    ; 2 uses
  %i.at = icmp ne i32 %.1, 0                      ; 2 uses
  %or.cond.i = and i1 %i.as, %i.at
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.62) #9
  br label %paramspec_new_impl.exit

bb.s:                                             ; preds = %bb.q
  %i.av = icmp ne i32 %.0, 0                      ; 2 uses
  %i.aw = or i32 %.1, %.048
  %or.cond3.not.i = icmp ne i32 %i.aw, 0
  %or.cond29.not.i = and i1 %or.cond3.not.i, %i.av
  br i1 %or.cond29.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.63) #9
  br label %paramspec_new_impl.exit

bb.u:                                             ; preds = %.thread100, %bb.s
  %i.ay = phi ptr [ %i.aq, %.thread100 ], [ %i.n, %bb.s ] ; 3 uses
  %i.az = phi i1 [ false, %.thread100 ], [ %i.av, %bb.s ]
  %.15395109 = phi ptr [ %.153.ph, %.thread100 ], [ %.052, %bb.s ] ; 2 uses
  %.15196108 = phi ptr [ %.151.ph, %.thread100 ], [ %.050, %bb.s ] ; 3 uses
  %i.ba = phi i1 [ %i.ar, %.thread100 ], [ %i.as, %bb.s ]
  %i.bb = phi i1 [ false, %.thread100 ], [ %i.at, %bb.s ]
  %i.bc = icmp eq ptr %.15395109, @_Py_NoneStruct
  br i1 %i.bc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %_Py_NoneStruct.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Py_NoneStruct, i64 8), align 8, !tbaa !23 ; 4 uses
  %i.bd = load i32, ptr %_Py_NoneStruct.val.i.i, align 8, !tbaa !31 ; 2 uses
  %i.be = icmp ugt i32 %i.bd, -1073741825
  br i1 %i.be, label %type_check.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %_Py_NoneStruct.val.i.i, align 8, !tbaa !31
  br label %type_check.exit.thread.i

bb.x:                                             ; preds = %bb.u
  %i.bg = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.64) #9 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %paramspec_new_impl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %.15395109, ptr %i.a, align 16, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !21
  %i.bj = call fastcc ptr @call_typing_func_object(ptr noundef nonnull @.str.67, ptr noundef %i.a, i64 noundef 2) ; 2 uses
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i.i, label %bb.z, label %type_check.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bg, align 8, !tbaa !31
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.aa, label %type_check.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.bg) #9
  br label %type_check.exit.i

type_check.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bn = icmp eq ptr %i.bj, null
  br i1 %i.bn, label %paramspec_new_impl.exit, label %type_check.exit.thread.i

type_check.exit.thread.i:                         ; preds = %type_check.exit.i, %bb.w, %bb.v
  %.023.i = phi ptr [ %i.bj, %type_check.exit.i ], [ %_Py_NoneStruct.val.i.i, %bb.w ], [ %_Py_NoneStruct.val.i.i, %bb.v ] ; 6 uses
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !153
  %i.bq = getelementptr i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !162 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %caller.exit.i, label %bb.ab

bb.ab:                                            ; preds = %type_check.exit.thread.i
  %i.bt = getelementptr i8, ptr %i.br, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !31 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %caller.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = and i64 %i.bu, -2
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = call ptr @PyFunction_GetModule(ptr noundef %i.bx) #9 ; 5 uses
  %.not.i30.i = icmp eq ptr %i.by, null
  br i1 %.not.i30.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @PyErr_Clear() #9
  br label %caller.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %i.ca = icmp ugt i32 %i.bz, -1073741825
  br i1 %i.ca, label %caller.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = add nuw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 8, !tbaa !31
  br label %caller.exit.i

caller.exit.i:                                    ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %type_check.exit.thread.i
  %.1.i31.i = phi ptr [ @_Py_NoneStruct, %bb.ab ], [ @_Py_NoneStruct, %type_check.exit.thread.i ], [ @_Py_NoneStruct, %bb.ad ], [ %i.by, %bb.ae ], [ %i.by, %bb.af ] ; 4 uses
  %i.cc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32
  %i.ce = getelementptr i8, ptr %i.cd, i64 224880
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !135
  %i.cg = call ptr @_PyObject_GC_New(ptr noundef %i.cf) #9 ; 15 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %paramspec_alloc.exit.i, label %bb.ag

bb.ag:                                            ; preds = %caller.exit.i
  %i.ci = zext i1 %i.az to i8
  %i.cj = zext i1 %i.bb to i8
  %i.ck = zext i1 %i.ba to i8
  %i.cl = load i32, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %i.cm = icmp ugt i32 %i.cl, -1073741825
  br i1 %i.cm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = add nuw i32 %i.cl, 1
  store i32 %i.cn, ptr %i.ay, align 8, !tbaa !31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.co = getelementptr i8, ptr %i.cg, i64 16
  store ptr %i.ay, ptr %i.co, align 8, !tbaa !136
  %i.cp = load i32, ptr %.023.i, align 8, !tbaa !31 ; 2 uses
  %i.cq = icmp ugt i32 %i.cp, -1073741825
  br i1 %i.cq, label %_Py_XNewRef.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = add nuw i32 %i.cp, 1
  store i32 %i.cr, ptr %.023.i, align 8, !tbaa !31
  br label %_Py_XNewRef.exit.i.i

_Py_XNewRef.exit.i.i:                             ; preds = %bb.aj, %bb.ai
  %i.cs = getelementptr i8, ptr %i.cg, i64 24
  store ptr %.023.i, ptr %i.cs, align 8, !tbaa !138
  %i.ct = getelementptr i8, ptr %i.cg, i64 48
  store i8 %i.ck, ptr %i.ct, align 8, !tbaa !139
  %i.cu = getelementptr i8, ptr %i.cg, i64 49
  store i8 %i.cj, ptr %i.cu, align 1, !tbaa !140
  %i.cv = getelementptr i8, ptr %i.cg, i64 50
  store i8 %i.ci, ptr %i.cv, align 2, !tbaa !141
  %i.cw = load i32, ptr %.15196108, align 8, !tbaa !31 ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, -1073741825
  br i1 %i.cx, label %_Py_XNewRef.exit24.i.i, label %bb.ak

bb.ak:                                            ; preds = %_Py_XNewRef.exit.i.i
  %i.cy = add nuw i32 %i.cw, 1
  store i32 %i.cy, ptr %.15196108, align 8, !tbaa !31
  br label %_Py_XNewRef.exit24.i.i

_Py_XNewRef.exit24.i.i:                           ; preds = %bb.ak, %_Py_XNewRef.exit.i.i
  %i.cz = getelementptr i8, ptr %i.cg, i64 32
  store ptr %.15196108, ptr %i.cz, align 8, !tbaa !156
  %i.da = getelementptr i8, ptr %i.cg, i64 40
  store ptr null, ptr %i.da, align 8, !tbaa !157
  %i.db = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !32 ; 7 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 7408
  %i.de = getelementptr i8, ptr %i.dc, i64 7416   ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !129 ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !130
  %i.dj = and i64 %i.di, 3
  %i.dk = or i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %i.dg, align 8, !tbaa !130
  %i.dl = getelementptr i8, ptr %i.cg, i64 -8     ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !129
  %i.dn = and i64 %i.dm, 3
  %i.do = or i64 %i.dn, %i.df
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !129
  %i.dp = getelementptr i8, ptr %i.dc, i64 7672
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !131
  %i.dr = xor i32 %i.dq, 1
  %i.ds = sext i32 %i.dr to i64
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.db, align 8, !tbaa !130
  store i64 %i.dh, ptr %i.de, align 8, !tbaa !129
  %i.dv = getelementptr i8, ptr %i.dc, i64 7428   ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !132
  %i.dx = add i32 %i.dw, 1                        ; 2 uses
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !132
  %i.dy = getelementptr i8, ptr %i.dc, i64 7656   ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !133
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !133
  %i.eb = getelementptr i8, ptr %i.dc, i64 7424
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !134
  %i.ed = icmp sgt i32 %i.dx, %i.ec
  br i1 %i.ed, label %bb.al, label %_PyObject_GC_TRACK.exit.i.i

bb.al:                                            ; preds = %_Py_XNewRef.exit24.i.i
  %i.ee = getelementptr i8, ptr %i.dc, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.ee) #9
  br label %_PyObject_GC_TRACK.exit.i.i

_PyObject_GC_TRACK.exit.i.i:                      ; preds = %bb.al, %_Py_XNewRef.exit24.i.i
  %i.ef = call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.cg, ptr noundef nonnull @.str.14, ptr noundef nonnull %.1.i31.i) #9
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.am, label %paramspec_alloc.exit.i

bb.am:                                            ; preds = %_PyObject_GC_TRACK.exit.i.i
  %i.eh = load i32, ptr %i.cg, align 8, !tbaa !31 ; 2 uses
  %.not.i.i37.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i.i37.i, label %bb.an, label %paramspec_alloc.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.cg, align 8, !tbaa !31
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ao, label %paramspec_alloc.exit.i

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #9
  br label %paramspec_alloc.exit.i

paramspec_alloc.exit.i:                           ; preds = %caller.exit.i, %_PyObject_GC_TRACK.exit.i.i, %bb.am, %bb.an, %bb.ao
  %.0.i.i = phi ptr [ null, %caller.exit.i ], [ null, %bb.ao ], [ %i.cg, %_PyObject_GC_TRACK.exit.i.i ], [ null, %bb.am ], [ null, %bb.an ] ; 3 uses
  %i.ek = load i32, ptr %.023.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i39.i = icmp sgt i32 %i.ek, -1
  br i1 %.not.i.i39.i, label %bb.ap, label %Py_XDECREF.exit41.i
end_hunk_0
