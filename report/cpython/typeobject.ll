Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/typeobject?download=true
inline.NumInlined: 1348
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@subtype_setdict:bb.a
  %.not.i.i.i.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %.0.i6.i.i, align 8, !tbaa !585
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i6.i.i) #21, !inline_history !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.z = tail call i32 @PyDescr_IsData(ptr noundef nonnull %.0.i6.i.i) #21, !inline_history !21
  %.not.i20 = icmp eq i32 %i.z, 0
  br i1 %.not.i20, label %select.unfold, label %get_dict_descriptor.exit

select.unfold:                                    ; preds = %bb.j, %_PyType_LookupRefAndVersion.exit.thread8.i.i, %_PyType_LookupRefAndVersion.exit.i.i
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !598
  %i.aa = getelementptr i8, ptr %.val19, i64 24
  %.val19.val = load ptr, ptr %i.aa, align 8, !tbaa !620
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ab, ptr noundef nonnull @.str.148, ptr noundef %.val19.val) #21 ; 0 uses
  br label %bb.m

get_dict_descriptor.exit:                         ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %.0.i6.i.i, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !598
  %i.ae = getelementptr i8, ptr %.val, i64 280
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !677 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %get_dict_descriptor.exit
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !598
  %i.ah = getelementptr i8, ptr %.val18, i64 24
  %.val18.val = load ptr, ptr %i.ah, align 8, !tbaa !620
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.aj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.148, ptr noundef %.val18.val) #21 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %get_dict_descriptor.exit
  %i.ak = tail call i32 %i.af(ptr noundef nonnull %.0.i6.i.i, ptr noundef %0, ptr noundef %1) #21
  br label %bb.m

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.al = tail call i32 @_PyObject_SetDict(ptr noundef %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %select.unfold, %bb.k, %bb.l, %.loopexit
  %.1 = phi i32 [ %i.al, %.loopexit ], [ -1, %select.unfold ], [ -1, %bb.k ], [ %i.ak, %bb.l ]
  ret i32 %.1
}

declare ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @subtype_getweakref(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 !guid !1095 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !598
  %i.b = getelementptr i8, ptr %.val, i64 208
  %i.c = load i64, ptr %i.b, align 8, !tbaa !642  ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.151) #21
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !588  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %_Py_NoneStruct. = select i1 %i.h, ptr @_Py_NoneStruct, ptr %i.g ; 4 uses
  %i.i = load i32, ptr %_Py_NoneStruct., align 8, !tbaa !585 ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %_Py_NoneStruct., align 8, !tbaa !585
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %_Py_NoneStruct., %bb.c ], [ %_Py_NoneStruct., %bb.d ]
  ret ptr %.08
}

