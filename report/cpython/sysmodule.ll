inline.NumInlined: 290
inline.NumDeleted: 110
begin_hunk_0_@sys_breakpointhook:bb.a
  %i.x = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !25
  %i.y = tail call i32 @_PyErr_ExceptionMatches(ptr noundef %i.b, ptr noundef %i.x) #16
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.h) #16
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %Py_DECREF.exit53
  %i.z = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.s, ptr noundef %.04158) #16 ; 5 uses
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !114 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i50, label %bb.m, label %Py_DECREF.exit51

bb.m:                                             ; preds = %bb.l
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !114
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %Py_DECREF.exit51

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #16
  br label %Py_DECREF.exit51

Py_DECREF.exit51:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = icmp eq ptr %i.z, null
  br i1 %i.ad, label %bb.o, label %bb.q

bb.o:                                             ; preds = %Py_DECREF.exit51
  %i.ae = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !25
  %i.af = tail call i32 @_PyErr_ExceptionMatches(ptr noundef %i.b, ptr noundef %i.ae) #16
  %.not48 = icmp eq i32 %i.af, 0
  br i1 %.not48, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.h) #16
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %Py_DECREF.exit51
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.h) #16
  %i.ag = tail call ptr @PyObject_Vectorcall(ptr noundef nonnull %i.z, ptr noundef %1, i64 noundef %2, ptr noundef %3) #16 ; 3 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !114
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #16
  br label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.o, %bb.j, %bb.e
  tail call void @_PyErr_Clear(ptr noundef %i.b) #16
  %i.ak = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !25
  %i.al = tail call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.ak, i64 noundef 0, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.h) #16
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.h) #16
  %i.am = icmp slt i32 %i.al, 0
  %._Py_NoneStruct = select i1 %i.am, ptr null, ptr @_Py_NoneStruct
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %bb.g, %bb.k, %bb.p, %bb.t, %.tail, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ @_Py_NoneStruct, %.tail ], [ null, %bb.g ], [ %._Py_NoneStruct, %bb.t ], [ null, %bb.p ], [ null, %bb.k ], [ %i.ag, %bb.q ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @sys__clear_internal_caches(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @PyType_ClearCache() #16   ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @sys__clear_type_cache(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !25
  %i.b = tail call i32 @PyErr_WarnEx(ptr noundef %i.a, ptr noundef nonnull @.str.120, i64 noundef 1) #16
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %sys__clear_type_cache_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyType_ClearCache() #16   ; 0 uses
  br label %sys__clear_type_cache_impl.exit

sys__clear_type_cache_impl.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sys__current_frames(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyThread_CurrentFrames() #16
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @sys__current_exceptions(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyThread_CurrentExceptions() #16
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @sys_displayhook(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 5 uses
  %i.f = tail call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76184)) #16 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 128
  %.val = load ptr, ptr %i.h, align 8, !tbaa !113 ; 2 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11
  %.not34 = icmp eq ptr %.val.i, null
  br i1 %.not34, label %_PyErr_Occurred.exit.thread, label %Py_DECREF.exit42

_PyErr_Occurred.exit.thread:                      ; preds = %bb.b, %_PyErr_Occurred.exit
  %i.k = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !25
  tail call void @_PyErr_SetString(ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull @.str.121) #16
  br label %Py_DECREF.exit42

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not.i43 = icmp sgt i32 %i.l, -1
  br i1 %.not.i43, label %bb.d, label %Py_DECREF.exit44

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !114
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %Py_DECREF.exit44

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.o = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.o, label %Py_DECREF.exit42, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit44
  %i.p = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 109648), ptr noundef nonnull @_Py_NoneStruct) #16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %Py_DECREF.exit42

bb.g:                                             ; preds = %bb.f
  %.val.i50 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100904), align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %.val.i50, i64 168
  %.val9.i = load i64, ptr %i.q, align 8, !tbaa !15
  %i.r = and i64 %.val9.i, 268435456
  %.not.i51 = icmp eq i64 %i.r, 0
  br i1 %.not.i51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896)) #16 ; 0 uses
  br label %Py_DECREF.exit42

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %i.w, i64 7680
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.1) #16
  br label %Py_DECREF.exit42

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ab = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.y, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896), ptr noundef nonnull %i.c) #16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %PySys_GetAttr.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !25
  %i.ae = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ad, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896)) #16 ; 0 uses
  br label %PySys_GetAttr.exit

