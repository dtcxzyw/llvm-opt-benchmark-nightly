inline.NumInlined: 446
inline.NumDeleted: 84
begin_hunk_0_@_elementtree_XMLParser_feed:bb.a
  %i.am = call i64 %i.ak(ptr noundef %i.al) #11, !inline_history !189
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !192
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !169
  %i.ar = call i64 %i.ap(ptr noundef %i.aq) #11, !inline_history !189
  call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.f, i32 noundef %i.ah, i64 noundef %i.am, i64 noundef %i.ar, ptr noundef null)
  br label %expat_parse.exit.i

expat_parse.exit.i:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_elementtree_XMLParser_feed_impl.exit

bb.h:                                             ; preds = %_check_xmlparser.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.as = call i32 @PyObject_GetBuffer(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #11
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !193 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 2147483647
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @PyBuffer_Release(ptr noundef nonnull %2) #11
  %i.ax = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.117) #11
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !196
  %i.az = trunc i64 %i.av to i32
  %i.ba = getelementptr i8, ptr %i.f, i64 144     ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !188
  %i.be = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !169
  %i.bg = call i32 %i.bd(ptr noundef %i.bf, ptr noundef %i.ay, i32 noundef %i.az, i32 noundef 0) #11, !inline_history !189
  %i.bh = call ptr @PyErr_Occurred() #11
  %.not.i21.i = icmp eq ptr %i.bh, null
  br i1 %.not.i21.i, label %bb.l, label %expat_parse.exit24.i

bb.l:                                             ; preds = %bb.k
  %.not13.i23.i = icmp eq i32 %i.bg, 0
  br i1 %.not13.i23.i, label %bb.m, label %expat_parse.exit24.i

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !190
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !169
  %i.bm = call i32 %i.bk(ptr noundef %i.bl) #11, !inline_history !189
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bo = getelementptr i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !191
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !169
  %i.br = call i64 %i.bp(ptr noundef %i.bq) #11, !inline_history !189
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bt = getelementptr i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !192
  %i.bv = load ptr, ptr %i.be, align 8, !tbaa !169
  %i.bw = call i64 %i.bu(ptr noundef %i.bv) #11, !inline_history !189
  call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.f, i32 noundef %i.bm, i64 noundef %i.br, i64 noundef %i.bw, ptr noundef null)
  br label %expat_parse.exit24.i

expat_parse.exit24.i:                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i22.i = phi ptr [ null, %bb.m ], [ null, %bb.k ], [ @_Py_NoneStruct, %bb.l ]
  call void @PyBuffer_Release(ptr noundef nonnull %2) #11
  br label %bb.n

bb.n:                                             ; preds = %expat_parse.exit24.i, %bb.j, %bb.h
  %.1.i = phi ptr [ %.0.i22.i, %expat_parse.exit24.i ], [ null, %bb.j ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_elementtree_XMLParser_feed_impl.exit

_elementtree_XMLParser_feed_impl.exit:            ; preds = %_check_xmlparser.exit.thread.i, %expat_parse.exit.i, %bb.n
  %.3.i = phi ptr [ null, %_check_xmlparser.exit.thread.i ], [ %.0.i, %expat_parse.exit.i ], [ %.1.i, %bb.n ]
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_XMLParser_close(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val21.i = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.b = icmp eq ptr %.val21.i, null
  br i1 %i.b, label %_check_xmlparser.exit.thread.i, label %_check_xmlparser.exit.i

_check_xmlparser.exit.thread.i:                   ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.119) #11
  br label %_elementtree_XMLParser_close_impl.exit

_check_xmlparser.exit.i:                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144      ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.j = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.l = tail call i32 %i.i(ptr noundef %i.k, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef 1) #11, !inline_history !197
  %i.m = tail call ptr @PyErr_Occurred() #11
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %bb.b, label %_elementtree_XMLParser_close_impl.exit

bb.b:                                             ; preds = %_check_xmlparser.exit.i
  %.not13.i.i = icmp eq i32 %i.l, 0
  br i1 %.not13.i.i, label %bb.c, label %expat_parse.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.r = tail call i32 %i.p(ptr noundef %i.q) #11, !inline_history !197
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.w = tail call i64 %i.u(ptr noundef %i.v) #11, !inline_history !197
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.ab = tail call i64 %i.z(ptr noundef %i.aa) #11, !inline_history !197
  tail call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.e, i32 noundef %i.r, i64 noundef %i.w, i64 noundef %i.ab, ptr noundef null)
  br label %_elementtree_XMLParser_close_impl.exit

