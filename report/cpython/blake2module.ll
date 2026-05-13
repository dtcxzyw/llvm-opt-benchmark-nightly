inline.NumInlined: 63
inline.NumDeleted: 30
begin_hunk_0_@blake2_exec:bb.a
bb.am:                                            ; preds = %bb.al
  %i.ct = tail call i32 @PyDict_SetItemString(ptr noundef %i.bv, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.cr) #5
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp sgt i32 %i.cu, -1
  br i1 %.not.i, label %bb.an, label %Py_DECREF.exit

bb.an:                                            ; preds = %bb.am
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.cr, align 8, !tbaa !22
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.am, %bb.an, %bb.ao
  %i.cx = icmp sgt i32 %i.ct, -1
  br i1 %i.cx, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %Py_DECREF.exit
  %i.cy = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef 8) #5
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.da = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef 8) #5
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i64 noundef 32) #5
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.de = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef 32) #5
  %.lobit = ashr i32 %i.de, 31
  br label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit130, %Py_DECREF.exit128, %Py_DECREF.exit126, %Py_DECREF.exit124, %Py_DECREF.exit122, %Py_DECREF.exit120, %Py_DECREF.exit118, %Py_DECREF.exit, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.d, %bb.h, %bb.l, %bb.p, %bb.z, %bb.ad, %bb.ah, %bb.al, %bb.c, %bb.b, %bb.a
  %.17 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.l ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.ah ], [ -1, %bb.ap ], [ -1, %bb.aq ], [ %.lobit, %bb.as ], [ -1, %bb.ar ], [ -1, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit118 ], [ -1, %Py_DECREF.exit120 ], [ -1, %Py_DECREF.exit122 ], [ -1, %Py_DECREF.exit124 ], [ -1, %Py_DECREF.exit126 ], [ -1, %Py_DECREF.exit128 ], [ -1, %Py_DECREF.exit130 ], [ -1, %bb.ad ], [ -1, %bb.d ], [ -1, %bb.h ], [ -1, %bb.y ], [ -1, %bb.p ], [ -1, %bb.z ], [ -1, %bb.al ]
  ret i32 %.17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @py_blake2_clear(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 5 uses
  %.not19 = icmp eq ptr %i.d, null                ; 4 uses
  switch i32 %i.b, label %bb.j [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_free(ptr noundef nonnull %i.d) #5
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_free(ptr noundef nonnull %i.d) #5
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef nonnull %i.d) #5
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2s_free(ptr noundef nonnull %i.d) #5
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  unreachable

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.i
  store ptr null, ptr %i.c, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %bb.f, %bb.d, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @py_blake2_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #5
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %.not19.i = icmp eq ptr %i.e, null              ; 4 uses
  switch i32 %i.c, label %bb.j [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not19.i, label %py_blake2_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_free(ptr noundef nonnull %i.e) #5
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  br i1 %.not19.i, label %py_blake2_clear.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_free(ptr noundef nonnull %i.e) #5
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not19.i, label %py_blake2_clear.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef nonnull %i.e) #5
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.a
  br i1 %.not19.i, label %py_blake2_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2s_free(ptr noundef nonnull %i.e) #5
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.a
  unreachable

.sink.split.i:                                    ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !22
  br label %py_blake2_clear.exit

py_blake2_clear.exit:                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %.sink.split.i
  %i.f = getelementptr i8, ptr %.val, i64 320
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  tail call void %i.g(ptr noundef nonnull %0) #5
  %i.h = load i32, ptr %.val, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %py_blake2_clear.exit
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %.val, align 8, !tbaa !22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %py_blake2_clear.exit, %bb.k, %bb.l
  ret void
}

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @py_blake2b_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [14 x ptr], align 16              ; 3 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val168 = load i64, ptr %i.e, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val168, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %i.f, %.val                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !46
  %i.h = icmp ult i64 %.val, 2
  %or.cond3 = select i1 %.not, i1 %i.h, i1 false
  %i.i = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.j = icmp ne ptr %i.i, null
  %or.cond7 = and i1 %i.j, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.i, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @py_blake2b_new._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not127 = icmp eq ptr %i.k, null
  br i1 %.not127, label %py_blake2b_new_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ] ; 14 uses
  %.not128 = icmp eq i64 %i.g, 0
  br i1 %.not128, label %.thread208, label %bb.e

.thread208:                                       ; preds = %.thread
  %i.m = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.ay

bb.e:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !48   ; 4 uses
  %.not129 = icmp eq ptr %i.n, null
  br i1 %.not129, label %.thread175, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %i.g, -1                         ; 2 uses
  %.not130 = icmp eq i64 %i.o, 0
  br i1 %.not130, label %bb.av, label %.thread175