PySys_GetAttr.exit:                               ; preds = %bb.k, %bb.l
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !25  ; 21 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %Py_DECREF.exit42, label %bb.m

bb.m:                                             ; preds = %PySys_GetAttr.exit
  %i.ah = icmp eq ptr %i.af, @_Py_NoneStruct
  br i1 %i.ah, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !25
  call void @_PyErr_SetString(ptr noundef %i.e, ptr noundef %i.ai, ptr noundef nonnull @.str.122) #16
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %.not.i41 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i41, label %bb.o, label %Py_DECREF.exit42

bb.o:                                             ; preds = %bb.n
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.af, align 8, !tbaa !114
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %Py_DECREF.exit42

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.af) #16
  br label %Py_DECREF.exit42

bb.q:                                             ; preds = %bb.m
  %i.am = call i32 @PyFile_WriteObject(ptr noundef %1, ptr noundef nonnull %i.af, i32 noundef 0) #16
  %.not29 = icmp eq i32 %i.am, 0
  br i1 %.not29, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !25
  %i.ao = call i32 @_PyErr_ExceptionMatches(ptr noundef %i.e, ptr noundef %i.an) #16
  %.not30 = icmp eq i32 %i.ao, 0
  br i1 %.not30, label %bb.as, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_PyErr_Clear(ptr noundef %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ap = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 82024)) #16 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %sys_displayhook_unencodable.exit.thread, label %bb.t

sys_displayhook_unencodable.exit.thread:          ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.ar = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.ap) #16 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %Py_DECREF.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = call ptr @PyObject_Repr(ptr noundef %1) #16 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Py_DECREF.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.123) #16 ; 12 uses
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !114 ; 2 uses
  %.not.i41.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i41.i, label %bb.w, label %Py_DECREF.exit42.i

bb.w:                                             ; preds = %bb.v
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.at, align 8, !tbaa !114
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.x, label %Py_DECREF.exit42.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16
  br label %Py_DECREF.exit42.i

Py_DECREF.exit42.i:                               ; preds = %bb.x, %bb.w, %bb.v
  %i.az = icmp eq ptr %i.av, null
  br i1 %i.az, label %Py_DECREF.exit.i, label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit42.i
  %i.ba = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 75872), ptr noundef nonnull %i.b) #16
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %.not.i39.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i39.i, label %bb.aa, label %Py_DECREF.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !114
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Py_DECREF.exit.i.sink.split, label %Py_DECREF.exit.i

bb.ab:                                            ; preds = %bb.y
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i52 = icmp eq ptr %i.bf, null
  br i1 %.not.i52, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %i.bf, ptr %i.a, align 16, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !25
  %i.bh = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104832), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !114 ; 2 uses
  %.not.i37.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i37.i, label %bb.ad, label %Py_DECREF.exit38.i

bb.ad:                                            ; preds = %bb.ac
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !114
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ae, label %Py_DECREF.exit38.i

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #16
  br label %Py_DECREF.exit38.i

Py_DECREF.exit38.i:                               ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bm = load i32, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %.not.i35.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i35.i, label %bb.af, label %Py_DECREF.exit36.i

bb.af:                                            ; preds = %Py_DECREF.exit38.i
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.av, align 8, !tbaa !114
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ag, label %Py_DECREF.exit36.i

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #16
  br label %Py_DECREF.exit36.i

Py_DECREF.exit36.i:                               ; preds = %bb.ag, %bb.af, %Py_DECREF.exit38.i
  %i.bp = icmp eq ptr %i.bh, null
  br i1 %i.bp, label %Py_DECREF.exit.i, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit36.i
  %i.bq = load i32, ptr %i.bh, align 8, !tbaa !114 ; 2 uses
  %.not.i33.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i33.i, label %bb.ai, label %Py_DECREF.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bh, align 8, !tbaa !114
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %Py_DECREF.exit.i.sink.split, label %Py_DECREF.exit.i

bb.aj:                                            ; preds = %bb.ab
  %i.bt = call ptr @PyUnicode_FromEncodedObject(ptr noundef nonnull %i.av, ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.124) #16 ; 4 uses
  %i.bu = load i32, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i31.i, label %bb.ak, label %Py_DECREF.exit32.i

bb.ak:                                            ; preds = %bb.aj
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.av, align 8, !tbaa !114
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.al, label %Py_DECREF.exit32.i

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #16
  br label %Py_DECREF.exit32.i

