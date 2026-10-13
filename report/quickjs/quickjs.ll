Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_date_getTime:bb.a
  br label %bb.l

bb.f:                                             ; preds = %js_dup.exit.i.i
  %i.u = icmp eq i32 %i.m, 8
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = bitcast i64 %i.l to double
  br label %bb.l

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.l, i64 %i.h, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_ThisTimeValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = bitcast i64 %i.x to double
  %i.ac = trunc i64 %i.y to i32
  switch i32 %i.ac, label %bb.k [
    i32 0, label %bb.j
    i32 8, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %i.x to i32
  %i.ad = sitofp i32 %.sroa.04.0.extract.trunc.i.i.i to double
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @abort() #50, !inline_history !8
  unreachable

JS_ToFloat64.exit.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %i.ae = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.442) ; 0 uses
  br label %JS_ThisTimeValue.exit

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.0.ph = phi double [ %i.ad, %bb.j ], [ %i.ab, %bb.i ], [ %i.v, %bb.g ], [ %i.t, %bb.e ]
  %i.af = bitcast double %.0.ph to i64
  br label %JS_ThisTimeValue.exit

JS_ThisTimeValue.exit:                            ; preds = %JS_ToFloat64.exit.i, %bb.h, %bb.l
  %.sroa.4.0 = phi i64 [ 8, %bb.l ], [ 6, %bb.h ], [ 6, %JS_ToFloat64.exit.i ]
  %.sroa.01.0.insert.insert = phi i64 [ %i.af, %bb.l ], [ 0, %bb.h ], [ 0, %JS_ToFloat64.exit.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.01.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_date_Symbol_toPrimitive(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, 7
  %i.h = icmp ult i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %4, align 8
  %i.j = tail call fastcc i32 @JS_ValueToAtomInternal(ptr noundef %0, i64 %i.i, i64 %i.e, i32 noundef 0), !inline_history !516 ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.j)
  switch i32 %i.j, label %.thread [
    i32 74, label %JS_ToPrimitive.exit
    i32 79, label %JS_ToPrimitive.exit
    i32 76, label %bb.f
    i32 22, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %JS_ToPrimitive.exit

.thread:                                          ; preds = %bb.c, %bb.e
  %i.l = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.493) ; 0 uses
  br label %bb.g

JS_ToPrimitive.exit:                              ; preds = %bb.f, %bb.e, %bb.e
  %.0 = phi i32 [ 16, %bb.f ], [ 17, %bb.e ], [ 17, %bb.e ]
  %i.m = inttoptr i64 %1 to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  %i.q = tail call fastcc { i64, i64 } @JS_ToPrimitiveFree(ptr noundef %0, i64 %1, i64 %2, i32 noundef range(i32 0, 18) %.0), !inline_history !81 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %JS_ToPrimitive.exit, %.thread, %bb.b
  %.sroa.516.0 = phi i64 [ 0, %bb.b ], [ 0, %.thread ], [ %i.r, %JS_ToPrimitive.exit ], [ 0, %bb.d ]
  %.sroa.6.0 = phi i64 [ 6, %bb.b ], [ 6, %.thread ], [ %i.s, %JS_ToPrimitive.exit ], [ 6, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.516.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_date_getTimezoneOffset(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  br i1 %i.c, label %bb.b, label %JS_ToFloat64.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %i.g = icmp eq i16 %i.f, 10
  br i1 %i.g, label %bb.c, label %JS_ToFloat64.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = and i64 %i.i, 4294967287
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %JS_ToFloat64.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = trunc i64 %i.i to i32                    ; 3 uses
  %i.o = icmp ugt i32 %i.n, -10
  br i1 %i.o, label %.thread.i.i, label %js_dup.exit.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.p = inttoptr i64 %i.m to ptr
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !191
  br label %bb.g

js_dup.exit.i.i:                                  ; preds = %bb.d
  %i.t = icmp ult i32 %i.n, 3
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %js_dup.exit.i.i
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.m to i32
  %i.u = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i to double
  br label %.thread

bb.f:                                             ; preds = %js_dup.exit.i.i
  %i.v = icmp eq i32 %i.n, 8
  br i1 %i.v, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.m, i64 %i.i, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_ThisTimeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc i64 %i.y to i32
  switch i32 %i.ab, label %bb.j [
    i32 0, label %bb.i
    i32 8, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %i.x to i32
  %i.ac = sitofp i32 %.sroa.04.0.extract.trunc.i.i.i to double
  br label %.thread

bb.j:                                             ; preds = %bb.h
  tail call void @abort() #50, !inline_history !8
  unreachable

JS_ToFloat64.exit.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.442) ; 0 uses
  br label %JS_ThisTimeValue.exit

bb.k:                                             ; preds = %bb.f, %bb.h
  %.0.ph.in = phi i64 [ %i.x, %bb.h ], [ %i.m, %bb.f ]
  %.0.ph = bitcast i64 %.0.ph.in to double        ; 2 uses
  %i.ae = fcmp uno double %.0.ph, 0.000000e+00
  br i1 %i.ae, label %JS_ThisTimeValue.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.i, %bb.k
  %.0.ph7 = phi double [ %.0.ph, %bb.k ], [ %i.u, %bb.e ], [ %i.ac, %bb.i ]
  %6 = tail call double @llvm.trunc.f64(double %.0.ph7)
  %i.af = fptosi double %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.ag = sdiv i64 %i.af, 1000
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !240
  %i.ah = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %5) #49 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !858
  %i.ak = sdiv i64 %i.aj, -60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.0.0.insert.ext.i.i = and i64 %i.ak, 4294967295
  br label %JS_ThisTimeValue.exit

JS_ThisTimeValue.exit:                            ; preds = %JS_ToFloat64.exit.i, %bb.g, %bb.k, %.thread
  %i.al = phi i64 [ %.sroa.0.0.insert.ext.i.i, %.thread ], [ 9221120237041090560, %bb.k ], [ 0, %bb.g ], [ 0, %JS_ToFloat64.exit.i ]
  %.sroa.5.0 = phi i64 [ 0, %.thread ], [ 8, %bb.k ], [ 6, %bb.g ], [ 6, %JS_ToFloat64.exit.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.al, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @get_date_field(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [9 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = and i32 %5, 15
  %i.c = lshr i32 %5, 4
  %i.d = and i32 %i.c, 15
  %i.e = call fastcc i32 @get_date_fields(ptr noundef %0, i64 %1, i64 %2, ptr noundef %i.a, i32 noundef %i.b, i32 noundef 0) ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %js_number.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %js_number.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %5, 256
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %i.a, align 16, !tbaa !505
  %i.i = fadd double %i.h, -1.900000e+03
  store double %i.i, ptr %i.a, align 16, !tbaa !505
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !505 ; 2 uses
  %i.m = bitcast double %i.l to i64               ; 5 uses
  %i.n = lshr i64 %i.m, 52
  %i.o = and i64 %i.n, 2047
  %i.p = add nsw i64 %i.o, -1023                  ; 2 uses
  %i.q = icmp ugt i64 %i.p, 30
  br i1 %i.q, label %.split.i, label %double_is_int32.exit.i

.split.i:                                         ; preds = %bb.e
  switch i64 %i.m, label %js_number.exit [
    i64 -4476578029606273024, label %bb.f
    i64 0, label %bb.f
  ]

double_is_int32.exit.i:                           ; preds = %bb.e
  %i.r = shl i64 %i.m, 12
  %i.s = shl i64 %i.r, %i.p
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %bb.f, label %js_number.exit

bb.f:                                             ; preds = %double_is_int32.exit.i, %.split.i, %.split.i
  %i.t = fptosi double %i.l to i32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.t to i64
  br label %js_number.exit

js_number.exit:                                   ; preds = %bb.f, %double_is_int32.exit.i, %.split.i, %bb.b, %bb.a
  %i.u = phi i64 [ 0, %bb.a ], [ 9221120237041090560, %bb.b ], [ %.sroa.0.0.insert.ext.i.i, %bb.f ], [ %i.m, %.split.i ], [ %i.m, %double_is_int32.exit.i ]
  %.sroa.5.0 = phi i64 [ 6, %bb.a ], [ 8, %bb.b ], [ 0, %bb.f ], [ 8, %.split.i ], [ 8, %double_is_int32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.u, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_date_setTime(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %JS_ToFloat64.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %i.f = icmp eq i16 %i.e, 10
  br i1 %i.f, label %bb.c, label %JS_ToFloat64.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 4294967287
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %JS_ToFloat64.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = trunc i64 %i.h to i32                    ; 2 uses
  %i.n = icmp ugt i32 %i.m, -10
  br i1 %i.n, label %.thread.i.i, label %js_dup.exit.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.o = inttoptr i64 %i.l to ptr
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !191
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !191
  br label %bb.e

js_dup.exit.i.i:                                  ; preds = %bb.d
  switch i32 %i.m, label %bb.e [
    i32 8, label %bb.h
    i32 2, label %bb.h
    i32 1, label %bb.h
    i32 0, label %bb.h
  ]

bb.e:                                             ; preds = %js_dup.exit.i.i, %.thread.i.i
  %i.s = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.l, i64 %i.h, i32 noundef 0) #51, !inline_history !7
  %i.t = extractvalue { i64, i64 } %i.s, 1        ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 6
  br i1 %i.v, label %JS_ThisTimeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = trunc i64 %i.t to i32
  switch i32 %i.w, label %bb.g [
    i32 0, label %bb.h
    i32 8, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #50, !inline_history !8
  unreachable

JS_ToFloat64.exit.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %i.x = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.442) ; 0 uses
  br label %JS_ThisTimeValue.exit

bb.h:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %bb.f, %bb.f
  %i.y = load i64, ptr %4, align 8                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, -10
  br i1 %i.ac, label %.thread.i, label %js_dup.exit.i

.thread.i:                                        ; preds = %bb.h
  %i.ad = inttoptr i64 %i.y to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  br label %bb.l

js_dup.exit.i:                                    ; preds = %bb.h
  %i.ah = icmp ult i32 %i.ab, 3
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %js_dup.exit.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.y to i32
  %i.ai = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %bb.p

bb.j:                                             ; preds = %js_dup.exit.i
  %i.aj = icmp eq i32 %i.ab, 8
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = bitcast i64 %i.y to double
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.thread.i
  %i.al = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.y, i64 %i.aa, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %JS_ThisTimeValue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = bitcast i64 %i.am to double
  %i.ar = trunc i64 %i.an to i32
  switch i32 %i.ar, label %bb.o [
    i32 0, label %bb.n
    i32 8, label %bb.p
  ]

end_hunk_0
begin_hunk_1_@js_create_iterator_helper:bb.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  br label %bb.g

js_dup.exit.i:                                    ; preds = %bb.c
  %i.q = icmp ult i32 %i.k, 3
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %js_dup.exit.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.j to i32
  %i.r = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %JS_ToFloat64.exit.thread

bb.e:                                             ; preds = %js_dup.exit.i
  %i.s = icmp eq i32 %i.k, 8
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = bitcast i64 %i.j to double
  br label %JS_ToFloat64.exit.thread

bb.g:                                             ; preds = %bb.e, %.thread.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.j, i64 %i.g, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_FreeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = bitcast i64 %i.v to double
  %i.aa = trunc i64 %i.w to i32
  switch i32 %i.aa, label %bb.j [
    i32 0, label %bb.i
    i32 8, label %JS_ToFloat64.exit.thread
  ]

bb.i:                                             ; preds = %bb.h
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.v to i32
  %i.ab = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %JS_ToFloat64.exit.thread

bb.j:                                             ; preds = %bb.h
  tail call void @abort() #50, !inline_history !8
  unreachable

JS_ToFloat64.exit.thread:                         ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0155 = phi double [ +qnan, %bb.b ], [ %i.ab, %bb.i ], [ %i.z, %bb.h ], [ %i.r, %bb.d ], [ %i.t, %bb.f ] ; 6 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.0155)
  %i.ad = fcmp ueq double %i.ac, +inf
  %i.ae = tail call double @llvm.trunc.f64(double %.0155)
  %i.af = fcmp une double %i.ae, %.0155
  %or.cond133 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond133, label %bb.k, label %bb.l

bb.k:                                             ; preds = %JS_ToFloat64.exit.thread
  %i.ag = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.732, ptr noundef nonnull %i.e) ; 0 uses
  br label %JS_FreeValue.exit

bb.l:                                             ; preds = %JS_ToFloat64.exit.thread
  %i.ah = fcmp olt double %.0155, 1.000000e+00
  %i.ai = fcmp ogt double %.0155, f0x41EFFFFFFFE00000
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.733, ptr noundef nonnull %i.e) ; 0 uses
  br label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = fptosi double %.0155 to i64             ; 3 uses
  %i.al = icmp eq i32 %5, 10
  %i.am = icmp sgt i32 %3, 1
  %or.cond3 = and i1 %i.am, %i.al
  br i1 %or.cond3, label %bb.o, label %JS_ToFloat64.exit

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %JS_ToFloat64.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = trunc i64 %i.ap to i32
  %i.at = add i32 %i.as, 7
  %i.au = icmp ult i32 %i.at, 2
  br i1 %i.au, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %i.an, align 8
  %i.aw = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.av, i64 %i.ap, i1 noundef zeroext false), !inline_history !131 ; 5 uses
  %.not128.not = icmp eq ptr %i.aw, null
  br i1 %.not128.not, label %JS_FreeValue.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(14) @.str.734) #52
  %.not129 = icmp eq i32 %i.ax, 0                 ; 2 uses
  br i1 %.not129, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(10) @.str.735) #52
  %.not130 = icmp eq i32 %i.ay, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.az = phi i1 [ true, %bb.r ], [ %.not130, %bb.s ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 -28 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %i.bf = icmp slt i32 %i.bd, 2
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 -24
  %i.bh = ptrtoint ptr %i.bg to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bb, i64 %i.bh, i64 -7), !inline_history !104
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.az, label %JS_ToFloat64.exit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.v
  %i.bi = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.736) ; 0 uses
  br label %JS_FreeValue.exit