.thread175:                                       ; preds = %bb.e, %bb.f
  %.093179 = phi i64 [ %i.o, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %.not131 = icmp eq ptr %i.q, null
  br i1 %.not131, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread175
  %i.r = call i32 @PyLong_AsInt(ptr noundef nonnull %i.q) #5 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @PyErr_Occurred() #5
  %.not132 = icmp eq ptr %i.t, null
  br i1 %.not132, label %bb.i, label %py_blake2b_new_impl.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = add i64 %.093179, -1                     ; 2 uses
  %.not133 = icmp eq i64 %i.u, 0
  br i1 %.not133, label %bb.av, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread175
  %.194 = phi i64 [ %i.u, %bb.i ], [ %.093179, %.thread175 ] ; 2 uses
  %.090 = phi i32 [ %i.r, %bb.i ], [ 64, %.thread175 ] ; 12 uses
  %i.v = getelementptr i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %.not134 = icmp eq ptr %i.w, null
  br i1 %.not134, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.w, ptr noundef nonnull %3, i32 noundef 0) #5
  %.not135 = icmp eq i32 %i.x, 0
  br i1 %.not135, label %bb.l, label %py_blake2b_new_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.194, -1                        ; 2 uses
  %.not136 = icmp eq i64 %i.y, 0
  br i1 %.not136, label %bb.av, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i64 [ %i.y, %bb.l ], [ %.194, %bb.j ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.l, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %.not137 = icmp eq ptr %i.aa, null
  br i1 %.not137, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.aa, ptr noundef nonnull %4, i32 noundef 0) #5
  %.not138 = icmp eq i32 %i.ab, 0
  br i1 %.not138, label %bb.o, label %py_blake2b_new_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.ac = add i64 %.2, -1                         ; 2 uses
  %.not139 = icmp eq i64 %i.ac, 0
  br i1 %.not139, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.3 = phi i64 [ %i.ac, %bb.o ], [ %.2, %bb.m ]  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.l, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not140 = icmp eq ptr %i.ae, null
  br i1 %.not140, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.ae, ptr noundef nonnull %5, i32 noundef 0) #5
  %.not141 = icmp eq i32 %i.af, 0
  br i1 %.not141, label %bb.r, label %py_blake2b_new_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.ag = add i64 %.3, -1                         ; 2 uses
  %.not142 = icmp eq i64 %i.ag, 0
  br i1 %.not142, label %bb.av, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.4 = phi i64 [ %i.ag, %bb.r ], [ %.3, %bb.p ]  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %.not143 = icmp eq ptr %i.ai, null
  br i1 %.not143, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ai) #5 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = call ptr @PyErr_Occurred() #5
  %.not144 = icmp eq ptr %i.al, null
  br i1 %.not144, label %bb.v, label %py_blake2b_new_impl.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.am = add i64 %.4, -1                         ; 2 uses
  %.not145 = icmp eq i64 %i.am, 0
  br i1 %.not145, label %bb.av, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.5 = phi i64 [ %i.am, %bb.v ], [ %.4, %bb.s ]  ; 2 uses
  %.088 = phi i32 [ %i.aj, %bb.v ], [ 1, %bb.s ]  ; 8 uses
  %i.an = getelementptr i8, ptr %i.l, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48 ; 2 uses
  %.not146 = icmp eq ptr %i.ao, null
  br i1 %.not146, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ao) #5 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ar = call ptr @PyErr_Occurred() #5
  %.not147 = icmp eq ptr %i.ar, null
  br i1 %.not147, label %bb.z, label %py_blake2b_new_impl.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.as = add i64 %.5, -1                         ; 2 uses
  %.not148 = icmp eq i64 %i.as, 0
  br i1 %.not148, label %bb.av, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.6 = phi i64 [ %i.as, %bb.z ], [ %.5, %bb.w ]  ; 2 uses
  %.086 = phi i32 [ %i.ap, %bb.z ], [ 1, %bb.w ]  ; 7 uses
  %i.at = getelementptr i8, ptr %i.l, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not149 = icmp eq ptr %i.au, null
  br i1 %.not149, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = call i32 @_PyLong_UnsignedLong_Converter(ptr noundef nonnull %i.au, ptr noundef nonnull %i.b) #5
  %.not150 = icmp eq i32 %i.av, 0
  br i1 %.not150, label %py_blake2b_new_impl.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = add i64 %.6, -1                         ; 2 uses
  %.not151 = icmp eq i64 %i.aw, 0
  br i1 %.not151, label %bb.av, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7 = phi i64 [ %i.aw, %bb.ac ], [ %.6, %bb.aa ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %.not152 = icmp eq ptr %i.ay, null
  br i1 %.not152, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.az = call i32 @_PyLong_UnsignedLongLong_Converter(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.c) #5
  %.not153 = icmp eq i32 %i.az, 0
  br i1 %.not153, label %py_blake2b_new_impl.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ba = add i64 %.7, -1                         ; 2 uses
  %.not154 = icmp eq i64 %i.ba, 0
  br i1 %.not154, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.8 = phi i64 [ %i.ba, %bb.af ], [ %.7, %bb.ad ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.l, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48 ; 2 uses
  %.not155 = icmp eq ptr %i.bc, null
  br i1 %.not155, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bc) #5 ; 3 uses
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bf = call ptr @PyErr_Occurred() #5
  %.not156 = icmp eq ptr %i.bf, null
  br i1 %.not156, label %bb.aj, label %py_blake2b_new_impl.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bg = add i64 %.8, -1                         ; 2 uses
  %.not157 = icmp eq i64 %i.bg, 0
  br i1 %.not157, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.9 = phi i64 [ %i.bg, %bb.aj ], [ %.8, %bb.ag ] ; 2 uses
  %.084 = phi i32 [ %i.bd, %bb.aj ], [ 0, %bb.ag ] ; 4 uses
  %i.bh = getelementptr i8, ptr %i.l, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not158 = icmp eq ptr %i.bi, null
  br i1 %.not158, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bi) #5 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bl = call ptr @PyErr_Occurred() #5
  %.not159 = icmp eq ptr %i.bl, null
  br i1 %.not159, label %bb.an, label %py_blake2b_new_impl.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bm = add i64 %.9, -1                         ; 2 uses
  %.not160 = icmp eq i64 %i.bm, 0
  br i1 %.not160, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.10 = phi i64 [ %i.bm, %bb.an ], [ %.9, %bb.ak ] ; 2 uses
  %.082 = phi i32 [ %i.bj, %bb.an ], [ 0, %bb.ak ] ; 3 uses
  %i.bn = getelementptr i8, ptr %i.l, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %.not161 = icmp eq ptr %i.bo, null
  br i1 %.not161, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bp = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bo) #5 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %py_blake2b_new_impl.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.br = add i64 %.10, -1                        ; 2 uses
  %.not162 = icmp eq i64 %i.br, 0
  br i1 %.not162, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.11 = phi i64 [ %i.br, %bb.aq ], [ %.10, %bb.ao ]
  %.080 = phi i32 [ %i.bp, %bb.aq ], [ 0, %bb.ao ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.l, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %.not163 = icmp eq ptr %i.bt, null
  br i1 %.not163, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bu = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bt) #5
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %py_blake2b_new_impl.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = icmp ugt i64 %.11, 1
  br i1 %i.bw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.bx = getelementptr i8, ptr %i.l, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !48
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.aq, %bb.an, %bb.aj, %bb.af, %bb.ac, %bb.z, %bb.v, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.au
  %.191 = phi i32 [ %.090, %bb.au ], [ %.090, %bb.at ], [ %.090, %bb.aq ], [ %.090, %bb.an ], [ %.090, %bb.aj ], [ %.090, %bb.af ], [ %.090, %bb.ac ], [ %.090, %bb.z ], [ %.090, %bb.v ], [ %.090, %bb.r ], [ %.090, %bb.o ], [ %.090, %bb.l ], [ %i.r, %bb.i ], [ 64, %bb.f ] ; 3 uses
  %.189 = phi i32 [ %.088, %bb.au ], [ %.088, %bb.at ], [ %.088, %bb.aq ], [ %.088, %bb.an ], [ %.088, %bb.aj ], [ %.088, %bb.af ], [ %.088, %bb.ac ], [ %.088, %bb.z ], [ %i.aj, %bb.v ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.187 = phi i32 [ %.086, %bb.au ], [ %.086, %bb.at ], [ %.086, %bb.aq ], [ %.086, %bb.an ], [ %.086, %bb.aj ], [ %.086, %bb.af ], [ %.086, %bb.ac ], [ %i.ap, %bb.z ], [ 1, %bb.v ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.185 = phi i32 [ %.084, %bb.au ], [ %.084, %bb.at ], [ %.084, %bb.aq ], [ %.084, %bb.an ], [ %i.bd, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.183 = phi i32 [ %.082, %bb.au ], [ %.082, %bb.at ], [ %.082, %bb.aq ], [ %i.bj, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.181 = phi i32 [ %.080, %bb.au ], [ %.080, %bb.at ], [ %i.bp, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.0 = phi ptr [ %i.by, %bb.au ], [ null, %bb.at ], [ null, %bb.aq ], [ null, %bb.an ], [ null, %bb.aj ], [ null, %bb.af ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %bb.v ], [ null, %bb.r ], [ null, %bb.o ], [ null, %bb.l ], [ null, %bb.i ], [ null, %bb.f ] ; 3 uses
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.cb = icmp ne ptr %i.n, null
  %i.cc = icmp eq ptr %.0, null                   ; 2 uses
  %or.cond.i.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cd = icmp eq ptr %i.n, null                  ; 2 uses
  %i.ce = icmp ne ptr %.0, null
  %or.cond3.i.i = and i1 %i.cd, %i.ce
  br i1 %or.cond3.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cf = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !48
  %i.cg = call i32 @PyErr_WarnEx(ptr noundef %i.cf, ptr noundef nonnull @.str.45, i64 noundef 1) #5, !inline_history !49
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %py_blake2b_new_impl.exit, label %bb.ba

bb.ay:                                            ; preds = %.thread208, %bb.aw
  %i.ci = phi i1 [ true, %.thread208 ], [ %i.cd, %bb.aw ]
  %.191193225 = phi i32 [ 64, %.thread208 ], [ %.191, %bb.aw ]
  %.189195224 = phi i32 [ 1, %.thread208 ], [ %.189, %bb.aw ]
  %.187197223 = phi i32 [ 1, %.thread208 ], [ %.187, %bb.aw ]
  %.185199222 = phi i32 [ 0, %.thread208 ], [ %.185, %bb.aw ]
  %.183201221 = phi i32 [ 0, %.thread208 ], [ %.183, %bb.aw ]
  %.181203220 = phi i32 [ 0, %.thread208 ], [ %.181, %bb.aw ]
  %i.cj = phi i64 [ %i.m, %.thread208 ], [ %i.bz, %bb.aw ]
  %i.ck = phi i64 [ 0, %.thread208 ], [ %i.ca, %bb.aw ]
  %i.cl = phi i1 [ true, %.thread208 ], [ %i.cc, %bb.aw ]
  %or.cond5.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond5.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.cm, ptr noundef nonnull @.str.46) #5, !inline_history !49
  br label %py_blake2b_new_impl.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.av
  %i.cn = phi i64 [ %i.ck, %bb.ay ], [ %i.ca, %bb.av ], [ %i.ca, %bb.ax ]
  %i.co = phi i64 [ %i.cj, %bb.ay ], [ %i.bz, %bb.av ], [ %i.bz, %bb.ax ]
  %.181204 = phi i32 [ %.181203220, %bb.ay ], [ %.181, %bb.av ], [ %.181, %bb.ax ]
  %.183202 = phi i32 [ %.183201221, %bb.ay ], [ %.183, %bb.av ], [ %.183, %bb.ax ]
  %.185200 = phi i32 [ %.185199222, %bb.ay ], [ %.185, %bb.av ], [ %.185, %bb.ax ]
  %.187198 = phi i32 [ %.187197223, %bb.ay ], [ %.187, %bb.av ], [ %.187, %bb.ax ]
  %.189196 = phi i32 [ %.189195224, %bb.ay ], [ %.189, %bb.av ], [ %.189, %bb.ax ]
  %.191194 = phi i32 [ %.191193225, %bb.ay ], [ %.191, %bb.av ], [ %.191, %bb.ax ]
  %.015.ph.i = phi ptr [ null, %bb.ay ], [ %i.n, %bb.av ], [ %.0, %bb.ax ]
  %i.cp = call fastcc ptr @py_blake2_new(ptr noundef %0, ptr noundef %.015.ph.i, i32 noundef %.191194, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i32 noundef %.189196, i32 noundef %.187198, i64 noundef %i.co, i64 noundef %i.cn, i32 noundef %.185200, i32 noundef %.183202, i32 noundef range(i32 0, -2147483648) %.181204)
  br label %py_blake2b_new_impl.exit

py_blake2b_new_impl.exit:                         ; preds = %bb.ba, %bb.az, %bb.ax, %bb.as, %bb.ap, %bb.am, %bb.ai, %bb.ae, %bb.ab, %bb.y, %bb.u, %bb.q, %bb.n, %bb.k, %bb.h, %bb.d
  %.095 = phi ptr [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ai ], [ null, %bb.am ], [ null, %bb.ap ], [ null, %bb.as ], [ null, %bb.d ], [ null, %bb.ae ], [ null, %bb.ab ], [ %i.cp, %bb.ba ], [ null, %bb.ax ], [ null, %bb.az ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !50
  %.not164 = icmp eq ptr %i.cr, null
  br i1 %.not164, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %py_blake2b_new_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %3) #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %py_blake2b_new_impl.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %.not165 = icmp eq ptr %i.ct, null
  br i1 %.not165, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @PyBuffer_Release(ptr noundef nonnull %4) #5
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  %.not166 = icmp eq ptr %i.cv, null
  br i1 %.not166, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @PyBuffer_Release(ptr noundef nonnull %5) #5
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.095
}

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_free(ptr noundef) local_unnamed_addr #1

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_free(ptr noundef) local_unnamed_addr #1

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef) local_unnamed_addr #1

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_free(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_blake2_blake2b_copy(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !40
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.23) #5
  br label %_blake2_blake2b_copy_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @_PyObject_GC_New(ptr noundef %1) #5 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_blake2_blake2b_copy_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store i8 0, ptr %i.e, align 8, !tbaa !22
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.c) #5
  %i.f = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.g = cmpxchg ptr %i.f, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_PyMutex_Lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Lock(ptr noundef %i.f) #5
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 4 uses
  %i.m = getelementptr i8, ptr %i.c, i64 24       ; 4 uses
  switch i32 %i.j, label %bb.l [
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
    i32 0, label %bb.k
  ]

bb.h:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.n = tail call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_copy(ptr noundef %i.l) #5 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !22
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.n, label %bb.m

bb.i:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.p = tail call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_copy(ptr noundef %i.l) #5 ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !22
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.n, label %bb.m

bb.j:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.r = tail call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_copy(ptr noundef %i.l) #5 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !22
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.n, label %bb.m

bb.k:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.t = tail call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_copy(ptr noundef %i.l) #5 ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !22
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_PyMutex_Lock.exit.i
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.v = load i32, ptr %i.i, align 8, !tbaa !35
  %i.w = getelementptr i8, ptr %i.c, i64 32
  store i32 %i.v, ptr %i.w, align 8, !tbaa !35
  br label %blake2_blake2b_copy_unlocked.exit.i

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.x = tail call ptr @PyErr_NoMemory() #5       ; 0 uses
  br label %blake2_blake2b_copy_unlocked.exit.i

blake2_blake2b_copy_unlocked.exit.i:              ; preds = %bb.n, %bb.m
  %i.y = phi i1 [ true, %bb.n ], [ false, %bb.m ]
  %i.z = cmpxchg ptr %i.f, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %_PyMutex_Unlock.exit.i, label %bb.o

bb.o:                                             ; preds = %blake2_blake2b_copy_unlocked.exit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.f) #5
  br label %_PyMutex_Unlock.exit.i

_PyMutex_Unlock.exit.i:                           ; preds = %bb.o, %blake2_blake2b_copy_unlocked.exit.i
  br i1 %i.y, label %bb.p, label %_blake2_blake2b_copy_impl.exit

bb.p:                                             ; preds = %_PyMutex_Unlock.exit.i
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !22  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.q, label %_blake2_blake2b_copy_impl.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !22
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %_blake2_blake2b_copy_impl.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %_blake2_blake2b_copy_impl.exit

_blake2_blake2b_copy_impl.exit:                   ; preds = %bb.r, %bb.q, %bb.p, %_PyMutex_Unlock.exit.i, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.r ], [ %i.c, %_PyMutex_Unlock.exit.i ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_blake2_blake2b_digest(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
end_hunk_0
begin_hunk_1_@py_blake2_new:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.cf = getelementptr i8, ptr %3, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !55
  %i.ch = trunc i64 %i.cg to i8
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.cj = trunc nuw i32 %6 to i8
  store i8 %i.cj, ptr %i.ci, align 2, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.cl = trunc nuw i32 %7 to i8
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !80
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cn = trunc nuw i64 %8 to i32
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %9, ptr %i.co, align 8, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cq = trunc nuw i32 %10 to i8
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.cs = trunc i32 %11 to i8
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !84
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ct, i8 0, i64 6, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.a, ptr %i.cu, align 8, !tbaa !85
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.b, ptr %i.cv, align 8, !tbaa !86
  %i.cw = icmp ne i32 %12, 0                      ; 4 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !56    ; 4 uses
  %i.cy = getelementptr i8, ptr %i.c, i64 24      ; 4 uses
  switch i32 %i.v, label %default.unreachable [
    i32 3, label %bb.ah
    i32 2, label %bb.aj
    i32 1, label %bb.al
    i32 0, label %bb.an
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cz = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_params_and_key(ptr noundef nonnull %13, i1 noundef zeroext %i.cw, ptr noundef %i.cx) #5 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !22
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.db = call ptr @PyErr_NoMemory() #5           ; 0 uses
  br label %py_blake2_validate_params.exit.thread

bb.aj:                                            ; preds = %bb.ag
  %i.dc = call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_malloc_with_params_and_key(ptr noundef nonnull %13, i1 noundef zeroext %i.cw, ptr noundef %i.cx) #5 ; 2 uses
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !22
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.de = call ptr @PyErr_NoMemory() #5           ; 0 uses
  br label %py_blake2_validate_params.exit.thread

bb.al:                                            ; preds = %bb.ag
  %i.df = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %13, i1 noundef zeroext %i.cw, ptr noundef %i.cx) #5 ; 2 uses
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !22
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.dh = call ptr @PyErr_NoMemory() #5           ; 0 uses
  br label %py_blake2_validate_params.exit.thread

bb.an:                                            ; preds = %bb.ag
  %i.di = call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef nonnull %13, i1 noundef zeroext %i.cw, ptr noundef %i.cx) #5 ; 2 uses
  store ptr %i.di, ptr %i.cy, align 8, !tbaa !22
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = call ptr @PyErr_NoMemory() #5           ; 0 uses
  br label %py_blake2_validate_params.exit.thread

default.unreachable:                              ; preds = %bb.ag
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah
  %.not64 = icmp eq ptr %1, null
  br i1 %.not64, label %Py_XDECREF.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.dl = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dm = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.dm, align 8, !tbaa !53
  %i.dn = and i64 %.val7.i, 268435456
  %.not.i69 = icmp eq i64 %i.dn, 0
  br i1 %.not.i69, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.do, ptr noundef nonnull @.str.24) #5
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.dp = call i32 @PyObject_CheckBuffer(ptr noundef nonnull %1) #5
  %.not6.i = icmp eq i32 %i.dp, 0
  br i1 %.not6.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dq = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.dq, ptr noundef nonnull @.str.25) #5
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.dr = call i32 @PyObject_GetBuffer(ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef 0) #5
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !54
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.aw, label %_Py_hashlib_get_buffer_view.exit