Py_DECREF.exit32.i:                               ; preds = %bb.al, %bb.ak, %bb.aj
  %i.bx = call i32 @PyFile_WriteObject(ptr noundef %i.bt, ptr noundef nonnull %i.af, i32 noundef 1) #16
  %.not30.i.not = icmp eq i32 %i.bx, 0            ; 3 uses
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i.i, label %bb.am, label %Py_DECREF.exit.i

bb.am:                                            ; preds = %Py_DECREF.exit32.i
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bt, align 8, !tbaa !114
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %Py_DECREF.exit.i.sink.split, label %Py_DECREF.exit.i

Py_DECREF.exit.i.sink.split:                      ; preds = %bb.am, %bb.ai, %bb.aa
  %.sink = phi ptr [ %i.bh, %bb.ai ], [ %i.av, %bb.aa ], [ %i.bt, %bb.am ]
  %.0.ph.i.ph = phi i1 [ true, %bb.ai ], [ false, %bb.aa ], [ %.not30.i.not, %bb.am ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %Py_DECREF.exit.i.sink.split, %Py_DECREF.exit32.i, %bb.am, %bb.ai, %bb.ah, %Py_DECREF.exit36.i, %bb.aa, %bb.z, %Py_DECREF.exit42.i, %bb.u, %bb.t
  %.0.ph.i = phi i1 [ %.not30.i.not, %Py_DECREF.exit32.i ], [ true, %bb.ai ], [ true, %bb.ah ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ false, %Py_DECREF.exit42.i ], [ false, %Py_DECREF.exit36.i ], [ %.not30.i.not, %bb.am ], [ %.0.ph.i.ph, %Py_DECREF.exit.i.sink.split ]
  %i.cb = load i32, ptr %i.ap, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i.i, label %bb.an, label %sys_displayhook_unencodable.exit

bb.an:                                            ; preds = %Py_DECREF.exit.i
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.ap, align 8, !tbaa !114
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ao, label %sys_displayhook_unencodable.exit

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #16
  br label %sys_displayhook_unencodable.exit

sys_displayhook_unencodable.exit:                 ; preds = %Py_DECREF.exit.i, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %.0.ph.i, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %sys_displayhook_unencodable.exit.thread, %sys_displayhook_unencodable.exit
  %i.ce = load i32, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.ce, -1
  br i1 %.not.i39, label %bb.aq, label %Py_DECREF.exit42

bb.aq:                                            ; preds = %bb.ap
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.af, align 8, !tbaa !114
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ar, label %Py_DECREF.exit42

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.af) #16
  br label %Py_DECREF.exit42

bb.as:                                            ; preds = %bb.r
  %i.ch = load i32, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.ch, -1
end_hunk_0
begin_hunk_1_@PyUnicode_AsUTF8
declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsEncodedString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromEncodedObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyErr_GetTopmostException(ptr noundef) local_unnamed_addr #1

declare ptr @_PyErr_StackItemToExcInfoTuple(ptr noundef) local_unnamed_addr #1

