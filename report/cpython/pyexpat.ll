Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pyexpat?download=true
inline.NumInlined: 237
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pyexpat_xmlparser_ExternalEntityParserCreate:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.de = add nuw i32 %i.dc, 1
  store i32 %i.de, ptr %i.db, align 8, !tbaa !25
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.ar, %bb.aq
  %i.df = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %.084.i
  store ptr %i.db, ptr %i.dg, align 8, !tbaa !26
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !tbaa !62
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !51
  call void %.sroa.3.0.copyload.i(ptr noundef %i.dh, ptr noundef %.sroa.4.0.copyload.i) #8, !inline_history !154
  br label %bb.as

bb.as:                                            ; preds = %_Py_NewRef.exit.i, %bb.ap
  %i.di = add i64 %.084.i, 1                      ; 2 uses
  %i.dj = getelementptr [64 x i8], ptr @handler_info, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 16, !tbaa !55
  %.not64.i = icmp eq ptr %i.dk, null
  br i1 %.not64.i, label %._crit_edge.i, label %bb.ap, !llvm.loop !155

pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit: ; preds = %._crit_edge.i, %Py_DECREF.exit.i, %Py_DECREF.exit69.i, %Py_DECREF.exit73.i, %bb.o, %.thread49, %bb.h, %bb.k, %bb.n, %bb.b, %bb.l
  %.034 = phi ptr [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.k ], [ null, %.thread49 ], [ null, %bb.h ], [ %i.ce, %Py_DECREF.exit69.i ], [ %i.bw, %Py_DECREF.exit73.i ], [ null, %bb.o ], [ %i.ah, %._crit_edge.i ], [ %i.cr, %Py_DECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_SetParamEntityParsing(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #8 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %i.a, %bb.a ], [ -1, %bb.b ]
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.e = tail call i32 @PyExpat_XML_SetParamEntityParsing(ptr noundef %.val6, i32 noundef %.sink) #8
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @PyLong_FromLong(i64 noundef %i.f) #8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_UseForeignDTD(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %4, null
  %i.c = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_UseForeignDTD._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %pyexpat_xmlparser_UseForeignDTD_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp slt i64 %3, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.i = call i32 @PyObject_IsTrue(ptr noundef %i.h) #8 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %pyexpat_xmlparser_UseForeignDTD_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.0 = phi i32 [ 1, %.thread ], [ %i.i, %bb.c ]
  %i.k = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %.not.i = icmp ne i32 %.0, 0
  %i.n = zext i1 %.not.i to i8
  %i.o = call i32 @PyExpat_XML_UseForeignDTD(ptr noundef %i.m, i8 noundef zeroext %i.n) #8 ; 2 uses
  %.not8.i = icmp eq i32 %i.o, 0
  br i1 %.not8.i, label %pyexpat_xmlparser_UseForeignDTD_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !51 ; 2 uses
  %i.p = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i) #8
  %i.q = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.k, i32 noundef %i.o, i64 noundef %i.p, i64 noundef %i.q, ptr noundef null)
  br label %pyexpat_xmlparser_UseForeignDTD_impl.exit

pyexpat_xmlparser_UseForeignDTD_impl.exit:        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.020 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = call i32 @_PyLong_UnsignedLongLong_Converter(ptr noundef %i.h, ptr noundef nonnull %i.b) #8
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.j = load i64, ptr %i.b, align 8, !tbaa !65
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = call zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr noundef %i.l, i64 noundef %i.j) #8, !callees !66, !inline_history !6
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !51 ; 2 uses
  %i.p = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i.i) #8
  %i.q = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.o, i32 noundef 41, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.125)
  br label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit

pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit: ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !31
  %.not28 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val26 = load double, ptr %i.i, align 8, !tbaa !69
  %i.j = fptrunc double %.val26 to float
  br label %bb.f

bb.d:                                             ; preds = %.thread
  %i.k = call double @PyFloat_AsDouble(ptr noundef nonnull %i.g) #8
  %i.l = fptrunc double %i.k to float             ; 2 uses
  %i.m = fcmp oeq float %i.l, -1.000000e+00
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyErr_Occurred() #8
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.f, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi float [ %i.j, %bb.c ], [ -1.000000e+00, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = call zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr noundef %i.p, float noundef %.0) #8, !callees !70, !inline_history !7
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %5 = fcmp ult float %.0, 1.000000e+00
  %i.t = select i1 %5, ptr @.str.126, ptr @.str.125
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !51 ; 2 uses
  %i.u = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i.i) #8
  %i.v = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.s, i32 noundef 41, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull %i.t)
  br label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit

pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.021 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_SetAllocTrackerActivationThreshold(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_SetAllocTrackerActivationThreshold._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = call i32 @_PyLong_UnsignedLongLong_Converter(ptr noundef %i.h, ptr noundef nonnull %i.b) #8
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.j = load i64, ptr %i.b, align 8, !tbaa !65
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = call zeroext i8 @PyExpat_XML_SetAllocTrackerActivationThreshold(ptr noundef %i.l, i64 noundef %i.j) #8, !callees !66, !inline_history !6
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !51 ; 2 uses
  %i.p = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i.i) #8
  %i.q = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.o, i32 noundef 41, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.125)
  br label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit

pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit: ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_SetAllocTrackerMaximumAmplification(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_SetAllocTrackerMaximumAmplification._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !31
  %.not28 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val26 = load double, ptr %i.i, align 8, !tbaa !69
  %i.j = fptrunc double %.val26 to float
  br label %bb.f

bb.d:                                             ; preds = %.thread
  %i.k = call double @PyFloat_AsDouble(ptr noundef nonnull %i.g) #8
  %i.l = fptrunc double %i.k to float             ; 2 uses
  %i.m = fcmp oeq float %i.l, -1.000000e+00
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyErr_Occurred() #8
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.f, label %pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi float [ %i.j, %bb.c ], [ -1.000000e+00, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = call zeroext i8 @PyExpat_XML_SetAllocTrackerMaximumAmplification(ptr noundef %i.p, float noundef %.0) #8, !callees !70, !inline_history !7
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @PyType_GetModuleState(ptr noundef %1) #8
  %5 = fcmp ult float %.0, 1.000000e+00
  %i.t = select i1 %5, ptr @.str.126, ptr @.str.125
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !51 ; 2 uses
  %i.u = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i.i) #8
  %i.v = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.s, i32 noundef 41, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull %i.t)
  br label %pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit

pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.021 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyexpat_xmlparser_SetReparseDeferralEnabled(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_IsTrue(ptr noundef %1) #8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = icmp ne i32 %i.a, 0
  %i.f = zext i1 %i.e to i8                       ; 2 uses
  %i.g = tail call zeroext i8 @PyExpat_XML_SetReparseDeferralEnabled(ptr noundef %i.d, i8 noundef zeroext %i.f) #8 ; 0 uses
  %i.h = getelementptr i8, ptr %0, i64 64
  store i8 %i.f, ptr %i.h, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_GetReparseDeferralEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load i8, ptr %i.a, align 8, !tbaa !50, !range !156, !noundef !157
  %i.b = zext nneg i8 %.val to i64
  %i.c = tail call ptr @PyBool_FromLong(i64 noundef %i.b) #8
  ret ptr %i.c
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetModuleState(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_parse_result(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyErr_Occurred() #8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = tail call i32 @PyExpat_XML_GetErrorCode(ptr noundef %i.d) #8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.f = tail call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val) #8
  %i.g = tail call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val) #8
  tail call fastcc void @set_xml_error(ptr noundef readonly %0, i32 noundef %i.e, i64 noundef %i.f, i64 noundef %i.g, ptr noundef null)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %flush_character_buffer.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 60         ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %flush_character_buffer.exit.thread, label %flush_character_buffer.exit

flush_character_buffer.exit:                      ; preds = %bb.e
  %i.n = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i32 noundef %i.l), !inline_history !1
  store i32 0, ptr %i.k, align 4, !tbaa !47
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %flush_character_buffer.exit.thread

flush_character_buffer.exit.thread:               ; preds = %bb.d, %bb.e, %flush_character_buffer.exit
  %i.p = sext i32 %2 to i64
  %i.q = tail call ptr @PyLong_FromLong(i64 noundef %i.p) #8
  br label %bb.f

bb.f:                                             ; preds = %flush_character_buffer.exit, %bb.a, %flush_character_buffer.exit.thread, %bb.c
  %.0 = phi ptr [ %i.q, %flush_character_buffer.exit.thread ], [ null, %bb.c ], [ null, %bb.a ], [ null, %flush_character_buffer.exit ]
  ret ptr %.0
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_xml_error(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyExpat_XML_ErrorString(i32 noundef %1) #8
  %i.c = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.114, ptr noundef %i.b, i64 noundef %2, i64 noundef %3) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #9
  %i.e = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %4, i64 noundef %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ]  ; 5 uses
  %i.f = icmp eq ptr %.0, null
  br i1 %i.f, label %Py_XDECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = tail call ptr @PyObject_CallOneArg(ptr noundef %i.h, ptr noundef nonnull %.0) #8 ; 8 uses
  %i.j = load i32, ptr %.0, align 8, !tbaa !25    ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %.0, align 8, !tbaa !25
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.m = zext i32 %1 to i64
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef %i.m) #8 ; 5 uses
  %.not.i26 = icmp eq ptr %i.n, null
  br i1 %.not.i26, label %set_xml_error_attr_code.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79072), ptr noundef nonnull %i.n) #8
  %.not41 = icmp eq i32 %i.o, -1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i, label %bb.j, label %set_xml_error_attr_code.exit

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !25
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %set_xml_error_attr_code.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #8
  br label %set_xml_error_attr_code.exit

set_xml_error_attr_code.exit:                     ; preds = %bb.i, %bb.j, %bb.k
  br i1 %.not41, label %set_xml_error_attr_code.exit.thread, label %bb.l

bb.l:                                             ; preds = %set_xml_error_attr_code.exit
  %i.s = tail call ptr @PyLong_FromSize_t(i64 noundef %2) #8 ; 5 uses
  %.not.i27 = icmp eq ptr %i.s, null
  br i1 %.not.i27, label %set_xml_error_attr_code.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.s) #8
  %.not42 = icmp eq i32 %i.t, -1
  %i.u = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i28 = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i.i28, label %bb.n, label %set_xml_error_attr_location.exit

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !25
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.o, label %set_xml_error_attr_location.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #8
  br label %set_xml_error_attr_location.exit

set_xml_error_attr_location.exit:                 ; preds = %bb.m, %bb.n, %bb.o
  br i1 %.not42, label %set_xml_error_attr_code.exit.thread, label %bb.p

bb.p:                                             ; preds = %set_xml_error_attr_location.exit
  %i.x = tail call ptr @PyLong_FromSize_t(i64 noundef %3) #8 ; 5 uses
  %.not.i30 = icmp eq ptr %i.x, null
end_hunk_0