bb.w:                                             ; preds = %check_iterator.exit, %check_iterator.exit
  %i.bj = load i64, ptr %4, align 8               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp ugt i32 %i.bm, -10
  br i1 %i.bn, label %bb.x, label %JS_ToNumber.exit

bb.x:                                             ; preds = %bb.w
  %i.bo = inttoptr i64 %i.bj to ptr
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !191
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !191
  br label %JS_ToNumber.exit

JS_ToNumber.exit:                                 ; preds = %bb.w, %bb.x
  %i.bs = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.bj, i64 %i.bl, i32 noundef 0), !inline_history !2127 ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0      ; 3 uses
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 3 uses
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = icmp eq i64 %i.bv, 6
  br i1 %i.bw, label %JS_FreeValue.exit, label %bb.y

bb.y:                                             ; preds = %JS_ToNumber.exit
  %i.bx = trunc i64 %i.bu to i32                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 3
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bt to i32
  %i.bz = sitofp i32 %.sroa.0.0.extract.trunc.i to double
  br label %JS_ToFloat64Free.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.ca = icmp eq i32 %i.bx, 8
  br i1 %i.ca, label %JS_ToFloat64Free.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.bt, i64 %i.bu, i32 noundef 0), !inline_history !118 ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %JS_ToFloat64Free.exit.thread174, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = trunc i64 %i.cd to i32
  switch i32 %i.cg, label %bb.ae [
    i32 0, label %bb.ad
    i32 8, label %JS_ToFloat64Free.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %.sroa.04.0.extract.trunc.i.i140 = trunc i64 %i.cc to i32
  %i.ch = sitofp i32 %.sroa.04.0.extract.trunc.i.i140 to double
  br label %JS_ToFloat64Free.exit.thread

bb.ae:                                            ; preds = %bb.ac
  tail call void @abort() #50, !inline_history !119
  unreachable

JS_ToFloat64Free.exit:                            ; preds = %bb.aa, %bb.ac
  %.0154.in = phi i64 [ %i.cc, %bb.ac ], [ %i.bt, %bb.aa ]
  %.0154 = bitcast i64 %.0154.in to double        ; 2 uses
  %i.ci = fcmp uno double %.0154, 0.000000e+00
  br i1 %i.ci, label %JS_ToFloat64Free.exit.thread174, label %JS_ToFloat64Free.exit.thread

JS_ToFloat64Free.exit.thread:                     ; preds = %bb.ad, %bb.z, %JS_ToFloat64Free.exit
  %.0154173 = phi double [ %.0154, %JS_ToFloat64Free.exit ], [ %i.ch, %bb.ad ], [ %i.bz, %bb.z ] ; 3 uses
  %i.cj = tail call double @llvm.fabs.f64(double %.0154173)
  %i.ck = fcmp one double %i.cj, +inf
  %i.cl = fcmp ogt double %.0154173, f0x433FFFFFFFFFFFFF
  %or.cond5 = and i1 %i.cl, %i.ck
  br i1 %or.cond5, label %JS_ToFloat64Free.exit.thread174, label %bb.af

bb.af:                                            ; preds = %JS_ToFloat64Free.exit.thread
  %i.cm = tail call double @llvm.trunc.f64(double %.0154173) ; 3 uses
  %i.cn = fcmp olt double %i.cm, 0.000000e+00
  br i1 %i.cn, label %JS_ToFloat64Free.exit.thread174, label %.thread179

.thread179:                                       ; preds = %bb.af
  %i.co = tail call double @llvm.fabs.f64(double %i.cm)
  %i.cp = fcmp one double %i.co, +inf
  %i.cq = fptosi double %i.cm to i64
  %i.cr = select i1 %i.cp, i64 %i.cq, i64 9007199254740991
  br label %JS_ToFloat64.exit

bb.ag:                                            ; preds = %check_iterator.exit, %check_iterator.exit, %check_iterator.exit
  %.sroa.064.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 5 uses
  %.sroa.064.sroa.6.0.extract.shift = and i64 %.sroa.064.0.copyload, -4294967296 ; 3 uses
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.766.0.copyload = load i64, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !240 ; 4 uses
  %i.cs = and i64 %.sroa.766.0.copyload, 4294967295
  %.not.i.i141 = icmp eq i64 %i.cs, 4294967295
  br i1 %.not.i.i141, label %bb.ah, label %check_function.exit, !prof !684

bb.ah:                                            ; preds = %bb.ag
  %i.ct = inttoptr i64 %.sroa.064.0.copyload to ptr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 18
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.cv, label %JS_IsFunction.exit.i [
    i16 13, label %JS_ToFloat64.exit
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.ah
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !218
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !458
  %.not.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i, label %check_function.exit, label %JS_ToFloat64.exit, !prof !404

JS_IsFunction.exit.i:                             ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !232
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1128
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !251
  %i.de = zext i16 %i.cv to i64
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.dh, null
  br i1 %.not6.i, label %check_function.exit, label %JS_ToFloat64.exit, !prof !404

check_function.exit:                              ; preds = %bb.ag, %.split.i, %JS_IsFunction.exit.i
  %i.di = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !117 ; 0 uses
  br label %JS_FreeValue.exit

bb.ai:                                            ; preds = %check_iterator.exit
  tail call void @abort() #50
  unreachable

JS_ToFloat64.exit:                                ; preds = %bb.ah, %.split.i, %JS_IsFunction.exit.i, %.thread179, %bb.v, %bb.o, %bb.n
  %.4 = phi i1 [ false, %bb.o ], [ false, %.thread179 ], [ false, %bb.n ], [ %.not129, %bb.v ], [ false, %JS_IsFunction.exit.i ], [ false, %.split.i ], [ false, %bb.ah ]
  %.2 = phi i64 [ %i.ak, %bb.o ], [ %i.cr, %.thread179 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.v ], [ 0, %JS_IsFunction.exit.i ], [ 0, %.split.i ], [ 0, %bb.ah ]
  %.sroa.766.0 = phi i64 [ 3, %bb.o ], [ 3, %.thread179 ], [ 3, %bb.n ], [ 3, %bb.v ], [ %.sroa.766.0.copyload, %JS_IsFunction.exit.i ], [ %.sroa.766.0.copyload, %.split.i ], [ %.sroa.766.0.copyload, %bb.ah ] ; 2 uses
  %.sroa.064.sroa.0.0 = phi i64 [ 0, %bb.o ], [ 0, %.thread179 ], [ 0, %bb.n ], [ 0, %bb.v ], [ %.sroa.064.0.copyload, %JS_IsFunction.exit.i ], [ %.sroa.064.0.copyload, %.split.i ], [ %.sroa.064.0.copyload, %bb.ah ]
  %.sroa.064.sroa.6.0 = phi i64 [ 0, %bb.o ], [ 0, %.thread179 ], [ 0, %bb.n ], [ 0, %bb.v ], [ %.sroa.064.sroa.6.0.extract.shift, %JS_IsFunction.exit.i ], [ %.sroa.064.sroa.6.0.extract.shift, %.split.i ], [ %.sroa.064.sroa.6.0.extract.shift, %bb.ah ]
  %i.dj = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 114, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.dk = extractvalue { i64, i64 } %i.dj, 0      ; 5 uses
  %i.dl = extractvalue { i64, i64 } %i.dj, 1      ; 6 uses
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = icmp eq i64 %i.dm, 6
  br i1 %i.dn, label %bb.be, label %bb.aj

bb.aj:                                            ; preds = %JS_ToFloat64.exit
  %i.do = tail call { i64, i64 } @JS_NewObjectClass(ptr noundef %0, i32 noundef 42) ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0      ; 4 uses
  %i.dq = extractvalue { i64, i64 } %i.do, 1      ; 4 uses
  %i.dr = and i64 %i.dq, 4294967295
  %i.ds = icmp eq i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !232 ; 10 uses
  br i1 %i.ds, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.dv = trunc i64 %i.dl to i32
  %i.dw = icmp ugt i32 %i.dv, -10
  br i1 %i.dw, label %bb.al, label %JS_FreeValue.exit

bb.al:                                            ; preds = %bb.ak
  %i.dx = inttoptr i64 %i.dk to ptr
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !191 ; 2 uses
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !191
  %i.eb = icmp slt i32 %i.dz, 2
  br i1 %i.eb, label %bb.am, label %JS_FreeValue.exit

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_value_rt(ptr noundef %i.du, i64 %i.dk, i64 %i.dl), !inline_history !291
  br label %JS_FreeValue.exit

bb.an:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !196
  %i.ef = add i64 %i.ee, 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !197
  %i.ei = add i64 %i.eh, -1
  %i.ej = icmp ugt i64 %i.ef, %i.ei
  br i1 %i.ej, label %bb.aw, label %bb.ao, !prof !192

bb.ao:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 744
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 752
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !222 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ek
  br i1 %i.en, label %bb.ap, label %bb.aq, !prof !192

bb.ap:                                            ; preds = %bb.ao
  %i.eo = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.du, i32 noundef 11) ; 2 uses
  %.not.i152 = icmp eq ptr %i.eo, null
  br i1 %.not.i152, label %._crit_edge.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i151 = phi ptr [ %i.eo, %bb.ap ], [ %i.em, %bb.ao ] ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i151, i64 38 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !221 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i151, i64 40
  %i.es = zext i16 %i.eq to i64
  %i.et = mul nuw nsw i64 %i.es, 104
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.et ; 20 uses
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !218
  store i16 %i.ev, ptr %i.ep, align 2, !tbaa !221
  store i16 %i.eq, ptr %i.eu, align 8, !tbaa !218
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i151, i64 34 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !221
  %i.ey = add i16 %i.ex, 1                        ; 2 uses
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !221
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i151, i64 36
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !221
  %i.fb = icmp eq i16 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ar, label %bb.as, !prof !192

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load ptr, ptr %.0.i151, align 8, !tbaa !223 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i151, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !222 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !222
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i151, i8 0, i64 16, i1 false)
  br label %bb.as

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre.i = load ptr, ptr %i.dt, align 8, !tbaa !232
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.ec, align 8, !tbaa !217
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ec, align 8, !tbaa !217
  %i.fj = load i16, ptr %i.eu, align 8, !tbaa !218
  %i.fk = icmp eq i16 %i.fj, -1
  br i1 %i.fk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 1064
  %i.fm = icmp eq ptr %i.eu, %i.fl
  br i1 %i.fm, label %js_dup.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fn = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !219
  %i.fp = tail call i64 %i.fo(ptr noundef nonnull %i.eu) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.fp, 0
  %i.fq = select i1 %.not15.i.i.i, i64 8, i64 %i.fp
  br label %js_dup.exit

bb.av:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !218
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !221
  %i.fw = zext i16 %i.fv to i64
  br label %js_dup.exit

bb.aw:                                            ; preds = %._crit_edge.i, %bb.an
  %i.fx = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.du, %bb.an ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1256 ; 3 uses
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr %i.fy, align 8, !tbaa !233
  %i.gb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.fy, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.dt, align 8, !tbaa !232
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.gc = phi ptr [ %i.fx, %bb.aw ], [ %.pre, %bb.ax ] ; 3 uses
  %i.gd = trunc i64 %i.dq to i32
  %i.ge = icmp ugt i32 %i.gd, -10
  br i1 %i.ge, label %bb.az, label %JS_FreeValue.exit145

bb.az:                                            ; preds = %bb.ay
  %i.gf = inttoptr i64 %i.dp to ptr
end_hunk_1