declare void @PyErr_Display(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyImport_GetDLOpenFlags(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare i64 @_Py_GetGlobalAllocatedBlocks() local_unnamed_addr #1

declare i64 @_PyUnicode_InternedSize_Immortal() local_unnamed_addr #1

declare i64 @_PyUnicode_InternedSize() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_PyUnicode_InternImmortal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Py_GetRecursionLimit() local_unnamed_addr #1

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @_PyFrame_MakeAndSetFrameObject(ptr noundef) local_unnamed_addr #1

declare ptr @PyFunction_GetModule(ptr noundef) local_unnamed_addr #1

declare i32 @PyUnstable_IsImmortal(ptr noundef) local_unnamed_addr #1

declare void @_PyUnicode_InternMortal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Py_IsFinalizing() local_unnamed_addr #1

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #1

declare void @_PyEval_SetSwitchInterval(i64 noundef) local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare i64 @_PyEval_GetSwitchInterval() local_unnamed_addr #1

declare void @_PyImport_SetDLOpenFlags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyEval_SetProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @profile_trampoline(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %i.d, ptr @_Py_NoneStruct, ptr %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %1, ptr %i.a, align 16, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr [8 x i8], ptr @whatstrings, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  store ptr %i.h, ptr %i.e, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %spec.store.select.i, ptr %i.i, align 16, !tbaa !25
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !11 ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.k, align 8, !tbaa !15
  %i.l = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.a
  %i.m = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !209
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %.0.copyload.i.i.i = load ptr, ptr %i.o, align 1 ; 2 uses
  %i.p = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.p, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.b

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.a
  %i.q = call ptr @_PyObject_MakeTpCall(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 3, ptr noundef null) #16
  br label %call_trampoline.exit

bb.b:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.r = call ptr %.0.copyload.i.i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 3, ptr noundef null) #16, !inline_history !306
  %i.s = call ptr @_Py_CheckFunctionResult(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef null) #16
  br label %call_trampoline.exit

call_trampoline.exit:                             ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.q, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.s, %bb.b ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %call_trampoline.exit
  %i.u = call i32 @_PyEval_SetProfile(ptr noundef %i.c, ptr noundef null, ptr noundef null) #16 ; 0 uses
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %call_trampoline.exit
  %i.v = load i32, ptr %.0.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %.0.i.i, align 8, !tbaa !114
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @_PyEval_SetProfileAllThreads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Py_SetRecursionLimit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyEval_SetTrace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @trace_trampoline(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 6 uses
  %i.e = icmp eq ptr %.023, null
  br i1 %i.e, label %Py_DECREF.exit28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %i.h, ptr @_Py_NoneStruct, ptr %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %1, ptr %i.a, align 16, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr [8 x i8], ptr @whatstrings, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  store ptr %i.l, ptr %i.i, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %spec.store.select.i, ptr %i.m, align 16, !tbaa !25
  %i.n = getelementptr i8, ptr %.023, i64 8
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.o, align 8, !tbaa !15
  %i.p = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !209
  %i.s = getelementptr i8, ptr %.023, i64 %i.r
  %.0.copyload.i.i.i = load ptr, ptr %i.s, align 1 ; 2 uses
  %i.t = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.t, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.e

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.d
  %i.u = call ptr @_PyObject_MakeTpCall(ptr noundef %i.g, ptr noundef nonnull %.023, ptr noundef nonnull %i.a, i64 noundef 3, ptr noundef null) #16
  br label %call_trampoline.exit

bb.e:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.v = call ptr %.0.copyload.i.i.i(ptr noundef nonnull %.023, ptr noundef nonnull %i.a, i64 noundef 3, ptr noundef null) #16, !inline_history !306
  %i.w = call ptr @_Py_CheckFunctionResult(ptr noundef %i.g, ptr noundef nonnull %.023, ptr noundef %i.v, ptr noundef null) #16
  br label %call_trampoline.exit

call_trampoline.exit:                             ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.u, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.w, %bb.e ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.x = icmp eq ptr %.0.i.i, null
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %call_trampoline.exit
  %i.y = call i32 @_PyEval_SetTrace(ptr noundef %i.g, ptr noundef null, ptr noundef null) #16 ; 0 uses
  %i.z = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 4 uses
  %.not26 = icmp eq ptr %i.aa, null
  br i1 %.not26, label %Py_DECREF.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.z, align 8, !tbaa !25
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %.not.i27 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i27, label %bb.h, label %Py_DECREF.exit28

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !114
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

bb.i:                                             ; preds = %call_trampoline.exit
  %.not = icmp eq ptr %.0.i.i, @_Py_NoneStruct
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 4 uses
  store ptr %.0.i.i, ptr %i.ae, align 8, !tbaa !25
  %.not.i30 = icmp eq ptr %i.af, null
  br i1 %.not.i30, label %Py_DECREF.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.l, label %Py_DECREF.exit28

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !114
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

bb.m:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %.0.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.n, label %Py_DECREF.exit28

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %.0.i.i, align 8, !tbaa !114
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

Py_DECREF.exit28.sink.split:                      ; preds = %bb.n, %bb.l, %bb.h
  %_Py_NoneStruct.sink = phi ptr [ %i.af, %bb.l ], [ %i.aa, %bb.h ], [ %.0.i.i, %bb.n ]
  %.1.ph = phi i32 [ 0, %bb.l ], [ -1, %bb.h ], [ 0, %bb.n ]
  call void @_Py_Dealloc(ptr noundef nonnull %_Py_NoneStruct.sink) #16
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %Py_DECREF.exit28.sink.split, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ -1, %bb.f ], [ 0, %bb.m ], [ 0, %bb.n ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ %.1.ph, %Py_DECREF.exit28.sink.split ]
  ret i32 %.1
}

declare i32 @_PyEval_SetTraceAllThreads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_CallTracing(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyObject_DebugMallocStats(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare void @_PyObject_DebugTypeStats(ptr noundef) local_unnamed_addr #1

declare i32 @_PyEval_SetCoroutineOriginTrackingDepth(i32 noundef) local_unnamed_addr #1

declare i32 @_PyEval_GetCoroutineOriginTrackingDepth() local_unnamed_addr #1

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_GetAsyncGenFinalizer() local_unnamed_addr #1

declare i32 @_PyEval_SetAsyncGenFinalizer(ptr noundef) local_unnamed_addr #1

declare i32 @_PyEval_SetAsyncGenFirstiter(ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_GetAsyncGenFirstiter() local_unnamed_addr #1

declare ptr @PyStructSequence_New(ptr noundef) local_unnamed_addr #1

declare void @_PyPerfTrampoline_GetCallbacks(ptr noundef) local_unnamed_addr #1

declare i32 @_PyPerfTrampoline_SetCallbacks(ptr noundef) local_unnamed_addr #1

declare i32 @_PyPerfTrampoline_Init(i32 noundef) local_unnamed_addr #1

declare i32 @_PyIsPerfTrampolineActive() local_unnamed_addr #1

declare ptr @_Py_GetConfig() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sys_remote_exec_impl(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @PyUnicode_FSConverter(ptr noundef %1, ptr noundef nonnull %i.a) #16
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i32 noundef %0, ptr noundef %1)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  %i.h = call i32 @access(ptr noundef %i.g, i32 noundef 4) #16
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #19
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  switch i32 %i.j, label %bb.g [
    i32 2, label %bb.e
    i32 13, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_FileNotFoundError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.157) #16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.158) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @PyExc_OSError, align 8, !tbaa !25
  %i.n = call ptr @PyErr_SetFromErrno(ptr noundef %i.m) #16 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.o = call i32 @_PySysRemoteDebug_SendExec(i32 noundef %0, i32 noundef 0, ptr noundef %i.g) #16
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !114  ; 2 uses
  %.not.i6 = icmp sgt i32 %i.r, -1
  br i1 %.not.i6, label %bb.j, label %Py_DECREF.exit7

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !114
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit7.sink.split, label %Py_DECREF.exit7

bb.k:                                             ; preds = %bb.h, %bb.e, %bb.f, %bb.g, %bb.b
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !114  ; 2 uses
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit7

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !114
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %Py_DECREF.exit7.sink.split, label %Py_DECREF.exit7

Py_DECREF.exit7.sink.split:                       ; preds = %bb.l, %bb.j
  %.sink = phi ptr [ %i.q, %bb.j ], [ %i.u, %bb.l ]
  %.0.ph = phi ptr [ @_Py_NoneStruct, %bb.j ], [ null, %bb.l ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %Py_DECREF.exit7.sink.split, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.l ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.j ], [ null, %bb.k ], [ %.0.ph, %Py_DECREF.exit7.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare i32 @PyUnicode_FSConverter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #1

declare i32 @_PySysRemoteDebug_SendExec(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyErr_WriteUnraisableDefaultHook(ptr noundef) local_unnamed_addr #1

declare i32 @PyImport_GetLazyImportsMode() local_unnamed_addr #1

declare i32 @PyUnicode_CompareWithASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyImport_SetLazyImportsMode(i32 noundef) local_unnamed_addr #1

declare ptr @PyImport_GetLazyImportsFilter() local_unnamed_addr #1

declare i32 @PyImport_SetLazyImportsFilter(ptr noundef) local_unnamed_addr #1

declare i32 @PyRun_AnyFileExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Py_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyDumpExecutors(ptr noundef) local_unnamed_addr #1

declare ptr @PyFile_NewStdPrinter(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyMapping_GetItemString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Py_GetVersion() local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_Py_gitidentifier() local_unnamed_addr #1

declare ptr @_Py_gitversion() local_unnamed_addr #1

declare ptr @Py_GetCopyright() local_unnamed_addr #1

declare ptr @Py_GetPlatform() local_unnamed_addr #1

declare ptr @PyFloat_GetInfo() local_unnamed_addr #1

declare ptr @PyLong_GetInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_hash_info() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyStructSequence_New(ptr noundef nonnull @Hash_InfoType) #16 ; 38 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit170.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyHash_GetFuncDef() #16   ; 3 uses
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef 64) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %.not.i169 = icmp sgt i32 %i.e, -1
end_hunk_1