expat_parse.exit.i:                               ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.ad = getelementptr i8, ptr %i.e, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !30
  %.not.i = icmp eq ptr %.val.i, %i.ae
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %expat_parse.exit.i
  %i.ag = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !26 ; 2 uses
  %.not.i18.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i18.i, label %bb.e, label %Py_DECREF.exit19.i

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr @_Py_NoneStruct, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %Py_DECREF.exit19.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit19.i

Py_DECREF.exit19.i:                               ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val22.i = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  %.not.i25.i = icmp eq ptr %.val22.i, null
  %_Py_NoneStruct..i.i = select i1 %.not.i25.i, ptr @_Py_NoneStruct, ptr %.val22.i ; 4 uses
  %i.al = load i32, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_elementtree_XMLParser_close_impl.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit19.i
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26
  br label %_elementtree_XMLParser_close_impl.exit

bb.h:                                             ; preds = %expat_parse.exit.i
  %i.ao = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !155
  %.not17.i = icmp eq ptr %i.ap, null
  br i1 %.not17.i, label %_elementtree_XMLParser_close_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i.i, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr @_Py_NoneStruct, align 8, !tbaa !26
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %Py_DECREF.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !155
  %i.au = tail call ptr @PyObject_CallNoArgs(ptr noundef %i.at) #11
  br label %_elementtree_XMLParser_close_impl.exit

_elementtree_XMLParser_close_impl.exit:           ; preds = %_check_xmlparser.exit.thread.i, %_check_xmlparser.exit.i, %bb.c, %Py_DECREF.exit19.i, %bb.g, %bb.h, %Py_DECREF.exit.i
  %.1.i = phi ptr [ null, %_check_xmlparser.exit.thread.i ], [ null, %_check_xmlparser.exit.i ], [ %i.au, %Py_DECREF.exit.i ], [ @_Py_NoneStruct, %bb.h ], [ null, %bb.c ], [ %_Py_NoneStruct..i.i, %Py_DECREF.exit19.i ], [ %_Py_NoneStruct..i.i, %bb.g ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_XMLParser_flush(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %_check_xmlparser.exit.thread.i, label %_check_xmlparser.exit.i

_check_xmlparser.exit.thread.i:                   ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.119) #11
  br label %_elementtree_XMLParser_flush_impl.exit

_check_xmlparser.exit.i:                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144      ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_elementtree_XMLParser_flush_impl.exit, label %bb.b

bb.b:                                             ; preds = %_check_xmlparser.exit.i
  %i.k = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.m = tail call zeroext i8 %i.i(ptr noundef %i.l, i8 noundef zeroext 0) #11, !inline_history !199 ; 0 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.o = getelementptr i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !188
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.r = tail call i32 %i.p(ptr noundef %i.q, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef 0) #11, !inline_history !200
  %i.s = tail call ptr @PyErr_Occurred() #11
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.c, label %expat_parse.exit.i

bb.c:                                             ; preds = %bb.b
  %.not13.i.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i.i, label %bb.d, label %expat_parse.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !190
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.x = tail call i32 %i.v(ptr noundef %i.w) #11, !inline_history !200
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !191
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.ac = tail call i64 %i.aa(ptr noundef %i.ab) #11, !inline_history !200
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !192
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.ah = tail call i64 %i.af(ptr noundef %i.ag) #11, !inline_history !200
  tail call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.e, i32 noundef %i.x, i64 noundef %i.ac, i64 noundef %i.ah, ptr noundef null)
  br label %expat_parse.exit.i

expat_parse.exit.i:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i12.i = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ @_Py_NoneStruct, %bb.c ]
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.aj = getelementptr i8, ptr %i.ai, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.am = tail call zeroext i8 %i.ak(ptr noundef %i.al, i8 noundef zeroext 1) #11, !inline_history !199 ; 0 uses
  br label %_elementtree_XMLParser_flush_impl.exit