declare i32 @PyCell_Set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyDict_Copy(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyErr_FormatNote(ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_VectorcallDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyArg_NoKwnames(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @object___getstate__(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 !guid !1097 {
bb.a:
  %i.a = tail call fastcc ptr @object_getstate_default(ptr noundef %0, i32 noundef 0), !inline_history !1096
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @object_getstate_default(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 !guid !1099 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val152 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 2 uses
  %i.e = getelementptr i8, ptr %.val152, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !629
  %.not86 = icmp eq i64 %i.f, 0
  br i1 %.not86, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.h = getelementptr i8, ptr %.val152, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.155, ptr noundef %i.i) #21 ; 0 uses
  br label %.critedge97

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @_PyObject_IsInstanceDictEmpty(ptr noundef %0) #21
  %.not87 = icmp eq i32 %i.k, 0
  br i1 %.not87, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !585 ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr @_Py_NoneStruct, align 8, !tbaa !585
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.d
  %i.o = tail call ptr @PyObject_GenericGetDict(ptr noundef %0, ptr noundef null) #21 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge97, label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.e, %bb.g
  %.070 = phi ptr [ %i.o, %bb.g ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.f ] ; 19 uses
  %i.q = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val150 = load ptr, ptr %i.q, align 8, !tbaa !598 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.r = getelementptr i8, ptr %.val150, i64 168
  %i.s = load i64, ptr %i.r, align 8, !tbaa !590
  %i.t = and i64 %i.s, 2
  %.not.i25.i = icmp eq i64 %i.t, 0
  br i1 %.not.i25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !500  ; 2 uses
  %i.w = getelementptr i8, ptr %.val150, i64 360
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !496
  %i.x = ptrtoint ptr %.val.i.i.i.i to i64
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = getelementptr i8, ptr %i.v, i64 180328
  %i.aa = getelementptr [48 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !498
  %i.ac = icmp eq ptr %i.ab, %.val150
  %i.ad = icmp ugt i64 %i.y, 10
  %or.cond.i.i.i.i = or i1 %i.ac, %i.ad
  %i.ae = getelementptr i8, ptr %i.v, i64 190040
  %i.af = getelementptr [48 x i8], ptr %i.ae, i64 %i.y
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, ptr %i.aa, ptr %i.af
  %i.ag = getelementptr i8, ptr %.0.i.i.i.i, i64 24
  br label %lookup_tp_dict.exit.i

bb.i:                                             ; preds = %_Py_NewRef.exit
  %i.ah = getelementptr i8, ptr %.val150, i64 264
  br label %lookup_tp_dict.exit.i

lookup_tp_dict.exit.i:                            ; preds = %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !588
  %i.ai = call i32 @PyDict_GetItemRef(ptr noundef %.0.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70328), ptr noundef nonnull %i.b) #21
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %_PyType_GetSlotNames.exit.thread, label %bb.j

bb.j:                                             ; preds = %lookup_tp_dict.exit.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !588 ; 5 uses
  %.not.i158 = icmp eq ptr %i.ak, null
  br i1 %.not.i158, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not13.i = icmp eq ptr %i.ak, @_Py_NoneStruct
  br i1 %.not13.i, label %_PyType_GetSlotNames.exit.thread163, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val22.i = load ptr, ptr %i.al, align 8, !tbaa !598 ; 2 uses
  %i.am = getelementptr i8, ptr %.val22.i, i64 168
  %.val24.i = load i64, ptr %i.am, align 8, !tbaa !590
  %i.an = and i64 %.val24.i, 33554432
  %.not14.i = icmp eq i64 %i.an, 0
  br i1 %.not14.i, label %bb.m, label %_PyType_GetSlotNames.exit.thread163

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.ap = getelementptr i8, ptr %.val150, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !620
  %i.ar = getelementptr i8, ptr %.val22.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !620
  %i.at = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ao, ptr noundef nonnull @.str.158, ptr noundef %i.aq, ptr noundef %i.as) #21 ; 0 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !588 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !585 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i17.i, label %bb.n, label %_PyType_GetSlotNames.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !585
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %Py_DECREF.exit18.sink.split.i, label %_PyType_GetSlotNames.exit.thread

bb.o:                                             ; preds = %bb.j
  %i.ay = call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #21 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ay, null
  br i1 %.not.i26.i, label %bb.p, label %import_copyreg.exit.thread29.i

bb.p:                                             ; preds = %bb.o
  %i.az = call ptr @PyErr_Occurred() #21
  %.not4.i.i = icmp eq ptr %i.az, null
  br i1 %.not4.i.i, label %import_copyreg.exit.i, label %_PyType_GetSlotNames.exit.thread

import_copyreg.exit.i:                            ; preds = %bb.p
  %i.ba = call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #21 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_PyType_GetSlotNames.exit.thread, label %import_copyreg.exit.thread29.i

import_copyreg.exit.thread29.i:                   ; preds = %import_copyreg.exit.i, %bb.o
  %.0.i2731.i = phi ptr [ %i.ba, %import_copyreg.exit.i ], [ %i.ay, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %.0.i2731.i, ptr %i.a, align 16, !tbaa !588
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val150, ptr %i.bc, align 8, !tbaa !588
  %i.bd = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73456), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !588
  %i.be = load i32, ptr %.0.i2731.i, align 8, !tbaa !585 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i15.i, label %bb.q, label %Py_DECREF.exit16.i

bb.q:                                             ; preds = %import_copyreg.exit.thread29.i
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %.0.i2731.i, align 8, !tbaa !585
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %Py_DECREF.exit16thread-pre-split.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i2731.i) #21
  br label %Py_DECREF.exit16thread-pre-split.i

Py_DECREF.exit16thread-pre-split.i:               ; preds = %bb.r, %bb.q
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !588
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %Py_DECREF.exit16thread-pre-split.i, %import_copyreg.exit.thread29.i
  %i.bh = phi ptr [ %.pr.i, %Py_DECREF.exit16thread-pre-split.i ], [ %i.bd, %import_copyreg.exit.thread29.i ] ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_PyType_GetSlotNames.exit.thread, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit16.i
  %.not11.i = icmp eq ptr %i.bh, @_Py_NoneStruct
  br i1 %.not11.i, label %_PyType_GetSlotNames.exit.thread163, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !598
  %i.bk = getelementptr i8, ptr %.val.i, i64 168
  %.val23.i = load i64, ptr %i.bk, align 8, !tbaa !590
  %i.bl = and i64 %.val23.i, 33554432
  %.not12.i = icmp eq i64 %i.bl, 0
  br i1 %.not12.i, label %bb.u, label %_PyType_GetSlotNames.exit.thread163

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  call void @PyErr_SetString(ptr noundef %i.bm, ptr noundef nonnull @.str.159) #21
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !588 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !585 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i, label %bb.v, label %_PyType_GetSlotNames.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !585
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit18.sink.split.i, label %_PyType_GetSlotNames.exit.thread

Py_DECREF.exit18.sink.split.i:                    ; preds = %bb.v, %bb.n
  %.sink.i = phi ptr [ %i.au, %bb.n ], [ %i.bn, %bb.v ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #21
  br label %_PyType_GetSlotNames.exit.thread

_PyType_GetSlotNames.exit.thread:                 ; preds = %Py_DECREF.exit16.i, %lookup_tp_dict.exit.i, %import_copyreg.exit.i, %bb.p, %bb.m, %bb.n, %bb.u, %bb.v, %Py_DECREF.exit18.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.br = load i32, ptr %.070, align 8, !tbaa !585 ; 2 uses
  %.not.i128 = icmp sgt i32 %i.br, -1
  br i1 %.not.i128, label %bb.w, label %.critedge97

bb.w:                                             ; preds = %_PyType_GetSlotNames.exit.thread
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %.070, align 8, !tbaa !585
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.x, label %.critedge97

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %.070) #21
  br label %.critedge97

_PyType_GetSlotNames.exit.thread163:              ; preds = %bb.t, %bb.l, %bb.k, %bb.s
  %.0.i165 = phi ptr [ %i.bh, %bb.s ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.bh, %bb.t ] ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_PyType_GetSlotNames.exit.thread163
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @PyBaseObject_Type, i64 32), align 8, !tbaa !628 ; 2 uses
  %.val149 = load ptr, ptr %i.q, align 8, !tbaa !598 ; 4 uses
  %i.bv = getelementptr i8, ptr %.val149, i64 288
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !659
  %.not88 = icmp eq i64 %i.bw, 0
  br i1 %.not88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr i8, ptr %.val149, i64 168
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !590
  %i.bz = lshr i64 %i.by, 1
  %i.ca = and i64 %i.bz, 8
  %i.cb = xor i64 %i.ca, 8
  %spec.select = add i64 %i.cb, %i.bu
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.066 = phi i64 [ %i.bu, %bb.y ], [ %spec.select, %bb.z ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.val149, i64 208
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !642
  %i.ce = icmp sgt i64 %i.cd, 0
  %i.cf = add i64 %.066, 8
  %spec.select95 = select i1 %i.ce, i64 %i.cf, i64 %.066 ; 2 uses
  %.not89 = icmp eq ptr %.0.i165, @_Py_NoneStruct
  br i1 %.not89, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr i8, ptr %.0.i165, i64 16
  %.val157 = load i64, ptr %i.cg, align 8, !tbaa !609
  %i.ch = shl i64 %.val157, 3
  %i.ci = add i64 %i.ch, %spec.select95
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2 = phi i64 [ %i.ci, %bb.ab ], [ %spec.select95, %bb.aa ]
  %i.cj = getelementptr i8, ptr %.val149, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !628
  %.not90 = icmp sgt i64 %i.ck, %.2
  br i1 %.not90, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr %.0.i165, align 8, !tbaa !585 ; 2 uses
  %.not.i126 = icmp sgt i32 %i.cl, -1
  br i1 %.not.i126, label %bb.ae, label %Py_DECREF.exit127

bb.ae:                                            ; preds = %bb.ad
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %.0.i165, align 8, !tbaa !585
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.af, label %Py_DECREF.exit127

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i165) #21
  br label %Py_DECREF.exit127

Py_DECREF.exit127:                                ; preds = %bb.ad, %bb.ae, %bb.af
  %i.co = load i32, ptr %.070, align 8, !tbaa !585 ; 2 uses
  %.not.i124 = icmp sgt i32 %i.co, -1
  br i1 %.not.i124, label %bb.ag, label %Py_DECREF.exit125

bb.ag:                                            ; preds = %Py_DECREF.exit127
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %.070, align 8, !tbaa !585
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ah, label %Py_DECREF.exit125

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %.070) #21
  br label %Py_DECREF.exit125

Py_DECREF.exit125:                                ; preds = %Py_DECREF.exit127, %bb.ag, %bb.ah
  %i.cr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %.val = load ptr, ptr %i.q, align 8, !tbaa !598
  %i.cs = getelementptr i8, ptr %.val, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !620
  %i.cu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cr, ptr noundef nonnull @.str.156, ptr noundef %i.ct) #21 ; 0 uses
  br label %.critedge97

