Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/posixmodule?download=true
inline.NumInlined: 800
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@os_timerfd_gettime_ns
define internal ptr @os_timerfd_gettime_ns(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.itimerspec, align 8         ; 5 uses
  %i.c = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %1) #19 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = tail call ptr @PyEval_SaveThread() #19
  %i.f = call i32 @timerfd_gettime(i32 noundef range(i32 0, -2147483648) %i.c, ptr noundef nonnull %2) #19
  call void @PyEval_RestoreThread(ptr noundef %i.e) #19
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_OSError, align 8, !tbaa !114
  %i.i = call ptr @PyErr_SetFromErrno(ptr noundef %i.h) #19
  br label %os_timerfd_gettime_ns_impl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = call i32 @_PyTime_FromTimespec(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #19
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %build_itimerspec_ns.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @_PyTime_FromTimespec(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #19
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %build_itimerspec_ns.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !150
  %i.p = load i64, ptr %i.b, align 8, !tbaa !150
  %i.q = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.399, i64 noundef %i.o, i64 noundef %i.p) #19
  br label %build_itimerspec_ns.exit.i

build_itimerspec_ns.exit.i:                       ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %os_timerfd_gettime_ns_impl.exit

os_timerfd_gettime_ns_impl.exit:                  ; preds = %bb.c, %build_itimerspec_ns.exit.i
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %.0.i.i, %build_itimerspec_ns.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %os_timerfd_gettime_ns_impl.exit
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %os_timerfd_gettime_ns_impl.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os__inputhook(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyOS_InputHook, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %os__inputhook_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyEval_SaveThread() #19
  %i.c = load ptr, ptr @PyOS_InputHook, align 8, !tbaa !160
  %i.d = tail call i32 %i.c() #19, !inline_history !240
  tail call void @PyEval_RestoreThread(ptr noundef %i.b) #19
  %i.e = sext i32 %i.d to i64
  br label %os__inputhook_impl.exit

os__inputhook_impl.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %.0.i) #19
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @os__is_inputhook_installed(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyOS_InputHook, align 8, !tbaa !160
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #19
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @os__create_environ(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @convertenviron()
  ret ptr %i.a
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 131073) i32 @path_converter(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !150
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  store ptr null, ptr %i.c, align 8, !tbaa !144
  tail call void @PyMem_Free(ptr noundef %i.d) #19
  %i.e = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 4 uses
  %.not.i217 = icmp eq ptr %i.f, null
  br i1 %.not.i217, label %Py_DECREF.exit16.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !114
  %i.g = load i32, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i15.i, label %bb.d, label %Py_DECREF.exit16.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !123
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit16.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 4 uses
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit16.i
  store ptr null, ptr %i.j, align 8, !tbaa !114
  %i.l = load i32, ptr %i.k, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.g, label %path_cleanup.exit

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !123
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %path_cleanup.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #19
  br label %path_cleanup.exit

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 88
  %i.p = getelementptr i8, ptr %1, i64 80         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = load i32, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %Py_INCREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %0, align 8, !tbaa !123
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.i, %bb.j
  %i.t = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %Py_INCREF.exit
  %i.u = getelementptr i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !241
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %1, i64 40
  %i.x = getelementptr i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.x, align 8, !tbaa !145
  br label %bb.bh

bb.m:                                             ; preds = %bb.k, %Py_INCREF.exit
  %i.y = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !242
  %.not154 = icmp eq i32 %i.z, 0
  br i1 %.not154, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @PyIndex_Check(ptr noundef nonnull %0) #19
  %i.ab = icmp ne i32 %i.aa, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = phi i1 [ false, %bb.m ], [ %i.ab, %bb.n ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val212 = load ptr, ptr %i.ad, align 8, !tbaa !116
  %i.ae = getelementptr i8, ptr %.val212, i64 168
  %.val216 = load i64, ptr %i.ae, align 8, !tbaa !121 ; 3 uses
  %2 = lshr i64 %.val216, 27
  %i.af = trunc i64 %2 to i32
  %3 = and i32 %i.af, 1
  %4 = lshr i64 %.val216, 28
  %5 = trunc i64 %4 to i32
  %i.ag = and i32 %5, 1
  %i.ah = and i64 %.val216, 402653184
  %i.ai = icmp ne i64 %i.ah, 0
  %or.cond3 = select i1 %i.ac, i1 true, i1 %i.ai
  br i1 %or.cond3, label %Py_DECREF.exit200.thread228, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call ptr @_PyObject_LookupSpecial(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65040)) #19 ; 10 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp eq ptr %i.aj, @_Py_NoneStruct
  %or.cond5 = or i1 %i.ak, %i.al
  br i1 %or.cond5, label %Py_DECREF.exit200, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !116 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !121
  %i.aq = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !122
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.as
  %.0.copyload.i.i.i = load ptr, ptr %i.at, align 1 ; 2 uses
  %i.au = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.au, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.r

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.q
  %i.av = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.an, ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0, ptr noundef null) #19
  br label %_PyObject_CallNoArgs.exit

bb.r:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.aw = tail call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0, ptr noundef null) #19, !inline_history !0
  %i.ax = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.an, ptr noundef nonnull %i.aj, ptr noundef %i.aw, ptr noundef null) #19
  br label %_PyObject_CallNoArgs.exit

