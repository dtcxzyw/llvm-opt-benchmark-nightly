inline.NumInlined: 15
inline.NumDeleted: 11
begin_hunk_0_@_cjk_free:bb.a
; Function Attrs: nounwind uwtable
define internal ptr @getcodec(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val22 = load i64, ptr %i.b, align 8, !tbaa !19
  %i.c = and i64 %.val22, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.4) #8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %1) #8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %.not2125 = icmp sgt i32 %i.i, 0
  br i1 %.not2125, label %_getcodec.exit.lr.ph, label %._crit_edge

_getcodec.exit.lr.ph:                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %_getcodec.exit

bb.e:                                             ; preds = %_getcodec.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_getcodec.exit, !llvm.loop !31

_getcodec.exit:                                   ; preds = %_getcodec.exit.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %_getcodec.exit.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.l = getelementptr [80 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.e) #9
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.f:                                             ; preds = %_getcodec.exit
  %i.o = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @PyMem_Malloc(i64 noundef 16) #8 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %i.q, align 8, !tbaa !36
  %i.s = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %0, align 8, !tbaa !38
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.v = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  %i.w = load i32, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i22.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !38
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit23.sink.split.i, label %.thread

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr i8, ptr %i.q, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !39
  %i.aa = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.6, ptr noundef nonnull @destroy_codec_capsule) #8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @PyMem_Free(ptr noundef nonnull %i.q) #8
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %.not.i20.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i20.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8, !tbaa !38
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit23.sink.split.i, label %.thread

bb.o:                                             ; preds = %bb.l
  %i.af = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.o, ptr noundef nonnull %i.aa) #8 ; 3 uses
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %.not.i18.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i18.i, label %bb.p, label %Py_DECREF.exit19.i

bb.p:                                             ; preds = %bb.o
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.aa, align 8, !tbaa !38
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %Py_DECREF.exit19.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #8
  br label %Py_DECREF.exit19.i

Py_DECREF.exit19.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.r, label %.thread

bb.r:                                             ; preds = %Py_DECREF.exit19.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !38
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit23.sink.split.i, label %.thread

Py_DECREF.exit23.sink.split.i:                    ; preds = %bb.r, %bb.n, %bb.k
  %.2.ph.i = phi ptr [ null, %bb.n ], [ null, %bb.k ], [ %i.af, %bb.r ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #8
  br label %.thread

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.5) #8
  br label %.thread

.thread:                                          ; preds = %Py_DECREF.exit23.sink.split.i, %bb.r, %Py_DECREF.exit19.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.f, %bb.c, %._crit_edge, %bb.b
  %.5 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %._crit_edge ], [ %.2.ph.i, %Py_DECREF.exit23.sink.split.i ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.k ], [ null, %bb.j ], [ %i.af, %bb.r ], [ %i.af, %Py_DECREF.exit19.i ], [ null, %bb.f ]
  ret ptr %.5
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @destroy_codec_capsule(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.6) #8 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !38
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #8
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_cjk_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #8 ; 15 uses
  store i32 3, ptr %i.b, align 8, !tbaa !40
  %i.c = tail call ptr @PyMem_Calloc(i64 noundef 3, i64 noundef 24) #8 ; 11 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !10
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %register_maps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.11, ptr %i.c, align 8, !tbaa !41
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !tbaa !42
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @ksx1001_decmap, ptr %.sroa.36.0..sroa_idx.i.i, align 8, !tbaa !44
  %i.f = getelementptr i8, ptr %i.c, i64 24
  store ptr @.str.12, ptr %i.f, align 8, !tbaa !41
  %.sroa.22.0..sroa_idx.i.i = getelementptr i8, ptr %i.c, i64 32
  store ptr @cp949_encmap, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !42
  %.sroa.33.0..sroa_idx.i.i = getelementptr i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !tbaa !44
  %i.g = getelementptr i8, ptr %i.c, i64 48
  store ptr @.str.13, ptr %i.g, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.c, i64 56
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !42
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.c, i64 64
  store ptr @cp949ext_decmap, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !44
  %i.h = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i32 3, ptr %i.h, align 4, !tbaa !30
  %i.i = tail call ptr @PyMem_Calloc(i64 noundef 3, i64 noundef 80) #8 ; 8 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16       ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !15
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %register_maps.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.17, ptr %i.i, align 8, !tbaa !41
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store ptr @euc_kr_encode, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store ptr @euc_kr_decode, ptr %.sroa.719.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.820.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !15   ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 80
  store ptr @.str.12, ptr %i.m, align 8, !tbaa !41
  %.sroa.24.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 88
  %.sroa.46.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.24.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store ptr @cp949_encode, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.57.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 112
  %.sroa.79.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store ptr @cp949_decode, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.810.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.810.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !15   ; 6 uses
  %i.o = getelementptr i8, ptr %i.n, i64 160
  store ptr @.str.18, ptr %i.o, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i18.i = getelementptr i8, ptr %i.n, i64 168
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i18.i, i8 0, i64 16, i1 false)
  store ptr @johab_encode, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 192
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store ptr @johab_decode, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !46
  %.sroa.8.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  %i.p = load i32, ptr %i.h, align 4, !tbaa !30   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %add_codecs.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !15   ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.s = icmp ult i32 %i.p, 8
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.d ]
  %i.t = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 72
  store ptr %i.b, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 152
  store ptr %i.b, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 232
  store ptr %i.b, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 312
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 392
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 472
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 552
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 632
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !47
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %add_codecs.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !48