.critedge:                                        ; preds = %bb.ac, %_PyType_GetSlotNames.exit.thread163
  %.not91 = icmp eq ptr %.0.i165, @_Py_NoneStruct
  br i1 %.not91, label %Py_DECREF.exit99, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.cv = getelementptr i8, ptr %.0.i165, i64 16  ; 3 uses
  %.val156 = load i64, ptr %i.cv, align 8, !tbaa !609
  %i.cw = icmp sgt i64 %.val156, 0
  br i1 %i.cw, label %bb.aj, label %Py_DECREF.exit99

bb.aj:                                            ; preds = %bb.ai
  %i.cx = call ptr @PyDict_New() #21              ; 13 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.cz = load i32, ptr %.0.i165, align 8, !tbaa !585 ; 2 uses
  %.not.i122 = icmp sgt i32 %i.cz, -1
  br i1 %.not.i122, label %bb.al, label %Py_DECREF.exit123

bb.al:                                            ; preds = %bb.ak
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %.0.i165, align 8, !tbaa !585
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.am, label %Py_DECREF.exit123

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i165) #21
  br label %Py_DECREF.exit123

Py_DECREF.exit123:                                ; preds = %bb.ak, %bb.al, %bb.am
  %i.dc = load i32, ptr %.070, align 8, !tbaa !585 ; 2 uses
  %.not.i120 = icmp sgt i32 %i.dc, -1
  br i1 %.not.i120, label %bb.an, label %.critedge97

bb.an:                                            ; preds = %Py_DECREF.exit123
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %.070, align 8, !tbaa !585
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ao, label %.critedge97

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %.070) #21
  br label %.critedge97