bb.aw:                                            ; preds = %bb.av
  %i.dw = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.dw, ptr noundef nonnull @.str.26) #5
  call void @PyBuffer_Release(ptr noundef nonnull %14) #5
  br label %bb.az

_Py_hashlib_get_buffer_view.exit:                 ; preds = %bb.av
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !55 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 2048
  br i1 %i.dz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_Py_hashlib_get_buffer_view.exit
  %i.ea = call ptr @PyEval_SaveThread() #5
  %i.eb = load ptr, ptr %14, align 8, !tbaa !56
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !55
  call fastcc void @blake2_update_unlocked(ptr noundef nonnull %i.c, ptr noundef %i.eb, i64 noundef %i.ec)
  call void @PyEval_RestoreThread(ptr noundef %i.ea) #5
  br label %.thread

bb.ay:                                            ; preds = %_Py_hashlib_get_buffer_view.exit
  %i.ed = load ptr, ptr %14, align 8, !tbaa !56
  call fastcc void @blake2_update_unlocked(ptr noundef nonnull %i.c, ptr noundef %i.ed, i64 noundef %i.dy)
  br label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ay
  call void @PyBuffer_Release(ptr noundef nonnull %14) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %Py_XDECREF.exit

bb.az:                                            ; preds = %bb.ar, %bb.at, %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %py_blake2_validate_params.exit.thread

