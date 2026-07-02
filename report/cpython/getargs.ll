inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@getargs_z_hash:bb.a
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !31
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.d, i64 noundef %i.e) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.b, i64 noundef %i.d) #7
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !10 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr @_Py_NoneStruct, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ]
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Py_NewRef.exit
  %.03 = phi ptr [ %.0, %_Py_NewRef.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.03
}

; Function Attrs: nounwind uwtable
define internal ptr @parse_tuple_and_keywords(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [8 x [4 x double]], align 16      ; 12 uses
  %i.f = alloca [9 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_Py_NewRef.exit87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val69 = load ptr, ptr %i.i, align 8, !tbaa !23 ; 7 uses
  %.not93 = icmp eq ptr %.val69, @PyList_Type
  %.not94 = icmp eq ptr %.val69, @PyTuple_Type
  %or.cond = or i1 %.not93, %.not94
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.110) #7
  br label %_Py_NewRef.exit87

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  %i.k = getelementptr i8, ptr %.val69, i64 168
  %.val75 = load i64, ptr %i.k, align 8, !tbaa !38 ; 2 uses
  %i.l = and i64 %.val75, 33554432
  %.not52 = icmp eq i64 %i.l, 0
  br i1 %.not52, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.val69, @PyLong_Type
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not3.i.i = icmp eq ptr %.val69, @PyBool_Type
  br i1 %.not3.i.i, label %bb.h, label %PyList_GET_SIZE.exit

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.m = and i64 %.val75, 67108864
  %.not.i78 = icmp eq i64 %i.m, 0
  br i1 %.not.i78, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #8
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not.i.i79 = icmp eq ptr %.val69, @PyLong_Type
  br i1 %.not.i.i79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not3.i.i80 = icmp eq ptr %.val69, @PyBool_Type
  br i1 %.not3.i.i80, label %bb.n, label %PyList_GET_SIZE.exit

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

PyList_GET_SIZE.exit:                             ; preds = %bb.m, %bb.g
  %.in95 = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %.in95, align 8, !tbaa !30 ; 3 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.o, label %.preheader96

.preheader96:                                     ; preds = %PyList_GET_SIZE.exit
  %i.p = icmp sgt i64 %i.n, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

bb.o:                                             ; preds = %PyList_GET_SIZE.exit
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.111) #7
  br label %_Py_NewRef.exit87

.lr.ph:                                           ; preds = %.preheader96, %bb.x
  %i.r = phi ptr [ %i.ak, %bb.x ], [ %i.h, %.preheader96 ] ; 4 uses
  %.04599 = phi i64 [ %i.al, %bb.x ], [ 0, %.preheader96 ] ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val66 = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %.val66, i64 168
  %.val74 = load i64, ptr %i.t, align 8, !tbaa !38 ; 2 uses
  %i.u = and i64 %.val74, 33554432
  %.not53 = icmp eq i64 %i.u, 0
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph
  %i.x = and i64 %.val74, 67108864
  %.not54 = icmp eq i64 %i.x, 0
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.98, i32 noundef 48, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_tuple_and_keywords) #8
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.y = getelementptr i8, ptr %i.r, i64 32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn = phi ptr [ %i.w, %bb.p ], [ %i.y, %bb.s ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.04599
  %i.z = load ptr, ptr %.in, align 8, !tbaa !15   ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val63 = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr i8, ptr %.val63, i64 168
  %.val71 = load i64, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ac = and i64 %.val71, 268435456
  %.not56 = icmp eq i64 %i.ac, 0
  br i1 %.not56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.z) #7 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.f, i64 %.04599
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !20
  %i.af = icmp eq ptr %i.ad, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !15
  br i1 %i.af, label %_Py_NewRef.exit87, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ag = and i64 %.val71, 134217728
  %.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not57, label %bb.w, label %PyBytes_AS_STRING.exit

PyBytes_AS_STRING.exit:                           ; preds = %bb.v
  %i.ah = getelementptr i8, ptr %i.z, i64 32
  %i.ai = getelementptr [8 x i8], ptr %i.f, i64 %.04599
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !20
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.114) #7
  br label %_Py_NewRef.exit87