bb.ap:                                            ; preds = %bb.aj
  %.val155 = load i64, ptr %i.cv, align 8, !tbaa !609 ; 3 uses
  %i.df = icmp sgt i64 %.val155, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ap
  %i.dg = getelementptr i8, ptr %.0.i165, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %bb.bl
  %.0171 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !587
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %.0171
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !588 ; 13 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !585 ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, -1073741825
  br i1 %i.dl, label %_Py_NewRef.exit159, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dm = add nuw i32 %i.dk, 1
  store i32 %i.dm, ptr %i.dj, align 8, !tbaa !585
  br label %_Py_NewRef.exit159

_Py_NewRef.exit159:                               ; preds = %bb.aq, %bb.ar
  %i.dn = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.c) #21
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.as, label %bb.av

bb.as:                                            ; preds = %_Py_NewRef.exit159
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !585 ; 2 uses
  %.not.i118 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i118, label %bb.at, label %Py_DECREF.exit119

bb.at:                                            ; preds = %bb.as
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.dj, align 8, !tbaa !585
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.au, label %Py_DECREF.exit119

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #21
  br label %Py_DECREF.exit119

bb.av:                                            ; preds = %_Py_NewRef.exit159
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !588 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.du = load i32, ptr %i.dj, align 8, !tbaa !585 ; 2 uses
  %.not.i116 = icmp sgt i32 %i.du, -1
  br i1 %.not.i116, label %bb.ax, label %Py_DECREF.exit117

bb.ax:                                            ; preds = %bb.aw
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !585
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ay, label %Py_DECREF.exit117

bb.ay:                                            ; preds = %bb.ax
  call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #21
  br label %Py_DECREF.exit117

bb.az:                                            ; preds = %bb.av
  %i.dx = call i32 @PyDict_SetItem(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.ds) #21
  %i.dy = load i32, ptr %i.dj, align 8, !tbaa !585 ; 2 uses
  %.not.i114 = icmp sgt i32 %i.dy, -1
  br i1 %.not.i114, label %bb.ba, label %Py_DECREF.exit115

bb.ba:                                            ; preds = %bb.az
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.dj, align 8, !tbaa !585
end_hunk_0
begin_hunk_1_@wrap_releasebuffer:bb.a

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %bb.h, %bb.d, %bb.i, %bb.a, %bb.c
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.i ], [ @_Py_NoneStruct, %bb.j ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_await(ptr noundef %0) #1 !guid !1165 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62952), ptr noundef null), !inline_history !26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !588
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !620
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62952)) #21, !inline_history !27 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_aiter(ptr noundef %0) #1 !guid !1166 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62448), ptr noundef null), !inline_history !26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !588
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !620
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62448)) #21, !inline_history !27 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_anext(ptr noundef %0) #1 !guid !1167 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62600), ptr noundef null), !inline_history !26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !588
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !620
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62600)) #21, !inline_history !27 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_add(ptr noundef %0, ptr noundef %1) #1 !guid !1168 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = icmp eq ptr %i.h, @slot_nb_add
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 5 uses
  %i.l = getelementptr i8, ptr %.val63, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !702
  %i.o = icmp eq ptr %i.n, @slot_nb_add
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val61, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i.i = load i64, ptr %i.r, align 8, !tbaa !609 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = icmp sgt i64 %.val.i.i, 0
  br i1 %i.t, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.u = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.u, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.s, i64 %.013.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !588
  %i.x = icmp eq ptr %i.w, %.val63
  br i1 %i.x, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.y = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.y, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.z = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ab = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824)) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ab, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !588
  %i.ae = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ae, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.af, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !585
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.k, %bb.k ], [ %i.k, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.k, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !588
  %i.aj = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62288), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.aj, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !585
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.an, align 8, !tbaa !588
  %i.ao = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.ao, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ae, %bb.l ], [ %i.aj, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.aj, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_binaryfunc_l(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1169 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !588
  %i.i = tail call ptr %2(ptr noundef %0, ptr noundef %i.h) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ %i.i, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_binaryfunc_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1170 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !588
  %i.i = tail call ptr %2(ptr noundef %i.h, ptr noundef %0) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ %i.i, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_subtract(ptr noundef %0, ptr noundef %1) #1 !guid !1171 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !703
  %i.j = icmp eq ptr %i.i, @slot_nb_subtract
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !703
  %i.q = icmp eq ptr %i.p, @slot_nb_subtract
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70608), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_multiply(ptr noundef %0, ptr noundef %1) #1 !guid !1172 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !704
  %i.j = icmp eq ptr %i.i, @slot_nb_multiply
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !704
  %i.q = icmp eq ptr %i.p, @slot_nb_multiply
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67816), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_remainder(ptr noundef %0, ptr noundef %1) #1 !guid !1173 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !705
  %i.j = icmp eq ptr %i.i, @slot_nb_remainder
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !705
  %i.q = icmp eq ptr %i.p, @slot_nb_remainder
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67656), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_divmod(ptr noundef %0, ptr noundef %1) #1 !guid !1174 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !706
  %i.j = icmp eq ptr %i.i, @slot_nb_divmod
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !706
  %i.q = icmp eq ptr %i.p, @slot_nb_divmod
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64440), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_power(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !guid !1176 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  %i.b = alloca [3 x ptr], align 16               ; 14 uses
  %i.c = icmp eq ptr %2, @_Py_NoneStruct
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !640  ; 3 uses
  %.val61.i = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.val63.i = load ptr, ptr %i.f, align 8, !tbaa !598 ; 5 uses
  %.not.i73 = icmp eq ptr %.val63.i, %.val61.i
  br i1 %.not.i73, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val61.i, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !649  ; 2 uses
  %.not44.i = icmp eq ptr %i.i, null
  br i1 %.not44.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !707
  %i.l = icmp eq ptr %i.k, @slot_nb_power
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = zext i1 %i.m to i32                      ; 5 uses
  %i.o = getelementptr i8, ptr %.val63.i, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !649  ; 2 uses
  %.not45.i = icmp eq ptr %i.p, null
  br i1 %.not45.i, label %Py_DECREF.exit53.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !707
  %i.s = icmp eq ptr %i.r, @slot_nb_power
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit53.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %PyType_IsSubtype.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.val61.i, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !632  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i.i.i = load i64, ptr %i.v, align 8, !tbaa !609 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 32
  %i.x = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %PyType_IsSubtype.exit.thread.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nuw nsw i64 %.013.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %.val.i.i.i
  br i1 %exitcond.not.i.i.i, label %PyType_IsSubtype.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !2

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.013.i.i.i = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %.013.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !588
  %i.ab = icmp eq ptr %i.aa, %.val63.i
  br i1 %i.ab, label %PyType_IsSubtype.exit.thread68.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.k
  %.05.i.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %.val61.i, %bb.h ] ; 2 uses
  %i.ac = icmp eq ptr %.05.i.i.i.i, %.val63.i
  br i1 %i.ac, label %PyType_IsSubtype.exit.thread68.i, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i
  %i.ad = getelementptr i8, ptr %.05.i.i.i.i, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %PyType_IsSubtype.exit.i, label %.preheader.i.i.i, !llvm.loop !3

