inline.NumInlined: 69
inline.NumDeleted: 21
begin_hunk_0_@_PyCompile_AstPreprocess:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.011 = phi i32 [ %i.h, %bb.c ], [ %3, %bb.b ]
  %i.i = call i32 @_PyAST_Preprocess(ptr noundef %0, ptr noundef %4, ptr noundef %1, i32 noundef %.011, i32 noundef %i.d, i32 noundef %5, i32 noundef 0, ptr noundef %6) #11
  %.not13 = icmp eq i32 %i.i, 0
  %. = sext i1 %.not13 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %., %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.1
}

declare i32 @_PyFuture_FromAST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_Py_GetConfig() local_unnamed_addr #2

declare i32 @_PyAST_Preprocess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCompile_CleanDoc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #11 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i93 = icmp sgt i32 %i.f, -1
  br i1 %.not.i93, label %bb.d, label %Py_DECREF.exit94

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit94

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit94

bb.f:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i     ; 16 uses
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.l = icmp ult ptr %i.m, %i.j
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !118

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.073122 = phi ptr [ %i.m, %bb.g ], [ %i.d, %bb.f ] ; 2 uses
  %i.m = getelementptr i8, ptr %.073122, i64 1    ; 4 uses
  %i.n = load i8, ptr %.073122, align 1, !tbaa !11
  %.not = icmp eq i8 %i.n, 10
  br i1 %.not, label %..critedge_crit_edge124, label %bb.g, !llvm.loop !118

