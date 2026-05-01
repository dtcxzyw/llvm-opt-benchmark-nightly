inline.NumInlined: 237
inline.NumDeleted: 55
begin_hunk_0_@pyexpat_exec:bb.a

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ]
  %i.m = phi ptr [ %i.j, %bb.d ], [ @handler_info, %bb.c ] ; 4 uses
  %.01923.i = phi i32 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr i8, ptr %i.m, i64 32
  store <2 x ptr> <ptr @xmlparse_handler_getter, ptr @xmlparse_handler_setter>, ptr %i.o, align 8, !tbaa !80
  %i.p = getelementptr i8, ptr %i.m, i64 56
  store ptr %i.m, ptr %i.p, align 8, !tbaa !93
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.r = tail call ptr @PyDescr_NewGetSet(ptr noundef %i.q, ptr noundef nonnull %i.n) #9 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %init_handler_descrs.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.t, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.w = getelementptr i8, ptr %i.r, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = tail call i32 @PyDict_SetDefaultRef(ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.r, ptr noundef null) #9
  %i.z = icmp sgt i32 %i.y, -1
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !18  ; 2 uses
end_hunk_0
begin_hunk_1_@pyexpat_exec:bb.a

bb.v:                                             ; preds = %bb.t
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store ptr @.str.91, ptr %i.bj, align 8, !tbaa !97
  store <4 x i32> <i32 216, i32 2, i32 7, i32 4>, ptr %i.bm, align 8, !tbaa !6
  %i.bn = getelementptr i8, ptr %i.bj, i64 24
  store ptr @PyExpat_XML_ErrorString, ptr %i.bn, align 8, !tbaa !99
  %i.bo = getelementptr i8, ptr %i.bj, i64 32
  store ptr @PyExpat_XML_GetErrorCode, ptr %i.bo, align 8, !tbaa !100
  %i.bp = getelementptr i8, ptr %i.bj, i64 40
  store ptr @PyExpat_XML_GetCurrentColumnNumber, ptr %i.bp, align 8, !tbaa !101
  %i.bq = getelementptr i8, ptr %i.bj, i64 48
  store ptr @PyExpat_XML_GetCurrentLineNumber, ptr %i.bq, align 8, !tbaa !102
  %i.br = getelementptr i8, ptr %i.bj, i64 56
  store ptr @PyExpat_XML_Parse, ptr %i.br, align 8, !tbaa !103
  %i.bs = getelementptr i8, ptr %i.bj, i64 64
  store ptr @PyExpat_XML_ParserCreate_MM, ptr %i.bs, align 8, !tbaa !104
  %i.bt = getelementptr i8, ptr %i.bj, i64 72
  store ptr @PyExpat_XML_ParserFree, ptr %i.bt, align 8, !tbaa !105
  %i.bu = getelementptr i8, ptr %i.bj, i64 80
  store ptr @PyExpat_XML_SetCharacterDataHandler, ptr %i.bu, align 8, !tbaa !106
  %i.bv = getelementptr i8, ptr %i.bj, i64 88
  store ptr @PyExpat_XML_SetCommentHandler, ptr %i.bv, align 8, !tbaa !107
  %i.bw = getelementptr i8, ptr %i.bj, i64 96
  store ptr @PyExpat_XML_SetDefaultHandlerExpand, ptr %i.bw, align 8, !tbaa !108
  %i.bx = getelementptr i8, ptr %i.bj, i64 104
  store ptr @PyExpat_XML_SetElementHandler, ptr %i.bx, align 8, !tbaa !109
  %i.by = getelementptr i8, ptr %i.bj, i64 112
  store ptr @PyExpat_XML_SetNamespaceDeclHandler, ptr %i.by, align 8, !tbaa !110
  %i.bz = getelementptr i8, ptr %i.bj, i64 120
  store ptr @PyExpat_XML_SetProcessingInstructionHandler, ptr %i.bz, align 8, !tbaa !111
  %i.ca = getelementptr i8, ptr %i.bj, i64 128
  store ptr @PyExpat_XML_SetUnknownEncodingHandler, ptr %i.ca, align 8, !tbaa !112
  %i.cb = getelementptr i8, ptr %i.bj, i64 136
  store ptr @PyExpat_XML_SetUserData, ptr %i.cb, align 8, !tbaa !113
  %i.cc = getelementptr i8, ptr %i.bj, i64 144
  store ptr @PyExpat_XML_SetStartDoctypeDeclHandler, ptr %i.cc, align 8, !tbaa !114
  %i.cd = getelementptr i8, ptr %i.bj, i64 152
  store ptr @PyExpat_XML_SetEncoding, ptr %i.cd, align 8, !tbaa !115
  %i.ce = getelementptr i8, ptr %i.bj, i64 160
  store ptr @PyUnknownEncodingHandler, ptr %i.ce, align 8, !tbaa !116
  %i.cf = getelementptr i8, ptr %i.bj, i64 168
  store ptr @PyExpat_XML_SetHashSalt, ptr %i.cf, align 8, !tbaa !117
  %i.cg = getelementptr i8, ptr %i.bj, i64 176
  store ptr @PyExpat_XML_SetReparseDeferralEnabled, ptr %i.cg, align 8, !tbaa !118
  %i.ch = getelementptr i8, ptr %i.bj, i64 184
  store ptr @PyExpat_XML_SetAllocTrackerActivationThreshold, ptr %i.ch, align 8, !tbaa !119
  %i.ci = getelementptr i8, ptr %i.bj, i64 192
  store ptr @PyExpat_XML_SetAllocTrackerMaximumAmplification, ptr %i.ci, align 8, !tbaa !120
  %i.cj = getelementptr i8, ptr %i.bj, i64 200
  store ptr @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold, ptr %i.cj, align 8, !tbaa !121
  %i.ck = getelementptr i8, ptr %i.bj, i64 208
  store ptr @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification, ptr %i.ck, align 8, !tbaa !122
  %i.cl = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.92, ptr noundef nonnull @pyexpat_capsule_destructor) #9 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.w, label %bb.x