_elementtree_XMLParser_flush_impl.exit:           ; preds = %_check_xmlparser.exit.thread.i, %_check_xmlparser.exit.i, %expat_parse.exit.i
  %.1.i = phi ptr [ null, %_check_xmlparser.exit.thread.i ], [ %.0.i12.i, %expat_parse.exit.i ], [ @_Py_NoneStruct, %_check_xmlparser.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_XMLParser__parse_whole(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val90.i = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.b = icmp eq ptr %.val90.i, null
  br i1 %i.b, label %_check_xmlparser.exit.thread.i, label %_check_xmlparser.exit.i

_check_xmlparser.exit.thread.i:                   ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.119) #11
  br label %_elementtree_XMLParser__parse_whole_impl.exit

_check_xmlparser.exit.i:                          ; preds = %bb.a
  %i.d = tail call ptr @PyObject_GetAttrString(ptr noundef %1, ptr noundef nonnull @.str.124) #11 ; 18 uses
  %.not45.i = icmp eq ptr %i.d, null
  br i1 %.not45.i, label %_elementtree_XMLParser__parse_whole_impl.exit, label %bb.b

bb.b:                                             ; preds = %_check_xmlparser.exit.i
  %i.e = getelementptr i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 4 uses
  %i.g = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.125, i32 noundef 65536) #11 ; 2 uses
  %.not46112.i = icmp eq ptr %i.g, null
  br i1 %.not46112.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 144      ; 8 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 8 uses
  br label %bb.e

._crit_edge.i:                                    ; preds = %Py_DECREF.exit56.i, %bb.b
  %i.j = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not.i73.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i73.i, label %bb.c, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %_elementtree_XMLParser__parse_whole_impl.exit

bb.e:                                             ; preds = %Py_DECREF.exit56.i, %.lr.ph.i
  %i.m = phi ptr [ %i.g, %.lr.ph.i ], [ %i.bt, %Py_DECREF.exit56.i ] ; 13 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val87.i = load ptr, ptr %i.n, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %.val87.i, @PyUnicode_Type
  br i1 %.not.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %.val91.i = load i64, ptr %i.o, align 8, !tbaa !143
  %i.p = icmp eq i64 %.val91.i, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i71.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i71.i, label %bb.h, label %Py_DECREF.exit72.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.m, align 8, !tbaa !26
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit72.sink.split.i, label %Py_DECREF.exit72.i

bb.i:                                             ; preds = %bb.f
  %i.t = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.126) #11 ; 3 uses
  %i.u = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i69.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i69.i, label %bb.j, label %Py_DECREF.exit70.i

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.m, align 8, !tbaa !26
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %Py_DECREF.exit70.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #11
  br label %Py_DECREF.exit70.i

Py_DECREF.exit70.i:                               ; preds = %bb.k, %bb.j, %bb.i
  %.not49.i = icmp eq ptr %i.t, null
  br i1 %.not49.i, label %bb.l, label %Py_DECREF.exit70._crit_edge.i

Py_DECREF.exit70._crit_edge.i:                    ; preds = %Py_DECREF.exit70.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.t, i64 16
  %.039.val88.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !105
  br label %bb.s

bb.l:                                             ; preds = %Py_DECREF.exit70.i
  %i.x = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not.i67.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i67.i, label %bb.m, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !26
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %_elementtree_XMLParser__parse_whole_impl.exit

bb.o:                                             ; preds = %bb.e
  %.not104.i = icmp eq ptr %.val87.i, @PyBytes_Type
  br i1 %.not104.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr i8, ptr %i.m, i64 16
  %.val89.i = load i64, ptr %i.aa, align 8, !tbaa !105 ; 2 uses
  %i.ab = icmp eq i64 %.val89.i, 0
  br i1 %i.ab, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i65.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i65.i, label %bb.r, label %Py_DECREF.exit72.i

end_hunk_0
begin_hunk_1_@_elementtree_XMLParser__parse_whole:bb.a
  %.not.i61.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i61.i, label %bb.w, label %Py_DECREF.exit62.i

bb.w:                                             ; preds = %Py_DECREF.exit64.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !26
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.x, label %Py_DECREF.exit62.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %Py_DECREF.exit62.i

Py_DECREF.exit62.i:                               ; preds = %bb.x, %bb.w, %Py_DECREF.exit64.i
  %i.am = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.117) #11
  br label %_elementtree_XMLParser__parse_whole_impl.exit

