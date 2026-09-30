Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_ndarray?download=true
inline.NumInlined: 379
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8nanobind6detail13ndarray_checkEPNS0_12nb_internalsEP7_object:bb.a
  %i.d = load i32, ptr %i.c, align 8, !noalias !13
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.c, align 8, !noalias !13
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #25, !noalias !13
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 160
  %.val21 = load ptr, ptr %i.i, align 8           ; 2 uses
  %.not.i22 = icmp eq ptr %.val21, null
  br i1 %.not.i22, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %.val21, align 8
  %i.k = icmp ne ptr %i.j, null
  br label %_ZNKR8nanobind6handle7dec_refEv.exit

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %bb.g, %bb.f
  %i.l = phi i1 [ false, %bb.f ], [ %i.k, %bb.g ]
  %i.m = icmp eq ptr %.val, @PyCapsule_Type
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %_ZNKR8nanobind6handle7dec_refEv.exit25, label %bb.k

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2147483648
  %.not2.i.i24 = icmp eq i64 %i.o, 0
  br i1 %.not2.i.i24, label %bb.h, label %_ZNKR8nanobind6handle7dec_refEv.exit25

bb.h:                                             ; preds = %.critedge
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  store i64 %i.p, ptr %i.c, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZNKR8nanobind6handle7dec_refEv.exit25

bb.i:                                             ; preds = %bb.h
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.c)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit25 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

bb.k:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit
  %i.t = tail call noundef ptr @_ZN8nanobind6detail12nb_type_nameEP7_object(ptr noundef %.val) #26 ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.l, label %bb.m, !prof !3

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.u = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.t, ptr noundef null)
          to label %bb.n unwind label %bb.s       ; 6 uses

bb.n:                                             ; preds = %bb.m
  %.not19 = icmp eq ptr %i.u, null
  br i1 %.not19, label %bb.o, label %.preheader.preheader, !prof !3

.preheader.preheader:                             ; preds = %bb.n
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(14) @.str.5) #27
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.p, label %.preheader.1

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(13) @.str.7) #27
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(18) @.str.10) #27
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.p, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(22) @.str.13) #27
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(13) @.str.16) #27
  %i.ae = icmp eq i32 %i.ad, 0
  br label %bb.p

bb.p:                                             ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi i1 [ true, %.preheader.preheader ], [ true, %.preheader.3 ], [ true, %.preheader.1 ], [ %i.ae, %.preheader.4 ], [ true, %.preheader.2 ] ; 3 uses
  %i.af = load i64, ptr %i.t, align 8             ; 2 uses
  %i.ag = and i64 %i.af, 2147483648
  %.not28 = icmp eq i64 %i.ag, 0
  br i1 %.not28, label %bb.q, label %_ZNKR8nanobind6handle7dec_refEv.exit25

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  store i64 %i.ah, ptr %i.t, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %_ZNKR8nanobind6handle7dec_refEv.exit25

bb.r:                                             ; preds = %bb.q
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.t)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit25 unwind label %bb.s

_ZNKR8nanobind6handle7dec_refEv.exit25:           ; preds = %bb.q, %bb.p, %bb.r, %bb.i, %bb.h, %.critedge, %_ZNKR8nanobind6handle7dec_refEv.exit
  %.017 = phi i1 [ true, %bb.i ], [ true, %_ZNKR8nanobind6handle7dec_refEv.exit ], [ true, %.critedge ], [ true, %bb.h ], [ %.lcssa, %bb.r ], [ %.lcssa, %bb.p ], [ %.lcssa, %bb.q ]
  ret i1 %.017

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail12nb_type_nameEP7_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail16fail_unspecifiedEv() local_unnamed_addr #5

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4) #26
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  %i.b = alloca [3 x ptr], align 16               ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %i.d = alloca [2 x ptr], align 16               ; 4 uses
  %i.e = alloca [3 x ptr], align 16               ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %6 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %7 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %8 = alloca %"class.nanobind::module_", align 8 ; 5 uses
  %9 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %10 = alloca %"class.nanobind::object", align 8 ; 5 uses
  %11 = alloca %"class.nanobind::object", align 8 ; 5 uses
  %12 = alloca %"class.nanobind::module_", align 8 ; 5 uses
  %13 = alloca %"class.nanobind::object", align 8 ; 5 uses
  %14 = alloca %"class.nanobind::object", align 8 ; 5 uses
  %i.g = alloca [2 x ptr], align 16               ; 4 uses
  %15 = alloca %"class.nanobind::object", align 8 ; 21 uses
  %i.h = alloca [2 x ptr], align 16               ; 6 uses
  %16 = alloca %"class.nanobind::object", align 8 ; 6 uses
  %17 = alloca %"class.nanobind::object", align 8 ; 6 uses
  %i.i = alloca [12 x i8], align 1                ; 8 uses
  %18 = alloca %"class.nanobind::object", align 8 ; 15 uses
  %19 = alloca %"struct.nanobind::detail::scoped_pymalloc.22", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr null, ptr %15, align 8
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.k = icmp eq ptr %.val, @PyCapsule_Type       ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNKR8nanobind6handle7dec_refEv.exit317.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.m, ptr %1, align 8
  br label %_ZNKR8nanobind6handle7dec_refEv.exit317.thread

_ZNKR8nanobind6handle7dec_refEv.exit317.thread:   ; preds = %bb.b, %bb.c
  store ptr %1, ptr %15, align 8
  br label %bb.cr

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 616
  %.val269 = load ptr, ptr %i.o, align 8
  %i.p = invoke ptr @_PyType_Lookup(ptr noundef %.val, ptr noundef %.val269)
          to label %bb.e unwind label %bb.h, !noalias !45 ; 11 uses

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.p, null          ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.p, align 8, !noalias !45
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.r, ptr %i.p, align 8, !noalias !45
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25, !noalias !45
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store ptr %1, ptr %i.h, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, ptr null, ptr %i.z
  %i.ae = invoke ptr @PyObject_Vectorcall(ptr noundef nonnull %i.p, ptr noundef nonnull %i.h, i64 noundef -9223372036854775807, ptr noundef %i.ad)
          to label %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit" unwind label %bb.jn ; 2 uses

"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit": ; preds = %bb.i
  %i.af = load ptr, ptr %15, align 8              ; 4 uses
  store ptr %i.ae, ptr %15, align 8
  %.not.i.i.i275 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i275, label %bb.n, label %bb.j

bb.j:                                             ; preds = %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit"
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 2147483648
  %.not2.i.i.i276 = icmp eq i64 %i.ah, 0
  br i1 %.not2.i.i.i276, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i64 %i.ag, -1                   ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.af)
          to label %thread-pre-split unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

