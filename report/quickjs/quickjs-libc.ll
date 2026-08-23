Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs-libc?download=true
inline.NumInlined: 425
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@js_module_set_import_meta:bb.a
  %.sroa.0.0.insert.ext.i = zext i1 %4 to i64
  %i.an = call i32 @JS_DefinePropertyValueStr(ptr noundef %0, i64 %i.ah, i64 %i.ae, ptr noundef nonnull @.str.4, i64 %.sroa.0.0.insert.ext.i, i64 1, i32 noundef 7) #34 ; 0 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.ah, i64 %i.ae) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %.critedge, %bb.a, %bb.i
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.i ], [ -1, %bb.e ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.1
}

declare i32 @JS_GetModuleName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @JS_FreeAtom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare { i64, i64 } @JS_ThrowTypeError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @JS_FreeCString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_GetImportMeta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JS_DefinePropertyValueStr(ptr noundef, i64, i64, ptr noundef, i64, i64, i32 noundef) local_unnamed_addr #3

declare void @JS_FreeValue(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @js_module_check_attributes(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.d = call i32 @JS_GetOwnPropertyNames(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 %2, i64 %3, i32 noundef 17) #34
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 4, !tbaa !14
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = call ptr @JS_AtomToCStringLen(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.i) #34 ; 5 uses
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %i.c, align 8, !tbaa !12
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 1
  %i.n = icmp ne i32 %i.m, 1701869940
  %i.o = zext i1 %i.n to i32
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  %i.p = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.j) #34 ; 0 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.j) #34
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.j) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !14
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %.preheader, %.critedge
  %.2 = phi i32 [ -1, %.critedge ], [ 0, %.preheader ], [ 0, %bb.d ], [ -1, %.lr.ph ]
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.u = load i32, ptr %i.b, align 4, !tbaa !14
  call void @JS_FreePropertyEnum(ptr noundef %0, ptr noundef %i.t, i32 noundef %i.u) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi i32 [ %.2, %.loopexit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.0
}

declare i32 @JS_GetOwnPropertyNames(ptr noundef, ptr noundef, ptr noundef, i64, i64, i32 noundef) local_unnamed_addr #3

declare ptr @JS_AtomToCStringLen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @JS_FreePropertyEnum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @js_module_load(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.c = and i64 %4, 4294967295
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %3, i64 %4, ptr noundef nonnull @.str.5) #34 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 5 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %js_module_import_type.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.g to i32
  %i.k = add i32 %i.j, 7
  %i.l = icmp ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.f, i64 %i.g) #34
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g, i1 noundef zeroext false) #34 ; 8 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.f, i64 %i.g) #34
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %js_module_import_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !12
  switch i64 %i.n, label %js_module_import_type.exit [
    i64 4, label %bb.g
    i64 5, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 1
  %i.p = icmp ne i32 %i.o, 1852797802
  %i.q = zext i1 %i.p to i32
  %.not31.i = icmp eq i32 %i.q, 0
  br i1 %.not31.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.m, align 1
  %i.s = icmp ne i32 %i.r, 1954047348
  %i.t = zext i1 %i.s to i32
  %.not33.i = icmp eq i32 %i.t, 0
  br i1 %.not33.i, label %bb.j, label %js_module_import_type.exit

bb.i:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.m, align 1
  %i.v = xor i32 %i.u, 1702132066
  %i.w = getelementptr i8, ptr %i.m, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, 115
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not35.i = icmp eq i32 %i.ac, 0
  br i1 %.not35.i, label %bb.j, label %js_module_import_type.exit

js_module_import_type.exit.thread:                ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ab

js_module_import_type.exit:                       ; preds = %bb.f, %bb.h, %bb.i
  %i.ad = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.m) #34 ; 0 uses
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ab

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.026.i.ph = phi i32 [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ]
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #36 ; 2 uses
  %.not.i75 = icmp ult i64 %i.ae, 5
  br i1 %.not.i75, label %bb.l, label %js__has_suffix.exit