bb.y:                                             ; preds = %bb.s
  %i.an = getelementptr i8, ptr %.039.i, i64 32
  %i.ao = trunc i64 %.039.val88.i to i32
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !188
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.at = tail call i32 %i.ar(ptr noundef %i.as, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef 0) #11, !inline_history !201
  %i.au = tail call ptr @PyErr_Occurred() #11
  %.not.i93.i = icmp eq ptr %i.au, null
  br i1 %.not.i93.i, label %bb.z, label %expat_parse.exit.i

bb.z:                                             ; preds = %bb.y
  %.not13.i.i = icmp eq i32 %i.at, 0
  br i1 %.not13.i.i, label %bb.aa, label %expat_parse.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !190
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.az = tail call i32 %i.ax(ptr noundef %i.ay) #11, !inline_history !201
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.bb = getelementptr i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !191
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.be = tail call i64 %i.bc(ptr noundef %i.bd) #11, !inline_history !201
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.bg = getelementptr i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !192
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.bj = tail call i64 %i.bh(ptr noundef %i.bi) #11, !inline_history !201
  tail call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.f, i32 noundef %i.az, i64 noundef %i.be, i64 noundef %i.bj, ptr noundef null)
  br label %expat_parse.exit.i

expat_parse.exit.i:                               ; preds = %bb.aa, %bb.z, %bb.y
  %.not50.i = phi i1 [ true, %bb.aa ], [ true, %bb.y ], [ false, %bb.z ]
  %.0.i94.i = phi ptr [ null, %bb.aa ], [ null, %bb.y ], [ @_Py_NoneStruct, %bb.z ] ; 3 uses
  %i.bk = load i32, ptr %.039.i, align 8, !tbaa !26 ; 2 uses
  %.not.i59.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i59.i, label %bb.ab, label %Py_DECREF.exit60.i

bb.ab:                                            ; preds = %expat_parse.exit.i
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.039.i, align 8, !tbaa !26
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ac, label %Py_DECREF.exit60.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.039.i) #11
  br label %Py_DECREF.exit60.i

Py_DECREF.exit60.i:                               ; preds = %bb.ac, %bb.ab, %expat_parse.exit.i
  br i1 %.not50.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %Py_DECREF.exit60.i
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %.not.i57.i = icmp sgt i32 %i.bn, -1
  br i1 %.not.i57.i, label %bb.ae, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !26
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.af, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %_elementtree_XMLParser__parse_whole_impl.exit

bb.ag:                                            ; preds = %Py_DECREF.exit60.i
  %i.bq = load i32, ptr %.0.i94.i, align 8, !tbaa !26 ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i55.i, label %bb.ah, label %Py_DECREF.exit56.i

bb.ah:                                            ; preds = %bb.ag
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %.0.i94.i, align 8, !tbaa !26
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ai, label %Py_DECREF.exit56.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i94.i) #11
  br label %Py_DECREF.exit56.i

Py_DECREF.exit56.i:                               ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.bt = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.125, i32 noundef 65536) #11 ; 2 uses
  %.not46.i = icmp eq ptr %i.bt, null
  br i1 %.not46.i, label %._crit_edge.i, label %bb.e

Py_DECREF.exit72.sink.split.i:                    ; preds = %bb.r, %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #11
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %Py_DECREF.exit72.sink.split.i, %bb.r, %bb.q, %bb.h, %bb.g
  %i.bu = load i32, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %.not.i53.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i53.i, label %bb.aj, label %Py_DECREF.exit54.i

bb.aj:                                            ; preds = %Py_DECREF.exit72.i
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.d, align 8, !tbaa !26
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ak, label %Py_DECREF.exit54.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %Py_DECREF.exit54.i

Py_DECREF.exit54.i:                               ; preds = %bb.ak, %bb.aj, %Py_DECREF.exit72.i
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.by = getelementptr i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !188
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.cb = tail call i32 %i.bz(ptr noundef %i.ca, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef 1) #11, !inline_history !201
  %i.cc = tail call ptr @PyErr_Occurred() #11
  %.not.i95.i = icmp eq ptr %i.cc, null
  br i1 %.not.i95.i, label %bb.al, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.al:                                            ; preds = %Py_DECREF.exit54.i
  %.not13.i97.i = icmp eq i32 %i.cb, 0
  br i1 %.not13.i97.i, label %bb.am, label %expat_parse.exit98.i