thread-pre-split:                                 ; preds = %bb.l, %bb.k, %bb.j
  %.pr = load ptr, ptr %15, align 8
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit"
  %i.am = phi ptr [ %.pr, %thread-pre-split ], [ %i.ae, %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit" ]
  %i.an = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  %i.ao = xor i8 %i.an, 1                         ; 2 uses
  %.not447 = icmp eq ptr %i.am, null
  br i1 %.not447, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @PyExc_BufferError, align 8
  %i.aq = invoke i32 @PyErr_ExceptionMatches(ptr noundef %i.ap)
          to label %bb.p unwind label %bb.jn

bb.p:                                             ; preds = %bb.o
  %.not246 = icmp eq i32 %i.aq, 0
  br i1 %.not246, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8
  %i.as = invoke i32 @PyErr_ExceptionMatches(ptr noundef %i.ar)
          to label %bb.r unwind label %bb.jn

bb.r:                                             ; preds = %bb.q
  %.not247 = icmp eq i32 %i.as, 0
  br i1 %.not247, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  invoke void @PyErr_Clear()
          to label %bb.t unwind label %bb.jn

bb.t:                                             ; preds = %bb.s
  %i.at = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.au, ptr %i.z, ptr null
  %i.aw = invoke ptr @PyObject_Vectorcall(ptr noundef nonnull %i.p, ptr noundef nonnull %i.h, i64 noundef -9223372036854775807, ptr noundef %i.av)
          to label %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit282" unwind label %bb.jn

"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit282": ; preds = %bb.t
  %i.ax = load ptr, ptr %15, align 8              ; 4 uses
  store ptr %i.aw, ptr %15, align 8
  %.not.i.i.i283 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i283, label %_ZNKR8nanobind6handle7dec_refEv.exit288, label %bb.u

bb.u:                                             ; preds = %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit282"
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = and i64 %i.ay, 2147483648
  %.not2.i.i.i284 = icmp eq i64 %i.az, 0
  br i1 %.not2.i.i.i284, label %bb.v, label %_ZNKR8nanobind6handle7dec_refEv.exit288

bb.v:                                             ; preds = %bb.u
  %i.ba = add nsw i64 %i.ay, -1                   ; 2 uses
  store i64 %i.ba, ptr %i.ax, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.w, label %_ZNKR8nanobind6handle7dec_refEv.exit288

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ax)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit288 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit288:          ; preds = %bb.w, %bb.v, %bb.u, %"_ZZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listEENK3$_0clES4_.exit282"
  %i.be = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.r, %_ZNKR8nanobind6handle7dec_refEv.exit288
  %.0232 = phi i8 [ %i.ao, %bb.n ], [ %i.be, %_ZNKR8nanobind6handle7dec_refEv.exit288 ], [ %i.ao, %bb.r ]
  %i.bf = load ptr, ptr %15, align 8
  %.not448 = icmp eq ptr %i.bf, null
  br i1 %.not448, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @PyErr_Clear()
          to label %bb.aa unwind label %bb.jn

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.e
  %.1233 = phi i8 [ %.0232, %bb.aa ], [ 0, %bb.e ]
  %i.bg = load ptr, ptr %15, align 8
  %.not449 = icmp eq ptr %i.bg, null
  br i1 %.not449, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr i8, ptr %.val, i64 160
  %.val270 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %.not.i289 = icmp eq ptr %.val270, null
  br i1 %.not.i289, label %_ZN8nanobind6detailL14obj_has_bufferEP7_objectP11_typeobject.exit.thread, label %_ZN8nanobind6detailL14obj_has_bufferEP7_objectP11_typeobject.exit

_ZN8nanobind6detailL14obj_has_bufferEP7_objectP11_typeobject.exit: ; preds = %bb.ac
  %i.bi = load ptr, ptr %.val270, align 8
  %.not450 = icmp eq ptr %i.bi, null
  br i1 %.not450, label %_ZN8nanobind6detailL14obj_has_bufferEP7_objectP11_typeobject.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN8nanobind6detailL14obj_has_bufferEP7_objectP11_typeobject.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.bk = load i8, ptr %i.bj, align 1, !range !4, !noundef !5 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = invoke ptr @PyMem_Malloc(i64 noundef 80)
          to label %.noexc292 unwind label %bb.jn ; 15 uses

.noexc292:                                        ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@_ZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listE:bb.a
  %i.uh = phi i32 [ %i.ue, %bb.id ], [ %.pre515, %bb.ie ] ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = add i32 %i.uh, 1
  store i32 %i.uk, ptr %4, align 8
  %i.ul = zext i32 %i.uh to i64
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.ul
  store ptr %i.ud, ptr %i.um, align 8
  br label %bb.if

bb.if:                                            ; preds = %bb.ic, %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit
  %.pr424 = load ptr, ptr %18, align 8            ; 4 uses
  %.not.i.i325 = icmp eq ptr %.pr424, null
  br i1 %.not.i.i325, label %.thread436, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.un = load i64, ptr %.pr424, align 8          ; 2 uses
  %i.uo = and i64 %i.un, 2147483648
  %.not2.i.i326 = icmp eq i64 %i.uo, 0
  br i1 %.not2.i.i326, label %bb.ih, label %.thread436

bb.ih:                                            ; preds = %bb.ig
  %i.up = add nsw i64 %i.un, -1                   ; 2 uses
  store i64 %i.up, ptr %.pr424, align 8
  %i.uq = icmp eq i64 %i.up, 0
  br i1 %i.uq, label %bb.ii, label %.thread436

bb.ii:                                            ; preds = %bb.ih
  invoke void @_Py_Dealloc(ptr noundef nonnull %.pr424)
          to label %.thread436 unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #25
  unreachable

.thread436:                                       ; preds = %bb.if, %bb.ig, %bb.ih, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %_ZNKR8nanobind6handle7dec_refEv.exit320.sink.split

bb.ik:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %.thread419
  %or.cond16 = and i1 %.1217562, %.0218418561
  %or.cond18 = select i1 %or.cond16, i1 %.1215, i1 false
  br i1 %or.cond18, label %bb.im, label %_ZNKR8nanobind6handle7dec_refEv.exit320

bb.im:                                            ; preds = %bb.il
  %i.ut = invoke ptr @PyMem_Malloc(i64 noundef 40)
          to label %.noexc329 unwind label %bb.jn ; 11 uses

.noexc329:                                        ; preds = %bb.im
  %.not.i328 = icmp eq ptr %i.ut, null
  br i1 %.not.i328, label %bb.in, label %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit, !prof !3

bb.in:                                            ; preds = %.noexc329
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef 40) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit: ; preds = %.noexc329
  store ptr %.0220406, ptr %i.ut, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store atomic i64 0, ptr %i.uu seq_cst, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store ptr null, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  store i8 %.0219408, ptr %i.uw, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 34
  store i8 1, ptr %i.ux, align 2
  %i.uy = load i8, ptr %i.hc, align 1, !range !4, !noundef !5
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 35
  store i8 %i.uy, ptr %i.uz, align 1
  br i1 %i.k, label %_ZL10_Py_NewRefP7_object.exit, label %bb.io