js__has_suffix.exit:                              ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -5 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1869834798
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.al, 110
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.not, label %js__has_suffix.exit.thread.a, label %bb.l

js__has_suffix.exit.thread.a:                     ; preds = %js__has_suffix.exit
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %js__has_suffix.exit, %js__has_suffix.exit.thread.a
  %.069 = phi i32 [ 1, %js__has_suffix.exit.thread.a ], [ 0, %js__has_suffix.exit ], [ %.026.i.ph, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.aq = call ptr %5(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %1) #34 ; 9 uses
  %.not73 = icmp eq ptr %i.aq, null
  br i1 %.not73, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1) #34 ; 0 uses
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.b, align 8, !tbaa !12  ; 4 uses
  switch i32 %.069, label %default.unreachable92 [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.at = call { i64, i64 } @JS_Eval(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.as, ptr noundef %1, i32 noundef 33) #34 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0
  %i.av = extractvalue { i64, i64 } %i.at, 1
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.aw = call { i64, i64 } @JS_ParseJSON(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.as, ptr noundef %1) #34 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.az = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.as) #34 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0
  %i.bb = extractvalue { i64, i64 } %i.az, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.bc = call { i64, i64 } @JS_NewUint8Array(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %i.as, ptr noundef nonnull @js_realloc_array_buffer, ptr noundef null, i1 noundef zeroext false) #34 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i64 } %i.bc, 1      ; 4 uses
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 6
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = call { i64, i64 } @JS_GetTypedArrayBuffer(ptr noundef %0, i64 %i.bd, i64 %i.be, ptr noundef null, ptr noundef null, ptr noundef null) #34 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bh, 1      ; 2 uses
  %i.bk = call i32 @JS_SetImmutableArrayBuffer(i64 %i.bi, i64 %i.bj, i1 noundef zeroext true) #34 ; 0 uses
  call void @JS_FreeValue(ptr noundef %0, i64 %i.bi, i64 %i.bj) #34
  br label %bb.t

default.unreachable92:                            ; preds = %bb.n
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p, %bb.o
  %.068 = phi ptr [ null, %bb.s ], [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ], [ %i.aq, %bb.r ]
  %.sroa.021.0 = phi i64 [ %i.bd, %bb.s ], [ %i.au, %bb.o ], [ %i.ax, %bb.p ], [ %i.ba, %bb.q ], [ %i.bd, %bb.r ] ; 6 uses
  %.sroa.16.0 = phi i64 [ %i.be, %bb.s ], [ %i.av, %bb.o ], [ %i.ay, %bb.p ], [ %i.bb, %bb.q ], [ %i.be, %bb.r ] ; 5 uses
  call void @js_free(ptr noundef %0, ptr noundef %.068) #34
  %i.bl = and i64 %.sroa.16.0, 4294967295
  %i.bm = icmp eq i64 %i.bl, 6
  br i1 %i.bm, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp eq i32 %.069, 0
  br i1 %i.bn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bo = call i32 @js_module_set_import_meta(ptr noundef %0, i64 %.sroa.021.0, i64 poison, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.021.0, i64 %.sroa.16.0) #34
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.bq = inttoptr i64 %.sroa.021.0 to ptr
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.021.0, i64 %.sroa.16.0) #34
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.br = call ptr @JS_NewCModule(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @default_module_init) #34 ; 4 uses
  %.not74 = icmp eq ptr %i.br, null
  br i1 %.not74, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.021.0, i64 %.sroa.16.0) #34
  br label %bb.ab

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
  %i.v = tail call ptr %i.u(ptr noundef %0, ptr noundef nonnull %1) #34, !inline_history !22 ; 2 uses
  %.not43.i = icmp eq ptr %i.v, null
end_hunk_0
begin_hunk_1_@js_std_file_read_write:bb.a
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  br label %bb.u