PyType_IsSubtype.exit.i:                          ; preds = %bb.k
  %.not79.i = icmp eq ptr %.val63.i, @PyBaseObject_Type
  br i1 %.not79.i, label %PyType_IsSubtype.exit.thread68.i, label %PyType_IsSubtype.exit.thread.i

PyType_IsSubtype.exit.thread68.i:                 ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %PyType_IsSubtype.exit.i
  %i.af = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664)), !inline_history !1175 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %slot_nb_power_binary.exit, label %bb.l

bb.l:                                             ; preds = %PyType_IsSubtype.exit.thread68.i
  %.not47.i = icmp eq i32 %i.af, 0
  br i1 %.not47.i, label %PyType_IsSubtype.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ah, align 8, !tbaa !588
  %i.ai = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.a, i64 noundef 2), !inline_history !1175 ; 5 uses
  %.not48.i = icmp eq ptr %i.ai, @_Py_NotImplementedStruct
  br i1 %.not48.i, label %bb.n, label %slot_nb_power_binary.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !585 ; 2 uses
  %.not.i52.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i52.i, label %bb.o, label %PyType_IsSubtype.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !585
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %PyType_IsSubtype.exit.thread.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #21, !inline_history !1175
  br label %PyType_IsSubtype.exit.thread.i

PyType_IsSubtype.exit.thread.i:                   ; preds = %bb.j, %bb.p, %bb.o, %bb.n, %bb.l, %PyType_IsSubtype.exit.i, %bb.i, %bb.g
  %.2.i = phi i32 [ %i.n, %bb.l ], [ %i.n, %PyType_IsSubtype.exit.i ], [ 0, %bb.g ], [ 1, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.n, %bb.j ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !588
  %i.an = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68664), ptr noundef %i.a, i64 noundef 2), !inline_history !1175 ; 6 uses
  %.not49.i = icmp eq ptr %i.an, @_Py_NotImplementedStruct
  br i1 %.not49.i, label %bb.q, label %slot_nb_power_binary.exit

bb.q:                                             ; preds = %PyType_IsSubtype.exit.thread.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !598
  %.val62.i = load ptr, ptr %i.e, align 8, !tbaa !598
  %.not80.i = icmp eq ptr %.val62.i, %.val.i
  br i1 %.not80.i, label %slot_nb_power_binary.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !585 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i, label %bb.s, label %Py_DECREF.exit53.i

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !585
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %Py_DECREF.exit53.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #21, !inline_history !1175
  br label %Py_DECREF.exit53.i

Py_DECREF.exit53.i:                               ; preds = %bb.t, %bb.s, %bb.r, %bb.f, %bb.e
  %.4.i = phi i32 [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %.2.i, %bb.t ], [ %.2.i, %bb.r ], [ %.2.i, %bb.s ]
  %.not51.i = icmp eq i32 %.4.i, 0
  br i1 %.not51.i, label %slot_nb_power_binary.exit, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit53.i
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ar, align 8, !tbaa !588
  %i.as = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.a, i64 noundef 2), !inline_history !1175
  br label %slot_nb_power_binary.exit