bb.am:                                            ; preds = %bb.al
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !190
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.ch = tail call i32 %i.cf(ptr noundef %i.cg) #11, !inline_history !201
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.cj = getelementptr i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !191
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.cm = tail call i64 %i.ck(ptr noundef %i.cl) #11, !inline_history !201
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.co = getelementptr i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !192
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.cr = tail call i64 %i.cp(ptr noundef %i.cq) #11, !inline_history !201
  tail call fastcc void @expat_set_error(ptr noundef nonnull readonly %i.f, i32 noundef %i.ch, i64 noundef %i.cm, i64 noundef %i.cr, ptr noundef null)
  br label %_elementtree_XMLParser__parse_whole_impl.exit

expat_parse.exit98.i:                             ; preds = %bb.al
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.ct = getelementptr i8, ptr %i.f, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !22
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %.val.i = load ptr, ptr %i.cv, align 8, !tbaa !30
  %.not105.i = icmp eq ptr %.val.i, %i.cu
  br i1 %.not105.i, label %bb.an, label %_elementtree_XMLParser__parse_whole_impl.exit

bb.an:                                            ; preds = %expat_parse.exit98.i
  %i.cw = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i.i, label %bb.ao, label %Py_DECREF.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr @_Py_NoneStruct, align 8, !tbaa !26
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ap, label %Py_DECREF.exit.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.ap, %bb.ao, %bb.an
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %.val92.i = load ptr, ptr %i.da, align 8, !tbaa !96 ; 2 uses
  %.not.i99.i = icmp eq ptr %.val92.i, null
  %_Py_NoneStruct..i.i = select i1 %.not.i99.i, ptr @_Py_NoneStruct, ptr %.val92.i ; 4 uses
  %i.db = load i32, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26 ; 2 uses
  %i.dc = icmp ugt i32 %i.db, -1073741825
  br i1 %i.dc, label %_elementtree_XMLParser__parse_whole_impl.exit, label %bb.aq

bb.aq:                                            ; preds = %Py_DECREF.exit.i
  %i.dd = add nuw i32 %i.db, 1
  store i32 %i.dd, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26
  br label %_elementtree_XMLParser__parse_whole_impl.exit

_elementtree_XMLParser__parse_whole_impl.exit:    ; preds = %_check_xmlparser.exit.thread.i, %_check_xmlparser.exit.i, %._crit_edge.i, %bb.c, %bb.d, %bb.l, %bb.m, %bb.n, %Py_DECREF.exit62.i, %bb.ad, %bb.ae, %bb.af, %Py_DECREF.exit54.i, %bb.am, %expat_parse.exit98.i, %Py_DECREF.exit.i, %bb.aq
  %.1.i = phi ptr [ null, %_check_xmlparser.exit.i ], [ null, %_check_xmlparser.exit.thread.i ], [ null, %Py_DECREF.exit54.i ], [ null, %bb.af ], [ null, %Py_DECREF.exit62.i ], [ null, %bb.n ], [ null, %bb.d ], [ @_Py_NoneStruct, %expat_parse.exit98.i ], [ null, %._crit_edge.i ], [ null, %bb.c ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.am ], [ %_Py_NoneStruct..i.i, %Py_DECREF.exit.i ], [ %_Py_NoneStruct..i.i, %bb.aq ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_XMLParser__setevents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.115, i64 noundef %2, i64 noundef 1, i64 noundef 2) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_elementtree_XMLParser__setevents_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !25
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val167.i = load ptr, ptr %i.g, align 8, !tbaa !166 ; 9 uses
  %i.h = icmp eq ptr %.val167.i, null
  br i1 %i.h, label %_check_xmlparser.exit.thread.i, label %_check_xmlparser.exit.i

_check_xmlparser.exit.thread.i:                   ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.119) #11
  br label %_elementtree_XMLParser__setevents_impl.exit

_check_xmlparser.exit.i:                          ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %.val167.i, i64 8
  %.val164.i = load ptr, ptr %i.n, align 8, !tbaa !30
  %.not.i = icmp eq ptr %.val164.i, %i.m
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_check_xmlparser.exit.i
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.127) #11
  br label %_elementtree_XMLParser__setevents_impl.exit

