Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs-libc?download=true
inline.NumInlined: 425
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@js_module_load:bb.a

bb.aa:                                            ; preds = %bb.y
  %i.bs = call i32 @JS_AddModuleExport(ptr noundef %0, ptr noundef nonnull %i.br, ptr noundef nonnull @.str.10) #34 ; 0 uses
  %i.bt = call i32 @JS_SetModulePrivateValue(ptr noundef %0, ptr noundef nonnull %i.br, i64 %.sroa.021.0, i64 %.sroa.16.0) #34 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %js_module_import_type.exit, %js_module_import_type.exit.thread, %bb.x, %bb.aa, %bb.t, %bb.z, %bb.w, %bb.m
  %.0 = phi ptr [ null, %bb.m ], [ null, %js_module_import_type.exit ], [ null, %bb.w ], [ null, %bb.t ], [ null, %bb.z ], [ %i.bq, %bb.x ], [ %i.br, %bb.aa ], [ null, %js_module_import_type.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  ret ptr %.0
}

declare { i64, i64 } @JS_ThrowReferenceError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare { i64, i64 } @JS_Eval(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_ParseJSON(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_NewStringLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_NewUint8Array(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @js_realloc_array_buffer(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @js_realloc_rt(ptr noundef %0, ptr noundef %2, i64 noundef %3) #34
  ret ptr %i.a
}

declare { i64, i64 } @JS_GetTypedArrayBuffer(ptr noundef, i64, i64, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JS_SetImmutableArrayBuffer(i64, i64, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @JS_NewCModule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @default_module_init(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { i64, i64 } @JS_GetModulePrivateValue(ptr noundef %0, ptr noundef %1) #34 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i64 %i.b, i64 %i.c) #34 ; 0 uses
  ret i32 0
}

declare i32 @JS_AddModuleExport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JS_SetModulePrivateValue(ptr noundef, ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @js_module_loader(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 3 uses
  %.not.i = icmp ult i64 %i.a, 3
  br i1 %.not.i, label %js__has_suffix.exit.thread, label %js__has_suffix.exit

js__has_suffix.exit:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 29486
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 111
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not9.i.not = icmp eq i32 %i.l, 0
  br i1 %.not9.i.not, label %bb.b, label %js__has_suffix.exit.thread

bb.b:                                             ; preds = %js__has_suffix.exit
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #36
  %.not.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i7, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.n = tail call ptr @dlopen(ptr noundef nonnull %1, i32 noundef 2) #34
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.a, 3
  %i.p = tail call ptr @js_malloc(ptr noundef %0, i64 noundef %i.o) #34 ; 6 uses
  %.not39.i = icmp eq ptr %i.p, null
  br i1 %.not39.i, label %js_module_loader_so.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false) #34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %1) #34 ; 0 uses
  %i.s = tail call ptr @dlopen(ptr noundef nonnull %i.p, i32 noundef 2) #34 ; 2 uses
  %.not40.i = icmp eq ptr %i.p, %1
  br i1 %.not40.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.p) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %i.t = phi ptr [ %i.n, %.thread.i ], [ %i.s, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %.not41.i = icmp eq ptr %i.t, null
  br i1 %.not41.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @dlsym(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.27) #34 ; 2 uses
  %.not42.i = icmp eq ptr %i.u, null
  br i1 %.not42.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr %i.u(ptr noundef %0, ptr noundef nonnull %1) #34, !inline_history !91 ; 2 uses
  %.not43.i = icmp eq ptr %i.v, null
  br i1 %.not43.i, label %bb.j, label %js_module_loader_so.exit

bb.i:                                             ; preds = %bb.f
  %i.w = tail call ptr @dlerror() #34
  %i.x = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %1, ptr noundef %i.w) #34 ; 0 uses
  br label %js_module_loader_so.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %.str.29.sink.i = phi ptr [ @.str.28, %bb.g ], [ @.str.29, %bb.h ]
  %i.y = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull %.str.29.sink.i, ptr noundef nonnull %1) #34 ; 0 uses
  %i.z = tail call i32 @dlclose(ptr noundef nonnull %i.t) #34 ; 0 uses
  br label %js_module_loader_so.exit

js__has_suffix.exit.thread:                       ; preds = %bb.a, %js__has_suffix.exit
  %i.aa = tail call ptr @js_module_load(ptr noundef %0, ptr noundef nonnull %1, ptr poison, i64 %3, i64 %4, ptr noundef nonnull @js_load_file)
  br label %js_module_loader_so.exit

js_module_loader_so.exit:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.c, %js__has_suffix.exit.thread
  %.0 = phi ptr [ %i.aa, %js__has_suffix.exit.thread ], [ null, %bb.i ], [ null, %bb.c ], [ null, %bb.j ], [ %i.v, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @js_init_module_std(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @JS_NewCModule(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @js_std_init) #34 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @JS_AddModuleExportList(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @js_std_funcs, i32 noundef 23) #34 ; 0 uses
  %i.c = tail call i32 @JS_AddModuleExport(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12) #34 ; 0 uses
  %i.d = tail call i32 @JS_AddModuleExport(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13) #34 ; 0 uses
  %i.e = tail call i32 @JS_AddModuleExport(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14) #34 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @js_std_init(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 3 uses
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.e = tail call i32 @JS_NewClassID(ptr noundef %i.a, ptr noundef nonnull %i.d) #34 ; 0 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !26
  %i.g = tail call i32 @JS_NewClass(ptr noundef %i.a, i32 noundef %i.f, ptr noundef nonnull @js_std_file_class) #34 ; 0 uses
  %i.h = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) #34 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = tail call i32 @JS_SetPropertyFunctionList(ptr noundef %0, i64 %i.i, i64 %i.j, ptr noundef nonnull @js_std_file_proto_funcs, i32 noundef 18) #34 ; 0 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !26
  tail call void @JS_SetClassProto(ptr noundef %0, i32 noundef %i.l, i64 %i.i, i64 %i.j) #34
  %i.m = tail call i32 @JS_SetModuleExportList(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @js_std_funcs, i32 noundef 23) #34 ; 0 uses
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !28
  %i.o = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef %i.n, i1 noundef zeroext false) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i64 %i.p, i64 %i.q) #34 ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.t = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef %i.s, i1 noundef zeroext false) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %i.w = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 %i.u, i64 %i.v) #34 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.y = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef %i.x, i1 noundef zeroext false) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.14, i64 %i.z, i64 %i.aa) #34 ; 0 uses
  ret i32 0
}

declare i32 @JS_AddModuleExportList(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @js_std_poll_io(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @js_os_poll_internal(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_os_poll_internal(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.JSValue, align 8            ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca [64 x %struct.pollfd], align 16     ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %i.c = tail call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 2 uses
  %i.d = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.c) #34
  %i.e = inttoptr i64 %i.d to ptr                 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 %1, ptr %i.b, align 4, !tbaa !16
  %.not = icmp samesign ult i32 %2, 4
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %.not133 = icmp ne ptr %i.g, null
  %i.h = load i64, ptr @os_pending_signals, align 8 ; 3 uses
  %.not134 = icmp eq i64 %i.h, 0
  %or.cond = select i1 %.not133, i1 true, i1 %.not134, !prof !100
  br i1 %or.cond, label %.thread, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.0122200 = load ptr, ptr %i.j, align 8, !tbaa !30 ; 2 uses
  %.not135201 = icmp eq ptr %.0122200, %i.i
  br i1 %.not135201, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0122202 = phi ptr [ %.0122, %bb.d ], [ %.0122200, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0122202, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !33
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = and i64 %i.n, %i.h
  %.not136 = icmp eq i64 %i.o, 0
  br i1 %.not136, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.0122202, i64 8
  %.0122 = load ptr, ptr %i.p, align 8, !tbaa !30 ; 2 uses
  %.not135 = icmp eq ptr %.0122, %i.i
  br i1 %.not135, label %.thread, label %.lr.ph, !llvm.loop !92

bb.e:                                             ; preds = %.lr.ph
  %i.q = xor i64 %i.n, -1
  %i.r = and i64 %i.h, %i.q
  store i64 %i.r, ptr @os_pending_signals, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.0122202, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0122202, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call fastcc i32 @call_handler(ptr noundef %0, i64 %i.t, i64 %i.v)
  br label %bb.bc

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.x = and i32 %2, 1
  %.not137 = icmp eq i32 %i.x, 0
  br i1 %.not137, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.y = call fastcc i32 @js_os_run_timers(ptr noundef %i.c, ptr noundef %0, ptr noundef %i.e, ptr noundef %i.b)
  %.not138 = icmp eq i32 %i.y, 0
  br i1 %.not138, label %bb.g, label %bb.bc

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.b, align 4, !tbaa !16   ; 5 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.bc, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp slt i32 %i.z, 0
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %.not170 = icmp eq ptr %i.ad, %i.e
  br i1 %.not170, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %.not171 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not171, label %bb.bc, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %.thread
  %i.ah = phi i32 [ %i.z, %bb.h ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %1, %.thread ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.1123203 = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 3 uses
  %.not141204 = icmp eq ptr %.1123203, %i.e
  br i1 %.not141204, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.k, %bb.m
  %.1123206 = phi ptr [ %.1123, %bb.m ], [ %.1123203, %bb.k ] ; 3 uses
  %.0111205 = phi i32 [ %i.at, %bb.m ], [ 0, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.1123206, i64 32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph207
  %i.an = getelementptr inbounds nuw i8, ptr %.1123206, i64 48
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp ne i64 %i.ap, 2
  %i.ar = zext i1 %i.aq to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph207
  %i.as = phi i32 [ 1, %.lr.ph207 ], [ %i.ar, %bb.l ]
  %i.at = add nuw nsw i32 %i.as, %.0111205        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1123206, i64 8
  %.1123 = load ptr, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %.not141 = icmp eq ptr %.1123, %i.e
  br i1 %.not141, label %._crit_edge, label %.lr.ph207, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %.0111.lcssa = phi i32 [ 0, %bb.k ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = and i32 %2, 2
  %.not142 = icmp eq i32 %i.av, 0                 ; 3 uses
  br i1 %.not142, label %.loopexit174, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.2124208 = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %.not143209 = icmp eq ptr %.2124208, %i.aw
  br i1 %.not143209, label %.loopexit174, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.n, %.lr.ph213
  %.2124211 = phi ptr [ %.2124, %.lr.ph213 ], [ %.2124208, %bb.n ] ; 2 uses
  %.1112210 = phi i32 [ %i.bd, %.lr.ph213 ], [ %.0111.lcssa, %bb.n ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.2124211, i64 32
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp ne i64 %i.ba, 2
  %i.bc = zext i1 %i.bb to i32
  %i.bd = add nuw nsw i32 %.1112210, %i.bc        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.2124211, i64 8
  %.2124 = load ptr, ptr %i.be, align 8, !tbaa !30 ; 2 uses
  %.not143 = icmp eq ptr %.2124, %i.aw
  br i1 %.not143, label %.loopexit174, label %.lr.ph213, !llvm.loop !94

.loopexit174:                                     ; preds = %.lr.ph213, %bb.n, %._crit_edge
  %.2113 = phi i32 [ %.0111.lcssa, %._crit_edge ], [ %.0111.lcssa, %bb.n ], [ %i.bd, %.lr.ph213 ] ; 4 uses
  %i.bf = icmp eq i32 %.2113, 0
  br i1 %i.bf, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.loopexit174
  %i.bg = icmp sgt i32 %i.ah, 0
  br i1 %i.bg, label %bb.p, label %bb.bc

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bh = udiv i32 %i.ah, 1000
  %i.bi = zext nneg i32 %i.bh to i64
  store i64 %i.bi, ptr %5, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = urem i32 %i.ah, 1000
  %narrow = mul nuw nsw i32 %i.bk, 1000000
  %i.bl = zext nneg i32 %narrow to i64
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !36
  %i.bm = load i64, ptr @os_pending_signals, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bn = call i32 @nanosleep(ptr noundef nonnull %5, ptr noundef nonnull %5) #34
  %.not153 = icmp eq i32 %i.bn, 0
  br i1 %.not153, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = tail call ptr @__errno_location() #37
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = icmp eq i32 %i.bp, 4
  %i.br = load i64, ptr @os_pending_signals, align 8
  %i.bs = icmp eq i64 %i.bm, %i.br
  %or.cond155 = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond155, label %bb.q, label %.critedge, !llvm.loop !95

.critedge:                                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bc

bb.s:                                             ; preds = %.loopexit174
  %i.bt = icmp sgt i32 %.2113, 64
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = zext nneg i32 %.2113 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call ptr @js_malloc(ptr noundef %0, i64 noundef %i.bv) #34 ; 2 uses
  %.not144 = icmp eq ptr %i.bw, null
  br i1 %.not144, label %bb.bc, label %._crit_edge262

._crit_edge262:                                   ; preds = %bb.t
  %.3125215.pre = load ptr, ptr %i.ai, align 8, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge262, %bb.s
  %.3125215 = phi ptr [ %.3125215.pre, %._crit_edge262 ], [ %.1123203, %bb.s ] ; 2 uses
  %.0117 = phi ptr [ %i.bw, %._crit_edge262 ], [ %4, %bb.s ] ; 6 uses
  %.not145216 = icmp eq ptr %.3125215, %i.e
  br i1 %.not145216, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.u, %bb.w
  %.3125218 = phi ptr [ %.3125, %bb.w ], [ %.3125215, %bb.u ] ; 4 uses
  %.1119217 = phi ptr [ %.2120, %bb.w ], [ %.0117, %bb.u ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.3125218, i64 32
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp eq i64 %i.bz, 2                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.3125218, i64 48
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp eq i64 %i.cd, 2                    ; 2 uses
  %i.cf = select i1 %i.ca, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph220
  %i.cg = xor i1 %i.ca, true
  %i.ch = select i1 %i.ce, i16 0, i16 4
  %i.ci = zext i1 %i.cg to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.1119217, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.3125218, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = or disjoint i16 %i.ch, %i.ci
  store i32 %i.cl, ptr %.1119217, align 4, !tbaa !16
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1119217, i64 4
  store i16 %i.cm, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !101
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1119217, i64 6
  store i16 0, ptr %.sroa.311.0..sroa_idx, align 2, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph220
  %.2120 = phi ptr [ %i.cj, %bb.v ], [ %.1119217, %.lr.ph220 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.3125218, i64 8
  %.3125 = load ptr, ptr %i.cn, align 8, !tbaa !30 ; 2 uses
  %.not145 = icmp eq ptr %.3125, %i.e
  br i1 %.not145, label %._crit_edge221, label %.lr.ph220, !llvm.loop !96

._crit_edge221:                                   ; preds = %bb.w, %bb.u
  %.1119.lcssa = phi ptr [ %.0117, %bb.u ], [ %.2120, %bb.w ]
  br i1 %.not142, label %.loopexit173, label %bb.x

bb.x:                                             ; preds = %._crit_edge221
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.4126223 = load ptr, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %.not146224 = icmp eq ptr %.4126223, %i.co
  br i1 %.not146224, label %.loopexit173, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.x, %bb.z
  %.4126226 = phi ptr [ %.4126, %bb.z ], [ %.4126223, %bb.x ] ; 3 uses
  %.3121225 = phi ptr [ %.4, %bb.z ], [ %.1119.lcssa, %bb.x ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.4126226, i64 32
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = icmp eq i64 %i.cs, 2
  br i1 %i.ct, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph228
  %i.cu = getelementptr inbounds nuw i8, ptr %.4126226, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %.3121225, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !102
  store i32 %i.cy, ptr %.3121225, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.3121225, i64 4
  store i16 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.3121225, i64 6
  store i16 0, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !101
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph228
  %.4 = phi ptr [ %.3121225, %.lr.ph228 ], [ %i.cw, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.4126226, i64 8
  %.4126 = load ptr, ptr %i.cz, align 8, !tbaa !30 ; 2 uses
  %.not146 = icmp eq ptr %.4126, %i.co
  br i1 %.not146, label %.loopexit173, label %.lr.ph228, !llvm.loop !97

.loopexit173:                                     ; preds = %bb.z, %bb.x, %._crit_edge221
  %i.da = sext i32 %.2113 to i64
  %i.db = call i32 @poll(ptr noundef nonnull %.0117, i64 noundef %i.da, i32 noundef %i.ah) #34 ; 3 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %.loopexit172, label %.preheader

.preheader:                                       ; preds = %.loopexit173
  %.not240 = icmp eq i32 %i.db, 0
  br i1 %.not240, label %.loopexit172, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph239, %.loopexit
  %.in = phi i32 [ %i.db, %.lr.ph239 ], [ %i.df, %.loopexit ] ; 2 uses
  %.5238 = phi ptr [ %.0117, %.lr.ph239 ], [ %i.hu, %.loopexit ] ; 4 uses
  %i.df = add nsw i32 %.in, -1
  %i.dg = load i32, ptr %.5238, align 4, !tbaa !104
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.pn.i = phi ptr [ %i.e, %bb.aa ], [ %.0.i, %bb.ac ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !30 ; 7 uses
  %.not.i = icmp eq ptr %.0.i, %i.e
  br i1 %.not.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !38
  %i.dj = icmp eq i32 %i.di, %i.dg
  br i1 %i.dj, label %find_rh.exit, label %bb.ab, !llvm.loop !0

find_rh.exit:                                     ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = icmp eq i64 %i.dm, 2
  %i.do = select i1 %i.dn, i32 0, i32 57
  %i.dp = getelementptr inbounds nuw i8, ptr %.5238, i64 6
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !105
  %i.dr = zext i16 %i.dq to i32                   ; 2 uses
  %i.ds = and i32 %i.do, %i.dr
  %.not150 = icmp eq i32 %i.ds, 0
  br i1 %.not150, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %find_rh.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = call { i64, i64 } @JS_DupValue(ptr noundef %0, i64 %i.du, i64 %i.dl) #34 ; 2 uses
  %i.dw = extractvalue { i64, i64 } %i.dv, 0      ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dv, 1      ; 2 uses
  %i.dy = call { i64, i64 } @JS_Call(ptr noundef %0, i64 %i.dw, i64 %i.dx, i64 0, i64 3, i32 noundef 0, ptr noundef null) #34 ; 2 uses
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  %i.ea = extractvalue { i64, i64 } %i.dy, 1      ; 2 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.dw, i64 %i.dx) #34
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = icmp eq i64 %i.eb, 6
  %spec.select.i = sext i1 %i.ec to i32
  call void @JS_FreeValue(ptr noundef %0, i64 %i.dz, i64 %i.ea) #34
  br label %.loopexit172

bb.ae:                                            ; preds = %find_rh.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = icmp eq i64 %i.ef, 2
  %i.eh = select i1 %i.eg, i32 0, i32 60
  %i.ei = and i32 %i.eh, %i.dr
  %.not151 = icmp eq i32 %i.ei, 0
  br i1 %.not151, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = call { i64, i64 } @JS_DupValue(ptr noundef %0, i64 %i.ek, i64 %i.ee) #34 ; 2 uses
  %i.em = extractvalue { i64, i64 } %i.el, 0      ; 2 uses
  %i.en = extractvalue { i64, i64 } %i.el, 1      ; 2 uses
  %i.eo = call { i64, i64 } @JS_Call(ptr noundef %0, i64 %i.em, i64 %i.en, i64 0, i64 3, i32 noundef 0, ptr noundef null) #34 ; 2 uses
  %i.ep = extractvalue { i64, i64 } %i.eo, 0
  %i.eq = extractvalue { i64, i64 } %i.eo, 1      ; 2 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.em, i64 %i.en) #34
  %i.er = and i64 %i.eq, 4294967295
  %i.es = icmp eq i64 %i.er, 6
  %spec.select.i156 = sext i1 %i.es to i32
  call void @JS_FreeValue(ptr noundef %0, i64 %i.ep, i64 %i.eq) #34
  br label %.loopexit172

bb.ag:                                            ; preds = %bb.ab
  br i1 %.not142, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.5127232 = load ptr, ptr %i.de, align 8, !tbaa !30 ; 2 uses
  %.not148233 = icmp eq ptr %.5127232, %i.dd
  br i1 %.not148233, label %.loopexit, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.ah, %.thread164
  %.5127234 = phi ptr [ %.5127, %.thread164 ], [ %.5127232, %bb.ah ] ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.5127234, i64 32
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = and i64 %i.eu, 4294967295
  %i.ew = icmp eq i64 %i.ev, 2
  br i1 %i.ew, label %.thread164, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph236
  %i.ex = getelementptr inbounds nuw i8, ptr %.5127234, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 6 uses
  %i.ez = load i32, ptr %.5238, align 4, !tbaa !104
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !102
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br i1 %i.fc, label %bb.aj, label %.thread164

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fe = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fd) #34
  %.not.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i, label %js_mutex_lock.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @abort() #38
  unreachable

js_mutex_lock.exit.i:                             ; preds = %bb.aj
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30 ; 10 uses
  %.not.i157 = icmp eq ptr %i.fh, %i.ff
  br i1 %.not.i157, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %js_mutex_lock.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.5127234, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %.5127234, i64 24
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !44 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !30 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !30
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 0, i64 16, i1 false)
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !30
  %.not1.i = icmp eq ptr %i.fq, %i.ff
  br i1 %.not1.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.fr = load i32, ptr %i.fj, align 8, !tbaa !45
  %i.fs = call i64 @read(i32 noundef %i.fr, ptr noundef nonnull %i.a, i64 noundef 16) #34
  %i.ft = and i64 %i.fs, 2147483648
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %js_waker_clear.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am
  %i.fv = tail call ptr @__errno_location() #37
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16
  switch i32 %i.fw, label %js_waker_clear.exit.i [
    i32 11, label %bb.ao
    i32 4, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.fx = load i32, ptr %i.fj, align 8, !tbaa !45
  %i.fy = call i64 @read(i32 noundef %i.fx, ptr noundef nonnull %i.a, i64 noundef 16) #34
  %i.fz = and i64 %i.fy, 2147483648
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %js_waker_clear.exit.i, label %bb.an

js_waker_clear.exit.i:                            ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ap

bb.ap:                                            ; preds = %js_waker_clear.exit.i, %bb.al
  %i.gb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fd) #34
  %.not.i44.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i44.i, label %js_mutex_unlock.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @abort() #38
  unreachable

js_mutex_unlock.exit.i:                           ; preds = %bb.ap
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !51
  %i.gg = call { i64, i64 } @JS_ReadObject(ptr noundef %0, ptr noundef %i.gd, i64 noundef %i.gf, i32 noundef 12) #34 ; 2 uses
  %i.gh = extractvalue { i64, i64 } %i.gg, 0      ; 2 uses
  %i.gi = extractvalue { i64, i64 } %i.gg, 1      ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !52
  %.not.i45.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i45.i, label %js_free_message.exit.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %js_mutex_unlock.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
end_hunk_0
begin_hunk_1_@js_evalScript:bb.a
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_loadScript(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.b, i64 %i.d, i1 noundef zeroext false) #34 ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @js_load_file(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) ; 3 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.e) #34 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  %i.i = tail call { i64, i64 } @JS_Eval(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noundef nonnull %i.e, i32 noundef 0) #34 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sroa.423.0.ph = phi i64 [ 0, %bb.c ], [ %i.j, %bb.d ]
  %.sroa.6.0.ph = phi i64 [ 6, %bb.c ], [ %i.k, %bb.d ]
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.e) #34
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sroa.423.0 = phi i64 [ 0, %bb.a ], [ %.sroa.423.0.ph, %.sink.split ]
  %.sroa.6.0 = phi i64 [ 6, %bb.a ], [ %.sroa.6.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.423.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_getenv(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @getenv(ptr noundef nonnull %i.d) #34 ; 3 uses
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #36
  %i.g = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.f) #34 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.6.0 = phi i64 [ %i.i, %bb.c ], [ 6, %bb.a ], [ 3, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.4.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_setenv(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.f, i64 %i.h, i1 noundef zeroext false) #34 ; 3 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @setenv(ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, i32 noundef 1) #34 ; 0 uses
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.b ]
  %.sroa.7.0.ph = phi i64 [ 3, %bb.c ], [ 6, %bb.b ]
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %.sink) #34
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.7.0 = phi i64 [ 6, %bb.a ], [ %.sroa.7.0.ph, %.sink.split ]
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_unsetenv(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @unsetenv(ptr noundef nonnull %i.d) #34 ; 0 uses
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ 3, %bb.b ], [ 6, %bb.a ]
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_getenviron(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) #34 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 5 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @environ, align 8, !tbaa !79 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.h = phi ptr [ %i.y, %bb.e ], [ %i.g, %bb.b ] ; 3 uses
  %.036 = phi i32 [ %i.v, %bb.e ], [ 0, %bb.b ]
  %i.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 61) #36 ; 3 uses
  %.not34 = icmp eq ptr %i.i, null
  br i1 %.not34, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %i.l) #34 ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #36
  %i.q = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.o, i64 noundef %i.p) #34 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = tail call i32 @JS_DefinePropertyValue(ptr noundef %0, i64 %i.b, i64 %i.c, i32 noundef %i.m, i64 %i.r, i64 %i.s, i32 noundef 7) #34
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.m) #34
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.v = add i32 %.036, 1                         ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !141

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.sroa.430.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.b, %bb.b ], [ %i.b, %bb.e ]
  %.sroa.6.0 = phi i64 [ 6, %bb.a ], [ 6, %bb.f ], [ %i.c, %bb.b ], [ %i.c, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.430.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_urlGet(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.DynBuf, align 8             ; 22 uses
  %6 = alloca %struct.DynBuf, align 8             ; 13 uses
  %7 = alloca %struct.DynBuf, align 8             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %.0.sroa.gep214 = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br i1 %.not, label %dbuf_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %3, 1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.018.0.copyload = load i64, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.g = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.018.0.copyload, i64 %.sroa.5.0.copyload, ptr noundef nonnull @.str.86) #34 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 3 uses
  %trunc.i = trunc i64 %i.i to i32
  switch i32 %trunc.i, label %bb.d [
    i32 6, label %get_bool_option.exit
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @JS_ToBool(ptr noundef %0, i64 %i.h, i64 %i.i) #34
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1221 = phi i1 [ %i.k, %bb.d ], [ false, %bb.c ]
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.h, i64 %i.i) #34
  %i.l = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.018.0.copyload, i64 %.sroa.5.0.copyload, ptr noundef nonnull @.str.87) #34 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 3 uses
  %trunc.i165 = trunc i64 %i.n to i32
  switch i32 %trunc.i165, label %bb.f [
    i32 6, label %get_bool_option.exit
    i32 3, label %get_bool_option.exit167.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @JS_ToBool(ptr noundef %0, i64 %i.m, i64 %i.n) #34
  %i.p = icmp ne i32 %i.o, 0
  br label %get_bool_option.exit167.thread

get_bool_option.exit167.thread:                   ; preds = %bb.e, %bb.f
  %.1219 = phi i1 [ %i.p, %bb.f ], [ false, %bb.e ]
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.m, i64 %i.n) #34
  br label %bb.g

get_bool_option.exit:                             ; preds = %bb.e, %bb.c
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  br label %dbuf_free.exit

bb.g:                                             ; preds = %get_bool_option.exit167.thread, %bb.b
  %.0220 = phi i1 [ %.1221, %get_bool_option.exit167.thread ], [ false, %bb.b ]
  %.0218 = phi i1 [ %.1219, %get_bool_option.exit167.thread ], [ false, %bb.b ] ; 2 uses
  %i.q = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr @js_std_dbuf_realloc, ptr %i.s, align 8, !tbaa !61
  call void (ptr, ptr, ...) @dbuf_printf(ptr noundef %5, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 14 uses
  br label %bb.h

bb.h:                                             ; preds = %dbuf_putstr.exit, %bb.g
  %.0144 = phi i64 [ 0, %bb.g ], [ %i.az, %dbuf_putstr.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0144
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12    ; 3 uses
  switch i8 %i.w, label %.dbuf_putc.exit_crit_edge [
    i8 0, label %bb.t
    i8 39, label %bb.i
    i8 91, label %bb.l
    i8 93, label %bb.l
    i8 123, label %bb.l
    i8 125, label %bb.l
    i8 92, label %bb.l
  ]

.dbuf_putc.exit_crit_edge:                        ; preds = %bb.h
  %.pre286.a = load i64, ptr %i.u, align 8, !tbaa !63
  br label %dbuf_putc.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.y = add i64 %i.x, 4                          ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !62
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.ab = call fastcc i32 @dbuf_claim(ptr noundef nonnull %5, i64 noundef 4)
  %.not.i.i.not = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.not, label %._crit_edge278, label %dbuf_putstr.exit

._crit_edge278:                                   ; preds = %bb.j
  %.pre = load i64, ptr %i.u, align 8, !tbaa !63  ; 2 uses
  %.pre293.a = add i64 %.pre, 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge278, %bb.i
  %.pre-phi294.a = phi i64 [ %.pre293.a, %._crit_edge278 ], [ %i.y, %bb.i ]
  %i.ac = phi i64 [ %.pre, %._crit_edge278 ], [ %i.x, %bb.i ]
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i32 656890919, ptr %i.ae, align 1
  store i64 %.pre-phi294.a, ptr %i.u, align 8, !tbaa !63
  br label %dbuf_putstr.exit

bb.l:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.af = load i64, ptr %i.t, align 8, !tbaa !62  ; 2 uses
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !63  ; 3 uses
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.m, label %bb.o, !prof !76

bb.m:                                             ; preds = %bb.l
  %.not319 = icmp eq i64 %i.af, -1
  br i1 %.not319, label %._crit_edge.i202, label %bb.n, !prof !69

bb.n:                                             ; preds = %bb.m
  %i.ai = call fastcc i32 @dbuf_claim(ptr noundef nonnull %5, i64 noundef 1)
  %.not.i.i201 = icmp eq i32 %i.ai, 0
  %.pre287.a = load i64, ptr %i.u, align 8, !tbaa !63 ; 2 uses
  br i1 %.not.i.i201, label %._crit_edge.i202, label %dbuf_putc.exit

._crit_edge.i202:                                 ; preds = %bb.n, %bb.m
  %i.aj = phi i64 [ -1, %bb.m ], [ %.pre287.a, %bb.n ] ; 2 uses
  %.pre-phi296 = add i64 %i.aj, 1                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 92, ptr %i.al, align 1
  store i64 %.pre-phi296, ptr %i.u, align 8, !tbaa !63
  br label %dbuf_putc.exit

bb.o:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %5, align 8, !tbaa !64
  %i.an = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.an, ptr %i.u, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 92, ptr %i.ao, align 1, !tbaa !12
  br label %dbuf_putc.exit

dbuf_putc.exit:                                   ; preds = %.dbuf_putc.exit_crit_edge, %bb.o, %bb.n, %._crit_edge.i202
  %i.ap = phi i64 [ %.pre286.a, %.dbuf_putc.exit_crit_edge ], [ %i.an, %bb.o ], [ %.pre287.a, %bb.n ], [ %.pre-phi296, %._crit_edge.i202 ] ; 4 uses
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !62
  %i.ar = icmp eq i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.s, !prof !76

bb.p:                                             ; preds = %dbuf_putc.exit
  %.not320 = icmp eq i64 %i.ap, -1
  br i1 %.not320, label %bb.r, label %bb.q, !prof !69

bb.q:                                             ; preds = %bb.p
  %i.as = call fastcc i32 @dbuf_claim(ptr noundef nonnull %5, i64 noundef 1)
  %.not.i.i204 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i204, label %._crit_edge.i205, label %dbuf_putstr.exit

._crit_edge.i205:                                 ; preds = %bb.q
  %.pre.i206 = load i64, ptr %i.u, align 8, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i205, %bb.p
  %i.at = phi i64 [ %.pre.i206, %._crit_edge.i205 ], [ -1, %bb.p ] ; 2 uses
  %.pre-phi = add i64 %i.at, 1
  %i.au = load ptr, ptr %5, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 %i.w, ptr %i.av, align 1
  store i64 %.pre-phi, ptr %i.u, align 8, !tbaa !63
  br label %dbuf_putstr.exit

bb.s:                                             ; preds = %dbuf_putc.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !64
  %i.ax = add i64 %i.ap, 1
  store i64 %i.ax, ptr %i.u, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ap
  store i8 %i.w, ptr %i.ay, align 1, !tbaa !12
  br label %dbuf_putstr.exit

dbuf_putstr.exit:                                 ; preds = %bb.s, %bb.q, %bb.r, %bb.k, %bb.j
  %i.az = add i64 %.0144, 1
  br label %bb.h, !llvm.loop !142

bb.t:                                             ; preds = %bb.h
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  %i.ba = load i64, ptr %i.u, align 8, !tbaa !63  ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 2 uses
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !62
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.v, !prof !76
end_hunk_1
begin_hunk_2_@js_std_urlGet:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bi
  store i8 0, ptr %i.bn, align 1, !tbaa !12
  br label %dbuf_putc.exit176

dbuf_putc.exit176:                                ; preds = %bb.w, %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val164 = load i8, ptr %i.bo, align 8, !tbaa !77, !range !67, !noundef !68
  %i.bp = trunc nuw i8 %.val164 to i1
  %i.bq = load ptr, ptr %5, align 8, !tbaa !64    ; 5 uses
  br i1 %i.bp, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %dbuf_putc.exit176
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %dbuf_free.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.bt = tail call ptr %i.br(ptr noundef %i.bs, ptr noundef nonnull %i.bq, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit

bb.aa:                                            ; preds = %dbuf_putc.exit176
  %i.bu = tail call noalias ptr @popen(ptr noundef %i.bq, ptr noundef nonnull @.str.92) ; 7 uses
  %.not.i177 = icmp eq ptr %i.bq, null
  br i1 %.not.i177, label %dbuf_free.exit178, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.bw = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.bx = tail call ptr %i.bv(ptr noundef %i.bw, ptr noundef nonnull %i.bq, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit178

dbuf_free.exit178:                                ; preds = %bb.aa, %bb.ab
  %.not156 = icmp eq ptr %i.bu, null
  br i1 %.not156, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %dbuf_free.exit178
  %i.by = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.93) #34 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0      ; 2 uses
  %.sroa.7.0.extract.shift = and i64 %i.bz, -4294967296
  %i.ca = extractvalue { i64, i64 } %i.by, 1
  br label %dbuf_free.exit

bb.ad:                                            ; preds = %dbuf_free.exit178
  %i.cb = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 32, i1 false)
  store ptr %i.cb, ptr %.0.sroa.gep214, align 8, !tbaa !60
  store ptr @js_std_dbuf_realloc, ptr %.0.sroa.gep, align 8, !tbaa !61
  %i.cc = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 32, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr @js_std_dbuf_realloc, ptr %i.ce, align 8, !tbaa !61
  %i.cf = tail call ptr @js_malloc(ptr noundef %0, i64 noundef 4096) #34 ; 16 uses
  %.not157 = icmp eq ptr %i.cf, null
  br i1 %.not157, label %bb.bf, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %dbuf_putc.exit.us.i, %bb.ae
  %.0.us.i = phi ptr [ %.1.us.i, %dbuf_putc.exit.us.i ], [ %i.cf, %bb.ae ] ; 4 uses
  %i.ch = tail call i32 @fgetc(ptr noundef nonnull %i.bu) ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %http_get_header_line.exit.thread, label %bb.af

bb.af:                                            ; preds = %.split.us.i
  %i.cj = ptrtoint ptr %.0.us.i to i64
  %i.ck = sub i64 %i.cj, %i.cg
  %i.cl = icmp ult i64 %i.ck, 4095
  br i1 %i.cl, label %bb.ag, label %dbuf_putc.exit.us.i

bb.ag:                                            ; preds = %bb.af
  %i.cm = trunc i32 %i.ch to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 1
  store i8 %i.cm, ptr %.0.us.i, align 1, !tbaa !12
  br label %dbuf_putc.exit.us.i

dbuf_putc.exit.us.i:                              ; preds = %bb.ag, %bb.af
  %.1.us.i = phi ptr [ %i.cn, %bb.ag ], [ %.0.us.i, %bb.af ] ; 2 uses
  %i.co = icmp eq i32 %i.ch, 10
  br i1 %i.co, label %bb.ah, label %.split.us.i

bb.ah:                                            ; preds = %dbuf_putc.exit.us.i
  store i8 0, ptr %.1.us.i, align 1, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.0.i179 = phi ptr [ %i.cf, %bb.ah ], [ %i.cq, %bb.aj ] ; 3 uses
  %i.cp = load i8, ptr %.0.i179, align 1, !tbaa !12
  switch i8 %i.cp, label %bb.aj [
    i8 32, label %.preheaderthread-pre-split.i
    i8 0, label %http_get_status.exit
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i179, i64 1
  br label %bb.ai, !llvm.loop !143

.preheaderthread-pre-split.i:                     ; preds = %bb.ai, %.preheaderthread-pre-split.i
  %.1.i273 = phi ptr [ %i.cr, %.preheaderthread-pre-split.i ], [ %.0.i179, %bb.ai ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i273, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.cr, align 1, !tbaa !12
  %i.cs = icmp eq i8 %.pr.i, 32
  br i1 %i.cs, label %.preheaderthread-pre-split.i, label %bb.ak, !llvm.loop !144

bb.ak:                                            ; preds = %.preheaderthread-pre-split.i
  %i.ct = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.cr, ptr noundef null, i32 noundef 10) #34, !inline_history !145
  %i.cu = trunc i64 %i.ct to i32
  br label %http_get_status.exit

http_get_status.exit:                             ; preds = %bb.ai, %bb.ak
  %.08.i = phi i32 [ %i.cu, %bb.ak ], [ 0, %bb.ai ] ; 4 uses
  %i.cv = add i32 %.08.i, -200
  %or.cond = icmp ult i32 %i.cv, 100
  %or.cond162 = select i1 %.0218, i1 true, i1 %or.cond
  br i1 %or.cond162, label %.preheader, label %http_get_header_line.exit.thread

.preheader:                                       ; preds = %http_get_status.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  br label %.split.i

.split.i:                                         ; preds = %.split.i.backedge, %.preheader
  %.0.i181 = phi ptr [ %i.cf, %.preheader ], [ %.0.i181.be, %.split.i.backedge ] ; 4 uses
  %i.da = tail call i32 @fgetc(ptr noundef nonnull %i.bu) ; 3 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %http_get_header_line.exit.thread, label %bb.al

bb.al:                                            ; preds = %.split.i
  %i.dc = ptrtoint ptr %.0.i181 to i64
  %i.dd = sub i64 %i.dc, %i.cg
  %i.de = icmp ult i64 %i.dd, 4095
  %i.df = trunc i32 %i.da to i8                   ; 3 uses
  br i1 %i.de, label %bb.am, label %._crit_edge.i

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i181, i64 1
  store i8 %i.df, ptr %.0.i181, align 1, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am, %bb.al
  %.1.i182 = phi ptr [ %i.dg, %bb.am ], [ %.0.i181, %bb.al ] ; 2 uses
  %i.dh = load i64, ptr %i.cw, align 8, !tbaa !62
  %i.di = load i64, ptr %i.cx, align 8, !tbaa !63 ; 3 uses
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.an, label %bb.ao, !prof !76

bb.an:                                            ; preds = %._crit_edge.i
  %i.dk = call fastcc i32 @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext %i.df) ; 0 uses
  br label %dbuf_putc.exit.i

bb.ao:                                            ; preds = %._crit_edge.i
  %i.dl = load ptr, ptr %7, align 8, !tbaa !64
  %i.dm = add i64 %i.di, 1
  store i64 %i.dm, ptr %i.cx, align 8, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !12
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.ao, %bb.an
  %i.do = icmp eq i32 %i.da, 10
  br i1 %i.do, label %sub_0, label %.split.i.backedge

.split.i.backedge:                                ; preds = %dbuf_putc.exit.i, %sub_1, %sub_0, %sub_2
  %.0.i181.be = phi ptr [ %.1.i182, %dbuf_putc.exit.i ], [ %i.cf, %sub_1 ], [ %i.cf, %sub_0 ], [ %i.cf, %sub_2 ]
  br label %.split.i

sub_0:                                            ; preds = %dbuf_putc.exit.i
  store i8 0, ptr %.1.i182, align 1, !tbaa !12
  %i.dp = load i8, ptr %i.cf, align 1
  %.not274 = icmp eq i8 %i.dp, 13
  br i1 %.not274, label %sub_1, label %.split.i.backedge

sub_1:                                            ; preds = %sub_0
  %i.dq = load i8, ptr %i.cy, align 1
  %.not275 = icmp eq i8 %i.dq, 10
  br i1 %.not275, label %sub_2, label %.split.i.backedge

sub_2:                                            ; preds = %sub_1
  %i.dr = load i8, ptr %i.cz, align 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ap, label %.split.i.backedge

bb.ap:                                            ; preds = %sub_2
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val163 = load i8, ptr %i.dt, align 8, !tbaa !77, !range !67, !noundef !68
  %i.du = trunc nuw i8 %.val163 to i1
  br i1 %i.du, label %bb.bf, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = load i64, ptr %i.cx, align 8, !tbaa !63
  %i.dw = add i64 %i.dv, -2
  store i64 %i.dw, ptr %i.cx, align 8, !tbaa !63
  %i.dx = tail call i64 @fread(ptr noundef nonnull %i.cf, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %i.bu) ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.au, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %dbuf_put.exit
  %i.eb = phi i64 [ %i.dx, %.lr.ph ], [ %i.ek, %dbuf_put.exit ] ; 4 uses
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !63 ; 2 uses
  %i.ed = add i64 %i.ec, %i.eb                    ; 2 uses
  %i.ee = load i64, ptr %i.ea, align 8, !tbaa !62
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.as, label %bb.at, !prof !76

bb.as:                                            ; preds = %bb.ar
  %i.eg = call fastcc i32 @dbuf_claim(ptr noundef nonnull %6, i64 noundef %i.eb)
  %.not.i191 = icmp eq i32 %i.eg, 0
  br i1 %.not.i191, label %._crit_edge282, label %dbuf_put.exit

._crit_edge282:                                   ; preds = %bb.as
  %.pre283 = load i64, ptr %i.dz, align 8, !tbaa !63 ; 2 uses
  %.pre291 = add i64 %.pre283, %i.eb
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge282, %bb.ar
  %.pre-phi292 = phi i64 [ %.pre291, %._crit_edge282 ], [ %i.ed, %bb.ar ]
  %i.eh = phi i64 [ %.pre283, %._crit_edge282 ], [ %i.ec, %bb.ar ]
  %i.ei = load ptr, ptr %6, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr nonnull readonly align 1 %i.cf, i64 %i.eb, i1 false)
  store i64 %.pre-phi292, ptr %i.dz, align 8, !tbaa !63
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.as, %bb.at
  %i.ek = tail call i64 @fread(ptr noundef nonnull %i.cf, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %i.bu) ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %._crit_edge, label %bb.ar

._crit_edge:                                      ; preds = %dbuf_put.exit
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.val = load i8, ptr %i.em, align 8, !tbaa !77, !range !67
  %i.en = trunc nuw i8 %.val to i1
  br i1 %i.en, label %._crit_edge._crit_edge, label %bb.au

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre287 = load ptr, ptr %6, align 8, !tbaa !64
  br label %bb.bf

bb.au:                                            ; preds = %bb.aq, %._crit_edge
  %i.eo = load ptr, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !63 ; 2 uses
  br i1 %.0220, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.er = tail call { i64, i64 } @JS_NewArrayBufferCopy(ptr noundef %0, ptr noundef %i.eo, i64 noundef %i.eq) #34
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.es = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %i.eo, i64 noundef %i.eq) #34
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { i64, i64 } [ %i.er, %bb.av ], [ %i.es, %bb.aw ] ; 2 uses
  %.sroa.031.sroa.0.0.in = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %.sroa.031.sroa.11.0.in = lshr i64 %.sroa.031.sroa.0.0.in, 32
  %.sroa.031.sroa.11.0 = trunc nuw i64 %.sroa.031.sroa.11.0.in to i32 ; 2 uses
  %.sroa.031.sroa.0.0 = trunc i64 %.sroa.031.sroa.0.0.in to i32 ; 2 uses
  %.sroa.12.0 = extractvalue { i64, i64 } %.pn, 1 ; 3 uses
  %i.et = and i64 %.sroa.12.0, 4294967295
  %i.eu = icmp eq i64 %i.et, 6
  br i1 %i.eu, label %bb.bf, label %http_get_header_line.exit.thread

http_get_header_line.exit.thread:                 ; preds = %.split.us.i, %.split.i, %http_get_status.exit, %bb.ax
  %8 = phi ptr [ %i.eo, %bb.ax ], [ null, %http_get_status.exit ], [ null, %.split.i ], [ null, %.split.us.i ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %.sroa.12.0, %bb.ax ], [ 2, %http_get_status.exit ], [ 2, %.split.i ], [ 2, %.split.us.i ] ; 4 uses
  %.sroa.031.sroa.0.1 = phi i32 [ %.sroa.031.sroa.0.0, %bb.ax ], [ 0, %http_get_status.exit ], [ 0, %.split.i ], [ 0, %.split.us.i ] ; 3 uses
  %.sroa.031.sroa.11.1 = phi i32 [ %.sroa.031.sroa.11.0, %bb.ax ], [ 0, %http_get_status.exit ], [ 0, %.split.i ], [ 0, %.split.us.i ] ; 3 uses
  %.1 = phi i32 [ %.08.i, %bb.ax ], [ %.08.i, %http_get_status.exit ], [ %.08.i, %.split.i ], [ 0, %.split.us.i ]
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.cf) #34
  %i.ev = tail call i32 @pclose(ptr noundef nonnull %i.bu) ; 0 uses
  %.not.i192 = icmp eq ptr %8, null
  br i1 %.not.i192, label %dbuf_free.exit193, label %bb.ay

bb.ay:                                            ; preds = %http_get_header_line.exit.thread
  %i.ew = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !61
  %i.ex = load ptr, ptr %.0.sroa.gep214, align 8, !tbaa !60
  %i.ey = tail call ptr %i.ew(ptr noundef %i.ex, ptr noundef nonnull %8, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit193

dbuf_free.exit193:                                ; preds = %http_get_header_line.exit.thread, %bb.ay
  br i1 %.0218, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %dbuf_free.exit193
  %i.ez = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) #34 ; 2 uses
  %i.fa = extractvalue { i64, i64 } %i.ez, 0      ; 5 uses
  %i.fb = extractvalue { i64, i64 } %i.ez, 1      ; 6 uses
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = icmp eq i64 %i.fc, 6
  br i1 %i.fd, label %.thread256, label %bb.ba

.thread256:                                       ; preds = %bb.az
  tail call void @js_free(ptr noundef %0, ptr noundef null) #34
  br label %dbuf_free.exit197

bb.ba:                                            ; preds = %bb.az
  %.sroa.031.sroa.11.0.insert.ext53 = zext i32 %.sroa.031.sroa.11.1 to i64
  %.sroa.031.sroa.11.0.insert.shift54 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext53, 32
  %.sroa.031.sroa.0.0.insert.ext39 = zext i32 %.sroa.031.sroa.0.1 to i64
  %.sroa.031.sroa.0.0.insert.insert41 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift54, %.sroa.031.sroa.0.0.insert.ext39
  %i.fe = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fa, i64 %i.fb, ptr noundef nonnull @.str.95, i64 %.sroa.031.sroa.0.0.insert.insert41, i64 %.sroa.12.1, i32 noundef 7) #34 ; 0 uses
  %i.ff = and i64 %.sroa.12.1, 4294967295
  %i.fg = icmp eq i64 %i.ff, 2
  %.pre285.a = load ptr, ptr %7, align 8, !tbaa !64 ; 3 uses
  br i1 %i.fg, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !63
  %i.fj = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %.pre285.a, i64 noundef %i.fi) #34 ; 2 uses
  %i.fk = extractvalue { i64, i64 } %i.fj, 0
  %i.fl = extractvalue { i64, i64 } %i.fj, 1
  %i.fm = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fa, i64 %i.fb, ptr noundef nonnull @.str.96, i64 %i.fk, i64 %i.fl, i32 noundef 7) #34 ; 0 uses
  %.sroa.0.0.insert.ext.i = zext i32 %.1 to i64
  %i.fn = tail call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.fa, i64 %i.fb, ptr noundef nonnull @.str.97, i64 %.sroa.0.0.insert.ext.i, i64 0, i32 noundef 7) #34 ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %dbuf_free.exit193
  %.sroa.031.sroa.11.0.insert.ext67 = zext i32 %.sroa.031.sroa.11.1 to i64
  %.sroa.031.sroa.11.0.insert.shift68 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext67, 32
  %.sroa.031.sroa.0.0.insert.ext49 = zext i32 %.sroa.031.sroa.0.1 to i64
  %.sroa.031.sroa.0.0.insert.insert51 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift68, %.sroa.031.sroa.0.0.insert.ext49
  %.pre284 = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.fo = phi ptr [ %.pre285.a, %bb.ba ], [ %.pre285.a, %bb.bb ], [ %.pre284, %bb.bc ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %i.fb, %bb.ba ], [ %i.fb, %bb.bb ], [ %.sroa.12.1, %bb.bc ]
  %.sroa.021.0 = phi i64 [ %i.fa, %bb.ba ], [ %i.fa, %bb.bb ], [ %.sroa.031.sroa.0.0.insert.insert51, %bb.bc ] ; 2 uses
  %.not.i194 = icmp eq ptr %i.fo, null
  br i1 %.not.i194, label %dbuf_free.exit195, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.fq = load ptr, ptr %i.cd, align 8, !tbaa !60
  %i.fr = tail call ptr %i.fp(ptr noundef %i.fq, ptr noundef nonnull %i.fo, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit195

dbuf_free.exit195:                                ; preds = %bb.bd, %bb.be
  %.sroa.7.0.extract.shift141 = and i64 %.sroa.021.0, -4294967296
  br label %dbuf_free.exit

bb.bf:                                            ; preds = %._crit_edge._crit_edge, %bb.ap, %bb.ax, %bb.ad
  %9 = phi ptr [ null, %bb.ad ], [ %i.eo, %bb.ax ], [ %.pre287, %._crit_edge._crit_edge ], [ null, %bb.ap ] ; 2 uses
  %.sroa.12.2.ph = phi i64 [ 3, %bb.ad ], [ %.sroa.12.0, %bb.ax ], [ 3, %._crit_edge._crit_edge ], [ 3, %bb.ap ] ; 2 uses
  %.sroa.031.sroa.0.2.ph = phi i32 [ 0, %bb.ad ], [ %.sroa.031.sroa.0.0, %bb.ax ], [ 0, %._crit_edge._crit_edge ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.031.sroa.11.2.ph = phi i32 [ 0, %bb.ad ], [ %.sroa.031.sroa.11.0, %bb.ax ], [ 0, %._crit_edge._crit_edge ], [ 0, %bb.ap ] ; 2 uses
  %i.fs = tail call i32 @pclose(ptr noundef nonnull %i.bu) ; 0 uses
  tail call void @js_free(ptr noundef %0, ptr noundef %i.cf) #34
  %.not.i196 = icmp eq ptr %9, null
  br i1 %.not.i196, label %dbuf_free.exit197, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = load ptr, ptr %.0.sroa.gep, align 8, !tbaa !61
  %i.fu = load ptr, ptr %.0.sroa.gep214, align 8, !tbaa !60
  %i.fv = tail call ptr %i.ft(ptr noundef %i.fu, ptr noundef nonnull %9, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit197

dbuf_free.exit197:                                ; preds = %bb.bg, %bb.bf, %.thread256
  %.sroa.12.2243267 = phi i64 [ %.sroa.12.1, %.thread256 ], [ %.sroa.12.2.ph, %bb.bf ], [ %.sroa.12.2.ph, %bb.bg ]
  %.sroa.031.sroa.0.2245266 = phi i32 [ %.sroa.031.sroa.0.1, %.thread256 ], [ %.sroa.031.sroa.0.2.ph, %bb.bf ], [ %.sroa.031.sroa.0.2.ph, %bb.bg ]
  %.sroa.031.sroa.11.2247265 = phi i32 [ %.sroa.031.sroa.11.1, %.thread256 ], [ %.sroa.031.sroa.11.2.ph, %bb.bf ], [ %.sroa.031.sroa.11.2.ph, %bb.bg ]
  %i.fw = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %.not.i198 = icmp eq ptr %i.fw, null
  br i1 %.not.i198, label %dbuf_free.exit199, label %bb.bh

bb.bh:                                            ; preds = %dbuf_free.exit197
  %i.fx = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.fy = load ptr, ptr %i.cd, align 8, !tbaa !60
  %i.fz = tail call ptr %i.fx(ptr noundef %i.fy, ptr noundef nonnull %i.fw, i64 noundef 0) #34, !inline_history !2 ; 0 uses
  br label %dbuf_free.exit199

dbuf_free.exit199:                                ; preds = %dbuf_free.exit197, %bb.bh
  %.sroa.031.sroa.11.0.insert.ext61 = zext i32 %.sroa.031.sroa.11.2247265 to i64
  %.sroa.031.sroa.11.0.insert.shift62 = shl nuw i64 %.sroa.031.sroa.11.0.insert.ext61, 32
  %.sroa.031.sroa.0.0.insert.ext45 = zext i32 %.sroa.031.sroa.0.2245266 to i64
  %.sroa.031.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.031.sroa.11.0.insert.shift62, %.sroa.031.sroa.0.0.insert.ext45
  tail call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.031.sroa.0.0.insert.insert47, i64 %.sroa.12.2243267) #34
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.z, %bb.y, %bb.a, %dbuf_free.exit199, %dbuf_free.exit195, %bb.ac, %get_bool_option.exit
  %.sroa.0139.0 = phi i64 [ 0, %get_bool_option.exit ], [ 0, %bb.a ], [ 0, %dbuf_free.exit199 ], [ %.sroa.021.0, %dbuf_free.exit195 ], [ %i.bz, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.sroa.7.0 = phi i64 [ 0, %get_bool_option.exit ], [ 0, %bb.a ], [ 0, %dbuf_free.exit199 ], [ %.sroa.7.0.extract.shift141, %dbuf_free.exit195 ], [ %.sroa.7.0.extract.shift, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.sroa.11.0 = phi i64 [ 6, %get_bool_option.exit ], [ 6, %bb.a ], [ 6, %dbuf_free.exit199 ], [ %.sroa.9.0, %dbuf_free.exit195 ], [ %i.ca, %bb.ac ], [ 6, %bb.y ], [ 6, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.sroa.0139.0.insert.ext = and i64 %.sroa.0139.0, 4294967295
  %.sroa.0139.0.insert.insert = or disjoint i64 %.sroa.7.0, %.sroa.0139.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0139.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_loadFile(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = icmp sgt i32 %3, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.04.0.copyload = load i64, ptr %i.c, align 8, !tbaa !12
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !15
  %i.d = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.04.0.copyload, i64 %.sroa.45.0.copyload, ptr noundef nonnull @.str.86) #34 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %trunc.i = trunc i64 %i.f to i32
  switch i32 %trunc.i, label %bb.c [
    i32 6, label %get_bool_option.exit
    i32 3, label %get_bool_option.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @JS_ToBool(ptr noundef %0, i64 %i.e, i64 %i.f) #34
  %i.h = icmp ne i32 %i.g, 0
  br label %get_bool_option.exit.thread

get_bool_option.exit.thread:                      ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ %i.h, %bb.c ], [ false, %bb.b ]
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.e, i64 %i.f) #34
  br label %bb.d

bb.d:                                             ; preds = %get_bool_option.exit.thread, %bb.a
  %.0 = phi i1 [ %.1, %get_bool_option.exit.thread ], [ false, %bb.a ]
  %i.i = load i64, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.i, i64 %i.k, i1 noundef zeroext false) #34 ; 3 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %get_bool_option.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @js_load_file(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) ; 4 uses
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.l) #34
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %get_bool_option.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call { i64, i64 } @JS_NewUint8Array(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull @js_realloc_array_buffer, ptr noundef null, i1 noundef zeroext false) #34
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n) #34
  tail call void @js_free(ptr noundef %0, ptr noundef nonnull %i.m) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { i64, i64 } [ %i.o, %bb.g ], [ %i.p, %bb.h ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  br label %get_bool_option.exit

get_bool_option.exit:                             ; preds = %bb.b, %bb.e, %bb.d, %bb.i
  %.sroa.523.0 = phi i64 [ 0, %bb.e ], [ %.sroa.03.0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.b ]
  %.sroa.8.0 = phi i64 [ 2, %bb.e ], [ %.sroa.5.0, %bb.i ], [ 6, %bb.d ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.523.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_writeFile(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.034.0.copyload = load i64, ptr %i.b, align 8, !tbaa !12 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !15 ; 4 uses
  %i.c = load i64, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.c, i64 %i.e, i1 noundef zeroext false) #34 ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.sroa.10.0.copyload, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %.sroa.034.0.copyload, i64 %.sroa.10.0.copyload, ptr noundef nonnull @.str.100) #34 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 5 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 5 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 6
  br i1 %i.m, label %.thread87, label %bb.d

.thread87:                                        ; preds = %bb.c
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @JS_IsArrayBuffer(i64 %i.j, i64 %i.k) #34
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.013.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %.sroa.013.sroa.6.0.extract.shift = lshr i64 %i.j, 32
  %.sroa.013.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.013.sroa.6.0.extract.shift to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.j, i64 %i.k) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.013.sroa.0.0 = phi i32 [ %.sroa.013.sroa.0.0.extract.trunc, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.7.0 = phi i64 [ %i.k, %bb.e ], [ 3, %bb.f ], [ 3, %bb.b ] ; 4 uses
  %.sroa.013.sroa.6.0 = phi i32 [ %.sroa.013.sroa.6.0.extract.trunc, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.034.0 = phi i64 [ %i.j, %bb.e ], [ %.sroa.034.0.copyload, %bb.f ], [ %.sroa.034.0.copyload, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %i.k, %bb.e ], [ %.sroa.10.0.copyload, %bb.f ], [ %.sroa.10.0.copyload, %bb.b ] ; 4 uses
  %i.o = tail call zeroext i1 @JS_IsArrayBuffer(i64 %.sroa.034.0, i64 %.sroa.10.0) #34 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @JS_GetArrayBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.034.0, i64 %.sroa.10.0) #34
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.q = and i64 %.sroa.10.0, 4294967295
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.034.0, i64 %.sroa.10.0, i1 noundef zeroext false) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.072 = phi ptr [ %i.p, %bb.h ], [ %i.s, %bb.j ] ; 2 uses
  %.0 = phi ptr [ @.str.101, %bb.h ], [ @.str.99, %bb.j ]
  %.073 = xor i1 %i.o, true                       ; 2 uses
  %.not77 = icmp eq ptr %.072, null
  br i1 %.not77, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %.086 = phi ptr [ %.0, %bb.k ], [ @.str.99, %bb.i ]
  %.07285 = phi ptr [ %.072, %bb.k ], [ @.str.98, %bb.i ] ; 4 uses
end_hunk_2