slot_nb_power_binary.exit:                        ; preds = %PyType_IsSubtype.exit.thread68.i, %bb.m, %PyType_IsSubtype.exit.thread.i, %bb.q, %Py_DECREF.exit53.i, %bb.u
  %.339.i = phi ptr [ %i.as, %bb.u ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53.i ], [ %i.ai, %bb.m ], [ %i.an, %bb.q ], [ null, %PyType_IsSubtype.exit.thread68.i ], [ %i.an, %PyType_IsSubtype.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ap

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !640 ; 3 uses
  %.val69 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.val71 = load ptr, ptr %i.f, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val71, %.val69
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr i8, ptr %.val69, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !649 ; 2 uses
  %.not52 = icmp eq ptr %i.av, null
  br i1 %.not52, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !707
  %i.ay = icmp eq ptr %i.ax, @slot_nb_power
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.az = phi i1 [ false, %bb.w ], [ false, %bb.v ], [ %i.ay, %bb.x ] ; 2 uses
  %i.ba = zext i1 %i.az to i32                    ; 5 uses
  %i.bb = getelementptr i8, ptr %.val71, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !649 ; 2 uses
  %.not53 = icmp eq ptr %i.bc, null
  br i1 %.not53, label %Py_DECREF.exit61, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !707
  %i.bf = icmp eq ptr %i.be, @slot_nb_power
  br i1 %i.bf, label %bb.aa, label %Py_DECREF.exit61

bb.aa:                                            ; preds = %bb.z
  br i1 %i.az, label %bb.ab, label %PyType_IsSubtype.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr i8, ptr %.val69, i64 344
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !632 ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i74, label %.preheader.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %.val.i.i = load i64, ptr %i.bi, align 8, !tbaa !609 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 32
  %i.bk = icmp sgt i64 %.val.i.i, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.bl = add nuw nsw i64 %.013.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %.013.i.i = phi i64 [ %i.bl, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bj, i64 %.013.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !588
  %i.bo = icmp eq ptr %i.bn, %.val71
  br i1 %i.bo, label %PyType_IsSubtype.exit.thread79, label %bb.ad

.preheader.i.i:                                   ; preds = %bb.ab, %bb.ae
  %.05.i.i.i = phi ptr [ %i.br, %bb.ae ], [ %.val69, %bb.ab ] ; 2 uses
  %i.bp = icmp eq ptr %.05.i.i.i, %.val71
  br i1 %i.bp, label %PyType_IsSubtype.exit.thread79, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i
  %i.bq = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i75, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.ae
  %.not90 = icmp eq ptr %.val71, @PyBaseObject_Type
  br i1 %.not90, label %PyType_IsSubtype.exit.thread79, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread79:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.bs = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val69, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664)) ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Py_DECREF.exit61.thread86, label %bb.af

bb.af:                                            ; preds = %PyType_IsSubtype.exit.thread79
  %.not55 = icmp eq i32 %i.bs, 0
  br i1 %.not55, label %PyType_IsSubtype.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %1, ptr %i.b, align 16, !tbaa !588
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.bu, align 8, !tbaa !588
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.bv, align 16, !tbaa !588
  %i.bw = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.b, i64 noundef 3) ; 5 uses
  %.not56 = icmp eq ptr %i.bw, @_Py_NotImplementedStruct
  br i1 %.not56, label %bb.ah, label %Py_DECREF.exit61.thread86

bb.ah:                                            ; preds = %bb.ag
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !585 ; 2 uses
  %.not.i60 = icmp sgt i32 %i.bx, -1
  br i1 %.not.i60, label %bb.ai, label %PyType_IsSubtype.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !585
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aj, label %PyType_IsSubtype.exit.thread

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.ad, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ac, %PyType_IsSubtype.exit, %bb.aa
  %.2 = phi i32 [ %i.ba, %bb.af ], [ %i.ba, %PyType_IsSubtype.exit ], [ 0, %bb.aa ], [ 1, %bb.ac ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ %i.ba, %bb.ad ] ; 3 uses
  store ptr %0, ptr %i.b, align 16, !tbaa !588
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.ca, align 8, !tbaa !588
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.cb, align 16, !tbaa !588
  %i.cc = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68664), ptr noundef %i.b, i64 noundef 3) ; 6 uses
  %.not57 = icmp eq ptr %i.cc, @_Py_NotImplementedStruct
  br i1 %.not57, label %bb.ak, label %Py_DECREF.exit61.thread86

bb.ak:                                            ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.f, align 8, !tbaa !598
  %.val70 = load ptr, ptr %i.e, align 8, !tbaa !598
  %.not91 = icmp eq ptr %.val70, %.val
  br i1 %.not91, label %Py_DECREF.exit61.thread86, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.cd, -1
  br i1 %.not.i, label %bb.am, label %Py_DECREF.exit61

bb.am:                                            ; preds = %bb.al
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !585
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.an, label %Py_DECREF.exit61

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #21
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %bb.al, %bb.am, %bb.an, %bb.z, %bb.y
  %.4 = phi i32 [ %i.ba, %bb.y ], [ %i.ba, %bb.z ], [ %.2, %bb.an ], [ %.2, %bb.al ], [ %.2, %bb.am ]
  %.not59 = icmp eq i32 %.4, 0
  br i1 %.not59, label %Py_DECREF.exit61.thread86, label %bb.ao