bb.io:                                            ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit
  %i.va = load i32, ptr %1, align 8
  %i.vb = add i32 %i.va, 1                        ; 2 uses
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZL10_Py_NewRefP7_object.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  store i32 %i.vb, ptr %1, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.ip, %bb.io, %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit
  %.sink = phi ptr [ null, %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit ], [ %1, %bb.io ], [ %1, %bb.ip ]
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  store ptr %.sink, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.gy, i64 32 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8
  %.not262 = icmp eq ptr %i.vf, null
  br i1 %.not262, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %_ZL10_Py_NewRefP7_object.exit
  %i.vg = load i32, ptr %i.ha, align 8
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq, %_ZL10_Py_NewRefP7_object.exit
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 33
  store i8 0, ptr %i.vi, align 1
  br label %bb.iw

bb.is:                                            ; preds = %bb.iq
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ut, i64 33
  store i8 1, ptr %i.vj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.vk = load i32, ptr %i.ha, align 8
  %i.vl = sext i32 %i.vk to i64
  invoke void @_ZN8nanobind6detail15scoped_pymallocIlEC2Emm(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %i.vl, i64 noundef 0)
          to label %bb.it unwind label %bb.jn

bb.it:                                            ; preds = %bb.is
  %i.vm = load i32, ptr %i.ha, align 8            ; 4 uses
  %i.vn = icmp sgt i32 %i.vm, 0
  br i1 %i.vn, label %.lr.ph490, label %._crit_edge491

.lr.ph490:                                        ; preds = %bb.it
  %i.vo = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.vp = zext nneg i32 %i.vm to i64              ; 4 uses
  %xtraiter663 = and i64 %i.vp, 1
  %i.vq = icmp eq i32 %i.vm, 1
  br i1 %i.vq, label %.epil.preheader662, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.lr.ph490
  %unroll_iter667 = and i64 %i.vp, 2147483646
  br label %bb.iv

._crit_edge491.loopexit.unr-lcssa:                ; preds = %bb.iv
  %lcmp.mod665.not = icmp eq i64 %xtraiter663, 0
  br i1 %lcmp.mod665.not, label %._crit_edge491, label %.epil.preheader662

.epil.preheader662:                               ; preds = %._crit_edge491.loopexit.unr-lcssa, %.lr.ph490
  %indvars.iv512.epil.init = phi i64 [ %i.vp, %.lr.ph490 ], [ %indvars.iv.next513.1, %._crit_edge491.loopexit.unr-lcssa ]
  %.0198487.epil.init = phi i64 [ 1, %.lr.ph490 ], [ %i.wi, %._crit_edge491.loopexit.unr-lcssa ]
  %lcmp.mod666 = trunc i32 %i.vm to i1
  call void @llvm.assume(i1 %lcmp.mod666)
  %i.vr = load ptr, ptr %19, align 8
  %i.vs = getelementptr [8 x i8], ptr %i.vr, i64 %indvars.iv512.epil.init
  %i.vt = getelementptr i8, ptr %i.vs, i64 -8
  store i64 %.0198487.epil.init, ptr %i.vt, align 8
  br label %._crit_edge491

._crit_edge491:                                   ; preds = %.epil.preheader662, %._crit_edge491.loopexit.unr-lcssa, %bb.it
  %i.vu = load ptr, ptr %19, align 8
  store ptr null, ptr %19, align 8
  store ptr %i.vu, ptr %i.ve, align 8
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit unwind label %bb.iu

bb.iu:                                            ; preds = %._crit_edge491
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  %i.vw = extractvalue { ptr, i32 } %i.vv, 0
  call void @__clang_call_terminate(ptr %i.vw) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit: ; preds = %._crit_edge491
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iv, %.lr.ph490.new
  %indvars.iv512 = phi i64 [ %i.vp, %.lr.ph490.new ], [ %indvars.iv.next513.1, %bb.iv ] ; 2 uses
  %.0198487 = phi i64 [ 1, %.lr.ph490.new ], [ %i.wi, %bb.iv ] ; 2 uses
  %niter668 = phi i64 [ 0, %.lr.ph490.new ], [ %niter668.next.1, %bb.iv ]
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, -1 ; 2 uses
  %i.vx = load ptr, ptr %19, align 8
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %indvars.iv.next513
  store i64 %.0198487, ptr %i.vy, align 8
  %i.vz = load ptr, ptr %i.vo, align 8
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.next513
  %i.wb = load i64, ptr %i.wa, align 8
  %i.wc = mul nsw i64 %i.wb, %.0198487            ; 2 uses
  %indvars.iv.next513.1 = add nsw i64 %indvars.iv512, -2 ; 4 uses
  %i.wd = load ptr, ptr %19, align 8
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %indvars.iv.next513.1
  store i64 %i.wc, ptr %i.we, align 8
  %i.wf = load ptr, ptr %i.vo, align 8
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %indvars.iv.next513.1
  %i.wh = load i64, ptr %i.wg, align 8
  %i.wi = mul nsw i64 %i.wh, %i.wc                ; 2 uses
  %niter668.next.1 = add i64 %niter668, 2         ; 2 uses
  %niter668.ncmp.1.not = icmp eq i64 %niter668.next.1, %unroll_iter667
  br i1 %niter668.ncmp.1.not, label %._crit_edge491.loopexit.unr-lcssa, label %bb.iv, !llvm.loop !44

bb.iw:                                            ; preds = %bb.ir, %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit
  %i.wj = load ptr, ptr %15, align 8              ; 2 uses
  %.not457 = icmp eq ptr %i.wj, null
  br i1 %.not457, label %bb.jc, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.wk = invoke i32 @PyCapsule_SetDestructor(ptr noundef nonnull %i.wj, ptr noundef null)
          to label %bb.iy unwind label %bb.jn

bb.iy:                                            ; preds = %bb.ix
  %20 = icmp eq i32 %i.wk, 0                      ; 2 uses
  %or.cond20.not = select i1 %i.k, i1 %20, i1 false
  br i1 %or.cond20.not, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.wl = load ptr, ptr %15, align 8
  %i.wm = invoke i32 @PyCapsule_SetName(ptr noundef %i.wl, ptr noundef nonnull %i.gz)
          to label %.split438 unwind label %bb.jn

.split438:                                        ; preds = %bb.iz
  %.not = icmp eq i32 %i.wm, 0
  br i1 %.not, label %bb.jc, label %bb.jb

