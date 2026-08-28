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
  br i1 %.not.i75, label %js__has_suffix.exit.thread, label %js__has_suffix.exit.a

js__has_suffix.exit.a:                            ; preds = %bb.k
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
  %bcmp.i76.fr = freeze i32 %i.ap
  %.not9.i.not = icmp eq i32 %bcmp.i76.fr, 0
  br i1 %.not9.i.not, label %bb.l, label %js__has_suffix.exit.thread

js__has_suffix.exit.thread:                       ; preds = %bb.k, %js__has_suffix.exit.a
  br label %bb.l

bb.l:                                             ; preds = %js__has_suffix.exit.thread, %js__has_suffix.exit.a, %bb.j
  %.069 = phi i32 [ %.026.i.ph, %bb.j ], [ 0, %js__has_suffix.exit.thread ], [ 1, %js__has_suffix.exit.a ] ; 2 uses
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
  %i.f = load i32, ptr %i.d, align 8, !tbaa !23
  %i.g = tail call i32 @JS_NewClass(ptr noundef %i.a, i32 noundef %i.f, ptr noundef nonnull @js_std_file_class) #34 ; 0 uses
  %i.h = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) #34 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = tail call i32 @JS_SetPropertyFunctionList(ptr noundef %0, i64 %i.i, i64 %i.j, ptr noundef nonnull @js_std_file_proto_funcs, i32 noundef 18) #34 ; 0 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !23
  tail call void @JS_SetClassProto(ptr noundef %0, i32 noundef %i.l, i64 %i.i, i64 %i.j) #34
  %i.m = tail call i32 @JS_SetModuleExportList(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @js_std_funcs, i32 noundef 23) #34 ; 0 uses
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !27
  %i.o = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef %i.n, i1 noundef zeroext false) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i64 %i.p, i64 %i.q) #34 ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.t = tail call fastcc { i64, i64 } @js_new_std_file(ptr noundef %0, ptr noundef %i.s, i1 noundef zeroext false) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %i.w = tail call i32 @JS_SetModuleExport(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 %i.u, i64 %i.v) #34 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !27
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
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [64 x %struct.pollfd], align 16     ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %i.c = tail call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 2 uses
  %i.d = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.c) #34
  %i.e = inttoptr i64 %i.d to ptr                 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 %1, ptr %i.b, align 4, !tbaa !14
  %.not = icmp samesign ult i32 %2, 4
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %.not133 = icmp ne ptr %i.g, null
  %i.h = load i64, ptr @os_pending_signals, align 8 ; 3 uses
  %.not134 = icmp eq i64 %i.h, 0
  %or.cond = select i1 %.not133, i1 true, i1 %.not134, !prof !30
  br i1 %or.cond, label %.thread, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.0122200 = load ptr, ptr %i.j, align 8, !tbaa !31 ; 2 uses
  %.not135201 = icmp eq ptr %.0122200, %i.i
  br i1 %.not135201, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0122202 = phi ptr [ %.0122, %bb.d ], [ %.0122200, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0122202, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = and i64 %i.n, %i.h
  %.not136 = icmp eq i64 %i.o, 0
  br i1 %.not136, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.0122202, i64 8
  %.0122 = load ptr, ptr %i.p, align 8, !tbaa !31 ; 2 uses
  %.not135 = icmp eq ptr %.0122, %i.i
  br i1 %.not135, label %.thread, label %.lr.ph, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph
  %i.q = xor i64 %i.n, -1
  %i.r = and i64 %i.h, %i.q
  store i64 %i.r, ptr @os_pending_signals, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.0122202, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0122202, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call fastcc i32 @call_handler(ptr noundef %0, i64 %i.t, i64 %i.v)
  br label %bb.bc

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %6 = and i32 %2, 1
  %.not137 = icmp eq i32 %6, 0
  br i1 %.not137, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.x = call fastcc i32 @js_os_run_timers(ptr noundef %i.c, ptr noundef %0, ptr noundef %i.e, ptr noundef %i.b)
  %.not138 = icmp eq i32 %i.x, 0
  br i1 %.not138, label %bb.g, label %bb.bc

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.b, align 4, !tbaa !14   ; 5 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.bc, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.y, 0
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %.not170 = icmp eq ptr %i.ac, %i.e
  br i1 %.not170, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.not171 = icmp eq ptr %i.af, %i.ad
  br i1 %.not171, label %bb.bc, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %.thread
  %i.ag = phi i32 [ %i.y, %bb.h ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %1, %.thread ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.1123203.a = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 3 uses
  %.not141204 = icmp eq ptr %.1123203.a, %i.e
  br i1 %.not141204, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.k, %bb.m
  %.1123206 = phi ptr [ %.1123, %bb.m ], [ %.1123203.a, %bb.k ] ; 3 uses
  %.0111205 = phi i32 [ %i.as, %bb.m ], [ 0, %bb.k ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1123206, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph207
  %i.am = getelementptr inbounds nuw i8, ptr %.1123206, i64 48
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp ne i64 %i.ao, 2
  %i.aq = zext i1 %i.ap to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph207
  %i.ar = phi i32 [ 1, %.lr.ph207 ], [ %i.aq, %bb.l ]
  %i.as = add nuw nsw i32 %i.ar, %.0111205        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1123206, i64 8
  %.1123 = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %.not141 = icmp eq ptr %.1123, %i.e
  br i1 %.not141, label %._crit_edge, label %.lr.ph207, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %.0111.lcssa = phi i32 [ 0, %bb.k ], [ %i.as, %bb.m ] ; 3 uses
  %i.au = and i32 %2, 2
  %.not142 = icmp eq i32 %i.au, 0                 ; 3 uses
  br i1 %.not142, label %.loopexit174, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.2124208.a = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %.not143209 = icmp eq ptr %.2124208.a, %i.av
  br i1 %.not143209, label %.loopexit174, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.n, %.lr.ph213
  %.2124211 = phi ptr [ %.2124, %.lr.ph213 ], [ %.2124208.a, %bb.n ] ; 2 uses
  %.1112210 = phi i32 [ %i.bc, %.lr.ph213 ], [ %.0111.lcssa, %bb.n ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.2124211, i64 32
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = icmp ne i64 %i.az, 2
  %i.bb = zext i1 %i.ba to i32
  %i.bc = add nuw nsw i32 %.1112210, %i.bb        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.2124211, i64 8
  %.2124 = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %.not143 = icmp eq ptr %.2124, %i.av
  br i1 %.not143, label %.loopexit174, label %.lr.ph213, !llvm.loop !37

.loopexit174:                                     ; preds = %.lr.ph213, %bb.n, %._crit_edge
  %.2113 = phi i32 [ %.0111.lcssa, %._crit_edge ], [ %.0111.lcssa, %bb.n ], [ %i.bc, %.lr.ph213 ] ; 4 uses
  %i.be = icmp eq i32 %.2113, 0
  br i1 %i.be, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.loopexit174
  %i.bf = icmp sgt i32 %i.ag, 0
  br i1 %i.bf, label %bb.p, label %bb.bc

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bg = udiv i32 %i.ag, 1000
  %i.bh = zext nneg i32 %i.bg to i64
  store i64 %i.bh, ptr %5, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = urem i32 %i.ag, 1000
  %narrow = mul nuw nsw i32 %i.bj, 1000000
  %i.bk = zext nneg i32 %narrow to i64
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !40
  %i.bl = load i64, ptr @os_pending_signals, align 8, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bm = call i32 @nanosleep(ptr noundef nonnull %5, ptr noundef nonnull %5) #34
  %.not153 = icmp eq i32 %i.bm, 0
  br i1 %.not153, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call ptr @__errno_location() #37
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = icmp eq i32 %i.bo, 4
  %i.bq = load i64, ptr @os_pending_signals, align 8
  %i.br = icmp eq i64 %i.bl, %i.bq
  %or.cond155 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond155, label %bb.q, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bc

bb.s:                                             ; preds = %.loopexit174
  %i.bs = icmp sgt i32 %.2113, 64
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = zext nneg i32 %.2113 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call ptr @js_malloc(ptr noundef %0, i64 noundef %i.bu) #34 ; 2 uses
  %.not144 = icmp eq ptr %i.bv, null
  br i1 %.not144, label %bb.bc, label %._crit_edge262

._crit_edge262:                                   ; preds = %bb.t
  %.3125215.pre = load ptr, ptr %i.ah, align 8, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge262, %bb.s
  %.3125215.a = phi ptr [ %.3125215.pre, %._crit_edge262 ], [ %.1123203.a, %bb.s ] ; 2 uses
  %.0117 = phi ptr [ %i.bv, %._crit_edge262 ], [ %4, %bb.s ] ; 6 uses
  %.not145216 = icmp eq ptr %.3125215.a, %i.e
  br i1 %.not145216, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.u, %bb.w
  %.3125218 = phi ptr [ %.3125, %bb.w ], [ %.3125215.a, %bb.u ] ; 4 uses
  %.1119217 = phi ptr [ %.2120, %bb.w ], [ %.0117, %bb.u ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3125218, i64 32
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = icmp eq i64 %i.by, 2                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3125218, i64 48
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 2                    ; 2 uses
  %i.ce = select i1 %i.bz, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph220
  %i.cf = xor i1 %i.bz, true
  %i.cg = select i1 %i.cd, i16 0, i16 4
  %i.ch = zext i1 %i.cf to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %.1119217, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.3125218, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !42
  %i.cl = or disjoint i16 %i.cg, %i.ch
  store i32 %i.ck, ptr %.1119217, align 4, !tbaa !14
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1119217, i64 4
  store i16 %i.cl, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !44
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1119217, i64 6
  store i16 0, ptr %.sroa.311.0..sroa_idx, align 2, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph220
  %.2120 = phi ptr [ %i.ci, %bb.v ], [ %.1119217, %.lr.ph220 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.3125218, i64 8
  %.3125 = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %.not145 = icmp eq ptr %.3125, %i.e
  br i1 %.not145, label %._crit_edge221, label %.lr.ph220, !llvm.loop !46

._crit_edge221:                                   ; preds = %bb.w, %bb.u
  %.1119.lcssa = phi ptr [ %.0117, %bb.u ], [ %.2120, %bb.w ]
  br i1 %.not142, label %.loopexit173, label %bb.x

bb.x:                                             ; preds = %._crit_edge221
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.4126223.a = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not146224 = icmp eq ptr %.4126223.a, %i.cn
  br i1 %.not146224, label %.loopexit173, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.x, %bb.z
  %.4126226 = phi ptr [ %.4126, %bb.z ], [ %.4126223.a, %bb.x ] ; 3 uses
  %.3121225 = phi ptr [ %.4, %bb.z ], [ %.1119.lcssa, %bb.x ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.4126226, i64 32
  %i.cq = load i64, ptr %i.cp, align 8
end_hunk_0
begin_hunk_1_@JS_GetRuntime

declare ptr @js_malloc_rt(ptr noundef, i64 noundef) local_unnamed_addr #3

declare { i64, i64 } @JS_DupValue(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @js_std_loop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.f = call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.g = call i32 @JS_ExecutePendingJob(ptr noundef %i.f, ptr noundef nonnull %i.a) #34 ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.e
  br label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @js_std_promise_rejection_check(ptr noundef %0)
  %i.j = load i8, ptr %i.e, align 8, !tbaa !72, !range !105, !noundef !106
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc range(i32 -1, 1) i32 @js_os_poll_internal(ptr noundef %0, i32 noundef -1, i32 noundef 7)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = call zeroext i1 @JS_HasException(ptr noundef %0) #34
  %i.n = zext i1 %i.m to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %i.n
}

declare i32 @JS_ExecutePendingJob(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @js_std_promise_rejection_check(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.b = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.a) #34
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.b, label %.lr.ph, !prof !107

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %.0, %.lr.ph ], [ %i.f, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.247, i64 38, i64 1, ptr %i.g) #39 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.l = load i64, ptr %i.k, align 8
  tail call fastcc void @js_std_dump_error1(ptr noundef %0, i64 %i.j, i64 %i.l)
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %.0 = load ptr, ptr %i.o, align 8, !tbaa !31    ; 2 uses
  %.not10 = icmp eq ptr %.0, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.b:                                             ; preds = %bb.a
  ret void
}

declare zeroext i1 @JS_HasException(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, -2147483648) i32 @js_std_loop_once(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 4 uses
  %i.d = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.c) #34
  %i.e = inttoptr i64 %i.d to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = call i32 @JS_ExecutePendingJob(ptr noundef %i.c, ptr noundef nonnull %i.a) #34 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = call fastcc i32 @js_os_run_timers(ptr noundef %i.c, ptr noundef %0, ptr noundef %i.e, ptr noundef %i.b)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call zeroext i1 @JS_IsJobPending(ptr noundef %i.c) #34
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp sgt i32 %i.l, 0
  %. = select i1 %i.n, i32 %i.l, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.f ], [ %., %bb.g ], [ -2, %bb.d ], [ 0, %bb.e ], [ -2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_os_run_timers(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %3, align 4, !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #34
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %js__hrtime_ms.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @abort() #38
  unreachable

js__hrtime_ms.exit:                               ; preds = %bb.c
  %i.e = load i64, ptr %4, align 8, !tbaa !38
  %i.f = mul i64 %i.e, 1000000000
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = add i64 %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.j = udiv i64 %i.i, 1000000                   ; 2 uses
  store i32 2147483647, ptr %3, align 4, !tbaa !14
  %.02934 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %.not3135 = icmp eq ptr %.02934, %i.a
  br i1 %.not3135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %js__hrtime_ms.exit, %bb.e
  %i.k = phi i32 [ %..i, %bb.e ], [ 2147483647, %js__hrtime_ms.exit ]
  %.02936 = phi ptr [ %.029, %bb.e ], [ %.02934, %js__hrtime_ms.exit ] ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02936, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !109
  %i.n = sub nsw i64 %i.m, %i.j                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = trunc i64 %i.n to i32
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.k, i32 %i.p) ; 2 uses
  store i32 %..i, ptr %3, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.02936, i64 8
  %.029 = load ptr, ptr %i.q, align 8, !tbaa !31  ; 2 uses
  %.not31 = icmp eq ptr %.029, %i.a
  br i1 %.not31, label %.loopexit, label %.lr.ph, !llvm.loop !111

bb.f:                                             ; preds = %.lr.ph
  store i32 0, ptr %3, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %.02936, i64 48 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.02936, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = call { i64, i64 } @JS_DupValueRT(ptr noundef %0, i64 %i.s, i64 %i.u) #34 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02936, i64 24
  %i.z = load i8, ptr %i.y, align 8
  %5 = and i8 %i.z, 1
  %.not32 = icmp eq i8 %5, 0
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.02936, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.02936, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !112
  %i.ad = add nsw i64 %i.ac, %i.j
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !109
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %.02936, align 8, !tbaa !57 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02936, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !31
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02936, i8 0, i64 16, i1 false)
  %i.ai = load i64, ptr %i.r, align 8
  %i.aj = load i64, ptr %i.t, align 8
  call void @JS_FreeValueRT(ptr noundef %0, i64 %i.ai, i64 %i.aj) #34
  call void @js_free_rt(ptr noundef %0, ptr noundef nonnull %.02936) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = call { i64, i64 } @JS_DupValue(ptr noundef %1, i64 %i.w, i64 %i.x) #34 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 2 uses
  %i.an = call { i64, i64 } @JS_Call(ptr noundef %1, i64 %i.al, i64 %i.am, i64 0, i64 3, i32 noundef 0, ptr noundef null) #34 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 2 uses
  call void @JS_FreeValue(ptr noundef %1, i64 %i.al, i64 %i.am) #34
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 6
  %spec.select.i = sext i1 %i.ar to i32
  call void @JS_FreeValue(ptr noundef %1, i64 %i.ao, i64 %i.ap) #34
  call void @JS_FreeValueRT(ptr noundef %0, i64 %i.w, i64 %i.x) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %js__hrtime_ms.exit, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %spec.select.i, %bb.i ], [ 0, %js__hrtime_ms.exit ], [ 0, %bb.e ]
  ret i32 %.0
}

declare zeroext i1 @JS_IsJobPending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden { i64, i64 } @js_std_await(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.f = call i32 @JS_PromiseState(ptr noundef %0, i64 %1, i64 %2) #34
  switch i32 %i.f, label %bb.k [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = call { i64, i64 } @JS_PromiseResult(ptr noundef %0, i64 %1, i64 %2) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %1, i64 %2) #34
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = call { i64, i64 } @JS_PromiseResult(ptr noundef %0, i64 %1, i64 %2) #34 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = call { i64, i64 } @JS_Throw(ptr noundef %0, i64 %i.i, i64 %i.j) #34
  call void @JS_FreeValue(ptr noundef %0, i64 %1, i64 %2) #34
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.m = call i32 @JS_ExecutePendingJob(ptr noundef %i.l, ptr noundef nonnull %i.a) #34 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !113
  call void @js_std_dump_error(ptr noundef %i.o)
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @js_std_promise_rejection_check(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.q = load i8, ptr %i.e, align 8, !tbaa !72, !range !105, !noundef !106
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = call fastcc range(i32 -1, 1) i32 @js_os_poll_internal(ptr noundef %0, i32 noundef -1, i32 noundef 7) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.b

bb.k:                                             ; preds = %bb.b
  %i.t = insertvalue { i64, i64 } poison, i64 %1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %2, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.c
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.u, %bb.k ]
  ret { i64, i64 } %.fca.1.insert.merged
}

declare i32 @JS_PromiseState(ptr noundef, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @JS_PromiseResult(ptr noundef, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @JS_Throw(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @js_std_eval_binary(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @JS_ReadObject(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1) #34 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 7 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 6 uses
  %i.d = and i64 %i.c, 4294967295                 ; 2 uses
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  %i.f = icmp eq i64 %i.d, 4294967293             ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @js_module_set_import_meta(ptr noundef %0, i64 %i.b, i64 poison, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @JS_ResolveModule(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @JS_FreeValue(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.k = tail call i32 @js_module_set_import_meta(ptr noundef %0, i64 %i.b, i64 poison, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call { i64, i64 } @JS_EvalFunction(ptr noundef %0, i64 %i.b, i64 %i.c) #34 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = tail call { i64, i64 } @js_std_await(ptr noundef %0, i64 %i.n, i64 %i.o)
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.q = tail call { i64, i64 } @JS_EvalFunction(ptr noundef %0, i64 %i.b, i64 %i.c) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { i64, i64 } [ %i.p, %bb.j ], [ %i.q, %bb.k ] ; 2 uses
  %.sroa.8.0 = extractvalue { i64, i64 } %.pn, 1  ; 2 uses
  %i.r = and i64 %.sroa.8.0, 4294967295
  %i.s = icmp eq i64 %i.r, 6
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.d, %bb.a, %bb.h
  tail call void @js_std_dump_error(ptr noundef %0)
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.n:                                             ; preds = %bb.l
  %.sroa.07.0 = extractvalue { i64, i64 } %.pn, 0
  tail call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.07.0, i64 %.sroa.8.0) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  ret void
}
end_hunk_1