end_hunk_1
begin_hunk_2_@add_errors_module:bb.a
.preheader.peel.next:                             ; preds = %bb.c, %bb.r
  %.033 = phi i64 [ %i.ah, %bb.r ], [ 1, %bb.c ]  ; 4 uses
  %i.g = getelementptr [16 x i8], ptr @error_info_of, i64 %.033 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !123
  %i.i = trunc nuw nsw i64 %.033 to i32
  %i.j = tail call ptr @PyExpat_XML_ErrorString(i32 noundef %i.i) #9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
end_hunk_2
begin_hunk_3_@add_errors_module:bb.a

bb.d:                                             ; preds = %.preheader.peel.next
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.peel.next
end_hunk_3
begin_hunk_4_@add_errors_module:bb.a
bb.r:                                             ; preds = %add_error.exit
  %i.ah = add nuw nsw i64 %.033, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, 45
  br i1 %exitcond.not, label %.loopexit37, label %.preheader.peel.next, !llvm.loop !126

.loopexit37:                                      ; preds = %bb.r
  %i.ai = tail call i32 @PyModule_AddStringConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #9
end_hunk_4
begin_hunk_5_@add_features:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyExpat_XML_GetFeatureList() #9 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %Py_DECREF.exit24
  %i.e = add i64 %.02031, 1                       ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02031 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %i.c, i64 %.02031 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.250, ptr noundef %i.j, i64 noundef %i.l) #9 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %select.unfold, label %bb.d
end_hunk_5
begin_hunk_6_@xmlparse_dealloc:bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.l = getelementptr i8, ptr %i.d, i64 8
  %.val.us.i.i = load ptr, ptr %i.l, align 8, !tbaa !73
  tail call void %.val.us.i.i(ptr noundef %i.k, ptr noundef null) #9, !inline_history !133
  %i.m = add i64 %.016.us.i.i, 1                  ; 2 uses
  %i.n = getelementptr [64 x i8], ptr @handler_info, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !46