bb.x:                                             ; preds = %bb.u, %PyBytes_AS_STRING.exit
  %i.ak = phi ptr [ %.pre, %bb.u ], [ %i.r, %PyBytes_AS_STRING.exit ]
  %i.al = add nuw nsw i64 %.04599, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.x, %.preheader96
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.aw = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av) #7
  %.not58 = icmp eq i32 %i.aw, 0
  br i1 %.not58, label %_Py_NewRef.exit87, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10  ; 2 uses
  %.not59.not100 = icmp eq i8 %i.ay, 0
  br i1 %.not59.not100, label %.critedge, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.y, %bb.ab
  %i.az = phi i8 [ %i.bi, %bb.ab ], [ %i.ay, %bb.y ] ; 2 uses
  %.036102 = phi ptr [ %i.bh, %bb.ab ], [ %i.ax, %bb.y ]
  %.037101 = phi i32 [ %.138, %bb.ab ], [ 0, %bb.y ] ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.bd = and i32 %i.bc, 7
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph104
  %i.be = sext i8 %i.az to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.115, i32 %i.be, i64 5)
  %i.bf = icmp eq ptr %memchr, null
  br i1 %i.bf, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = add i32 %.037101, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph104, %bb.aa
  %.138 = phi i32 [ %i.bg, %bb.aa ], [ %.037101, %.lr.ph104 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.036102, i64 1   ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10  ; 2 uses
  %.not59.not = icmp eq i8 %i.bi, 0
  br i1 %.not59.not, label %.critedge, label %.lr.ph104, !llvm.loop !53

.critedge:                                        ; preds = %bb.ab, %bb.y
  %.037.lcssa = phi i32 [ 0, %bb.y ], [ %.138, %bb.ab ] ; 2 uses
  %i.bj = sext i32 %.037.lcssa to i64             ; 2 uses
  %i.bk = call ptr @PyTuple_New(i64 noundef %i.bj) #7 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_Py_NewRef.exit87, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.bm = icmp sgt i32 %.037.lcssa, 0
  br i1 %i.bm, label %.lr.ph106, label %_Py_NewRef.exit87

.lr.ph106:                                        ; preds = %.preheader
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  %i.bo = getelementptr i8, ptr %i.bk, i64 16
  %i.bp = getelementptr i8, ptr %i.bk, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph106, %PyTuple_SET_ITEM.exit
  %.035105 = phi i64 [ 0, %.lr.ph106 ], [ %i.cb, %PyTuple_SET_ITEM.exit ] ; 4 uses
  %i.bq = getelementptr [32 x i8], ptr %i.e, i64 %.035105
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  %spec.store.select = select i1 %i.bs, ptr @_Py_NoneStruct, ptr %i.br ; 3 uses
  %i.bt = load i32, ptr %spec.store.select, align 8, !tbaa !10 ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, -1073741825
  br i1 %i.bu, label %_Py_NewRef.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = add nuw i32 %i.bt, 1
  store i32 %i.bv, ptr %spec.store.select, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.ac, %bb.ad
  %.val.i83 = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 3 uses
  %i.bw = getelementptr i8, ptr %.val.i83, i64 168
  %.val7.i = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.bx = and i64 %.val7.i, 67108864
  %.not.i84 = icmp eq i64 %i.bx, 0
  br i1 %.not.i84, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_Py_NewRef.exit
  call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef 34, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #8
  unreachable

bb.af:                                            ; preds = %_Py_NewRef.exit
  %.not.i.i85 = icmp eq ptr %.val.i83, @PyLong_Type
  br i1 %.not.i.i85, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.not3.i.i86 = icmp eq ptr %.val.i83, @PyBool_Type
  br i1 %.not3.i.i86, label %bb.ai, label %_Py_SIZE_impl.exit.i

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #8
  unreachable

_Py_SIZE_impl.exit.i:                             ; preds = %bb.ah
  %i.by = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bz = icmp slt i64 %.035105, %i.by
  br i1 %i.bz, label %PyTuple_SET_ITEM.exit, label %bb.aj

bb.aj:                                            ; preds = %_Py_SIZE_impl.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.119, i32 noundef 36, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #8
  unreachable

PyTuple_SET_ITEM.exit:                            ; preds = %_Py_SIZE_impl.exit.i
  %i.ca = getelementptr [8 x i8], ptr %i.bp, i64 %.035105
  store ptr %spec.store.select, ptr %i.ca, align 8, !tbaa !15
  %i.cb = add nuw nsw i64 %.035105, 1             ; 2 uses
  %exitcond108.not = icmp eq i64 %i.cb, %i.bj
  br i1 %exitcond108.not, label %_Py_NewRef.exit87, label %bb.ac, !llvm.loop !54

bb.ak:                                            ; preds = %bb.z
  %i.cc = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !10 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, -1073741825
  br i1 %i.cd, label %_Py_NewRef.exit87, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ce = add nuw i32 %i.cc, 1
  store i32 %i.ce, ptr @_Py_NoneStruct, align 8, !tbaa !10
  br label %_Py_NewRef.exit87

_Py_NewRef.exit87:                                ; preds = %bb.u, %PyTuple_SET_ITEM.exit, %.preheader, %bb.al, %bb.ak, %bb.w, %.critedge, %._crit_edge, %bb.o, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.al ], [ null, %bb.o ], [ %i.bk, %.preheader ], [ null, %._crit_edge ], [ null, %.critedge ], [ null, %bb.w ], [ @_Py_NoneStruct, %bb.ak ], [ %i.bk, %PyTuple_SET_ITEM.exit ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @gh_99240_clear_args(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.125, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %i.d, null
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @PyErr_Clear() #7
  %i.h = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.126) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @PyMem_Free(ptr noundef %i.d) #7
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @PyMem_Free(ptr noundef %i.i) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_w_code_invalid(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull @_Py_NoneStruct) #7 ; 35 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit71, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