..critedge_crit_edge124:                          ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !118

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge124, %bb.f
  %.174 = phi ptr [ %i.m, %..critedge_crit_edge124 ], [ %i.d, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.o = icmp ult ptr %.174, %i.j
  br i1 %i.o, label %.preheader98, label %._crit_edge

.preheader98:                                     ; preds = %.critedge, %.critedge2
  %.275100 = phi ptr [ %.5, %.critedge2 ], [ %.174, %.critedge ] ; 2 uses
  %.07899 = phi i64 [ %.179, %.critedge2 ], [ 9223372036854775807, %.critedge ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader98
  %.376 = phi ptr [ %i.r, %bb.h ], [ %.275100, %.preheader98 ] ; 7 uses
  %i.p = load i8, ptr %.376, align 1, !tbaa !11   ; 2 uses
  %i.q = icmp eq i8 %i.p, 32
  %i.r = getelementptr i8, ptr %.376, i64 1
  br i1 %i.q, label %bb.h, label %bb.i, !llvm.loop !119

bb.i:                                             ; preds = %bb.h
  %i.s = icmp uge ptr %.376, %i.j
  %.not87 = icmp eq i8 %i.p, 10
  %or.cond89 = or i1 %i.s, %.not87
  %i.t = ptrtoint ptr %.376 to i64
  %i.u = ptrtoint ptr %.275100 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = call i64 @llvm.smin.i64(i64 %.07899, i64 %i.v)
  %.179 = select i1 %or.cond89, i64 %.07899, i64 %i.w ; 2 uses
  %i.x = icmp ult ptr %.376, %i.j
  br i1 %i.x, label %.lr.ph128, label %.critedge2

bb.j:                                             ; preds = %.lr.ph128
  %i.y = icmp ult ptr %i.z, %i.j
  br i1 %i.y, label %.lr.ph128, label %.critedge2, !llvm.loop !120

.lr.ph128:                                        ; preds = %bb.i, %bb.j
  %.477126 = phi ptr [ %i.z, %bb.j ], [ %.376, %bb.i ] ; 2 uses
  %i.z = getelementptr i8, ptr %.477126, i64 1    ; 4 uses
  %i.aa = load i8, ptr %.477126, align 1, !tbaa !11
  %.not88 = icmp eq i8 %i.aa, 10
  br i1 %.not88, label %..critedge2_crit_edge130, label %bb.j, !llvm.loop !120

..critedge2_crit_edge130:                         ; preds = %.lr.ph128
  br label %.critedge2, !llvm.loop !120

.critedge2:                                       ; preds = %bb.j, %..critedge2_crit_edge130, %bb.i
  %.5 = phi ptr [ %i.z, %..critedge2_crit_edge130 ], [ %.376, %bb.i ], [ %i.z, %bb.j ] ; 2 uses
  %i.ab = icmp ult ptr %.5, %i.j
  br i1 %i.ab, label %.preheader98, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.critedge2, %.critedge
  %.078.lcssa = phi i64 [ 9223372036854775807, %.critedge ], [ %.179, %.critedge2 ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge
  %.6 = phi ptr [ %i.d, %._crit_edge ], [ %i.ae, %bb.k ] ; 6 uses
  %i.ac = load i8, ptr %.6, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.ac, 32
  %i.ae = getelementptr i8, ptr %.6, i64 1
  br i1 %i.ad, label %bb.k, label %bb.l, !llvm.loop !122

bb.l:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %.078.lcssa, 9223372036854775807
  %spec.store.select = select i1 %i.af, i64 0, i64 %.078.lcssa ; 4 uses
  %i.ag = icmp eq ptr %.6, %i.d
  %i.ah = icmp eq i64 %spec.store.select, 0
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %Py_DECREF.exit94, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @PyMem_Malloc(i64 noundef %i.i) #11 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.n, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %bb.m
  %i.ak = icmp ult ptr %.6, %i.j
  br i1 %i.ak, label %.lr.ph134, label %._crit_edge135

bb.n:                                             ; preds = %bb.m
  %i.al = load i32, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %.not.i91 = icmp sgt i32 %i.al, -1
  br i1 %.not.i91, label %bb.o, label %Py_DECREF.exit92

bb.o:                                             ; preds = %bb.n
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.b, align 8, !tbaa !11
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %Py_DECREF.exit92

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit92

Py_DECREF.exit92:                                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %Py_DECREF.exit94

.lr.ph134:                                        ; preds = %.preheader97.preheader, %.lr.ph134
  %.069133 = phi ptr [ %i.ar, %.lr.ph134 ], [ %i.ai, %.preheader97.preheader ] ; 2 uses
  %.7132 = phi ptr [ %i.ap, %.lr.ph134 ], [ %.6, %.preheader97.preheader ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.7132, i64 1     ; 3 uses
  %i.aq = load i8, ptr %.7132, align 1, !tbaa !11 ; 2 uses
  %i.ar = getelementptr i8, ptr %.069133, i64 1   ; 2 uses
  store i8 %i.aq, ptr %.069133, align 1, !tbaa !11
  %i.as = icmp ne i8 %i.aq, 10
  %i.at = icmp ult ptr %i.ap, %i.j
  %or.cond158 = and i1 %i.as, %i.at
  br i1 %or.cond158, label %.lr.ph134, label %._crit_edge135

._crit_edge135:                                   ; preds = %.lr.ph134, %.preheader97.preheader
  %.8 = phi ptr [ %.6, %.preheader97.preheader ], [ %i.ap, %.lr.ph134 ] ; 3 uses
  %.170 = phi ptr [ %i.ai, %.preheader97.preheader ], [ %i.ar, %.lr.ph134 ] ; 3 uses
  %i.au = icmp ult ptr %.8, %i.j
  br i1 %i.au, label %.preheader.lr.ph, label %._crit_edge109

.preheader.lr.ph:                                 ; preds = %._crit_edge135
  %i.av = icmp sgt i64 %spec.store.select, 0
  br i1 %i.av, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge152
  %.271108.us = phi ptr [ %.4.us, %._crit_edge152 ], [ %.170, %.preheader.lr.ph ] ; 2 uses
  %.9107.us = phi ptr [ %.12.us, %._crit_edge152 ], [ %.8, %.preheader.lr.ph ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.9107.us, i64 %spec.store.select
  br label %bb.q

bb.q:                                             ; preds = %.preheader.us, %1
  %.066102.us = phi i64 [ 0, %.preheader.us ], [ %2, %1 ]
  %.10101.us = phi ptr [ %.9107.us, %.preheader.us ], [ %3, %1 ] ; 3 uses
  %i.aw = load i8, ptr %.10101.us, align 1, !tbaa !11
  %.not86.us = icmp eq i8 %i.aw, 32
  br i1 %.not86.us, label %1, label %._crit_edge103.us

._crit_edge103.us:                                ; preds = %1, %bb.q
  %.10.lcssa.us = phi ptr [ %.10101.us, %bb.q ], [ %scevgep, %1 ] ; 3 uses
  %i.ax = icmp ult ptr %.10.lcssa.us, %i.j
  br i1 %i.ax, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %._crit_edge103.us, %.lr.ph151
  %.372.us150 = phi ptr [ %i.ba, %.lr.ph151 ], [ %.271108.us, %._crit_edge103.us ] ; 2 uses
  %.11.us149 = phi ptr [ %i.ay, %.lr.ph151 ], [ %.10.lcssa.us, %._crit_edge103.us ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.11.us149, i64 1 ; 3 uses
  %i.az = load i8, ptr %.11.us149, align 1, !tbaa !11 ; 2 uses
  %i.ba = getelementptr i8, ptr %.372.us150, i64 1 ; 2 uses
  store i8 %i.az, ptr %.372.us150, align 1, !tbaa !11
  %i.bb = icmp ne i8 %i.az, 10
  %i.bc = icmp ult ptr %i.ay, %i.j
  %or.cond159 = and i1 %i.bb, %i.bc
  br i1 %or.cond159, label %.lr.ph151, label %._crit_edge152

._crit_edge152:                                   ; preds = %.lr.ph151, %._crit_edge103.us
  %.12.us = phi ptr [ %.10.lcssa.us, %._crit_edge103.us ], [ %i.ay, %.lr.ph151 ] ; 2 uses
  %.4.us = phi ptr [ %.271108.us, %._crit_edge103.us ], [ %i.ba, %.lr.ph151 ] ; 2 uses
  %i.bd = icmp ult ptr %.12.us, %i.j
  br i1 %i.bd, label %.preheader.us, label %._crit_edge109, !llvm.loop !123

1:                                                ; preds = %bb.q
  %2 = add nuw nsw i64 %.066102.us, 1             ; 2 uses
  %3 = getelementptr i8, ptr %.10101.us, i64 1
  %exitcond.not = icmp eq i64 %2, %spec.store.select
  br i1 %exitcond.not, label %._crit_edge103.us, label %bb.q, !llvm.loop !124

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge143
  %.271108 = phi ptr [ %.4, %._crit_edge143 ], [ %.170, %.preheader.lr.ph ] ; 2 uses
  %.9107 = phi ptr [ %.12, %._crit_edge143 ], [ %.8, %.preheader.lr.ph ] ; 3 uses
  %i.be = icmp ult ptr %.9107, %i.j
  br i1 %i.be, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %.preheader, %.lr.ph142
  %.372141 = phi ptr [ %i.bh, %.lr.ph142 ], [ %.271108, %.preheader ] ; 2 uses
  %.11140 = phi ptr [ %i.bf, %.lr.ph142 ], [ %.9107, %.preheader ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.11140, i64 1    ; 3 uses
  %i.bg = load i8, ptr %.11140, align 1, !tbaa !11 ; 2 uses
  %i.bh = getelementptr i8, ptr %.372141, i64 1   ; 2 uses
  store i8 %i.bg, ptr %.372141, align 1, !tbaa !11
  %i.bi = icmp ne i8 %i.bg, 10
  %i.bj = icmp ult ptr %i.bf, %i.j
  %or.cond160 = and i1 %i.bi, %i.bj
  br i1 %or.cond160, label %.lr.ph142, label %._crit_edge143

._crit_edge143:                                   ; preds = %.lr.ph142, %.preheader
  %.12 = phi ptr [ %.9107, %.preheader ], [ %i.bf, %.lr.ph142 ] ; 2 uses
  %.4 = phi ptr [ %.271108, %.preheader ], [ %i.bh, %.lr.ph142 ] ; 2 uses
  %i.bk = icmp ult ptr %.12, %i.j
  br i1 %i.bk, label %.preheader, label %._crit_edge109, !llvm.loop !123

._crit_edge109:                                   ; preds = %._crit_edge143, %._crit_edge152, %._crit_edge135
  %.271.lcssa = phi ptr [ %.170, %._crit_edge135 ], [ %.4.us, %._crit_edge152 ], [ %.4, %._crit_edge143 ]
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp sgt i32 %i.bl, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %._crit_edge109
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.b, align 8, !tbaa !11
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge109, %bb.r, %bb.s
  %i.bo = ptrtoint ptr %.271.lcssa to i64
  %i.bp = ptrtoint ptr %i.ai to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.ai, i64 noundef %i.bq) #11
  call void @PyMem_Free(ptr noundef nonnull %i.ai) #11
  br label %Py_DECREF.exit94

Py_DECREF.exit94:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.l, %Py_DECREF.exit, %Py_DECREF.exit92
  %.2 = phi ptr [ %i.br, %Py_DECREF.exit ], [ %i.b, %bb.l ], [ null, %Py_DECREF.exit92 ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %Py_DECREF.exit94
  %.3 = phi ptr [ %.2, %Py_DECREF.exit94 ], [ null, %bb.a ]
  ret ptr %.3
}

declare ptr @PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCompile_CodeGen(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PyAST_Check(ptr noundef %0) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.11) #11
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyArena_New() #11        ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyAST_obj2mod(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %4) #11 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @_PyAST_Validate(ptr noundef nonnull %i.e) #11
  %.not64 = icmp eq i32 %i.g, 0
  br i1 %.not64, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_PyArena_Free(ptr noundef nonnull %i.c) #11
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.h = tail call fastcc ptr @new_compiler(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.c, ptr noundef null) ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_PyArena_Free(ptr noundef nonnull %i.c) #11
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %i.h, i64 80
  store i8 1, ptr %i.j, align 8, !tbaa !74
  %i.k = tail call ptr @PyDict_New() #11          ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call fastcc i32 @compiler_codegen(ptr noundef %i.h, ptr noundef nonnull %i.e)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr i8, ptr %i.h, i64 64       ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 992
  %i.r = load i64, ptr %i.q, align 8, !tbaa !125
  %i.s = tail call ptr @PyLong_FromLong(i64 noundef %i.r) #11 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.s) #11
  %i.v = load i32, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.m, label %Py_XDECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !11
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.l, %bb.m, %bb.n
  %i.y = icmp slt i32 %i.u, 0
  br i1 %i.y, label %.thread, label %bb.o

bb.o:                                             ; preds = %Py_XDECREF.exit
  %i.z = getelementptr i8, ptr %i.p, i64 1000
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !126
  %i.ab = tail call ptr @PyLong_FromLong(i64 noundef %i.aa) #11 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.ab) #11
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %.not.i.i73 = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i73, label %bb.q, label %Py_XDECREF.exit74

bb.q:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !11
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.r, label %Py_XDECREF.exit74

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #11
  br label %Py_XDECREF.exit74

Py_XDECREF.exit74:                                ; preds = %bb.p, %bb.q, %bb.r
  %i.ah = icmp slt i32 %i.ad, 0
  br i1 %i.ah, label %.thread, label %bb.s

bb.s:                                             ; preds = %Py_XDECREF.exit74
  %i.ai = getelementptr i8, ptr %i.p, i64 1008
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !127
  %i.ak = tail call ptr @PyLong_FromLong(i64 noundef %i.aj) #11 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ak) #11
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %.not.i.i76 = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i76, label %bb.u, label %Py_XDECREF.exit77

bb.u:                                             ; preds = %bb.t
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ak, align 8, !tbaa !11
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %Py_XDECREF.exit77

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #11
  br label %Py_XDECREF.exit77

Py_XDECREF.exit77:                                ; preds = %bb.t, %bb.u, %bb.v
  %i.aq = icmp slt i32 %i.am, 0
  br i1 %i.aq, label %.thread, label %bb.w

bb.w:                                             ; preds = %Py_XDECREF.exit77
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !109
  %i.as = icmp ne i32 %i.ar, 3
  %i.at = zext i1 %i.as to i32
  %i.au = tail call i32 @_PyCodegen_AddReturnAtEnd(ptr noundef nonnull %i.h, i32 noundef %i.at) #11
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.ax = getelementptr i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = tail call i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef %i.ay) #11
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67
end_hunk_0