end_hunk_6
begin_hunk_7_@xmlparse_traverse:bb.a
  %i.h = getelementptr [64 x i8], ptr @handler_info, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !46
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 24
end_hunk_7
begin_hunk_8_@pyexpat_xmlparser_Parse:bb.a
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %5, align 8, !tbaa !135
  %i.s = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %pyexpat_xmlparser_Parse_impl.exit, label %bb.f
end_hunk_8
begin_hunk_9_@pyexpat_xmlparser_Parse:bb.a
  br i1 %i.y, label %pyexpat_xmlparser_Parse_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %5, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !138 ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !32
  br label %bb.i

end_hunk_9
begin_hunk_10_@pyexpat_xmlparser_Parse:bb.a
  %i.ai = add i64 %i.ah, -1048576                 ; 3 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !32
  %i.aj = icmp sgt i64 %i.ai, 1048576
  br i1 %i.aj, label %bb.j, label %._crit_edge.i, !llvm.loop !139

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %.lcssa.i = phi i64 [ %.pr.i, %bb.i ], [ %i.ai, %bb.k ]
end_hunk_10
begin_hunk_11_@pyexpat_xmlparser_Parse:bb.a

.loopexit.i:                                      ; preds = %bb.j, %._crit_edge.i
  %.016.i = phi i32 [ %i.an, %._crit_edge.i ], [ 0, %bb.j ]
  %i.ao = load ptr, ptr %5, align 8, !tbaa !135
  %.not22.i = icmp eq ptr %i.ao, null
  br i1 %.not22.i, label %bb.m, label %bb.l

end_hunk_11
begin_hunk_12_@pyexpat_xmlparser_ParseFile:bb.a

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.m
  %i.ak = getelementptr i8, ptr %i.ad, i64 40
  %.val26.i.i = load ptr, ptr %i.ak, align 8, !tbaa !140
  br label %bb.o

bb.n:                                             ; preds = %PyObject_TypeCheck.exit.i.i
end_hunk_12
begin_hunk_13_@pyexpat_xmlparser_ParseFile:bb.a
  %i.am = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !19
  %.val.i29.i = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr i8, ptr %.val.i29.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142
  %i.ap = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.119, ptr noundef %i.ao) #9 ; 0 uses
  br label %bb.t

end_hunk_13
begin_hunk_14_@pyexpat_xmlparser_ExternalEntityParserCreate:bb.a
  %i.at = getelementptr i8, ptr %i.ag, i64 40
  store i32 0, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !143
  %i.aw = getelementptr i8, ptr %i.ag, i64 44
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !143
  %i.ax = getelementptr i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.az = call ptr @PyExpat_XML_ExternalEntityParserCreate(ptr noundef %i.ay, ptr noundef %.033, ptr noundef %.032) #9
end_hunk_14
begin_hunk_15_@pyexpat_xmlparser_ExternalEntityParserCreate:bb.a
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !46
  %.not62.i = icmp eq ptr %i.cf, null
  %i.cg = add i64 %.057.i, 1
  br i1 %.not62.i, label %bb.ah, label %bb.ag, !llvm.loop !144

bb.ah:                                            ; preds = %bb.ag
  %i.ch = icmp ugt i64 %.057.i, 1152921504606846975
end_hunk_15
begin_hunk_16_@pyexpat_xmlparser_ExternalEntityParserCreate:bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !tbaa !80
  %i.dg = load ptr, ptr %i.ba, align 8, !tbaa !44
  call void %.sroa.3.0.copyload.i(ptr noundef %i.dg, ptr noundef %.sroa.4.0.copyload.i) #9, !inline_history !145
  br label %bb.as

bb.as:                                            ; preds = %_Py_NewRef.exit.i, %bb.ap
end_hunk_16
begin_hunk_17_@pyexpat_xmlparser_ExternalEntityParserCreate:bb.a
  %i.di = getelementptr [64 x i8], ptr @handler_info, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !46
  %.not64.i = icmp eq ptr %i.dj, null
  br i1 %.not64.i, label %._crit_edge.i, label %bb.ap, !llvm.loop !146

pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit: ; preds = %._crit_edge.i, %Py_DECREF.exit.i, %Py_DECREF.exit69.i, %Py_DECREF.exit73.i, %bb.o, %.thread50, %bb.h, %bb.k, %bb.n, %bb.b, %bb.l
  %.034 = phi ptr [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.k ], [ null, %.thread50 ], [ null, %bb.h ], [ %i.cd, %Py_DECREF.exit69.i ], [ %i.bv, %Py_DECREF.exit73.i ], [ null, %bb.o ], [ %i.ag, %._crit_edge.i ], [ %i.cq, %Py_DECREF.exit.i ]
end_hunk_17
begin_hunk_18_@pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold:bb.a
  br i1 %.not19, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.j = load i64, ptr %i.b, align 8, !tbaa !147
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = call zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr noundef %i.l, i64 noundef %i.j) #9, !callees !149, !inline_history !150
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionActivationThreshold_impl.exit, label %bb.d

end_hunk_18
begin_hunk_19_@pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification:bb.a

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val26 = load double, ptr %i.i, align 8, !tbaa !151
  %i.j = fptrunc double %.val26 to float
  br label %bb.f

end_hunk_19
begin_hunk_20_@pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification:bb.a
  %.0 = phi float [ %i.j, %bb.c ], [ -1.000000e+00, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = call zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr noundef %i.p, float noundef %.0) #9, !callees !154, !inline_history !155
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %pyexpat_xmlparser_SetBillionLaughsAttackProtectionMaximumAmplification_impl.exit, label %bb.g

end_hunk_20
begin_hunk_21_@pyexpat_xmlparser_SetAllocTrackerActivationThreshold:bb.a
  br i1 %.not19, label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.j = load i64, ptr %i.b, align 8, !tbaa !147
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = call zeroext i8 @PyExpat_XML_SetAllocTrackerActivationThreshold(ptr noundef %i.l, i64 noundef %i.j) #9, !callees !149, !inline_history !150
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %pyexpat_xmlparser_SetAllocTrackerActivationThreshold_impl.exit, label %bb.d

end_hunk_21
begin_hunk_22_@pyexpat_xmlparser_SetAllocTrackerMaximumAmplification:bb.a

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val26 = load double, ptr %i.i, align 8, !tbaa !151
  %i.j = fptrunc double %.val26 to float
  br label %bb.f