_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.r
  %.0.i.i = phi ptr [ %i.av, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.ax, %bb.r ] ; 8 uses
  %i.ay = load i32, ptr %i.aj, align 8, !tbaa !123 ; 2 uses
  %.not.i201 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i201, label %bb.s, label %Py_DECREF.exit202

bb.s:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.aj, align 8, !tbaa !123
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.t, label %Py_DECREF.exit202

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #19
  br label %Py_DECREF.exit202

Py_DECREF.exit202:                                ; preds = %_PyObject_CallNoArgs.exit, %bb.s, %bb.t
  %i.bb = icmp eq ptr %.0.i.i, null
  br i1 %i.bb, label %Py_DECREF.exit200.thread, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit202
  %i.bc = getelementptr i8, ptr %.0.i.i, i64 8    ; 2 uses
  %.val210 = load ptr, ptr %i.bc, align 8, !tbaa !116
  %i.bd = getelementptr i8, ptr %.val210, i64 168
  %.val214 = load i64, ptr %i.bd, align 8, !tbaa !121 ; 2 uses
  %i.be = and i64 %.val214, 268435456
  %.not155 = icmp eq i64 %i.be, 0
  br i1 %.not155, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bf = and i64 %.val214, 134217728
  %.not156 = icmp eq i64 %i.bf, 0
  br i1 %.not156, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !114
  %.val208 = load ptr, ptr %i.ad, align 8, !tbaa !116
  %i.bh = tail call ptr @_PyType_Name(ptr noundef %.val208) #19
  %.val = load ptr, ptr %i.bc, align 8, !tbaa !116
  %i.bi = tail call ptr @_PyType_Name(ptr noundef %.val) #19
  %i.bj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bg, ptr noundef nonnull @.str.8, ptr noundef %i.bh, ptr noundef %i.bi) #19 ; 0 uses
  %i.bk = load i32, ptr %.0.i.i, align 8, !tbaa !123 ; 2 uses
  %.not.i199 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i199, label %bb.x, label %Py_DECREF.exit200.thread

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.0.i.i, align 8, !tbaa !123
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.y, label %Py_DECREF.exit200.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #19
  br label %Py_DECREF.exit200.thread

bb.z:                                             ; preds = %bb.v, %bb.u
  %.0110 = phi i32 [ 0, %bb.u ], [ 1, %bb.v ]     ; 3 uses
  %.0109 = phi i32 [ 1, %bb.u ], [ 0, %bb.v ]     ; 3 uses
  %i.bn = load i32, ptr %0, align 8, !tbaa !123   ; 2 uses
  %.not.i197 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i197, label %bb.aa, label %Py_DECREF.exit200.thread228

bb.aa:                                            ; preds = %bb.z
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %0, align 8, !tbaa !123
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ab, label %Py_DECREF.exit200.thread228

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #19
  br label %Py_DECREF.exit200.thread228