bb.ja:                                            ; preds = %bb.iy
  br i1 %20, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.split438, %bb.ja
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.jc:                                            ; preds = %.split438, %bb.ja, %bb.iw
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331 unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.wn = landingpad { ptr, i32 }
          catch ptr null
  %i.wo = extractvalue { ptr, i32 } %i.wn, 0
  call void @__clang_call_terminate(ptr %i.wo) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit320.sink.split: ; preds = %bb.ea, %.thread436
  %.12.ph = phi ptr [ %i.ua, %.thread436 ], [ null, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %_ZNKR8nanobind6handle7dec_refEv.exit320

_ZNKR8nanobind6handle7dec_refEv.exit320:          ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit320.sink.split, %bb.dz, %bb.il, %bb.db, %bb.cz, %bb.cy
  %.12 = phi ptr [ null, %bb.il ], [ null, %bb.dz ], [ null, %bb.db ], [ null, %bb.cy ], [ null, %bb.cz ], [ %.12.ph, %_ZNKR8nanobind6handle7dec_refEv.exit320.sink.split ] ; 4 uses
  %.not.i330 = icmp eq ptr %.sroa.6.1396404, null
  br i1 %.not.i330, label %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331, label %bb.je

bb.je:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit320
  %i.wp = call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.wp, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit.i, label %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331

_ZN8nanobind6detail13cleanup_guardC2Ev.exit.i:    ; preds = %bb.je
  %i.wq = call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 3 uses
  %.not.i581 = icmp eq ptr %i.wq, null
  br i1 %.not.i581, label %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331, label %bb.jf

bb.jf:                                            ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.6.1396404, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8            ; 2 uses
  invoke void @PyBuffer_Release(ptr noundef %i.ws)
          to label %bb.jg unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit.i

bb.jg:                                            ; preds = %bb.jf
  invoke void @PyMem_Free(ptr noundef %i.ws)
          to label %bb.jh unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit.i

bb.jh:                                            ; preds = %bb.jg
  invoke void @PyMem_Free(ptr noundef nonnull %.sroa.6.1396404)
          to label %bb.ji unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit.i

_ZN8nanobind6detail13cleanup_guardD2Ev.exit.i:    ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.wt = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.wq) #26
  %i.wu = extractvalue { ptr, i32 } %i.wt, 0
  call void @__clang_call_terminate(ptr %i.wu) #25
  unreachable

bb.ji:                                            ; preds = %bb.jh
  call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.wq) #26
  br label %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331

_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331: ; preds = %bb.ji, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit.i, %bb.je, %bb.jc, %bb.cp, %bb.co, %bb.cn, %bb.cw, %_ZNKR8nanobind6handle7dec_refEv.exit320
  %.12442.ph = phi ptr [ null, %bb.cw ], [ null, %bb.cn ], [ null, %bb.co ], [ null, %bb.cp ], [ %i.ut, %bb.jc ], [ %.12, %_ZNKR8nanobind6handle7dec_refEv.exit320 ], [ %.12, %bb.je ], [ %.12, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit.i ], [ %.12, %bb.ji ] ; 4 uses
  %.pr443 = load ptr, ptr %15, align 8            ; 4 uses
  %.not.i.i332 = icmp eq ptr %.pr443, null
  br i1 %.not.i.i332, label %_ZNKR8nanobind6handle7dec_refEv.exit334, label %bb.jj

bb.jj:                                            ; preds = %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331
  %i.wv = load i64, ptr %.pr443, align 8          ; 2 uses
  %i.ww = and i64 %i.wv, 2147483648
  %.not2.i.i333 = icmp eq i64 %i.ww, 0
  br i1 %.not2.i.i333, label %bb.jk, label %_ZNKR8nanobind6handle7dec_refEv.exit334

bb.jk:                                            ; preds = %bb.jj
  %i.wx = add nsw i64 %i.wv, -1                   ; 2 uses
  store i64 %i.wx, ptr %.pr443, align 8
  %i.wy = icmp eq i64 %i.wx, 0
  br i1 %i.wy, label %bb.jl, label %_ZNKR8nanobind6handle7dec_refEv.exit334

bb.jl:                                            ; preds = %bb.jk
  invoke void @_Py_Dealloc(ptr noundef nonnull %.pr443)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit334 unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.wz = landingpad { ptr, i32 }
          catch ptr null
  %i.xa = extractvalue { ptr, i32 } %i.wz, 0
  call void @__clang_call_terminate(ptr %i.xa) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit334:          ; preds = %bb.cm, %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331, %bb.jj, %bb.jk, %bb.jl
  %.12442446 = phi ptr [ %.12442.ph, %bb.jl ], [ %.12442.ph, %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331 ], [ %.12442.ph, %bb.jj ], [ %.12442.ph, %bb.jk ], [ null, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret ptr %.12442446

bb.jn:                                            ; preds = %bb.im, %bb.ad, %bb.t, %bb.i, %bb.iz, %bb.ix, %bb.is, %bb.cw, %bb.cu, %bb.ct, %bb.cr, %bb.cg, %bb.z, %bb.s, %bb.q, %bb.o
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.jn, %bb.ia, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn101.i, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit.i ], [ %i.xb, %bb.jn ], [ %i.tx, %bb.ia ]
  %i.xc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.xc) #25
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.e = load ptr, ptr %0, align 8
  %i.f = shl nuw nsw i8 %i.d, 5
  %.idx.i = zext nneg i8 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 seq_cst, align 8
  switch i64 %i.b, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.c, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.d
  %i.d = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZL10Py_XDECREFP7_object.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not2.i.i = icmp eq i64 %i.h, 0
  br i1 %.not2.i.i, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit.i

bb.g:                                             ; preds = %bb.f
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZL10Py_XDECREFP7_object.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.f)
          to label %_ZL10Py_XDECREFP7_object.exit.i unwind label %bb.w

_ZL10Py_XDECREFP7_object.exit.i:                  ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not.i22.i = icmp eq ptr %i.l, null
  br i1 %.not.i22.i, label %_ZL10Py_XDECREFP7_object.exit25.i, label %bb.i

bb.i:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit.i
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = and i64 %i.m, 2147483648
  %.not2.i23.i = icmp eq i64 %i.n, 0
  br i1 %.not2.i23.i, label %bb.j, label %_ZL10Py_XDECREFP7_object.exit25.i

bb.j:                                             ; preds = %bb.i
  %i.o = add nsw i64 %i.m, -1                     ; 2 uses
  store i64 %i.o, ptr %i.l, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %_ZL10Py_XDECREFP7_object.exit25.i

bb.k:                                             ; preds = %bb.j
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.l)
          to label %_ZL10Py_XDECREFP7_object.exit25.i unwind label %bb.w