bb.ao:                                            ; preds = %Py_DECREF.exit61
  store ptr %1, ptr %i.b, align 16, !tbaa !588
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.cg, align 8, !tbaa !588
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.ch, align 16, !tbaa !588
  %i.ci = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.b, i64 noundef 3)
  br label %Py_DECREF.exit61.thread86

Py_DECREF.exit61.thread86:                        ; preds = %bb.ag, %bb.ak, %PyType_IsSubtype.exit.thread79, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit61, %bb.ao
  %.345 = phi ptr [ %i.ci, %bb.ao ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit61 ], [ %i.bw, %bb.ag ], [ %i.cc, %bb.ak ], [ null, %PyType_IsSubtype.exit.thread79 ], [ %i.cc, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ap

bb.ap:                                            ; preds = %Py_DECREF.exit61.thread86, %slot_nb_power_binary.exit
  %.446 = phi ptr [ %.339.i, %slot_nb_power_binary.exit ], [ %.345, %Py_DECREF.exit61.thread86 ]
  ret ptr %.446
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_ternaryfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1177 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val12.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_pow_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 3 uses
  %i.d = add i64 %.val11.i, -1
  %or.cond.i = icmp ult i64 %i.d, 2
  br i1 %or.cond.i, label %check_pow_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.386, i32 noundef 1, i32 noundef 2, i64 noundef %.val11.i) #21 ; 0 uses
  br label %check_pow_args.exit.thread

check_pow_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !588
  %i.i = icmp eq i64 %.val11.i, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_pow_args.exit
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !588
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %check_pow_args.exit
  %.0 = phi ptr [ %i.k, %bb.e ], [ @_Py_NoneStruct, %check_pow_args.exit ]
  %i.l = tail call ptr %2(ptr noundef %0, ptr noundef %i.h, ptr noundef %.0) #21
  br label %check_pow_args.exit.thread

check_pow_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.f
  %.010 = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_ternaryfunc_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1178 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val12.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_pow_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 3 uses
  %i.d = add i64 %.val11.i, -1
  %or.cond.i = icmp ult i64 %i.d, 2
  br i1 %or.cond.i, label %check_pow_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.386, i32 noundef 1, i32 noundef 2, i64 noundef %.val11.i) #21 ; 0 uses
  br label %check_pow_args.exit.thread

check_pow_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !588
  %i.i = icmp eq i64 %.val11.i, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_pow_args.exit
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !588
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %check_pow_args.exit
  %.0 = phi ptr [ %i.k, %bb.e ], [ @_Py_NoneStruct, %check_pow_args.exit ]
  %i.l = tail call ptr %2(ptr noundef %i.h, ptr noundef %0, ptr noundef %.0) #21
  br label %check_pow_args.exit.thread