bb.g:                                             ; preds = %_check_xmlparser.exit.i
  %i.p = tail call ptr @PyObject_GetAttrString(ptr noundef %i.c, ptr noundef nonnull @.str.19) #11 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_elementtree_XMLParser__setevents_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.val167.i, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 4 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !25
  %.not.i168.i = icmp eq ptr %i.s, null
  br i1 %.not.i168.i, label %Py_XDECREF.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.j, label %Py_XDECREF.exit.i

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #11
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.w = getelementptr i8, ptr %.val167.i, i64 104 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 4 uses
  %.not122.i = icmp eq ptr %i.x, null
  br i1 %.not122.i, label %Py_DECREF.exit148.i, label %bb.l

bb.l:                                             ; preds = %Py_XDECREF.exit.i
  store ptr null, ptr %i.w, align 8, !tbaa !25
  %i.y = load i32, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %.not.i147.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i147.i, label %bb.m, label %Py_DECREF.exit148.i

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !26
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %Py_DECREF.exit148.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #11
  br label %Py_DECREF.exit148.i

Py_DECREF.exit148.i:                              ; preds = %bb.n, %bb.m, %bb.l, %Py_XDECREF.exit.i
  %i.ab = getelementptr i8, ptr %.val167.i, i64 112 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 4 uses
  %.not123.i = icmp eq ptr %i.ac, null
  br i1 %.not123.i, label %Py_DECREF.exit146.i, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit148.i
  store ptr null, ptr %i.ab, align 8, !tbaa !25
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not.i145.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i145.i, label %bb.p, label %Py_DECREF.exit146.i

bb.p:                                             ; preds = %bb.o
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %Py_DECREF.exit146.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #11
  br label %Py_DECREF.exit146.i

Py_DECREF.exit146.i:                              ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit148.i
  %i.ag = getelementptr i8, ptr %.val167.i, i64 120 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 4 uses
  %.not124.i = icmp eq ptr %i.ah, null
  br i1 %.not124.i, label %Py_DECREF.exit144.i, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit146.i
  store ptr null, ptr %i.ag, align 8, !tbaa !25
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not.i143.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i143.i, label %bb.s, label %Py_DECREF.exit144.i

bb.s:                                             ; preds = %bb.r
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !26
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %Py_DECREF.exit144.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #11
  br label %Py_DECREF.exit144.i

Py_DECREF.exit144.i:                              ; preds = %bb.t, %bb.s, %bb.r, %Py_DECREF.exit146.i
  %i.al = getelementptr i8, ptr %.val167.i, i64 128 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25 ; 4 uses
  %.not125.i = icmp eq ptr %i.am, null
  br i1 %.not125.i, label %Py_DECREF.exit142.i, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit144.i
  store ptr null, ptr %i.al, align 8, !tbaa !25
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.not.i141.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i141.i, label %bb.v, label %Py_DECREF.exit142.i

bb.v:                                             ; preds = %bb.u
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !26
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.w, label %Py_DECREF.exit142.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.am) #11
  br label %Py_DECREF.exit142.i

Py_DECREF.exit142.i:                              ; preds = %bb.w, %bb.v, %bb.u, %Py_DECREF.exit144.i
  %i.aq = getelementptr i8, ptr %.val167.i, i64 136 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 4 uses
  %.not126.i = icmp eq ptr %i.ar, null
  br i1 %.not126.i, label %Py_DECREF.exit140.i, label %bb.x

bb.x:                                             ; preds = %Py_DECREF.exit142.i
  store ptr null, ptr %i.aq, align 8, !tbaa !25
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not.i139.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i139.i, label %bb.y, label %Py_DECREF.exit140.i

bb.y:                                             ; preds = %bb.x
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !26
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.z, label %Py_DECREF.exit140.i

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #11
  br label %Py_DECREF.exit140.i

Py_DECREF.exit140.i:                              ; preds = %bb.z, %bb.y, %bb.x, %Py_DECREF.exit142.i
  %i.av = getelementptr i8, ptr %.val167.i, i64 144 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %.not127.i = icmp eq ptr %i.aw, null
  br i1 %.not127.i, label %Py_DECREF.exit138.i, label %bb.aa

bb.aa:                                            ; preds = %Py_DECREF.exit140.i
  store ptr null, ptr %i.av, align 8, !tbaa !25
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %.not.i137.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i137.i, label %bb.ab, label %Py_DECREF.exit138.i
end_hunk_1
