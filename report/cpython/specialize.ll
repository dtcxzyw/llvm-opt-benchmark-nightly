inline.NumInlined: 375
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@_PyRuntime = external global %struct.pyruntimestate, align 8
@PyRangeIter_Type = external global %struct._typeobject, align 8
@PyGen_Type = external global %struct._typeobject, align 8
@PyCoro_Type = external global %struct._typeobject, align 8
@PyBool_Type = external global %struct._typeobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PySet_Type = external global %struct._typeobject, align 8
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@PyCode_Type = external global %struct._typeobject, align 8
@_Py_InitCleanup = dso_local local_unnamed_addr constant { { { { %struct.anon.5 }, ptr }, i64 }, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i32, [4 x i8], ptr, [8 x i8] } { { { { %struct.anon.5 }, ptr }, i64 } { { { %struct.anon.5 }, ptr } { { %struct.anon.5 } { %struct.anon.5 { i32 -1073741824, i16 0, i16 5 } }, ptr @PyCode_Type }, i64 3 }, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr getelementptr (i8, ptr @_PyRuntime, i64 47096), i32 33554433, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr getelementptr (i8, ptr @_PyRuntime, i64 47096), ptr getelementptr (i8, ptr @_PyRuntime, i64 66208), ptr getelementptr (i8, ptr @_PyRuntime, i64 66208), ptr getelementptr (i8, ptr @_PyRuntime, i64 66208), ptr @no_location, ptr null, ptr null, ptr null, i64 0, ptr null, i64 0, i32 4, [4 x i8] zeroinitializer, ptr null, [8 x i8] c"\0B\00#\00\80\00\00\00" }, align 8
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@_PyOpcode_Deopt = external local_unnamed_addr constant [256 x i8], align 16
@value_and_backoff_next = internal unnamed_addr constant [8 x i16] [i16 9, i16 50, i16 243, i16 1012, i16 4069, i16 16422, i16 -10, i16 -10], align 16
@PyLazyImport_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"__class__\00", align 1
@PyBaseObject_Type = external global %struct._typeobject, align 8
@PyMemberDescr_Type = external global %struct._typeobject, align 8
@PyProperty_Type = external global %struct._typeobject, align 8
@PyClassMethodDescr_Type = external global %struct._typeobject, align 8
@PyClassMethod_Type = external global %struct._typeobject, align 8
@PyType_Type = external global %struct._typeobject, align 8
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@binaryop_extend_descrs = internal global [14 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_or }, { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_and }, { i32, [4 x i8], ptr, ptr } { i32 12, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_xor }, { i32, [4 x i8], ptr, ptr } { i32 20, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_or }, { i32, [4 x i8], ptr, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_and }, { i32, [4 x i8], ptr, ptr } { i32 25, [4 x i8] zeroinitializer, ptr @compactlongs_guard, ptr @compactlongs_xor }, { i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @float_compactlong_guard, ptr @float_compactlong_add }, { i32, [4 x i8], ptr, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @float_compactlong_guard, ptr @float_compactlong_subtract }, { i32, [4 x i8], ptr, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @nonzero_float_compactlong_guard, ptr @float_compactlong_true_div }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @float_compactlong_guard, ptr @float_compactlong_multiply }, { i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @compactlong_float_guard, ptr @compactlong_float_add }, { i32, [4 x i8], ptr, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @compactlong_float_guard, ptr @compactlong_float_subtract }, { i32, [4 x i8], ptr, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @nonzero_compactlong_float_guard, ptr @compactlong_float_true_div }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @compactlong_float_guard, ptr @compactlong_float_multiply }], align 16
@PyBytes_Type = external global %struct._typeobject, align 8
@no_location = internal constant { %struct.PyVarObject, i64, [1 x i8], [7 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyBytes_Type }, i64 1 }, i64 0, [1 x i8] c"\FB", [7 x i8] zeroinitializer }, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyCode_Quicken(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 223386
  %.val = load i16, ptr %i.e, align 2, !tbaa !28
  %i.f = getelementptr i8, ptr %i.d, i64 223388
  %.val32 = load i16, ptr %i.f, align 2, !tbaa !32
  %i.g = shl i16 %.val, 3
  %i.h = or i16 %i.g, %.val32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.018.0 = phi i16 [ 9, %bb.b ], [ 7, %bb.a ]
  %.sroa.019.0 = phi i16 [ %i.h, %bb.b ], [ 7, %bb.a ]
  %i.i = add i64 %1, -1                           ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.034 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.c ]   ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %0, i64 %.034 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !33    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !33    ; 2 uses
  %.not30 = icmp eq i8 %i.o, 0
  br i1 %.not30, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %i.k, i64 2
  switch i8 %i.l, label %bb.f [
    i8 75, label %bb.g
    i8 100, label %bb.e
    i8 103, label %bb.e
    i8 101, label %bb.e
    i8 102, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.sroa.018.0.sink = phi i16 [ %.sroa.018.0, %bb.f ], [ 21845, %bb.e ], [ %.sroa.019.0, %bb.d ]
  store i16 %.sroa.018.0.sink, ptr %i.p, align 2, !tbaa !33
  %i.q = zext i8 %i.o to i64
  %i.r = add i64 %.034, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i64 [ %i.r, %bb.g ], [ %.034, %.lr.ph ]
  %i.s = add i64 %.1, 1                           ; 2 uses
  %i.t = icmp slt i64 %i.s, %i.i
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Py_Specialize_LoadSuperAttr(i64 %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, -2
  %.not = icmp eq i64 %i.a, ptrtoint (ptr @PySuper_Type to i64)
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, -2
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !39
  %i.f = and i64 %.val.val, 2147483648
  %.not8 = icmp eq i64 %i.f, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7 = icmp eq i32 %3, 0
  %i.g = select i1 %.not7, i8 -61, i8 -60
  store i8 %i.g, ptr %2, align 2, !tbaa !33
  %i.h = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.h, align 2, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr %2, align 2, !tbaa !33
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !33
  store i8 %i.l, ptr %2, align 2, !tbaa !33
  %i.m = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %.val.i = load i16, ptr %i.m, align 2, !tbaa !46
  %i.n = and i16 %.val.i, 7
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !48
  store i16 %i.q, ptr %i.m, align 2, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Py_Specialize_LoadAttr(i64 %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = and i64 %0, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 9 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 6 uses
  %.val15 = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = tail call ptr @_PyType_GetDict(ptr noundef %.val15) #11
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.j, align 8, !tbaa !36  ; 4 uses
  %i.l = getelementptr i8, ptr %.val, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyModule_Type, i64 144), align 8, !tbaa !49
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %.val17 = load ptr, ptr %i.p, align 8, !tbaa !50 ; 4 uses
  %i.q = icmp eq ptr %.val17, null
  br i1 %i.q, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %.val17, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr i8, ptr %i.s, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !33
  %.not.i.i = icmp eq i8 %i.u, 1
  br i1 %.not.i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.v = call i64 @_PyDict_LookupIndexAndValue(ptr noundef nonnull %.val17, ptr noundef %2, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.w, null
  br i1 %.not15.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !36
  %.not18.i.i = icmp eq ptr %.val.i.i, @PyLazyImport_Type
  br i1 %.not18.i.i, label %specialize_module_load_attr.exit.thread44, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = trunc i64 %i.v to i16
  %.not17.i.i = icmp ult i64 %i.v, 65536
  br i1 %.not17.i.i, label %bb.h, label %specialize_module_load_attr.exit.thread44

bb.h:                                             ; preds = %bb.g
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = call i32 @_PyDict_GetKeysVersionForCurrentState(ptr noundef %i.aa, ptr noundef nonnull %.val17) #11 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %specialize_module_load_attr.exit.thread44, label %specialize_module_load_attr.exit

specialize_module_load_attr.exit.thread44:        ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %.critedge

specialize_module_load_attr.exit:                 ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %1, i64 4
  store i32 %i.ab, ptr %i.ad, align 2
  %i.ae = getelementptr i8, ptr %1, i64 8
  store i16 %i.y, ptr %i.ae, align 2, !tbaa !58
  store i8 -69, ptr %1, align 2, !tbaa !33
  %i.af = getelementptr i8, ptr %1, i64 2
  store i16 416, ptr %i.af, align 2, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %bb.cf

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %.val, i64 168
  %.val16.val = load i64, ptr %i.ag, align 8, !tbaa !39 ; 3 uses
  %i.ah = and i64 %.val16.val, 2147483648
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.an, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.m, @_Py_type_getattro
  br i1 %.not.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.ai = call ptr @_PyType_LookupRefAndVersion(ptr noundef nonnull %.val, ptr noundef %2, ptr noundef nonnull %i.d) #11 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %Py_XDECREF.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val.i.i18 = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 7 uses
  %i.al = getelementptr i8, ptr %.val.i.i18, i64 168
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %i.an = and i64 %i.am, 256
  %.not.i.i19 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i19, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %.val.i.i18, i64 280
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %.not18.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not18.i.i20, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq ptr %.val.i.i18, @PyMemberDescr_Type
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %i.ai, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %switch.selectcmp.case1.i.i = icmp eq i32 %i.au, 16
  %switch.selectcmp.case2.i.i = icmp eq i32 %i.au, 6
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %i.av = select i1 %switch.selectcmp.i.i, i32 3, i32 4
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.aw = icmp eq ptr %.val.i.i18, @PyProperty_Type
  %spec.select.i.i = select i1 %i.aw, i32 2, i32 0
  br label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %.val.i.i18, i64 272
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %.not19.i.i = icmp eq ptr %i.ay, null
  br i1 %.not19.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = and i64 %i.am, 131072
  %.not20.i.i = icmp eq i64 %i.az, 0
  br i1 %.not20.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not25.i.i = icmp eq ptr %.val.i.i18, @PyClassMethodDescr_Type
  br i1 %.not25.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not26.i.i = icmp eq ptr %.val.i.i18, @PyClassMethod_Type
  %..i.i = select i1 %.not26.i.i, i32 7, i32 5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %.2.i.ph.i = phi i32 [ 6, %bb.s ], [ %..i.i, %bb.t ], [ 1, %bb.r ], [ %spec.select.i.i, %bb.p ], [ %i.av, %bb.o ], [ 8, %bb.q ], [ 9, %bb.l ]
  %i.ba = load i32, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i.i.i, label %bb.v, label %Py_XDECREF.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ai, align 8, !tbaa !33
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.w, label %Py_XDECREF.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #11
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.w, %bb.v, %bb.u
  switch i32 %.2.i.ph.i, label %.thread31 [
    i32 1, label %Py_XDECREF.exit.thread.i
    i32 8, label %Py_XDECREF.exit.thread.i
    i32 5, label %Py_XDECREF.exit.thread.i
    i32 6, label %Py_XDECREF.exit.thread.i
    i32 7, label %Py_XDECREF.exit.thread.i
  ]

.thread31:                                        ; preds = %Py_XDECREF.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.critedge

Py_XDECREF.exit.thread.i:                         ; preds = %Py_XDECREF.exit.i, %Py_XDECREF.exit.i, %Py_XDECREF.exit.i, %Py_XDECREF.exit.i, %Py_XDECREF.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.bd = call fastcc i32 @analyze_descriptor_load(ptr noundef nonnull %i.i, ptr noundef %2, ptr noundef %i.e, ptr noundef %i.f)
  %i.be = load i32, ptr %i.f, align 4, !tbaa !7   ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %Py_XDECREF.exit.thread.i
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !56  ; 4 uses
  %.not.i23.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i, label %.thread33, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !33 ; 2 uses
  %.not.i.i24.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i.i24.i, label %bb.z, label %.thread33

bb.z:                                             ; preds = %bb.y
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !33
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread39, label %.thread33

bb.aa:                                            ; preds = %Py_XDECREF.exit.thread.i
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.bk = getelementptr i8, ptr %.val.i, i64 168
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !39
  %i.bm = and i64 %i.bl, 256
  %i.bn = icmp eq i64 %i.bm, 0                    ; 2 uses
  %i.bo = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond.i = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !56  ; 4 uses
  %.not.i26.i = icmp eq ptr %i.bq, null
  br i1 %.not.i26.i, label %.thread33, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !33 ; 2 uses
  %.not.i.i27.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i27.i, label %bb.ad, label %.thread33

bb.ad:                                            ; preds = %bb.ac
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !33
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread39, label %.thread33

bb.ae:                                            ; preds = %bb.aa
  switch i32 %i.bd, label %bb.ak [
    i32 1, label %bb.af
    i32 8, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.bu = getelementptr i8, ptr %1, i64 4
  store i32 %i.be, ptr %i.bu, align 2
  %i.bv = getelementptr i8, ptr %1, i64 12
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !56  ; 5 uses
  store ptr %i.bw, ptr %i.bv, align 2
  br i1 %i.bn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %1, i64 8
  store i32 %i.bo, ptr %i.bx, align 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi i8 [ -75, %bb.ag ], [ -76, %bb.af ]
  store i8 %.sink.i, ptr %1, align 2, !tbaa !33
end_hunk_0
begin_hunk_1_@_Py_Specialize_StoreAttr:bb.a
  %i.at = getelementptr i8, ptr %.val, i64 168
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %i.av = and i64 %i.au, 16
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %specialize_dict_access.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = and i64 %i.au, 4
  %.not.i38 = icmp eq i64 %i.ax, 0
  br i1 %.not.i38, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i39 = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ay = getelementptr i8, ptr %.val.i.i39, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !159
  %i.ba = getelementptr i8, ptr %i.c, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !160
  %.not28.i = icmp eq i8 %i.bc, 0
  br i1 %.not28.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %i.c, i64 -24
  %.val33.i = load ptr, ptr %i.bd, align 8, !tbaa !33
  %.not29.i = icmp eq ptr %.val33.i, null
  br i1 %.not29.i, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.s
  %i.be = getelementptr i8, ptr %.val, i64 880
  %.val34.i = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bf = call i64 @_PyDictKeys_StringLookupSplit(ptr noundef %.val34.i, ptr noundef %2) #11 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %specialize_dict_access.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.bh = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !159
  %.idx.i.i = shl i64 %i.bf, 3
  %i.bj = add i64 %.idx.i.i, 8
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %.not.i.i41 = icmp ult i64 %i.bk, 65536
  br i1 %.not.i.i41, label %bb.aa, label %specialize_dict_access.exit.thread

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bl = getelementptr i8, ptr %i.c, i64 -24
  %.val31.i = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 4 uses
  %i.bm = icmp eq ptr %.val31.i, null
  br i1 %i.bm, label %specialize_dict_access.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr i8, ptr %.val31.i, i64 8
  %.val.i = load ptr, ptr %i.bn, align 8, !tbaa !36
  %.not37.i = icmp eq ptr %.val.i, @PyDict_Type
  br i1 %.not37.i, label %bb.w, label %specialize_dict_access.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %.val31.i, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75
  %.not.i35.i = icmp eq ptr %i.bp, null
  br i1 %.not.i35.i, label %bb.x, label %specialize_dict_access.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bq = call i64 @_PyDict_LookupIndex(ptr noundef nonnull %.val31.i, ptr noundef %2) #11 ; 2 uses
  %.not12.i.i = icmp ult i64 %i.bq, 65536
  br i1 %.not12.i.i, label %bb.aa, label %specialize_dict_access.exit.thread

specialize_dict_access.exit.thread:               ; preds = %bb.w, %bb.x, %.thread.i, %bb.v, %bb.t, %bb.u, %bb.p, %bb.n, %analyze_descriptor_store.exit
  %.not.i42 = icmp eq ptr %i.h, null
  br i1 %.not.i42, label %Py_XDECREF.exit, label %.thread61

.thread61:                                        ; preds = %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit.thread, %specialize_dict_access.exit.thread
  %i.br = load i32, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %.not.i.i43 = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i43, label %bb.y, label %Py_XDECREF.exit

bb.y:                                             ; preds = %.thread61
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.h, align 8, !tbaa !33
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %Py_XDECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.c, %bb.b, %bb.a, %specialize_dict_access.exit.thread, %.thread61, %bb.y, %bb.z
  %i.bu = load i8, ptr %1, align 2, !tbaa !33
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !33
  store i8 %i.bx, ptr %1, align 2, !tbaa !33
  %i.by = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.val.i44 = load i16, ptr %i.by, align 2, !tbaa !46
  %i.bz = and i16 %.val.i44, 7
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !48
  store i16 %i.cc, ptr %i.by, align 2, !tbaa !46
  br label %Py_XDECREF.exit47

bb.aa:                                            ; preds = %bb.x, %bb.t
  %.sink44.i = phi i64 [ %i.bk, %bb.t ], [ %i.bq, %bb.x ]
  %.sink42.i = phi i8 [ -57, %bb.t ], [ -55, %bb.x ]
  %i.cd = trunc nuw i64 %.sink44.i to i16
  %i.ce = getelementptr i8, ptr %1, i64 8
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !58
  %i.cf = getelementptr i8, ptr %1, i64 4
  store i32 %.pr, ptr %i.cf, align 2
  store i8 %.sink42.i, ptr %1, align 2, !tbaa !33
  %i.cg = getelementptr i8, ptr %1, i64 2
  store i16 416, ptr %i.cg, align 2, !tbaa !46
  %.not.i45 = icmp eq ptr %i.h, null
  br i1 %.not.i45, label %Py_XDECREF.exit47, label %bb.ab

bb.ab:                                            ; preds = %.thread65, %bb.aa
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %.not.i.i46 = icmp sgt i32 %i.ch, -1
  br i1 %.not.i.i46, label %bb.ac, label %Py_XDECREF.exit47

bb.ac:                                            ; preds = %bb.ab
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.h, align 8, !tbaa !33
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ad, label %Py_XDECREF.exit47

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #11
  br label %Py_XDECREF.exit47

Py_XDECREF.exit47:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %Py_XDECREF.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !33
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Py_Specialize_LoadGlobal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val64.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %.not.i = icmp eq ptr %.val64.i, @PyDict_Type
  br i1 %.not.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr i8, ptr %i.d, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !33
  %.not52.i = icmp eq i8 %i.f, 1
  br i1 %.not52.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @_PyDict_LookupIndexAndValue(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.h = icmp eq i64 %i.g, -3
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not53.i = icmp eq ptr %i.i, null
  br i1 %.not53.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val63.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %.not65.i = icmp eq ptr %.val63.i, @PyLazyImport_Type
  br i1 %.not65.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 3 uses
  %.not55.i = icmp eq i64 %i.g, -1
  br i1 %.not55.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = trunc i64 %i.g to i16
  %.not60.i = icmp ult i64 %i.g, 65536
  br i1 %.not60.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @_PyDict_GetKeysVersionForCurrentState(ptr noundef %i.l, ptr noundef nonnull %0) #11 ; 2 uses
  %i.o = add i32 %i.n, -1
  %or.cond62.i = icmp ult i32 %i.o, 65535
  br i1 %or.cond62.i, label %.critedge.i, label %bb.q

.critedge.i:                                      ; preds = %bb.h
  %i.p = trunc nuw i32 %i.n to i16
  %i.q = getelementptr i8, ptr %2, i64 8
  store i16 %i.m, ptr %i.q, align 2, !tbaa !163
  %i.r = getelementptr i8, ptr %2, i64 4
  store i16 %i.p, ptr %i.r, align 2, !tbaa !165
  store i8 -62, ptr %2, align 2, !tbaa !33
  %i.s = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.s, align 2, !tbaa !46
  br label %specialize_load_global_lock_held.exit

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !36
  %.not66.i = icmp eq ptr %.val.i, @PyDict_Type
  br i1 %.not66.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !33
  %.not57.i = icmp eq i8 %i.x, 1
  br i1 %.not57.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.y = call i64 @_PyDictKeys_StringLookup(ptr noundef nonnull %i.v, ptr noundef %3) #11 ; 3 uses
  %i.z = icmp eq i64 %i.y, -3
  br i1 %i.z, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = trunc i64 %i.y to i16
  %.not58.i = icmp ult i64 %i.y, 65536
  br i1 %.not58.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @_PyDict_GetKeysVersionForCurrentState(ptr noundef %i.l, ptr noundef nonnull %0) #11 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = trunc i32 %i.ab to i16
  %.not59.i = icmp ult i32 %i.ab, 65536
  br i1 %.not59.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ae = call i32 @_PyDict_GetKeysVersionForCurrentState(ptr noundef %i.l, ptr noundef nonnull %1) #11 ; 2 uses
  %i.af = add i32 %i.ae, -65536
  %or.cond.i = icmp ult i32 %i.af, -65535
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %2, i64 8
  store i16 %i.aa, ptr %i.ag, align 2, !tbaa !163
  %i.ah = getelementptr i8, ptr %2, i64 4
  store i16 %i.ad, ptr %i.ah, align 2, !tbaa !165
  %i.ai = trunc nuw i32 %i.ae to i16
  %i.aj = getelementptr i8, ptr %2, i64 6
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !166
  store i8 -63, ptr %2, align 2, !tbaa !33
  %i.ak = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.ak, align 2, !tbaa !46
  br label %specialize_load_global_lock_held.exit

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %i.al = load i8, ptr %2, align 2, !tbaa !33
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  store i8 %i.ao, ptr %2, align 2, !tbaa !33
  %i.ap = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %.val.i.i = load i16, ptr %i.ap, align 2, !tbaa !46
  %i.aq = and i16 %.val.i.i, 7
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !48
  store i16 %i.at, ptr %i.ap, align 2, !tbaa !46
  br label %specialize_load_global_lock_held.exit

specialize_load_global_lock_held.exit:            ; preds = %.critedge.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Py_Specialize_StoreSubscr(i64 %0, i64 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = and i64 %1, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !36  ; 2 uses
  %i.f = icmp eq ptr %.val, @PyList_Type
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val18 = load ptr, ptr %i.g, align 8, !tbaa !36
  %.not = icmp eq ptr %.val18, @PyLong_Type
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !tbaa !167
  %i.i = and i64 %.val19, -5
  %i.j = icmp ugt i64 %i.i, 8
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.d, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !7
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %.val20 = load i64, ptr %i.n, align 8, !tbaa !170
  %i.o = icmp ugt i64 %.val20, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -53, ptr %2, align 2, !tbaa !33
  %i.p = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.p, align 2, !tbaa !46
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.q = load i8, ptr %2, align 2, !tbaa !33
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33
  store i8 %i.t, ptr %2, align 2, !tbaa !33
  %i.u = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %.val.i = load i16, ptr %i.u, align 2, !tbaa !46
  %i.v = and i16 %.val.i, 7
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !48
  store i16 %i.y, ptr %i.u, align 2, !tbaa !46
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.z = load i8, ptr %2, align 2, !tbaa !33
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !33
  store i8 %i.ac, ptr %2, align 2, !tbaa !33
  %i.ad = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %.val.i21 = load i16, ptr %i.ad, align 2, !tbaa !46
  %i.ae = and i16 %.val.i21, 7
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !48
  store i16 %i.ah, ptr %i.ad, align 2, !tbaa !46
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %.val, @PyDict_Type
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 -54, ptr %2, align 2, !tbaa !33
  %i.aj = getelementptr i8, ptr %2, i64 2
  store i16 416, ptr %i.aj, align 2, !tbaa !46
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %2, align 2, !tbaa !33
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  store i8 %i.an, ptr %2, align 2, !tbaa !33
  %i.ao = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %.val.i22 = load i16, ptr %i.ao, align 2, !tbaa !46
  %i.ap = and i16 %.val.i22, 7
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr [2 x i8], ptr @value_and_backoff_next, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !48
  store i16 %i.as, ptr %i.ao, align 2, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Py_Specialize_Call(i64 %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = and i64 %0, -2                           ; 4 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 17 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val36 = load ptr, ptr %i.d, align 8, !tbaa !36 ; 6 uses
  %.not = icmp eq ptr %.val36, @PyCFunction_Type
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !171 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.g = icmp eq ptr %.val.val.i, null
  br i1 %i.g, label %specialize_c_call.exit.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val.i, i64 16
  %.val18.val.i = load i32, ptr %i.h, align 8, !tbaa !175
  %i.i = and i32 %.val18.val.i, 655
  switch i32 %i.i, label %bb.k [
    i32 8, label %bb.d
    i32 128, label %bb.h
    i32 130, label %.sink.split.i
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %3, 1
  br i1 %.not.i, label %bb.e, label %specialize_c_call.exit.thread52

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr i8, ptr %i.k, i64 223304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %2, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !33
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %3, 2
  br i1 %i.r, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.u = getelementptr i8, ptr %i.t, i64 223296
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177
end_hunk_1