end_hunk_1
begin_hunk_2_@_ZN8nanobind6detail12cleanup_list6expandEv:bb.a
  %.not5 = icmp eq i32 %i.m, 5
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8
  invoke void @PyMem_Free(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.f, ptr %i.h, align 8
  store i32 %i.c, ptr %i.a, align 4
  ret void

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsEEN3$_08__invokeEPNS0_26managed_dltensor_versionedE"(ptr nofree noundef readonly captures(none) %0) #18 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %.val) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL18nb_ndarray_deallocEP7_object(ptr noundef %0) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.c) #26
  tail call void @PyObject_Free(ptr noundef %0)
  %i.d = load i64, ptr %.val, align 8             ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZL9Py_DECREFP7_object.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1                     ; 2 uses
  store i64 %i.f, ptr %.val, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZL9Py_DECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %1, i32 noundef %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = shl nuw nsw i8 %i.e, 5
  %.idx.i = zext nneg i8 %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.b, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %2, 1
  %.not90 = icmp eq i32 %i.k, 0
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.p = load i8, ptr %i.o, align 4
  switch i8 %i.p, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 5, label %bb.j
    i8 6, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.split, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

.split:                                           ; preds = %bb.e
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  %switch.tableidx = add nsw i32 %i.v, -3         ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx, 4
  br i1 %i.w, label %switch.lookup, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split1, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

.split1:                                          ; preds = %bb.f
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  %switch.tableidx136 = add nsw i32 %i.ac, -3     ; 2 uses
  %i.ad = icmp ult i32 %switch.tableidx136, 4
  br i1 %i.ad, label %switch.lookup137, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 16, label %bb.m
    i8 32, label %bb.h
    i8 64, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.ah = load i8, ptr %i.ag, align 1
  switch i8 %i.ah, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 32, label %bb.m
    i8 64, label %bb.k
    i8 -128, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

switch.lookup:                                    ; preds = %.split
  %i.ai = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi, i64 %i.ai
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.m

switch.lookup137:                                 ; preds = %.split1
  %i.aj = zext nneg i32 %switch.tableidx136 to i64
  %switch.gep138 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi.14, i64 %i.aj
  %switch.load139 = load ptr, ptr %switch.gep138, align 8
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup137, %switch.lookup, %bb.d, %bb.j, %bb.g, %bb.i, %bb.h, %bb.l, %bb.k
  %.087 = phi ptr [ @.str.52, %bb.h ], [ @.str.53, %bb.i ], [ %switch.load139, %switch.lookup137 ], [ @.str.57, %bb.d ], [ @.str.56, %bb.l ], [ @.str.55, %bb.k ], [ @.str.54, %bb.j ], [ @.str.51, %bb.g ], [ %switch.load, %switch.lookup ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.al = load i16, ptr %i.ak, align 2
  %.not92 = icmp eq i16 %i.al, 1
  br i1 %.not92, label %bb.n, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = lshr i8 %i.an, 3
  %i.ap = zext nneg i8 %i.ao to i64               ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 10 uses
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %.not117 = icmp eq i32 %i.ar, 0
  br i1 %.not117, label %.critedge96.thread129, label %.lr.ph

.critedge96.thread129:                            ; preds = %bb.n
  %i.at = and i32 %2, 24
  %3 = icmp ne i32 %i.at, 24
  br label %bb.x

.lr.ph:                                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 5 uses
  %xtraiter = and i64 %i.as, 3
  %i.aw = icmp ult i32 %i.ar, 4
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.as, -4
  br label %bb.p

._crit_edge.unr-lcssa:                            ; preds = %bb.p
  %i.ax = and i32 %i.ar, 3
  %lcmp.mod.not = icmp eq i32 %i.ax, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.084103.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ca, %._crit_edge.unr-lcssa ]
  %.085102.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.bz, %._crit_edge.unr-lcssa ]
  %.086101.epil.init = phi i64 [ %i.ap, %.lr.ph ], [ %i.by, %._crit_edge.unr-lcssa ]
  %i.ay = and i32 %i.ar, 3
  %lcmp.mod144 = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.084103.epil = phi i64 [ %.084103.epil.init, %.epil.preheader ], [ %i.bd, %bb.o ] ; 2 uses
  %.085102.epil = phi i64 [ %.085102.epil.init, %.epil.preheader ], [ %i.bc, %bb.o ]
  %.086101.epil = phi i64 [ %.086101.epil.init, %.epil.preheader ], [ %i.bb, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.084103.epil
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = mul nsw i64 %i.ba, %.086101.epil        ; 2 uses
  %i.bc = mul nsw i64 %i.ba, %.085102.epil        ; 2 uses
  %i.bd = add nuw i64 %.084103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.o, %._crit_edge.unr-lcssa
  %.lcssa141 = phi i64 [ %i.by, %._crit_edge.unr-lcssa ], [ %i.bb, %bb.o ]
  %.lcssa140 = phi i64 [ %i.bz, %._crit_edge.unr-lcssa ], [ %i.bc, %bb.o ]
  %i.be = icmp sgt i64 %.lcssa140, 1
  %i.bf = and i32 %2, 24
  %i.bg = icmp ne i32 %i.bf, 24                   ; 2 uses
  %or.cond = select i1 %i.bg, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge96

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %.084103 = phi i64 [ 0, %.lr.ph.new ], [ %i.ca, %bb.p ] ; 5 uses
  %.085102 = phi i64 [ 1, %.lr.ph.new ], [ %i.bz, %bb.p ]
  %.086101 = phi i64 [ %i.ap, %.lr.ph.new ], [ %i.by, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.p ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.084103
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = mul nsw i64 %i.bi, %.086101
  %i.bk = mul nsw i64 %i.bi, %.085102
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.084103
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.bj
  %i.bp = mul nsw i64 %i.bn, %i.bk
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.084103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %i.bo
  %i.bu = mul nsw i64 %i.bs, %i.bp
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.084103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = mul nsw i64 %i.bx, %i.bt                ; 3 uses
  %i.bz = mul nsw i64 %i.bx, %i.bu                ; 3 uses
  %i.ca = add nuw i64 %.084103, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.p, !llvm.loop !75

bb.q:                                             ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %i.ar, 0
  br i1 %i.cb, label %.lr.ph111, label %.critedge96.thread

.lr.ph111:                                        ; preds = %bb.q
  %i.cc = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.ch = zext nneg i32 %i.ar to i64              ; 2 uses
  %xtraiter146 = and i64 %i.ch, 1
  %i.ci = icmp eq i32 %i.cc, 0
  br i1 %i.ci, label %.epil.preheader145, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter151 = and i64 %i.ch, 2147483646
  br label %bb.s

._crit_edge112.unr-lcssa:                         ; preds = %bb.w
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod148.not, label %._crit_edge112, label %.epil.preheader145

.epil.preheader145:                               ; preds = %._crit_edge112.unr-lcssa, %.lr.ph111
  %.081109.epil.init = phi i64 [ 1, %.lr.ph111 ], [ %i.dm, %._crit_edge112.unr-lcssa ]
  %.082108.epil.init = phi i64 [ %i.cd, %.lr.ph111 ], [ %i.dn, %._crit_edge112.unr-lcssa ] ; 2 uses
  %.083107.epil.init = phi i1 [ true, %.lr.ph111 ], [ %i.dl, %._crit_edge112.unr-lcssa ]
  %lcmp.mod150 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.082108.epil.init
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %._crit_edge112.epilog-lcssa, label %bb.r

bb.r:                                             ; preds = %.epil.preheader145
  %i.cm = load ptr, ptr %i.cg, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.082108.epil.init
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.co, %.081109.epil.init
  br label %._crit_edge112.epilog-lcssa

._crit_edge112.epilog-lcssa:                      ; preds = %bb.r, %.epil.preheader145
  %i.cq = phi i1 [ true, %.epil.preheader145 ], [ %i.cp, %bb.r ]
  %i.cr = select i1 %.083107.epil.init, i1 %i.cq, i1 false
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.unr-lcssa, %._crit_edge112.epilog-lcssa
  %.lcssa = phi i1 [ %i.dl, %._crit_edge112.unr-lcssa ], [ %i.cr, %._crit_edge112.epilog-lcssa ]
  br i1 %.lcssa, label %.critedge96, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.s:                                             ; preds = %bb.w, %.lr.ph111.new
  %.081109 = phi i64 [ 1, %.lr.ph111.new ], [ %i.dm, %bb.w ] ; 2 uses
  %.082108 = phi i64 [ %i.cd, %.lr.ph111.new ], [ %i.dn, %bb.w ] ; 4 uses
  %.083107 = phi i1 [ true, %.lr.ph111.new ], [ %i.dl, %bb.w ]
  %niter152 = phi i64 [ 0, %.lr.ph111.new ], [ %niter152.next.1, %bb.w ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.082108
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cg, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.082108
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.cx, %.081109
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cz = phi i1 [ true, %bb.s ], [ %i.cy, %bb.t ]
  %i.da = select i1 %.083107, i1 %i.cz, i1 false
  %i.db = mul nsw i64 %i.ct, %.081109             ; 2 uses
  %i.dc = add nsw i64 %.082108, -1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load ptr, ptr %i.cg, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = icmp eq i64 %i.di, %i.db
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dk = phi i1 [ true, %bb.u ], [ %i.dj, %bb.v ]
  %i.dl = select i1 %i.da, i1 %i.dk, i1 false     ; 3 uses
  %i.dm = mul nsw i64 %i.de, %i.db                ; 2 uses
  %i.dn = add nsw i64 %.082108, -2                ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1.not = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1.not, label %._crit_edge112.unr-lcssa, label %bb.s, !llvm.loop !76

.critedge96:                                      ; preds = %._crit_edge112, %._crit_edge
  %i.do = shl nuw nsw i64 %i.as, 4
  %i.dp = icmp slt i32 %i.ar, 0
  br i1 %i.dp, label %.critedge96.thread, label %bb.x, !prof !10

.critedge96.thread:                               ; preds = %bb.q, %.critedge96
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.30) #25
  unreachable

bb.x:                                             ; preds = %.critedge96.thread129, %.critedge96
  %i.dq = phi i64 [ 0, %.critedge96.thread129 ], [ %i.do, %.critedge96 ] ; 2 uses
  %.086.lcssa127131 = phi i64 [ %i.ap, %.critedge96.thread129 ], [ %.lcssa141, %.critedge96 ]
  %4 = phi i1 [ %3, %.critedge96.thread129 ], [ %i.bg, %.critedge96 ]
  %i.dr = tail call ptr @PyMem_Malloc(i64 noundef %i.dq) ; 5 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %bb.y, label %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit, !prof !3

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef %i.dq) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit: ; preds = %bb.x
  %i.ds = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  %.not118 = icmp eq i32 %i.ds, 0
  br i1 %.not118, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.ab

._crit_edge116:                                   ; preds = %bb.ab, %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit
  %i.dx = load ptr, ptr %i.h, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = add i64 %i.ea, %i.dy
  %i.ec = inttoptr i64 %i.eb to ptr
  store ptr %i.ec, ptr %1, align 8
  %i.ed = load i32, ptr %0, align 8
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZL10_Py_NewRefP7_object.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge116
  store i32 %i.ee, ptr %0, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %._crit_edge116, %bb.z
  store ptr %0, ptr %i.a, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.086.lcssa127131, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ap, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %i.ej = load i8, ptr %i.ei, align 1, !range !4, !noundef !5
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.ek, ptr %i.el, align 8
  %i.em = load i32, ptr %i.aq, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.em, ptr %i.en, align 4
  %i.eo = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ep = shufflevector <2 x i32> %i.eo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eq = and <2 x i32> %i.ep, <i32 4, i32 8>
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.es = icmp eq <2 x i32> %i.eq, zeroinitializer
  %i.et = insertelement <2 x ptr> poison, ptr %.087, i64 0
  %i.eu = insertelement <2 x ptr> %i.et, ptr %i.dr, i64 1
  %i.ev = select <2 x i1> %i.es, <2 x ptr> splat (ptr null), <2 x ptr> %i.eu
  store <2 x ptr> %i.ev, ptr %i.er, align 8
  %i.ew = select i1 %4, ptr null, ptr %i.du
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.dr, ptr %i.ez, align 8
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZL10_Py_NewRefP7_object.exit
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  tail call void @__clang_call_terminate(ptr %i.fb) #25
  unreachable

bb.ab:                                            ; preds = %.lr.ph115, %bb.ab
  %.0114 = phi i64 [ 0, %.lr.ph115 ], [ %i.fl, %bb.ab ] ; 5 uses
  %i.fc = load ptr, ptr %i.dv, align 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0114
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0114
  store i64 %i.fe, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.dw, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.0114
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = mul nsw i64 %i.fi, %i.ap
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0114
  store i64 %i.fj, ptr %i.fk, align 8
  %i.fl = add nuw i64 %.0114, 1                   ; 2 uses
  %i.fm = load i32, ptr %i.aq, align 8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp ult i64 %i.fl, %i.fn
  br i1 %i.fo, label %bb.ab, label %._crit_edge116, !llvm.loop !77

_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split: ; preds = %.split1, %.split, %._crit_edge112, %bb.m, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.str.59.sink = phi ptr [ @.str.58, %bb.m ], [ @.str.42, %bb.c ], [ @.str.41, %bb.a ], [ @.str.58, %bb.d ], [ @.str.58, %.split ], [ @.str.58, %bb.e ], [ @.str.58, %.split1 ], [ @.str.58, %bb.f ], [ @.str.58, %bb.g ], [ @.str.58, %bb.j ], [ @.str.59, %._crit_edge112 ]
  %i.fp = load ptr, ptr @PyExc_BufferError, align 8
  tail call void @PyErr_SetString(ptr noundef %i.fp, ptr noundef nonnull %.str.59.sink)
  br label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit

_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit: ; preds = %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split, %_ZL10_Py_NewRefP7_object.exit
  %.3 = phi i32 [ 0, %_ZL10_Py_NewRefP7_object.exit ], [ -1, %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL24nb_ndarray_releasebufferEP7_objectP9Py_buffer(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @PyMem_Free(ptr noundef %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @PyType_FromSpec(ptr noundef %1) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @PyList_Append(ptr noundef %i.c, ptr noundef nonnull %i.a) ; 0 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2147483648
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a)
  br label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

declare void @PyObject_Free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %class.anon.28, align 8             ; 9 uses
  store ptr %1, ptr %i.a, align 8
  store ptr %3, ptr %i.b, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.36)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi i64 [ %.val, %bb.d ], [ 0, %bb.c ]   ; 3 uses
  store i64 %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = shl nuw nsw i8 %i.m, 5
  %.idx.i = zext nneg i8 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.d, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.k, ptr %i.u, align 8
  %.not2760.i = icmp sgt i64 %i.g, 0
  br i1 %.not2760.i, label %.lr.ph.i.preheader, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit"

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 728
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.s
  %.01961.i = phi i64 [ %i.br, %bb.s ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.01961.i
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.01961.i
  %i.ah = load ptr, ptr %i.ag, align 8            ; 11 uses
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = icmp eq ptr %i.ah, @_Py_TrueStruct
  br i1 %i.ak, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.s

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.w, align 8
  %i.am = icmp eq ptr %i.ae, %i.al
  br i1 %i.am, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not24.i = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %.not24.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val.i.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val.i.i, i64 168
  %.val10.i.i = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.val10.i.i, 67108864
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %.val9.i.i = load i64, ptr %i.aq, align 8
  %.not7.i.i = icmp eq i64 %.val9.i.i, 2
  br i1 %.not7.i.i, label %bb.k, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i64 @PyLong_AsLong(ptr noundef %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i64 @PyLong_AsLong(ptr noundef %i.av)
  %i.ax = call ptr @PyErr_Occurred()
  %.not8.i.i = icmp eq ptr %i.ax, null
  br i1 %.not8.i.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i", label %.thread46.sink.split.sink.split.i

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i": ; preds = %bb.k
  %i.ay = load i32, ptr %i.z, align 8
  %i.az = sext i32 %i.ay to i64
  %.not25.i = icmp eq i64 %i.at, %i.az
  br i1 %.not25.i, label %bb.l, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.l:                                             ; preds = %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i"
  %i.ba = load i32, ptr %i.aa, align 4
  %i.bb = sext i32 %i.ba to i64
  %.not26.i = icmp eq i64 %i.aw, %i.bb
  br i1 %.not26.i, label %bb.s, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.m:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.x, align 8
  %i.bd = icmp eq ptr %i.ae, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %i.ah, i64 8
  %.val.i28.i = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %.val.i28.i, i64 168
  %.val10.i29.i = load i64, ptr %i.bf, align 8
  %i.bg = and i64 %.val10.i29.i, 67108864
  %.not.i30.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i30.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr i8, ptr %i.ah, i64 16
  %.val9.i31.i = load i64, ptr %i.bh, align 8
  %.not7.i32.i = icmp eq i64 %.val9.i31.i, 2
  br i1 %.not7.i32.i, label %bb.q, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i64 @PyLong_AsLong(ptr noundef %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i64 @PyLong_AsLong(ptr noundef %i.bm) ; 0 uses
  %i.bo = call ptr @PyErr_Occurred()
  %.not8.i34.i = icmp eq ptr %i.bo, null
  br i1 %.not8.i34.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i", label %.thread46.sink.split.sink.split.i

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i": ; preds = %bb.q
  store i64 %i.bk, ptr %i.d, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.y, align 8
  %i.bq = icmp eq ptr %i.ae, %i.bp
  br i1 %i.bq, label %bb.s, label %bb.t, !prof !79

bb.s:                                             ; preds = %bb.r, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i", %bb.n, %bb.l, %bb.h, %bb.f
  %i.br = add nuw nsw i64 %.01961.i, 1            ; 2 uses
  %i.bs = load i64, ptr %i.c, align 8             ; 2 uses
  %.not27.i = icmp slt i64 %i.br, %i.bs
  br i1 %.not27.i, label %.lr.ph.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", !llvm.loop !78

.thread46.sink.split.sink.split.i:                ; preds = %bb.q, %bb.k
  %PyExc_BufferError.sink.ph.i = phi ptr [ @PyExc_BufferError, %bb.k ], [ @PyExc_TypeError, %bb.q ]
  %.str.38.sink.ph.i = phi ptr [ @.str.39, %bb.k ], [ @.str.40, %bb.q ]
  call void @PyErr_Clear()
  br label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread": ; preds = %bb.f, %bb.i, %bb.j, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i", %bb.l, %bb.o, %bb.p, %.thread46.sink.split.sink.split.i
  %PyExc_BufferError.sink.i = phi ptr [ %PyExc_BufferError.sink.ph.i, %.thread46.sink.split.sink.split.i ], [ @PyExc_TypeError, %bb.o ], [ @PyExc_BufferError, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i" ], [ @PyExc_BufferError, %bb.l ], [ @PyExc_BufferError, %bb.i ], [ @PyExc_BufferError, %bb.j ], [ @PyExc_BufferError, %bb.f ], [ @PyExc_TypeError, %bb.p ]
  %.str.38.sink.i = phi ptr [ %.str.38.sink.ph.i, %.thread46.sink.split.sink.split.i ], [ @.str.40, %bb.o ], [ @.str.39, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i" ], [ @.str.39, %bb.l ], [ @.str.39, %bb.i ], [ @.str.39, %bb.j ], [ @.str.38, %bb.f ], [ @.str.40, %bb.p ]
  %i.bt = load ptr, ptr %PyExc_BufferError.sink.i, align 8
  call void @PyErr_SetString(ptr noundef %i.bt, ptr noundef nonnull %.str.38.sink.i)
  br label %bb.y

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit": ; preds = %bb.s, %bb.e
  %.3.i = phi i64 [ %i.g, %bb.e ], [ %i.bs, %bb.s ]
  %i.bu = icmp slt i64 %.3.i, 0
  br i1 %i.bu, label %bb.y, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21", !prof !10

bb.t:                                             ; preds = %bb.r
  %i.bv = call fastcc noundef i64 @"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_"(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %.01961.i) ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %bb.u, !prof !3

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.c, align 8
  %i.by = icmp slt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.v, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21", !prof !3

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr @PyExc_TypeError, align 8
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bv
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bz, ptr noundef nonnull @.str.37, ptr noundef %i.cd) ; 0 uses
  br label %bb.y

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21": ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", %bb.u
  %i.cf = load i64, ptr %i.d, align 8
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21"
  %i.ch = call noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb1EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br label %bb.y

bb.x:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21"
  %i.ci = call noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb0EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", %bb.w, %bb.x, %bb.t, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", %bb.v
  %.015 = phi ptr [ null, %bb.t ], [ null, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit" ], [ null, %bb.v ], [ %i.ch, %bb.w ], [ %i.ci, %bb.x ], [ null, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.015, %bb.y ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN8nanobind6detailL24nb_ndarray_dlpack_deviceEP7_objectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = shl nuw nsw i8 %i.d, 5
  %.idx.i = zext nneg i8 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  %or.cond29 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond29, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 768
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZL10_Py_NewRefP7_object.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.s, ptr %i.q, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

bb.d:                                             ; preds = %bb.a
  %i.u = tail call ptr @PyTuple_New(i64 noundef 2) ; 7 uses
  %i.v = load i32, ptr %i.h, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @PyLong_FromLong(i64 noundef %i.w) ; 5 uses
  %i.y = load i32, ptr %i.k, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @PyLong_FromLong(i64 noundef %i.z) ; 5 uses
  %i.ab = icmp ne ptr %i.u, null                  ; 2 uses
  %i.ac = icmp ne ptr %i.x, null                  ; 2 uses
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.aa, null                 ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.f, label %_ZL10Py_XDECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.u, align 8             ; 2 uses
  %i.af = and i64 %i.ae, 2147483648
  %.not2.i = icmp eq i64 %i.af, 0
  br i1 %.not2.i, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = add nsw i64 %i.ae, -1                   ; 2 uses
  store i64 %i.ag, ptr %i.u, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %_ZL10Py_XDECREFP7_object.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u)
  br label %_ZL10Py_XDECREFP7_object.exit

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  br i1 %i.ac, label %bb.i, label %_ZL10Py_XDECREFP7_object.exit32

bb.i:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.ai = load i64, ptr %i.x, align 8             ; 2 uses
  %i.aj = and i64 %i.ai, 2147483648
  %.not2.i31 = icmp eq i64 %i.aj, 0
  br i1 %.not2.i31, label %bb.j, label %_ZL10Py_XDECREFP7_object.exit32

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.ak, ptr %i.x, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZL10Py_XDECREFP7_object.exit32

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x)
  br label %_ZL10Py_XDECREFP7_object.exit32

_ZL10Py_XDECREFP7_object.exit32:                  ; preds = %_ZL10Py_XDECREFP7_object.exit, %bb.i, %bb.j, %bb.k
  br i1 %i.ad, label %bb.l, label %_ZL10_Py_NewRefP7_object.exit

bb.l:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit32
  %i.am = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.an = and i64 %i.am, 2147483648
  %.not2.i34 = icmp eq i64 %i.an, 0
  br i1 %.not2.i34, label %bb.m, label %_ZL10_Py_NewRefP7_object.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i64 %i.am, -1                   ; 2 uses
  store i64 %i.ao, ptr %i.aa, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %_ZL10_Py_NewRefP7_object.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa)
  br label %_ZL10_Py_NewRefP7_object.exit

bb.o:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.x, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.aa, ptr %i.ar, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.o, %_ZL10Py_XDECREFP7_object.exit32, %bb.l, %bb.m, %bb.n, %bb.c, %bb.b
  %.1 = phi ptr [ %i.q, %bb.c ], [ %i.q, %bb.b ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %_ZL10Py_XDECREFP7_object.exit32 ], [ %i.u, %bb.o ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i64 @"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !81
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not2763 = icmp slt i64 %1, %i.c
  br i1 %.not2763, label %.lr.ph, label %.thread49

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"
  %.01964 = phi i64 [ %1, %.lr.ph ], [ %i.bt, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread" ] ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !81
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01964
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = load ptr, ptr %i.d, align 8, !nonnull !5, !align !81
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01964
  %i.p = load ptr, ptr %i.o, align 8              ; 11 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 712
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.l, %i.s
  br i1 %i.t, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit": ; preds = %bb.b
  %i.u = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.s, i32 noundef 2)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread", label %bb.c

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread": ; preds = %bb.b, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"
  %i.w = icmp eq ptr %i.p, @_Py_TrueStruct
  br i1 %i.w, label %.thread49.sink.split, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"

bb.c:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 720
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.l, %i.z
  br i1 %i.aa, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28": ; preds = %bb.c
  %i.ab = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.z, i32 noundef 2)
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", label %bb.h

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread": ; preds = %bb.c, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"
  %.not24 = icmp eq ptr %i.p, @_Py_NoneStruct
  br i1 %.not24, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %bb.d

bb.d:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread"
  %i.ad = getelementptr i8, ptr %i.p, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %.val.i, i64 168
  %.val10.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.val10.i, 67108864
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.thread49.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.p, i64 16
  %.val9.i = load i64, ptr %i.ag, align 8
  %.not7.i = icmp eq i64 %.val9.i, 2
  br i1 %.not7.i, label %bb.f, label %.thread49.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 @PyLong_AsLong(ptr noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i64 @PyLong_AsLong(ptr noundef %i.al)
  %i.an = tail call ptr @PyErr_Occurred()
  %.not8.i = icmp eq ptr %i.an, null
  br i1 %.not8.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit", label %.thread49.sink.split.sink.split

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit": ; preds = %bb.f
  %i.ao = load ptr, ptr %i.g, align 8, !nonnull !5, !align !81 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %.not25 = icmp eq i64 %i.aj, %i.ar
  br i1 %.not25, label %bb.g, label %.thread49.sink.split

bb.g:                                             ; preds = %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64
  %.not26 = icmp eq i64 %i.am, %i.au
  br i1 %.not26, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %.thread49.sink.split

bb.h:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 728
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.l, %i.ax
  br i1 %i.ay, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29": ; preds = %bb.h
  %i.az = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.ax, i32 noundef 2)
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", label %bb.l

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread": ; preds = %bb.h, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"
  %.not = icmp eq ptr %i.p, @_Py_NoneStruct
  br i1 %.not, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %bb.i

bb.i:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread"
  %i.bb = getelementptr i8, ptr %i.p, i64 8
  %.val.i30 = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val.i30, i64 168
  %.val10.i31 = load i64, ptr %i.bc, align 8
  %i.bd = and i64 %.val10.i31, 67108864
  %.not.i32 = icmp eq i64 %i.bd, 0
  br i1 %.not.i32, label %.thread49.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.p, i64 16
  %.val9.i33 = load i64, ptr %i.be, align 8
  %.not7.i34 = icmp eq i64 %.val9.i33, 2
  br i1 %.not7.i34, label %bb.k, label %.thread49.sink.split

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i64 @PyLong_AsLong(ptr noundef %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i64 @PyLong_AsLong(ptr noundef %i.bj) ; 0 uses
  %i.bl = tail call ptr @PyErr_Occurred()
  %.not8.i36 = icmp eq ptr %i.bl, null
  br i1 %.not8.i36, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37", label %.thread49.sink.split.sink.split

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37": ; preds = %bb.k
  %i.bm = load ptr, ptr %i.f, align 8, !nonnull !5, !align !81
  store i64 %i.bh, ptr %i.bm, align 8
  br label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"

bb.l:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"
  %i.bn = load ptr, ptr %i.e, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 736
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.l, %i.bp
  br i1 %i.bq, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38": ; preds = %bb.l
  %i.br = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.bp, i32 noundef 2)
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %.thread49

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread": ; preds = %bb.l, %bb.g, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread"
  %i.bt = add nuw nsw i64 %.01964, 1              ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8, !nonnull !5, !align !81
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %.not27 = icmp slt i64 %i.bt, %i.bv
  br i1 %.not27, label %bb.b, label %.thread49, !llvm.loop !80

.thread49.sink.split.sink.split:                  ; preds = %bb.k, %bb.f
  %PyExc_BufferError.sink.ph = phi ptr [ @PyExc_BufferError, %bb.f ], [ @PyExc_TypeError, %bb.k ]
  %.str.38.sink.ph = phi ptr [ @.str.39, %bb.f ], [ @.str.40, %bb.k ]
  tail call void @PyErr_Clear()
  br label %.thread49.sink.split

end_hunk_2