py_blake2_validate_params.exit.thread:            ; preds = %._crit_edge.i, %bb.i, %bb.m, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.az, %bb.ao, %bb.am, %bb.ak, %bb.ai
  %i.ee = load i32, ptr %i.c, align 8, !tbaa !22  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ee, -1
  br i1 %.not.i.i, label %bb.ba, label %Py_XDECREF.exit

bb.ba:                                            ; preds = %py_blake2_validate_params.exit.thread
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.c, align 8, !tbaa !22
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bb, label %Py_XDECREF.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bb, %bb.ba, %py_blake2_validate_params.exit.thread, %bb.a, %.thread, %bb.ap
  %.059 = phi ptr [ %i.c, %bb.ap ], [ %i.c, %.thread ], [ null, %bb.a ], [ null, %py_blake2_validate_params.exit.thread ], [ null, %bb.ba ], [ null, %bb.bb ]
  ret ptr %.059
}

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_params_and_key(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_malloc_with_params_and_key(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @py_blake2s_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [14 x ptr], align 16              ; 3 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val168 = load i64, ptr %i.e, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val168, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %i.f, %.val                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !46
  %i.h = icmp ult i64 %.val, 2
  %or.cond3 = select i1 %.not, i1 %i.h, i1 false
  %i.i = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.j = icmp ne ptr %i.i, null
  %or.cond7 = and i1 %i.j, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.i, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @py_blake2s_new._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not127 = icmp eq ptr %i.k, null
  br i1 %.not127, label %py_blake2s_new_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ] ; 14 uses
  %.not128 = icmp eq i64 %i.g, 0
  br i1 %.not128, label %.thread208, label %bb.e

.thread208:                                       ; preds = %.thread
  %i.m = load i64, ptr %i.b, align 8, !tbaa !45
  br label %bb.ay

bb.e:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !48   ; 4 uses
  %.not129 = icmp eq ptr %i.n, null
  br i1 %.not129, label %.thread175, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %i.g, -1                         ; 2 uses
  %.not130 = icmp eq i64 %i.o, 0
  br i1 %.not130, label %bb.av, label %.thread175

.thread175:                                       ; preds = %bb.e, %bb.f
  %.093179 = phi i64 [ %i.o, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %.not131 = icmp eq ptr %i.q, null
  br i1 %.not131, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread175
  %i.r = call i32 @PyLong_AsInt(ptr noundef nonnull %i.q) #5 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @PyErr_Occurred() #5
  %.not132 = icmp eq ptr %i.t, null
  br i1 %.not132, label %bb.i, label %py_blake2s_new_impl.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = add i64 %.093179, -1                     ; 2 uses
  %.not133 = icmp eq i64 %i.u, 0
  br i1 %.not133, label %bb.av, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread175
  %.194 = phi i64 [ %i.u, %bb.i ], [ %.093179, %.thread175 ] ; 2 uses
  %.090 = phi i32 [ %i.r, %bb.i ], [ 32, %.thread175 ] ; 12 uses
  %i.v = getelementptr i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %.not134 = icmp eq ptr %i.w, null
  br i1 %.not134, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.w, ptr noundef nonnull %3, i32 noundef 0) #5
  %.not135 = icmp eq i32 %i.x, 0
  br i1 %.not135, label %bb.l, label %py_blake2s_new_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.194, -1                        ; 2 uses
  %.not136 = icmp eq i64 %i.y, 0
  br i1 %.not136, label %bb.av, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i64 [ %i.y, %bb.l ], [ %.194, %bb.j ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.l, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %.not137 = icmp eq ptr %i.aa, null
  br i1 %.not137, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.aa, ptr noundef nonnull %4, i32 noundef 0) #5
  %.not138 = icmp eq i32 %i.ab, 0
  br i1 %.not138, label %bb.o, label %py_blake2s_new_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.ac = add i64 %.2, -1                         ; 2 uses
  %.not139 = icmp eq i64 %i.ac, 0
  br i1 %.not139, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.3 = phi i64 [ %i.ac, %bb.o ], [ %.2, %bb.m ]  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.l, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not140 = icmp eq ptr %i.ae, null
  br i1 %.not140, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.ae, ptr noundef nonnull %5, i32 noundef 0) #5
  %.not141 = icmp eq i32 %i.af, 0
  br i1 %.not141, label %bb.r, label %py_blake2s_new_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.ag = add i64 %.3, -1                         ; 2 uses
  %.not142 = icmp eq i64 %i.ag, 0
  br i1 %.not142, label %bb.av, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.4 = phi i64 [ %i.ag, %bb.r ], [ %.3, %bb.p ]  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %.not143 = icmp eq ptr %i.ai, null
  br i1 %.not143, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ai) #5 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = call ptr @PyErr_Occurred() #5
  %.not144 = icmp eq ptr %i.al, null
  br i1 %.not144, label %bb.v, label %py_blake2s_new_impl.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.am = add i64 %.4, -1                         ; 2 uses
  %.not145 = icmp eq i64 %i.am, 0
  br i1 %.not145, label %bb.av, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.5 = phi i64 [ %i.am, %bb.v ], [ %.4, %bb.s ]  ; 2 uses
  %.088 = phi i32 [ %i.aj, %bb.v ], [ 1, %bb.s ]  ; 8 uses
  %i.an = getelementptr i8, ptr %i.l, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48 ; 2 uses
  %.not146 = icmp eq ptr %i.ao, null
  br i1 %.not146, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ao) #5 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ar = call ptr @PyErr_Occurred() #5
  %.not147 = icmp eq ptr %i.ar, null
  br i1 %.not147, label %bb.z, label %py_blake2s_new_impl.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.as = add i64 %.5, -1                         ; 2 uses
  %.not148 = icmp eq i64 %i.as, 0
  br i1 %.not148, label %bb.av, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.6 = phi i64 [ %i.as, %bb.z ], [ %.5, %bb.w ]  ; 2 uses
  %.086 = phi i32 [ %i.ap, %bb.z ], [ 1, %bb.w ]  ; 7 uses
  %i.at = getelementptr i8, ptr %i.l, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not149 = icmp eq ptr %i.au, null
  br i1 %.not149, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = call i32 @_PyLong_UnsignedLong_Converter(ptr noundef nonnull %i.au, ptr noundef nonnull %i.b) #5
  %.not150 = icmp eq i32 %i.av, 0
  br i1 %.not150, label %py_blake2s_new_impl.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = add i64 %.6, -1                         ; 2 uses
  %.not151 = icmp eq i64 %i.aw, 0
  br i1 %.not151, label %bb.av, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7 = phi i64 [ %i.aw, %bb.ac ], [ %.6, %bb.aa ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %.not152 = icmp eq ptr %i.ay, null
  br i1 %.not152, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.az = call i32 @_PyLong_UnsignedLongLong_Converter(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.c) #5
  %.not153 = icmp eq i32 %i.az, 0
  br i1 %.not153, label %py_blake2s_new_impl.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ba = add i64 %.7, -1                         ; 2 uses
  %.not154 = icmp eq i64 %i.ba, 0
  br i1 %.not154, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.8 = phi i64 [ %i.ba, %bb.af ], [ %.7, %bb.ad ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.l, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48 ; 2 uses
  %.not155 = icmp eq ptr %i.bc, null
  br i1 %.not155, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bc) #5 ; 3 uses
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bf = call ptr @PyErr_Occurred() #5
  %.not156 = icmp eq ptr %i.bf, null
  br i1 %.not156, label %bb.aj, label %py_blake2s_new_impl.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bg = add i64 %.8, -1                         ; 2 uses
  %.not157 = icmp eq i64 %i.bg, 0
  br i1 %.not157, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.9 = phi i64 [ %i.bg, %bb.aj ], [ %.8, %bb.ag ] ; 2 uses
  %.084 = phi i32 [ %i.bd, %bb.aj ], [ 0, %bb.ag ] ; 4 uses
  %i.bh = getelementptr i8, ptr %i.l, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not158 = icmp eq ptr %i.bi, null
  br i1 %.not158, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bi) #5 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bl = call ptr @PyErr_Occurred() #5
  %.not159 = icmp eq ptr %i.bl, null
  br i1 %.not159, label %bb.an, label %py_blake2s_new_impl.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bm = add i64 %.9, -1                         ; 2 uses
  %.not160 = icmp eq i64 %i.bm, 0
  br i1 %.not160, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.10 = phi i64 [ %i.bm, %bb.an ], [ %.9, %bb.ak ] ; 2 uses
  %.082 = phi i32 [ %i.bj, %bb.an ], [ 0, %bb.ak ] ; 3 uses
  %i.bn = getelementptr i8, ptr %i.l, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %.not161 = icmp eq ptr %i.bo, null
  br i1 %.not161, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bp = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bo) #5 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %py_blake2s_new_impl.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.br = add i64 %.10, -1                        ; 2 uses
  %.not162 = icmp eq i64 %i.br, 0
  br i1 %.not162, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.11 = phi i64 [ %i.br, %bb.aq ], [ %.10, %bb.ao ]
  %.080 = phi i32 [ %i.bp, %bb.aq ], [ 0, %bb.ao ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.l, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %.not163 = icmp eq ptr %i.bt, null
  br i1 %.not163, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bu = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bt) #5
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %py_blake2s_new_impl.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = icmp ugt i64 %.11, 1
  br i1 %i.bw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.bx = getelementptr i8, ptr %i.l, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !48
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.aq, %bb.an, %bb.aj, %bb.af, %bb.ac, %bb.z, %bb.v, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.au
  %.191 = phi i32 [ %.090, %bb.au ], [ %.090, %bb.at ], [ %.090, %bb.aq ], [ %.090, %bb.an ], [ %.090, %bb.aj ], [ %.090, %bb.af ], [ %.090, %bb.ac ], [ %.090, %bb.z ], [ %.090, %bb.v ], [ %.090, %bb.r ], [ %.090, %bb.o ], [ %.090, %bb.l ], [ %i.r, %bb.i ], [ 32, %bb.f ] ; 3 uses
  %.189 = phi i32 [ %.088, %bb.au ], [ %.088, %bb.at ], [ %.088, %bb.aq ], [ %.088, %bb.an ], [ %.088, %bb.aj ], [ %.088, %bb.af ], [ %.088, %bb.ac ], [ %.088, %bb.z ], [ %i.aj, %bb.v ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.187 = phi i32 [ %.086, %bb.au ], [ %.086, %bb.at ], [ %.086, %bb.aq ], [ %.086, %bb.an ], [ %.086, %bb.aj ], [ %.086, %bb.af ], [ %.086, %bb.ac ], [ %i.ap, %bb.z ], [ 1, %bb.v ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.185 = phi i32 [ %.084, %bb.au ], [ %.084, %bb.at ], [ %.084, %bb.aq ], [ %.084, %bb.an ], [ %i.bd, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.183 = phi i32 [ %.082, %bb.au ], [ %.082, %bb.at ], [ %.082, %bb.aq ], [ %i.bj, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.181 = phi i32 [ %.080, %bb.au ], [ %.080, %bb.at ], [ %i.bp, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.0 = phi ptr [ %i.by, %bb.au ], [ null, %bb.at ], [ null, %bb.aq ], [ null, %bb.an ], [ null, %bb.aj ], [ null, %bb.af ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %bb.v ], [ null, %bb.r ], [ null, %bb.o ], [ null, %bb.l ], [ null, %bb.i ], [ null, %bb.f ] ; 3 uses
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.cb = icmp ne ptr %i.n, null
  %i.cc = icmp eq ptr %.0, null                   ; 2 uses
  %or.cond.i.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cd = icmp eq ptr %i.n, null                  ; 2 uses
  %i.ce = icmp ne ptr %.0, null
  %or.cond3.i.i = and i1 %i.cd, %i.ce
  br i1 %or.cond3.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cf = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !48
  %i.cg = call i32 @PyErr_WarnEx(ptr noundef %i.cf, ptr noundef nonnull @.str.45, i64 noundef 1) #5, !inline_history !87
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %py_blake2s_new_impl.exit, label %bb.ba

bb.ay:                                            ; preds = %.thread208, %bb.aw
  %i.ci = phi i1 [ true, %.thread208 ], [ %i.cd, %bb.aw ]
  %.191193225 = phi i32 [ 32, %.thread208 ], [ %.191, %bb.aw ]
  %.189195224 = phi i32 [ 1, %.thread208 ], [ %.189, %bb.aw ]
  %.187197223 = phi i32 [ 1, %.thread208 ], [ %.187, %bb.aw ]
  %.185199222 = phi i32 [ 0, %.thread208 ], [ %.185, %bb.aw ]
  %.183201221 = phi i32 [ 0, %.thread208 ], [ %.183, %bb.aw ]
  %.181203220 = phi i32 [ 0, %.thread208 ], [ %.181, %bb.aw ]
  %i.cj = phi i64 [ %i.m, %.thread208 ], [ %i.bz, %bb.aw ]
  %i.ck = phi i64 [ 0, %.thread208 ], [ %i.ca, %bb.aw ]
  %i.cl = phi i1 [ true, %.thread208 ], [ %i.cc, %bb.aw ]
  %or.cond5.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond5.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !48
  call void @PyErr_SetString(ptr noundef %i.cm, ptr noundef nonnull @.str.46) #5, !inline_history !87
  br label %py_blake2s_new_impl.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.av
  %i.cn = phi i64 [ %i.ck, %bb.ay ], [ %i.ca, %bb.av ], [ %i.ca, %bb.ax ]
  %i.co = phi i64 [ %i.cj, %bb.ay ], [ %i.bz, %bb.av ], [ %i.bz, %bb.ax ]
  %.181204 = phi i32 [ %.181203220, %bb.ay ], [ %.181, %bb.av ], [ %.181, %bb.ax ]
  %.183202 = phi i32 [ %.183201221, %bb.ay ], [ %.183, %bb.av ], [ %.183, %bb.ax ]
  %.185200 = phi i32 [ %.185199222, %bb.ay ], [ %.185, %bb.av ], [ %.185, %bb.ax ]
  %.187198 = phi i32 [ %.187197223, %bb.ay ], [ %.187, %bb.av ], [ %.187, %bb.ax ]
  %.189196 = phi i32 [ %.189195224, %bb.ay ], [ %.189, %bb.av ], [ %.189, %bb.ax ]
  %.191194 = phi i32 [ %.191193225, %bb.ay ], [ %.191, %bb.av ], [ %.191, %bb.ax ]
  %.015.ph.i = phi ptr [ null, %bb.ay ], [ %i.n, %bb.av ], [ %.0, %bb.ax ]
  %i.cp = call fastcc ptr @py_blake2_new(ptr noundef %0, ptr noundef %.015.ph.i, i32 noundef %.191194, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i32 noundef %.189196, i32 noundef %.187198, i64 noundef %i.co, i64 noundef %i.cn, i32 noundef %.185200, i32 noundef %.183202, i32 noundef range(i32 0, -2147483648) %.181204)
  br label %py_blake2s_new_impl.exit

py_blake2s_new_impl.exit:                         ; preds = %bb.ba, %bb.az, %bb.ax, %bb.as, %bb.ap, %bb.am, %bb.ai, %bb.ae, %bb.ab, %bb.y, %bb.u, %bb.q, %bb.n, %bb.k, %bb.h, %bb.d
  %.095 = phi ptr [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ai ], [ null, %bb.am ], [ null, %bb.ap ], [ null, %bb.as ], [ null, %bb.d ], [ null, %bb.ae ], [ null, %bb.ab ], [ %i.cp, %bb.ba ], [ null, %bb.ax ], [ null, %bb.az ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !50
  %.not164 = icmp eq ptr %i.cr, null
  br i1 %.not164, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %py_blake2s_new_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %3) #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %py_blake2s_new_impl.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %.not165 = icmp eq ptr %i.ct, null
  br i1 %.not165, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @PyBuffer_Release(ptr noundef nonnull %4) #5
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  %.not166 = icmp eq ptr %i.cv, null
  br i1 %.not166, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @PyBuffer_Release(ptr noundef nonnull %5) #5
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.095
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 24}
!11 = !{!"", !12, i64 0, !15, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS7_object", !14, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !13, i64 0}
!19 = !{!"", !13, i64 0, !13, i64 8, !16, i64 16, !16, i64 17}
!20 = !{!19, !13, i64 8}
!21 = !{!13, !13, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{i64 2151577566, i64 2151577648, i64 2151577729}
!24 = !{i64 2151577949, i64 2151578031, i64 2151578112}
!25 = !{!19, !16, i64 16}
!26 = !{!19, !16, i64 17}
!27 = !{!28, !15, i64 264}
!28 = !{!"_typeobject", !29, i64 0, !30, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !30, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !31, i64 232, !32, i64 240, !33, i64 248, !13, i64 256, !15, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !14, i64 360, !15, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !34, i64 410}
!29 = !{!"PyVarObject", !12, i64 0, !17, i64 16}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!32 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!33 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!34 = !{!"short", !8, i64 0}
!35 = !{!36, !7, i64 32}
!36 = !{!"", !12, i64 0, !37, i64 16, !8, i64 24, !7, i64 32}
!37 = !{!"PyMutex", !8, i64 0}
!38 = !{!12, !13, i64 8}
!39 = !{!28, !14, i64 320}
!40 = !{!29, !17, i64 16}
!41 = !{!42, !17, i64 16}
!42 = !{!"", !12, i64 0, !17, i64 16, !17, i64 24, !43, i64 32, !44, i64 40}
!43 = !{!"p1 _ZTS15_dictkeysobject", !14, i64 0}
!44 = !{!"p1 _ZTS11_dictvalues", !14, i64 0}
!45 = !{!17, !17, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"long long", !8, i64 0}
!48 = !{!15, !15, i64 0}
!49 = distinct !{null}
!50 = !{!51, !15, i64 8}
!51 = !{!"", !14, i64 0, !15, i64 8, !17, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !30, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !14, i64 72}
!52 = !{!"p1 long", !14, i64 0}
!53 = !{!28, !17, i64 168}
!54 = !{!51, !7, i64 36}
!55 = !{!51, !17, i64 16}
!56 = !{!51, !14, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = !{!28, !30, i64 24}
!63 = !{!64, !15, i64 888}
!64 = !{!"_heaptypeobject", !28, i64 0, !65, i64 416, !66, i64 448, !67, i64 736, !68, i64 760, !69, i64 840, !15, i64 856, !15, i64 864, !15, i64 872, !43, i64 880, !15, i64 888, !30, i64 896, !14, i64 904, !70, i64 912}
!65 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!66 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280}
!67 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!68 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!69 = !{!"", !14, i64 0, !14, i64 8}
!70 = !{!"_specialization_cache", !15, i64 0, !7, i64 8, !15, i64 16}
!71 = !{!72, !30, i64 0}
!72 = !{!"", !30, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !14, i64 24}
!73 = distinct !{null}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!77, !8, i64 0}
!77 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !7, i64 4, !17, i64 8, !8, i64 16, !8, i64 17, !30, i64 24, !30, i64 32}
!78 = !{!77, !8, i64 1}
!79 = !{!77, !8, i64 2}
!80 = !{!77, !8, i64 3}
!81 = !{!77, !7, i64 4}
!82 = !{!77, !17, i64 8}
!83 = !{!77, !8, i64 16}
!84 = !{!77, !8, i64 17}
!85 = !{!77, !30, i64 24}
!86 = !{!77, !30, i64 32}
!87 = distinct !{null}
end_hunk_1