add_codecs.exit.i.loopexit.unr-lcssa:             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %add_codecs.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %add_codecs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %add_codecs.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.aj = getelementptr [80 x i8], ptr %i.r, i64 %indvars.iv.i.i.epil
  %i.ak = getelementptr i8, ptr %i.aj, i64 72
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !47
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %add_codecs.exit.i, label %bb.e, !llvm.loop !49

add_codecs.exit.i:                                ; preds = %add_codecs.exit.i.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.al = load i32, ptr %i.b, align 8, !tbaa !40
  %.not21.i = icmp sgt i32 %i.al, 0
  br i1 %.not21.i, label %.lr.ph.i, label %register_maps.exit

.lr.ph.i:                                         ; preds = %add_codecs.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = load i32, ptr %i.b, align 8, !tbaa !40
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %.not.i, label %bb.g, label %register_maps.exit, !llvm.loop !51

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.aq = getelementptr [24 x i8], ptr %i.ap, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store <6 x i8> <i8 95, i8 95, i8 109, i8 97, i8 112, i8 95>, ptr %i.a, align 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.as = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %i.ar) #8 ; 0 uses
  %i.at = call ptr @PyCapsule_New(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %i.au = call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.at) #8
  %i.av = icmp sgt i32 %i.au, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.av, label %bb.f, label %register_maps.exit

register_maps.exit:                               ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %add_codecs.exit.i
  %.3.i = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %add_codecs.exit.i ], [ -1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @euc_kr_encode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i64 noundef %5, ptr noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %i.c = phi i64 [ %i.bu, %bb.q ], [ %i.a, %bb.a ] ; 3 uses
  %.05066 = phi i64 [ %i.bx, %bb.q ], [ %7, %bb.a ] ; 4 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !55
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.05066, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.n, ptr %i.o, align 1, !tbaa !38
  br label %bb.q, !llvm.loop !56

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.05066, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @cp949_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !60
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not60 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not60, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61
  %i.ab = zext i8 %i.aa to i32
  %.not61 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not61, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i32 %i.v, %i.y
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55 ; 4 uses
  %.not62 = icmp eq i16 %i.af, -1
  br i1 %.not62, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp sgt i16 %i.af, -1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = lshr i16 %i.af, 8
  %i.ai = trunc nuw nsw i16 %i.ah to i8
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !38
  %i.al = trunc i16 %i.af to i8
  %i.am = or i8 %i.al, -128
  %i.an = load ptr, ptr %6, align 8, !tbaa !41
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !38
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ap = icmp samesign ult i64 %.05066, 8
  br i1 %i.ap, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %6, align 8, !tbaa !41
  store i8 -92, ptr %i.aq, align 1, !tbaa !38
  %i.ar = load ptr, ptr %6, align 8, !tbaa !41
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 -44, ptr %i.as, align 1, !tbaa !38
  %i.at = add nsw i32 %.0.i, -44032               ; 3 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !41
  %i.av = getelementptr i8, ptr %i.au, i64 2
  store i8 -92, ptr %i.av, align 1, !tbaa !38
  %i.aw = udiv i32 %i.at, 588
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr @u2cgk_choseong, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !38
  %i.ba = load ptr, ptr %6, align 8, !tbaa !41
  %i.bb = getelementptr i8, ptr %i.ba, i64 3
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !38
  %i.bc = load ptr, ptr %6, align 8, !tbaa !41
  %i.bd = getelementptr i8, ptr %i.bc, i64 4      ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !41
  store i8 -92, ptr %i.bd, align 1, !tbaa !38
  %i.be = udiv i32 %i.at, 28
  %i.bf = urem i32 %i.be, 21
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr @u2cgk_jungseong, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.bj = load ptr, ptr %6, align 8, !tbaa !41
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !38
  %i.bl = load ptr, ptr %6, align 8, !tbaa !41
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  store i8 -92, ptr %i.bm, align 1, !tbaa !38
  %i.bn = urem i32 %i.at, 28
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @u2cgk_jongseong, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = load ptr, ptr %6, align 8, !tbaa !41
  %i.bs = getelementptr i8, ptr %i.br, i64 3
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.f
  %.sink91 = phi i64 [ 2, %bb.n ], [ 4, %bb.p ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.n ], [ -8, %bb.p ], [ -1, %bb.f ]
  %i.bt = load i64, ptr %4, align 8, !tbaa !54
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  store i64 %i.bu, ptr %4, align 8, !tbaa !54
  %i.bv = load ptr, ptr %6, align 8, !tbaa !41
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.sink91
  store ptr %i.bw, ptr %6, align 8, !tbaa !41
  %i.bx = add nsw i64 %.05066, %.sink
  %i.by = icmp slt i64 %i.bu, %5
  br i1 %i.by, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.q, %bb.h, %bb.e, %bb.g, %bb.o, %bb.i, %bb.l, %bb.k, %bb.j, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.i ], [ -1, %bb.o ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.q ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @euc_kr_decode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread95

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
end_hunk_0