end_hunk_22
begin_hunk_23_@pyexpat_xmlparser_SetAllocTrackerMaximumAmplification:bb.a
  %.0 = phi float [ %i.j, %bb.c ], [ -1.000000e+00, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = call zeroext i8 @PyExpat_XML_SetAllocTrackerMaximumAmplification(ptr noundef %i.p, float noundef %.0) #9, !callees !154, !inline_history !155
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %pyexpat_xmlparser_SetAllocTrackerMaximumAmplification_impl.exit, label %bb.g

end_hunk_23
begin_hunk_24_@pyexpat_xmlparser_GetReparseDeferralEnabled
define internal ptr @pyexpat_xmlparser_GetReparseDeferralEnabled(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load i8, ptr %i.a, align 8, !tbaa !43, !range !156, !noundef !157
  %i.b = zext nneg i8 %.val to i64
  %i.c = tail call ptr @PyBool_FromLong(i64 noundef %i.b) #9
  ret ptr %i.c
end_hunk_24
begin_hunk_25_@xmlparse_namespace_prefixes_getter
define internal ptr @xmlparse_namespace_prefixes_getter(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !143
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #9
  ret ptr %i.d
end_hunk_25
begin_hunk_26_@xmlparse_namespace_prefixes_setter:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 44
  store i32 %i.c, ptr %i.e, align 4, !tbaa !143
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  tail call void @PyExpat_XML_SetReturnNSTriplet(ptr noundef %i.g, i32 noundef %i.c) #9
end_hunk_26
begin_hunk_27_@xmlparse_handler_setter:bb.a
  %i.v = ashr i64 %sext, 32
  %i.w = getelementptr [64 x i8], ptr @handler_info, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !158
  br label %.thread26

.thread26:                                        ; preds = %.thread, %bb.f, %Py_INCREF.exit
end_hunk_27
begin_hunk_28_@xmlparse_handler_setter:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !73
  tail call void %.val(ptr noundef %i.aj, ptr noundef %.1) #9, !inline_history !159
  br label %bb.l

bb.l:                                             ; preds = %flush_character_buffer.exit, %Py_XDECREF.exit, %bb.b
end_hunk_28
begin_hunk_29_@llvm.memset.p0.i64
!90 = !{!84, !27, i64 8}
!91 = distinct !{!91, !50}
!92 = !{!47, !27, i64 24}
!93 = !{!47, !13, i64 56}
!94 = !{!26, !14, i64 264}
!95 = !{!96, !14, i64 24}
!96 = !{!"", !22, i64 0, !12, i64 16, !14, i64 24, !14, i64 32}
!97 = !{!98, !27, i64 0}
!98 = !{!"PyExpat_CAPI", !27, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208}
!99 = !{!98, !13, i64 24}
!100 = !{!98, !13, i64 32}
!101 = !{!98, !13, i64 40}
!102 = !{!98, !13, i64 48}
!103 = !{!98, !13, i64 56}
!104 = !{!98, !13, i64 64}
!105 = !{!98, !13, i64 72}
!106 = !{!98, !13, i64 80}
!107 = !{!98, !13, i64 88}
!108 = !{!98, !13, i64 96}
!109 = !{!98, !13, i64 104}
!110 = !{!98, !13, i64 112}
!111 = !{!98, !13, i64 120}
!112 = !{!98, !13, i64 128}
!113 = !{!98, !13, i64 136}
!114 = !{!98, !13, i64 144}
!115 = !{!98, !13, i64 152}
!116 = !{!98, !13, i64 160}
!117 = !{!98, !13, i64 168}
!118 = !{!98, !13, i64 176}
!119 = !{!98, !13, i64 184}
!120 = !{!98, !13, i64 192}
!121 = !{!98, !13, i64 200}
!122 = !{!98, !13, i64 208}
!123 = !{!124, !27, i64 0}
!124 = !{!"ErrorInfo", !27, i64 0, !27, i64 8}
!125 = !{!124, !27, i64 8}
!126 = distinct !{!126, !50, !127}
!127 = !{!"llvm.loop.peeled.count", i32 1}
!128 = !{!129, !7, i64 0}
!129 = !{!"", !7, i64 0, !27, i64 8, !23, i64 16}
!130 = distinct !{!130, !50}
!131 = !{!129, !27, i64 8}
!132 = !{!129, !23, i64 16}
!133 = distinct !{ptr @xmlparse_clear, null, null}
!134 = distinct !{!134, !50}
!135 = !{!136, !13, i64 0}
!136 = !{!"", !13, i64 0, !14, i64 8, !23, i64 16, !23, i64 24, !7, i64 32, !7, i64 36, !27, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !13, i64 72}
!137 = !{!"p1 long", !13, i64 0}
!138 = !{!136, !23, i64 16}
!139 = distinct !{!139, !50}
!140 = !{!141, !27, i64 40}
!141 = !{!"", !21, i64 0, !23, i64 24, !27, i64 32, !27, i64 40, !23, i64 48, !14, i64 56}
!142 = !{!26, !27, i64 24}
!143 = !{!34, !7, i64 44}
!144 = distinct !{!144, !50}
!145 = distinct !{null, null}
!146 = distinct !{!146, !50}
!147 = !{!148, !148, i64 0}
!148 = !{!"long long", !8, i64 0}
!149 = !{ptr @PyExpat_XML_SetAllocTrackerActivationThreshold, ptr @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold}
!150 = distinct !{null}
!151 = !{!152, !153, i64 16}
!152 = !{!"", !22, i64 0, !153, i64 16}
!153 = !{!"double", !8, i64 0}
!154 = !{ptr @PyExpat_XML_SetAllocTrackerMaximumAmplification, ptr @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification}
!155 = distinct !{null}
!156 = !{i8 0, i8 2}
!157 = !{}
!158 = !{!47, !13, i64 16}
!159 = distinct !{null}
end_hunk_29