check_pow_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.f
  %.010 = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_negative(ptr noundef %0) #1 !guid !1179 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67968), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_positive(ptr noundef %0) #1 !guid !1180 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68616), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_absolute(ptr noundef %0) #1 !guid !1181 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62176), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @slot_nb_bool(ptr noundef %0) #1 !guid !1182 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.b = call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63064), ptr noundef nonnull %i.a) ; 6 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !39
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.f = getelementptr i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !620
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.387, ptr noundef %i.g) #21 ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.b, null
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @PyErr_Occurred() #21
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67112), ptr noundef null), !inline_history !739 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @PyErr_Occurred() #21
  %.not19 = icmp eq ptr %i.m, null
  br i1 %.not19, label %Py_DECREF.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.e
  %i.n = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.k) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %.014.val = load ptr, ptr %i.o, align 8, !tbaa !598
  %.not29 = icmp eq ptr %.014.val, @PyBool_Type
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.b) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.388, ptr noundef %0, ptr noundef nonnull %i.b) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.01428 = phi ptr [ %i.k, %bb.g ], [ %i.b, %bb.i ], [ %i.b, %bb.j ] ; 3 uses
  %.0 = phi i32 [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ -1, %bb.j ] ; 3 uses
  %i.s = load i32, ptr %.01428, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.01428, align 8, !tbaa !585
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.01428) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %bb.k, %.thread, %bb.f, %bb.b
  %.016 = phi i32 [ -1, %bb.b ], [ 1, %bb.f ], [ -1, %.thread ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_inquirypred(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1183 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 0
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 0, ptr noundef nonnull @.str.190, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = tail call i32 %2(ptr noundef %0) #21     ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.i = tail call ptr @PyErr_Occurred() #21
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.j = sext i32 %i.g to i64
  %i.k = tail call ptr @PyBool_FromLong(i64 noundef %i.j) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_invert(ptr noundef %0) #1 !guid !1184 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66440), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_lshift(ptr noundef %0, ptr noundef %1) #1 !guid !1185 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !708
  %i.j = icmp eq ptr %i.i, @slot_nb_lshift
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !708
  %i.q = icmp eq ptr %i.p, @slot_nb_lshift
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67328), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_rshift(ptr noundef %0, ptr noundef %1) #1 !guid !1186 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !709
  %i.j = icmp eq ptr %i.i, @slot_nb_rshift
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !709
  %i.q = icmp eq ptr %i.p, @slot_nb_rshift
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69776), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_and(ptr noundef %0, ptr noundef %1) #1 !guid !1187 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !710
  %i.j = icmp eq ptr %i.i, @slot_nb_and
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !710
  %i.q = icmp eq ptr %i.p, @slot_nb_and
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62552), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_xor(ptr noundef %0, ptr noundef %1) #1 !guid !1188 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !711
  %i.j = icmp eq ptr %i.i, @slot_nb_xor
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !711
  %i.q = icmp eq ptr %i.p, @slot_nb_xor
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71424), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_or(ptr noundef %0, ptr noundef %1) #1 !guid !1189 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !712
  %i.j = icmp eq ptr %i.i, @slot_nb_or
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !712
  %i.q = icmp eq ptr %i.p, @slot_nb_or
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68288), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_int(ptr noundef %0) #1 !guid !1190 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66392), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_float(ptr noundef %0) #1 !guid !1191 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64816), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_add(ptr noundef %0, ptr noundef %1) #1 !guid !1192 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65704), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_subtract(ptr noundef %0, ptr noundef %1) #1 !guid !1193 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66720), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_multiply(ptr noundef %0, ptr noundef %1) #1 !guid !1194 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66096), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_remainder(ptr noundef %0, ptr noundef %1) #1 !guid !1195 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65984), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_power(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #1 !guid !1196 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66544), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_lshift(ptr noundef %0, ptr noundef %1) #1 !guid !1197 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65872), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_rshift(ptr noundef %0, ptr noundef %1) #1 !guid !1198 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66600), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_and(ptr noundef %0, ptr noundef %1) #1 !guid !1199 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65760), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_xor(ptr noundef %0, ptr noundef %1) #1 !guid !1200 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66888), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_or(ptr noundef %0, ptr noundef %1) #1 !guid !1201 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66496), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_floor_divide(ptr noundef %0, ptr noundef %1) #1 !guid !1202 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !714
  %i.j = icmp eq ptr %i.i, @slot_nb_floor_divide
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !714
  %i.q = icmp eq ptr %i.p, @slot_nb_floor_divide
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64928), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_true_divide(ptr noundef %0, ptr noundef %1) #1 !guid !1203 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !713
  %i.j = icmp eq ptr %i.i, @slot_nb_true_divide
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 240
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !713
  %i.q = icmp eq ptr %i.p, @slot_nb_true_divide
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70784), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_floor_divide(ptr noundef %0, ptr noundef %1) #1 !guid !1204 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65816), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_true_divide(ptr noundef %0, ptr noundef %1) #1 !guid !1205 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66832), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_index(ptr noundef %0) #1 !guid !1206 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66152), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_matrix_multiply(ptr noundef %0, ptr noundef %1) #1 !guid !1207 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !598 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !598 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !715
  %i.j = icmp eq ptr %i.i, @slot_nb_matrix_multiply
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !649  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 272
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !715
  %i.q = icmp eq ptr %i.p, @slot_nb_matrix_multiply
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !609 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !588
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !3

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !588
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !585
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !588
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67544), ptr noundef %i.a, i64 noundef 2) ; 6 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !598
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !598
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !585 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !585
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !588
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !588
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ %i.al, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_matrix_multiply(ptr noundef %0, ptr noundef %1) #1 !guid !1208 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65928), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @slot_sq_length(ptr noundef %0) #1 !guid !1209 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !588
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67112), ptr noundef %i.a, i64 noundef 1) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_PyNumber_Index(ptr noundef nonnull %i.b) #21 ; 9 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !585  ; 2 uses
  %.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %.not.i16, label %bb.c, label %Py_DECREF.exit17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !585
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #21
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.h = icmp eq ptr %i.d, null
  br i1 %i.h, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit17
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !1212
  %i.j = and i64 %.val, 3
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 8, !tbaa !585  ; 2 uses
  %.not.i14 = icmp sgt i32 %i.l, -1
  br i1 %.not.i14, label %bb.g, label %Py_DECREF.exit15

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.d, align 8, !tbaa !585
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit15

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #21
  br label %Py_DECREF.exit15

Py_DECREF.exit15:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !588
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.389) #21
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !588
  %i.q = call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %i.d, ptr noundef %i.p) #21 ; 3 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !585  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !585
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %Py_DECREF.exit17, %bb.a, %Py_DECREF.exit15
  %.0 = phi i64 [ -1, %Py_DECREF.exit17 ], [ -1, %bb.a ], [ -1, %Py_DECREF.exit15 ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_lenfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 !guid !1213 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !598
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !588
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !609 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 0
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !588
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 0, ptr noundef nonnull @.str.190, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = tail call i64 %2(ptr noundef %0) #21     ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.i = tail call ptr @PyErr_Occurred() #21
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.g) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.j, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_mp_subscript(ptr noundef %0, ptr noundef %1) #1 !guid !1214 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65368), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_mp_ass_subscript(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !guid !1215 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64224), ptr noundef %i.a, i64 noundef 2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 16, !tbaa !588
  %i.f = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70160), ptr noundef %i.a, i64 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]  ; 4 uses
  %i.g = icmp eq ptr %.0, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %.0, align 8, !tbaa !585   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %.0, align 8, !tbaa !585
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.06 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.06
}

end_hunk_1