bb.u:                                             ; preds = %js_std_file_get.exit.thread, %bb.j, %bb.g, %bb.e, %bb.t
  %.sroa.6.0 = phi i64 [ 0, %js_std_file_get.exit.thread ], [ 0, %bb.e ], [ %.sroa.0.0.insert.ext.i.pn.i, %bb.t ], [ 0, %bb.g ], [ 0, %bb.j ]
  %.sroa.10.0 = phi i64 [ 6, %js_std_file_get.exit.thread ], [ 6, %bb.e ], [ %.sroa.3.0.i, %bb.t ], [ 6, %bb.g ], [ 6, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_file_getline(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.DynBuf, align 8             ; 13 uses
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.e) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %js_std_file_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.50) #34 ; 0 uses
  br label %js_std_file_get.exit.thread

js_std_file_get.exit.thread:                      ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br label %dbuf_free.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.i = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr @js_std_dbuf_realloc, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.d
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.g) ; 2 uses
  switch i32 %i.n, label %bb.h [
    i32 -1, label %bb.e
    i32 10, label %.loopexit.loopexit
  ]

bb.e:                                             ; preds = %.backedge
  %i.o = load i64, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %.pre25 = load ptr, ptr %5, align 8, !tbaa !84  ; 3 uses
  br i1 %i.p, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i17 = icmp eq ptr %.pre25, null
  br i1 %.not.i17, label %dbuf_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.s = tail call ptr %i.q(ptr noundef %i.r, ptr noundef nonnull %.pre25, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit

bb.h:                                             ; preds = %.backedge
  %i.t = trunc i32 %i.n to i8                     ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !81
  %i.v = load i64, ptr %i.m, align 8, !tbaa !82   ; 3 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %dbuf_putc.exit, label %.critedge, !prof !119

dbuf_putc.exit:                                   ; preds = %bb.h
  %i.x = call fastcc i32 @__dbuf_putc(ptr noundef nonnull %5, i8 noundef zeroext %i.t)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.backedge.backedge, label %bb.i

.backedge.backedge:                               ; preds = %dbuf_putc.exit, %.critedge
  br label %.backedge

.critedge:                                        ; preds = %bb.h
  %i.z = load ptr, ptr %5, align 8, !tbaa !84
  %i.aa = add i64 %i.v, 1
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  store i8 %i.t, ptr %i.ab, align 1, !tbaa !9
  br label %.backedge.backedge

bb.i:                                             ; preds = %dbuf_putc.exit
  %i.ac = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %.not.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i19, label %dbuf_free.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.af = tail call ptr %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.ac, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit20

dbuf_free.exit20:                                 ; preds = %bb.i, %bb.j
  %i.ag = tail call { i64, i64 } @JS_ThrowOutOfMemory(ptr noundef %0) #34 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 2 uses
  %.sroa.5.0.extract.shift = and i64 %i.ah, -4294967296
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  br label %dbuf_free.exit

.loopexit.loopexit:                               ; preds = %.backedge
  %.pre = load ptr, ptr %5, align 8, !tbaa !84
  %.pre26 = load i64, ptr %i.m, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.aj = phi i64 [ %.pre26, %.loopexit.loopexit ], [ %i.o, %bb.e ]
  %i.ak = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.pre25, %bb.e ] ; 3 uses
  %i.al = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %i.ak, i64 noundef %i.aj) #34 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %.not.i21 = icmp eq ptr %i.ak, null
  br i1 %.not.i21, label %dbuf_free.exit22, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.aq = tail call ptr %i.ao(ptr noundef %i.ap, ptr noundef nonnull %i.ak, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit22

dbuf_free.exit22:                                 ; preds = %.loopexit, %bb.k
  %.sroa.5.0.extract.shift13 = and i64 %i.am, -4294967296
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.g, %bb.f, %js_std_file_get.exit.thread, %dbuf_free.exit22, %dbuf_free.exit20
  %.sroa.011.0 = phi i64 [ 0, %js_std_file_get.exit.thread ], [ %i.am, %dbuf_free.exit22 ], [ %i.ah, %dbuf_free.exit20 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.5.0 = phi i64 [ 0, %js_std_file_get.exit.thread ], [ %.sroa.5.0.extract.shift13, %dbuf_free.exit22 ], [ %.sroa.5.0.extract.shift, %dbuf_free.exit20 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.7.0 = phi i64 [ 6, %js_std_file_get.exit.thread ], [ %i.an, %dbuf_free.exit22 ], [ %i.ai, %dbuf_free.exit20 ], [ 2, %bb.f ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.sroa.011.0.insert.ext = and i64 %.sroa.011.0, 4294967295
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.011.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.011.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_file_readAs(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %6 = alloca %struct.DynBuf, align 8             ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.f) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %js_std_file_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.50) #34 ; 0 uses
  br label %js_std_file_get.exit.thread

js_std_file_get.exit.thread:                      ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  br label %dbuf_free.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %i.k = and i64 %.sroa.7.0.copyload, 4294967295
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.copyload = load i64, ptr %4, align 8, !tbaa !9
  %i.m = call i32 @JS_ToIndex(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.04.0.copyload, i64 %.sroa.7.0.copyload) #34
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.g, label %dbuf_free.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not36 = icmp eq i64 %i.n, -1
  br i1 %.not36, label %.thread, label %7

7:                                                ; preds = %bb.g
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %7, %bb.e
  %.0 = phi i64 [ -1, %bb.e ], [ %i.n, %7 ], [ -1, %bb.g ], [ -1, %bb.d ] ; 2 uses
  %i.o = call ptr @JS_GetRuntime(ptr noundef %0) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr @js_std_dbuf_realloc, ptr %i.q, align 8, !tbaa !78
  %.not3751 = icmp eq i64 %.0, 0
  br i1 %.not3751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.152 = phi i64 [ %.0, %.lr.ph ], [ %i.ah, %bb.l ]
  %i.t = call i32 @fgetc(ptr noundef nonnull %i.h) ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = trunc i32 %i.t to i8                     ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !81
  %i.x = load i64, ptr %i.s, align 8, !tbaa !82   ; 3 uses
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %dbuf_putc.exit, label %dbuf_putc.exit.thread, !prof !119

dbuf_putc.exit.thread:                            ; preds = %bb.i
  %i.z = load ptr, ptr %6, align 8, !tbaa !84
  %i.aa = add i64 %i.x, 1
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 %i.v, ptr %i.ab, align 1, !tbaa !9
  br label %bb.l

dbuf_putc.exit:                                   ; preds = %bb.i
  %i.ac = call fastcc i32 @__dbuf_putc(ptr noundef nonnull %6, i8 noundef zeroext %i.v)
  %.not38 = icmp eq i32 %i.ac, 0
  br i1 %.not38, label %bb.l, label %bb.j

bb.j:                                             ; preds = %dbuf_putc.exit
  %i.ad = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i42 = icmp eq ptr %i.ad, null
  br i1 %.not.i42, label %dbuf_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ag = call ptr %i.ae(ptr noundef %i.af, ptr noundef nonnull %i.ad, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit

bb.l:                                             ; preds = %dbuf_putc.exit.thread, %dbuf_putc.exit
  %i.ah = add i64 %.152, -1                       ; 2 uses
  %.not37 = icmp eq i64 %i.ah, 0
  br i1 %.not37, label %._crit_edge, label %bb.h, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.l, %bb.h, %.thread
  %.not39 = icmp eq i32 %5, 0
  %i.ai = load ptr, ptr %6, align 8, !tbaa !84    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !82 ; 2 uses
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %i.ai, i64 noundef %i.ak) #34
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.am = call { i64, i64 } @JS_NewArrayBufferCopy(ptr noundef %0, ptr noundef %i.ai, i64 noundef %i.ak) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { i64, i64 } [ %i.am, %bb.n ], [ %i.al, %bb.m ] ; 2 uses
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1  ; 2 uses
  %.sroa.016.0 = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %.not.i43 = icmp eq ptr %i.ai, null
  br i1 %.not.i43, label %dbuf_free.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ap = call ptr %i.an(ptr noundef %i.ao, ptr noundef nonnull %i.ai, i64 noundef 0) #34, !inline_history !85 ; 0 uses
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.p, %bb.o, %bb.k, %bb.j, %js_std_file_get.exit.thread, %bb.f
  %.sroa.531.0 = phi i64 [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %js_std_file_get.exit.thread ], [ 0, %bb.j ], [ %.sroa.016.0, %bb.o ], [ %.sroa.016.0, %bb.p ]
  %.sroa.8.0 = phi i64 [ 6, %bb.k ], [ 6, %bb.f ], [ 6, %js_std_file_get.exit.thread ], [ 6, %bb.j ], [ %.sroa.5.0, %bb.o ], [ %.sroa.5.0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.531.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_file_getByte(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.e) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %js_std_file_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %bb.c, label %js_std_file_get.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.50) #34 ; 0 uses
  br label %js_std_file_get.exit.thread

js_std_file_get.exit:                             ; preds = %bb.b
  %i.i = tail call i32 @fgetc(ptr noundef nonnull %i.g)
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  br label %js_std_file_get.exit.thread

js_std_file_get.exit.thread:                      ; preds = %bb.c, %bb.a, %js_std_file_get.exit
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %js_std_file_get.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  %.sroa.4.0 = phi i64 [ 0, %js_std_file_get.exit ], [ 6, %bb.a ], [ 6, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_std_file_putByte(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.f) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %js_std_file_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.50) #34 ; 0 uses
  br label %js_std_file_get.exit.thread

js_std_file_get.exit.thread:                      ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.j = load i64, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.j, i64 %i.l) #34
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.a, align 4, !tbaa !14
  %i.o = call i32 @fputc(i32 noundef %i.n, ptr noundef nonnull %i.h)
  %.sroa.0.0.insert.ext.i = zext i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %js_std_file_get.exit.thread, %bb.d, %bb.e
  %.sroa.06.0 = phi i64 [ 0, %js_std_file_get.exit.thread ], [ %.sroa.0.0.insert.ext.i, %bb.e ], [ 0, %bb.d ]
  %.sroa.6.0 = phi i64 [ 6, %js_std_file_get.exit.thread ], [ 0, %bb.e ], [ 6, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare ptr @JS_GetOpaque2(ptr noundef, i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_printf_internal(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 43 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  %4 = alloca %struct.DynBuf, align 8             ; 21 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
end_hunk_1
begin_hunk_2_@js_worker_postMessage:bb.a
  call void @abort() #38
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.f
  call void @free(ptr noundef %i.p) #34
  call void @free(ptr noundef nonnull %i.l) #34
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.m
  call void @js_free(ptr noundef %0, ptr noundef nonnull %i.k) #34
  %i.bg = load ptr, ptr %5, align 8, !tbaa !149
  call void @js_free(ptr noundef %0, ptr noundef %i.bg) #34
  br label %js_mutex_unlock.exit

js_mutex_unlock.exit:                             ; preds = %js_waker_signal.exit, %bb.b, %bb.a, %.critedge
  %.sroa.9.0 = phi i64 [ 6, %bb.b ], [ 6, %.critedge ], [ 6, %bb.a ], [ 3, %js_waker_signal.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.9.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_worker_get_onmessage(ptr noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.e) #34 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146  ; 3 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call { i64, i64 } @JS_DupValue(ptr noundef %0, i64 %i.j, i64 %i.l) #34 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.6.0 = phi i64 [ %i.o, %bb.c ], [ 6, %bb.a ], [ 2, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.4.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_worker_set_onmessage(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 3 uses
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = tail call ptr @JS_GetOpaque2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.e) #34 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146  ; 10 uses
  %i.i = and i64 %4, 4294967295
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %bb.j, label %js_free_port.exit

js_free_port.exit:                                ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call fastcc void @js_free_message_pipe(ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load i64, ptr %i.o, align 8
  tail call void @JS_FreeValueRT(ptr noundef %i.a, i64 %i.n, i64 %i.p) #34
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !31
  store ptr %i.q, ptr %i.s, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @js_free_rt(ptr noundef %i.a, ptr noundef nonnull %i.h) #34
  store ptr null, ptr %i.g, align 8, !tbaa !146
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.u = tail call zeroext i1 @JS_IsFunction(ptr noundef %0, i64 %3, i64 %4) #34
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.125) #34 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not39 = icmp eq ptr %i.h, null
  br i1 %.not39, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @js_mallocz(ptr noundef %0, i64 noundef 40) #34 ; 11 uses
  %.not40 = icmp eq ptr %i.y, null
  br i1 %.not40, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %i.aa = atomicrmw add ptr %i.z, i32 1 seq_cst, align 4 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 0, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.y, ptr %i.af, align 8, !tbaa !31
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !31
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.y, ptr %i.g, align 8, !tbaa !146
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi ptr [ %i.h, %bb.f ], [ %i.y, %bb.h ]  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.ai, i64 %i.ak) #34
  %i.al = tail call { i64, i64 } @JS_DupValue(ptr noundef %0, i64 %3, i64 %4) #34 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !9
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %js_free_port.exit, %bb.c, %bb.g, %bb.a, %bb.e
  %.sroa.5.0 = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ %i.w, %bb.e ], [ 0, %bb.c ], [ 0, %js_free_port.exit ], [ 0, %bb.i ]
  %.sroa.8.0 = phi i64 [ 6, %bb.g ], [ 6, %bb.a ], [ %i.x, %bb.e ], [ 3, %bb.c ], [ 3, %js_free_port.exit ], [ 3, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare ptr @JS_WriteObject2(ptr noundef, ptr noundef, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #26

declare zeroext i1 @JS_IsFunction(ptr noundef, i64, i64) local_unnamed_addr #3

declare i32 @JS_GetScriptOrModuleName(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_thread_create(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #17 {
bb.a:
  %2 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = call i32 @pthread_attr_init(ptr noundef nonnull %2) #34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %2, i64 noundef 2097152) #34
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @pthread_attr_setdetachstate(ptr noundef nonnull %2, i32 noundef 1) #34
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @worker_func, ptr noundef nonnull %1) #34
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %3, label %bb.e

3:                                                ; preds = %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %3
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %3 ]
  %i.e = call i32 @pthread_attr_destroy(ptr noundef nonnull %2) #34 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.06 = phi i32 [ %.0, %bb.e ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal void @worker_func(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @js_worker_new_runtime_func, align 8, !tbaa !71 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %spec.store.select = select i1 %.not, ptr @JS_NewRuntime, ptr %i.a
  %i.b = tail call ptr %spec.store.select() #34   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.129, i64 21, i64 1, ptr %i.d) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @js_std_init_handlers(ptr noundef nonnull %i.b)
  tail call void @JS_SetModuleLoaderFunc2(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull @js_module_loader, ptr noundef nonnull @js_module_check_attributes, ptr noundef null) #34
  %i.f = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef nonnull %i.b) #34
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !71
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !71
  %i.k = load ptr, ptr @js_worker_new_context_func, align 8, !tbaa !71 ; 2 uses
  %.not39 = icmp eq ptr %i.k, null
  %spec.store.select1 = select i1 %.not39, ptr @JS_NewContext, ptr %i.k
  %i.l = tail call ptr %spec.store.select1(ptr noundef nonnull %i.b) #34 ; 15 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.130, i64 21, i64 1, ptr %i.n) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @JS_SetCanBlock(ptr noundef nonnull %i.b, i1 noundef zeroext true) #34
  %i.p = tail call { i64, i64 } @JS_GetGlobalObject(ptr noundef nonnull %i.l) #34 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 3 uses
  %i.s = tail call { i64, i64 } @JS_NewObject(ptr noundef nonnull %i.l) #34 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 2 uses
  %i.v = tail call { i64, i64 } @JS_NewCFunction2(ptr noundef nonnull %i.l, ptr noundef nonnull @js_print, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 0, i32 noundef 0) #34 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = tail call i32 @JS_SetPropertyStr(ptr noundef nonnull %i.l, i64 %i.t, i64 %i.u, ptr noundef nonnull @.str.16, i64 %i.w, i64 %i.x) #34 ; 0 uses
  %i.z = tail call i32 @JS_SetPropertyStr(ptr noundef nonnull %i.l, i64 %i.q, i64 %i.r, ptr noundef nonnull @.str.17, i64 %i.t, i64 %i.u) #34 ; 0 uses
  %i.aa = tail call { i64, i64 } @JS_NewCFunction2(ptr noundef nonnull %i.l, ptr noundef nonnull @js_print, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 0, i32 noundef 0) #34 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = tail call i32 @JS_SetPropertyStr(ptr noundef nonnull %i.l, i64 %i.q, i64 %i.r, ptr noundef nonnull @.str.19, i64 %i.ab, i64 %i.ac) #34 ; 0 uses
  tail call void @JS_FreeValue(ptr noundef nonnull %i.l, i64 %i.q, i64 %i.r) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !139
  %i.ag = load ptr, ptr %0, align 8, !tbaa !137
  %i.ah = tail call { i64, i64 } @JS_LoadModule(ptr noundef nonnull %i.l, ptr noundef %i.af, ptr noundef %i.ag) #34 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = load ptr, ptr %0, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.ak) #34
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.al) #34
  tail call void @free(ptr noundef nonnull %0) #34
  %i.am = tail call { i64, i64 } @js_std_await(ptr noundef nonnull %i.l, i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @js_std_dump_error(ptr noundef nonnull %i.l)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = extractvalue { i64, i64 } %i.am, 0
  tail call void @JS_FreeValue(ptr noundef nonnull %i.l, i64 %i.aq, i64 %i.an) #34
  %i.ar = tail call i32 @js_std_loop(ptr noundef nonnull %i.l) ; 0 uses
  tail call void @js_std_free_handlers(ptr noundef nonnull %i.b)
  tail call void @JS_FreeContext(ptr noundef nonnull %i.l) #34
  tail call void @JS_FreeRuntime(ptr noundef nonnull %i.b) #34
  ret void
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) local_unnamed_addr #15

declare ptr @JS_NewRuntime() local_unnamed_addr #3

declare void @JS_SetModuleLoaderFunc2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @JS_NewContext(ptr noundef) local_unnamed_addr #3

declare void @JS_SetCanBlock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare { i64, i64 } @JS_LoadModule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @JS_FreeContext(ptr noundef) local_unnamed_addr #3

declare void @JS_FreeRuntime(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_GetClassProto(ptr noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_NewObjectProtoClass(ptr noundef, i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_open(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.c = load i64, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.c, i64 %i.e, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.h, i64 %i.j) #34
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 2
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.b, i64 %i.r, i64 %i.n) #34
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.b, align 4, !tbaa !14
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.f) #34
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 438, ptr %i.b, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.t = phi i32 [ %.pre, %._crit_edge ], [ 438, %bb.g ]
  %i.u = load i32, ptr %i.a, align 4, !tbaa !14
  %i.v = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.f, i32 noundef %i.u, i32 noundef %i.t) #34 ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %js_get_errno.exit

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @__errno_location() #37
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = sub nsw i32 0, %i.y
  br label %js_get_errno.exit
end_hunk_2