Py_DECREF.exit200.thread228:                      ; preds = %bb.aa, %bb.z, %bb.ab, %bb.o
  %.1132 = phi ptr [ %0, %bb.o ], [ %.0.i.i, %bb.ab ], [ %.0.i.i, %bb.z ], [ %.0.i.i, %bb.aa ] ; 20 uses
  %.2112 = phi i32 [ %3, %bb.o ], [ %.0110, %bb.ab ], [ %.0110, %bb.z ], [ %.0110, %bb.aa ]
  %.2 = phi i32 [ %i.ag, %bb.o ], [ %.0109, %bb.ab ], [ %.0109, %bb.z ], [ %.0109, %bb.aa ]
  %.not157 = icmp eq i32 %.2, 0
  br i1 %.not157, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit200.thread228
  %i.bq = getelementptr i8, ptr %1, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !243
  %.not167 = icmp eq i32 %i.br, 0
  br i1 %.not167, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %.1132, ptr noundef nonnull %i.a) #19 ; 4 uses
  %.not182 = icmp eq ptr %i.bs, null
  br i1 %.not182, label %Py_DECREF.exit200.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr i8, ptr %1, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !244
  %.not183 = icmp eq i32 %i.bu, 0
  br i1 %.not183, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bv = call i64 @wcslen(ptr noundef nonnull %i.bs) #22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !150
  %.not184 = icmp eq i64 %i.bv, %i.bw
  br i1 %.not184, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !114
  %i.by = load ptr, ptr %1, align 8, !tbaa !245   ; 2 uses
  %.not185 = icmp eq ptr %i.by, null              ; 2 uses
  %spec.select = select i1 %.not185, ptr @.str.200, ptr %i.by
  %i.bz = select i1 %.not185, ptr @.str.200, ptr @.str.201
  %i.ca = getelementptr i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !246 ; 2 uses
  %.not187 = icmp eq ptr %i.cb, null
  %i.cc = select i1 %.not187, ptr @.str.196, ptr %i.cb
  %i.cd = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bx, ptr noundef nonnull @.str.199, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cc) #19 ; 0 uses
  br label %Py_DECREF.exit200.thread

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.ce = getelementptr i8, ptr %1, i64 40
  store ptr %i.bs, ptr %i.ce, align 8, !tbaa !144
  %i.cf = getelementptr i8, ptr %1, i64 48
  store ptr null, ptr %i.cf, align 8, !tbaa !151
  %i.cg = getelementptr i8, ptr %1, i64 56
  store i32 -1, ptr %i.cg, align 8, !tbaa !145
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ac
  %i.ch = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %.1132) #19 ; 2 uses
  %.not168 = icmp eq ptr %i.ch, null
  br i1 %.not168, label %Py_DECREF.exit200.thread, label %_Py_NewRef.exit

bb.aj:                                            ; preds = %Py_DECREF.exit200.thread228
  %.not158 = icmp eq i32 %.2112, 0
  br i1 %.not158, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = load i32, ptr %.1132, align 8, !tbaa !123 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, -1073741825
  br i1 %i.cj, label %_Py_NewRef.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = add nuw i32 %i.ci, 1
  store i32 %i.ck, ptr %.1132, align 8, !tbaa !123
  br label %_Py_NewRef.exit

bb.am:                                            ; preds = %bb.aj
  br i1 %i.ac, label %bb.an, label %Py_DECREF.exit200

bb.an:                                            ; preds = %bb.am
  %i.cl = getelementptr i8, ptr %1, i64 56
  %i.cm = tail call fastcc i32 @_fd_converter(ptr noundef nonnull %.1132, ptr noundef %i.cl)
  %.not166 = icmp eq i32 %i.cm, 0
  br i1 %.not166, label %Py_DECREF.exit200.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr i8, ptr %1, i64 40
  %i.co = getelementptr i8, ptr %1, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.co, align 4, !tbaa !146
  br label %bb.bh

Py_DECREF.exit200:                                ; preds = %bb.p, %bb.am
end_hunk_0
