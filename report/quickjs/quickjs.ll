Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_object_toString:bb.a
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @JS_SealObject(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.JSValue, align 8            ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = call { i64, i64 } @js_object_seal(ptr noundef %0, i64 poison, i64 poison, i32 poison, ptr noundef nonnull %3, i32 noundef 0) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ugt i32 %i.g, -10
  br i1 %i.h, label %bb.b, label %JS_FreeValue.exit

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.c to ptr
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !191  ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !191
  %i.m = icmp slt i32 %i.k, 2
  br i1 %i.m, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef %i.f, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %i.n = and i64 %i.d, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  %i.p = select i1 %i.o, i32 -1, i32 1
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_object_seal(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %struct.JSValue, align 8            ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  %.sroa.020.0.copyload85 = load i64, ptr %4, align 8, !tbaa !218 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !240 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.d = and i64 %.sroa.9.0.copyload, 4294967295
  %i.e = icmp eq i64 %i.d, 4294967295
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %.sroa.9.0.copyload to i32
  %i.g = icmp ugt i32 %i.f, -10
  br i1 %i.g, label %bb.c, label %js_dup.exit

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %.sroa.020.0.copyload85 to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.b, %bb.c
  %.sroa.949.0.extract.shift = and i64 %.sroa.020.0.copyload85, -4294967296
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %.sroa.020.0.copyload85 to ptr ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !276
  switch i16 %i.n, label %.thread [
    i16 11, label %bb.e
    i16 51, label %JS_PreventExtensions.exit
  ], !prof !1476

bb.e:                                             ; preds = %bb.d
  %.not72 = icmp eq i32 %5, 0
  %i.o = select i1 %.not72, ptr @.str.247, ptr @.str.246
  %i.p = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.o) ; 0 uses
  br label %bb.r

.thread:                                          ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, -3
  store i16 %i.s, ptr %i.q, align 8
  br label %bb.h

JS_PreventExtensions.exit:                        ; preds = %bb.d
  %i.t = tail call fastcc i32 @js_proxy_preventExtensions(ptr noundef %0, i64 %.sroa.020.0.copyload85, i64 %.sroa.9.0.copyload), !inline_history !641 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.r, label %bb.f

bb.f:                                             ; preds = %JS_PreventExtensions.exit
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.248) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %.thread, %bb.f
  %.not66 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not66, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i16, ptr %i.m, align 2, !tbaa !276
  %i.x = add i16 %i.w, -22
  %i.y = icmp ult i16 %i.x, 12
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !508
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !218
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val = load i32, ptr %i.af, align 4, !tbaa !642
  %i.ag = icmp sgt i32 %.val, -1
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call fastcc zeroext i1 @typed_array_is_oob(ptr noundef nonnull %i.l)
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.249) ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h
  %i.aj = call fastcc i32 @JS_GetOwnPropertyNamesInternal(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i32 noundef 3)
  %.not67 = icmp eq i32 %i.aj, 0
  br i1 %.not67, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.m
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !191 ; 5 uses
  %.not91 = icmp eq i32 %i.ak, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !487 ; 4 uses
  br i1 %.not91, label %js_dup.exit75, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %.not66, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.ak to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 0, ptr %6, align 8, !tbaa !218
  store i32 0, ptr %i.al, align 4
  store i64 3, ptr %i.am, align 8, !tbaa !365
  store i32 0, ptr %7, align 8, !tbaa !218
  store i32 0, ptr %i.an, align 4
  store i64 3, ptr %i.ao, align 8, !tbaa !365
  %wide.trip.count98 = zext i32 %i.ak to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.split.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.o ], [ 0, %.lr.ph.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv95
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !490
  %i.as = tail call i32 @JS_DefineProperty(ptr noundef %0, i64 %.sroa.020.0.copyload85, i64 %.sroa.9.0.copyload, i32 noundef %i.ar, i64 0, i64 3, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef 16640)
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %select.unfold, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %js_dup.exit75, label %bb.n, !llvm.loop !1475

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !490 ; 2 uses
  %i.ax = call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef %i.aw, ptr noundef nonnull %i.c), !inline_history !50 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %select.unfold, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  %.not69 = icmp eq i32 %i.ax, 0
  %i.az = load i32, ptr %i.c, align 4
  %8 = and i32 %i.az, 2
  %.not70 = icmp eq i32 %8, 0
  %9 = select i1 %.not69, i1 true, i1 %.not70
  %.058 = select i1 %9, i32 16640, i32 17152
  store i32 0, ptr %6, align 8, !tbaa !218
  store i32 0, ptr %i.al, align 4
  store i64 3, ptr %i.am, align 8, !tbaa !365
  store i32 0, ptr %7, align 8, !tbaa !218
  store i32 0, ptr %i.an, align 4
  store i64 3, ptr %i.ao, align 8, !tbaa !365
  %i.ba = call i32 @JS_DefineProperty(ptr noundef %0, i64 %.sroa.020.0.copyload85, i64 %.sroa.9.0.copyload, i32 noundef %i.aw, i64 0, i64 3, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef %.058)
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %js_dup.exit75, label %.lr.ph.split, !llvm.loop !1475

js_dup.exit75:                                    ; preds = %bb.q, %bb.o, %.preheader
  call fastcc void @js_free_prop_enum(ptr noundef %0, ptr noundef %.pre, i32 noundef %i.ak)
  %i.bc = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %.sroa.949.0.extract.shift56 = and i64 %.sroa.020.0.copyload85, -4294967296
  br label %bb.r

select.unfold:                                    ; preds = %.lr.ph.split, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call fastcc void @js_free_prop_enum(ptr noundef %0, ptr noundef nonnull %.pre, i32 noundef %i.ak)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %JS_PreventExtensions.exit, %select.unfold, %js_dup.exit75, %bb.l, %bb.g, %bb.e, %js_dup.exit
  %.sroa.044.0 = phi i64 [ 0, %bb.e ], [ %.sroa.020.0.copyload85, %js_dup.exit ], [ 0, %bb.l ], [ 0, %JS_PreventExtensions.exit ], [ 0, %bb.m ], [ 0, %select.unfold ], [ %.sroa.020.0.copyload85, %js_dup.exit75 ], [ 0, %bb.g ]
  %.sroa.949.0 = phi i64 [ 0, %bb.e ], [ %.sroa.949.0.extract.shift, %js_dup.exit ], [ 0, %bb.l ], [ 0, %JS_PreventExtensions.exit ], [ 0, %bb.m ], [ 0, %select.unfold ], [ %.sroa.949.0.extract.shift56, %js_dup.exit75 ], [ 0, %bb.g ]
  %.sroa.12.0 = phi i64 [ 6, %bb.e ], [ %.sroa.9.0.copyload, %js_dup.exit ], [ 6, %bb.l ], [ 6, %JS_PreventExtensions.exit ], [ 6, %bb.m ], [ 6, %select.unfold ], [ %.sroa.9.0.copyload, %js_dup.exit75 ], [ 6, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.044.0.insert.ext = and i64 %.sroa.044.0, 4294967295
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.949.0, %.sroa.044.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @JS_FreezeObject(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.JSValue, align 8            ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = call { i64, i64 } @js_object_seal(ptr noundef %0, i64 poison, i64 poison, i32 poison, ptr noundef nonnull %3, i32 noundef 1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ugt i32 %i.g, -10
  br i1 %i.h, label %bb.b, label %JS_FreeValue.exit

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.c to ptr
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !191  ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !191
  %i.m = icmp slt i32 %i.k, 2
  br i1 %i.m, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef %i.f, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %i.n = and i64 %i.d, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  %i.p = select i1 %i.o, i32 -1, i32 1
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @js_string_codePointRange(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.StringBuffer, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.a = load i64, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.b, %bb.a
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.h
  %.sroa.017.0.in.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.a, %js_dup.exit.i.i.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.c, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.j = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.j, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.017.0.extract.trunc.i.i.i = trunc i64 %.sroa.017.0.in.i.i.i to i32
  br label %bb.i

bb.d:                                             ; preds = %js_dup.exit.i.i
  %i.k = lshr i64 %.sroa.017.0.in.i.i.i, 52
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 2047                       ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1054
  br i1 %i.n, label %bb.e, label %bb.f, !prof !324

bb.e:                                             ; preds = %bb.d
  %.sroa.017.0.i.le.i.i = bitcast i64 %.sroa.017.0.in.i.i.i to double
  %i.o = fptosi double %.sroa.017.0.i.le.i.i to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i32 %i.m, 1107
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %.sroa.017.0.in.i.i.i, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.m, -1043
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 2 uses
  %i.x = icmp slt i64 %.sroa.017.0.in.i.i.i, 0
  %i.y = icmp ne i64 %i.v, 2147483648
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = sub nsw i32 0, %i.w
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.z, i32 %i.w
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.aa = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0) #51, !inline_history !101 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %JS_ToUint32.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.e, %bb.g
  %storemerge.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %bb.g ], [ %i.o, %bb.e ], [ %.sroa.017.0.extract.trunc.i.i.i, %bb.c ], [ 0, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %js_dup.exit.i.i18.preheader

bb.j:                                             ; preds = %bb.i
  %i.al = inttoptr i64 %i.ag to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  br label %js_dup.exit.i.i18.preheader

js_dup.exit.i.i18.preheader:                      ; preds = %bb.j, %bb.i
  br label %js_dup.exit.i.i18

js_dup.exit.i.i18:                                ; preds = %js_dup.exit.i.i18.preheader, %bb.p
  %.sroa.017.0.in.i.i.i19 = phi i64 [ %i.bh, %bb.p ], [ %i.ag, %js_dup.exit.i.i18.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i20 = phi i64 [ %i.bi, %bb.p ], [ %i.ai, %js_dup.exit.i.i18.preheader ] ; 2 uses
  %i.ap = trunc i64 %.sroa.6.0.i.i.i20 to i32
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i.i18, %js_dup.exit.i.i18, %js_dup.exit.i.i18, %js_dup.exit.i.i18
  %.sroa.017.0.extract.trunc.i.i.i26 = trunc i64 %.sroa.017.0.in.i.i.i19 to i32
  br label %bb.q

bb.l:                                             ; preds = %js_dup.exit.i.i18
  %i.aq = lshr i64 %.sroa.017.0.in.i.i.i19, 52
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 2047                     ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1054
  br i1 %i.at, label %bb.m, label %bb.n, !prof !324
end_hunk_0
begin_hunk_1_@resolve_variables:bb.a
js_resize_array.exit.i.i:                         ; preds = %bb.hf
  %i.ady = add nsw i32 %i.adw, 1
  %i.adz = load ptr, ptr %1, align 8, !tbaa !859
  %i.aea = call fastcc i32 @js_realloc_array(ptr noundef %i.adz, ptr noundef nonnull %i.ac, i32 noundef 24, ptr noundef nonnull %i.ah, i32 noundef %i.ady), !inline_history !90
  %.not.i.i394 = icmp eq i32 %i.aea, 0
  br i1 %.not.i.i394, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, label %new_label_fd.exit.thread.i

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i: ; preds = %js_resize_array.exit.i.i
  %.pre.i.i = load i32, ptr %i.ai, align 4, !tbaa !913
  br label %new_label_fd.exit.i

new_label_fd.exit.i:                              ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, %bb.hf
  %i.aeb = phi i32 [ %.pre.i.i, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i ], [ %i.adw, %bb.hf ] ; 7 uses
  %i.aec = add nsw i32 %i.aeb, 1
  store i32 %i.aec, ptr %i.ai, align 4, !tbaa !913
  %i.aed = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.aee = sext i32 %i.aeb to i64
  %i.aef = getelementptr inbounds [24 x i8], ptr %i.aed, i64 %i.aee ; 2 uses
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.aef, align 8, !tbaa !191
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  store ptr null, ptr %i.aeg, align 8, !tbaa !914
  %i.aeh = icmp slt i32 %i.aeb, 0
  br i1 %i.aeh, label %new_label_fd.exit.thread.i, label %bb.hg

new_label_fd.exit.thread.i:                       ; preds = %new_label_fd.exit.i, %js_resize_array.exit.i.i
  store i8 1, ptr %i.aj, align 8, !tbaa !470
  br label %instantiate_hoisted_definitions.exit

bb.hg:                                            ; preds = %new_label_fd.exit.i
  %i.aei = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aej = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.aek = icmp eq i64 %i.aei, %i.aej
  br i1 %i.aek, label %bb.hh, label %bb.hi, !prof !192

bb.hh:                                            ; preds = %bb.hg
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 8)
  br label %dbuf_putc.exit155.i

bb.hi:                                            ; preds = %bb.hg
  %i.ael = load ptr, ptr %2, align 8, !tbaa !467
  %i.aem = add i64 %i.aej, 1
  store i64 %i.aem, ptr %i.w, align 8, !tbaa !466
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aej
  store i8 8, ptr %i.aen, align 1, !tbaa !218
  br label %dbuf_putc.exit155.i

dbuf_putc.exit155.i:                              ; preds = %bb.hi, %bb.hh
  %i.aeo = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aep = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.aeq = icmp eq i64 %i.aeo, %i.aep
  br i1 %i.aeq, label %bb.hj, label %bb.hk, !prof !192

bb.hj:                                            ; preds = %dbuf_putc.exit155.i
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 104)
  br label %dbuf_putc.exit157.i

bb.hk:                                            ; preds = %dbuf_putc.exit155.i
  %i.aer = load ptr, ptr %2, align 8, !tbaa !467
  %i.aes = add i64 %i.aep, 1
  store i64 %i.aes, ptr %i.w, align 8, !tbaa !466
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aep
  store i8 104, ptr %i.aet, align 1, !tbaa !218
  br label %dbuf_putc.exit157.i

dbuf_putc.exit157.i:                              ; preds = %bb.hk, %bb.hj
  %i.aeu = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aev = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.aew = sub i64 %i.aeu, %i.aev
  %i.aex = icmp ult i64 %i.aew, 4
  br i1 %i.aex, label %bb.hl, label %bb.hm, !prof !192

bb.hl:                                            ; preds = %dbuf_putc.exit157.i
  %i.aey = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.aeb) ; 0 uses
  br label %dbuf_put_u32.exit159.i

bb.hm:                                            ; preds = %dbuf_putc.exit157.i
  %i.aez = load ptr, ptr %2, align 8, !tbaa !467
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aev
  store i32 %i.aeb, ptr %i.afa, align 1
  %i.afb = load i64, ptr %i.w, align 8, !tbaa !466
  %i.afc = add i64 %i.afb, 4
  store i64 %i.afc, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit159.i

dbuf_put_u32.exit159.i:                           ; preds = %bb.hm, %bb.hl
  %.val.i395 = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.afd = zext nneg i32 %i.aeb to i64
  %i.afe = getelementptr inbounds nuw [24 x i8], ptr %.val.i395, i64 %i.afd ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !921
  %i.afg = add nsw i32 %i.aff, 1
  store i32 %i.afg, ptr %i.afe, align 8, !tbaa !921
  %i.afh = load i32, ptr %i.ad, align 8, !tbaa !930
  %i.afi = add nsw i32 %i.afh, 1
  store i32 %i.afi, ptr %i.ad, align 8, !tbaa !930
  br label %bb.hn

bb.hn:                                            ; preds = %dbuf_put_u32.exit159.i, %._crit_edge.i
  %.0127.i = phi i32 [ %i.aeb, %dbuf_put_u32.exit159.i ], [ -1, %._crit_edge.i ] ; 3 uses
  %i.afj = load i32, ptr %i.k, align 4, !tbaa !879
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %bb.hn, %dbuf_putc.exit173.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %dbuf_putc.exit173.i ], [ 0, %bb.hn ] ; 2 uses
  %i.afl = load ptr, ptr %i.ap, align 8, !tbaa !880
  %i.afm = getelementptr inbounds nuw [16 x i8], ptr %i.afl, i64 %indvars.iv261.i ; 13 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afo = load i8, ptr %i.afn, align 4
  %.fr.i = freeze i8 %i.afo                       ; 6 uses
  %i.afp = load i32, ptr %i.aq, align 8, !tbaa !710 ; 3 uses
  %i.afq = icmp sgt i32 %i.afp, 0
  br i1 %i.afq, label %.lr.ph246.i, label %._crit_edge247.i

.lr.ph246.i:                                      ; preds = %.lr.ph250.i
  %i.afr = load ptr, ptr %i.ar, align 8, !tbaa !709
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !882
  %wide.trip.count.i = zext nneg i32 %i.afp to i64
  br label %bb.ho

bb.ho:                                            ; preds = %dbuf_put_u16.exit163.i, %.lr.ph246.i
  %indvars.iv258.i = phi i64 [ 0, %.lr.ph246.i ], [ %indvars.iv.next259.i, %dbuf_put_u16.exit163.i ] ; 5 uses
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afr, i64 %indvars.iv258.i
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 4
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !544 ; 2 uses
  %i.afx = icmp eq i32 %i.afw, %i.aft
  br i1 %i.afx, label %.thread.loopexit.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.afy = and i32 %i.afw, -2
  %switch.i = icmp eq i32 %i.afy, 86
  br i1 %switch.i, label %bb.hq, label %dbuf_put_u16.exit163.i

bb.hq:                                            ; preds = %bb.hp
  %i.afz = trunc nuw nsw i64 %indvars.iv258.i to i32 ; 2 uses
  %i.aga = load i64, ptr %i.v, align 8, !tbaa !465 ; 2 uses
  %i.agb = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.agc = icmp eq i64 %i.aga, %i.agb
  br i1 %i.agc, label %bb.hr, label %bb.ht, !prof !192

bb.hr:                                            ; preds = %bb.hq
  %.not305.i = icmp eq i64 %i.aga, -1
  br i1 %.not305.i, label %._crit_edge.i.i, label %bb.hs, !prof !324

bb.hs:                                            ; preds = %bb.hr
  %i.agd = call fastcc i32 @dbuf_claim(ptr noundef nonnull %2, i64 noundef 1)
  %.not.i.i.i = icmp eq i32 %i.agd, 0
  %.pre271.i = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %dbuf_putc.exit161.i

._crit_edge.i.i:                                  ; preds = %bb.hs, %bb.hr
  %i.age = phi i64 [ -1, %bb.hr ], [ %.pre271.i, %bb.hs ]
  %i.agf = load ptr, ptr %2, align 8, !tbaa !467
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 %i.age
  store i8 93, ptr %i.agg, align 1
  %i.agh = load i64, ptr %i.w, align 8, !tbaa !466
  %i.agi = add i64 %i.agh, 1                      ; 2 uses
  store i64 %i.agi, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_putc.exit161.i

bb.ht:                                            ; preds = %bb.hq
  %i.agj = load ptr, ptr %2, align 8, !tbaa !467
  %i.agk = add i64 %i.agb, 1
  store i64 %i.agk, ptr %i.w, align 8, !tbaa !466
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agb
  store i8 93, ptr %i.agl, align 1, !tbaa !218
  %.pre270.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_putc.exit161.i

dbuf_putc.exit161.i:                              ; preds = %bb.ht, %._crit_edge.i.i, %bb.hs
  %i.agm = phi i64 [ %i.agi, %._crit_edge.i.i ], [ %.pre271.i, %bb.hs ], [ %.pre270.i, %bb.ht ] ; 4 uses
  %i.agn = trunc i64 %indvars.iv258.i to i16
  %i.ago = load i64, ptr %i.v, align 8, !tbaa !465 ; 2 uses
  %i.agp = sub i64 %i.ago, %i.agm
  %i.agq = icmp ult i64 %i.agp, 2
  br i1 %i.agq, label %bb.hu, label %.thread.thread.sink.split.i, !prof !192

bb.hu:                                            ; preds = %dbuf_putc.exit161.i
  %i.agr = add i64 %i.agm, 2
  %i.ags = icmp ugt i64 %i.agr, %i.ago
  br i1 %i.ags, label %bb.hv, label %.thread.thread.sink.split.i, !prof !192

bb.hv:                                            ; preds = %bb.hu
  %i.agt = call fastcc i32 @dbuf_claim(ptr noundef nonnull %2, i64 noundef 2)
  %.not.i.i215.i = icmp eq i32 %i.agt, 0
  br i1 %.not.i.i215.i, label %._crit_edge.i216.i, label %.thread.thread.i

._crit_edge.i216.i:                               ; preds = %bb.hv
  %.pre.i217.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %.thread.thread.sink.split.i

dbuf_put_u16.exit163.i:                           ; preds = %bb.hp
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next259.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge247.i, label %bb.ho, !llvm.loop !2089

._crit_edge247.i:                                 ; preds = %dbuf_put_u16.exit163.i, %.lr.ph250.i
  %.0128.lcssa.i = phi i32 [ 0, %.lr.ph250.i ], [ %i.afp, %dbuf_put_u16.exit163.i ] ; 2 uses
  %i.agu = load i32, ptr %i.as, align 8, !tbaa !707
  %.not136.i = icmp ne i32 %i.agu, 0
  %spec.select.i = zext i1 %.not136.i to i8       ; 3 uses
  %i.agv = load i32, ptr %i.afm, align 4, !tbaa !919
  %i.agw = icmp sgt i32 %i.agv, -1
  br i1 %i.agw, label %bb.hw, label %bb.ij

bb.hw:                                            ; preds = %._crit_edge247.i
  %i.agx = and i8 %.fr.i, 2
  %.not137.i = icmp eq i8 %i.agx, 0
  %.pre266.i = load i64, ptr %i.w, align 8, !tbaa !466 ; 4 uses
  br i1 %.not137.i, label %bb.hx, label %.thread306.i

.thread306.i:                                     ; preds = %bb.hw
  %i.agy = and i8 %.fr.i, 4
  %.not139308.i = icmp eq i8 %i.agy, 0
  %spec.select140.v309.i = select i1 %.not139308.i, i8 -126, i8 -128
  br label %bb.ik

bb.hx:                                            ; preds = %bb.hw
  %i.agz = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aha = icmp eq i64 %i.agz, %.pre266.i
  br i1 %i.aha, label %bb.hy, label %bb.hz, !prof !192

bb.hy:                                            ; preds = %bb.hx
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 3)
  br label %dbuf_putc.exit165.i

bb.hz:                                            ; preds = %bb.hx
  %i.ahb = load ptr, ptr %2, align 8, !tbaa !467
  %i.ahc = add i64 %.pre266.i, 1
  store i64 %i.ahc, ptr %i.w, align 8, !tbaa !466
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.pre266.i
  store i8 3, ptr %i.ahd, align 1, !tbaa !218
  br label %dbuf_putc.exit165.i

dbuf_putc.exit165.i:                              ; preds = %bb.hz, %bb.hy
  %i.ahe = load i32, ptr %i.afm, align 4, !tbaa !919 ; 2 uses
  %i.ahf = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ahg = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = icmp ult i64 %i.ahh, 4
  br i1 %i.ahi, label %bb.ia, label %bb.ib, !prof !192

bb.ia:                                            ; preds = %dbuf_putc.exit165.i
  %i.ahj = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.ahe) ; 0 uses
  %.pre268.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit167.i

bb.ib:                                            ; preds = %dbuf_putc.exit165.i
  %i.ahk = load ptr, ptr %2, align 8, !tbaa !467
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahg
  store i32 %i.ahe, ptr %i.ahl, align 1
  %i.ahm = load i64, ptr %i.w, align 8, !tbaa !466
  %i.ahn = add i64 %i.ahm, 4                      ; 2 uses
  store i64 %i.ahn, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit167.i

dbuf_put_u32.exit167.i:                           ; preds = %bb.ib, %bb.ia
  %i.aho = phi i64 [ %.pre268.i, %bb.ia ], [ %i.ahn, %bb.ib ] ; 3 uses
  %i.ahp = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ahq = icmp eq i64 %i.ahp, %i.aho
  br i1 %i.ahq, label %bb.ic, label %bb.id, !prof !192

bb.ic:                                            ; preds = %dbuf_put_u32.exit167.i
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 63)
  br label %dbuf_putc.exit169.i

bb.id:                                            ; preds = %dbuf_put_u32.exit167.i
  %i.ahr = load ptr, ptr %2, align 8, !tbaa !467
  %i.ahs = add i64 %i.aho, 1
  store i64 %i.ahs, ptr %i.w, align 8, !tbaa !466
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.aho
  store i8 63, ptr %i.aht, align 1, !tbaa !218
  br label %dbuf_putc.exit169.i

dbuf_putc.exit169.i:                              ; preds = %bb.id, %bb.ic
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !882 ; 4 uses
  %i.ahw = icmp slt i32 %i.ahv, 242
  br i1 %i.ahw, label %JS_DupAtom.exit.i397, label %bb.ie

bb.ie:                                            ; preds = %dbuf_putc.exit169.i
  %i.ahx = load ptr, ptr %i.at, align 8, !tbaa !232
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1104
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !297
  %i.aia = zext nneg i32 %i.ahv to i64
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %i.aia
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !299
  %i.aid = getelementptr inbounds i8, ptr %i.aic, i64 -4 ; 2 uses
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !191
  %i.aif = add nsw i32 %i.aie, 1
  store i32 %i.aif, ptr %i.aid, align 4, !tbaa !191
  br label %JS_DupAtom.exit.i397

JS_DupAtom.exit.i397:                             ; preds = %bb.ie, %dbuf_putc.exit169.i
  %i.aig = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aih = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.aii = sub i64 %i.aig, %i.aih
  %i.aij = icmp ult i64 %i.aii, 4
  br i1 %i.aij, label %bb.if, label %bb.ig, !prof !192

bb.if:                                            ; preds = %JS_DupAtom.exit.i397
  %i.aik = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.ahv) ; 0 uses
  %.pre269.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit171.i

bb.ig:                                            ; preds = %JS_DupAtom.exit.i397
  %i.ail = load ptr, ptr %2, align 8, !tbaa !467
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aih
  store i32 %i.ahv, ptr %i.aim, align 1
  %i.ain = load i64, ptr %i.w, align 8, !tbaa !466
  %i.aio = add i64 %i.ain, 4                      ; 2 uses
  store i64 %i.aio, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit171.i

dbuf_put_u32.exit171.i:                           ; preds = %bb.ig, %bb.if
  %i.aip = phi i64 [ %.pre269.i, %bb.if ], [ %i.aio, %bb.ig ] ; 3 uses
  %i.aiq = load i64, ptr %i.v, align 8, !tbaa !465
  %i.air = icmp eq i64 %i.aiq, %i.aip
  br i1 %i.air, label %bb.ih, label %bb.ii, !prof !192

bb.ih:                                            ; preds = %dbuf_put_u32.exit171.i
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext %spec.select.i)
  br label %dbuf_putc.exit173.i

bb.ii:                                            ; preds = %dbuf_put_u32.exit171.i
  %i.ais = load ptr, ptr %2, align 8, !tbaa !467
  %i.ait = add i64 %i.aip, 1
  store i64 %i.ait, ptr %i.w, align 8, !tbaa !466
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.aip
  store i8 %spec.select.i, ptr %i.aiu, align 1, !tbaa !218
  br label %dbuf_putc.exit173.i

bb.ij:                                            ; preds = %._crit_edge247.i
  %.pre265.i = load i64, ptr %i.w, align 8, !tbaa !466
  %.pre274.i = and i8 %.fr.i, 2
  %i.aiv = icmp eq i8 %.pre274.i, 0
  %i.aiw = and i8 %.fr.i, 4
  %.not139.i = icmp eq i8 %i.aiw, 0
  %spec.select140.v.i = select i1 %.not139.i, i8 -126, i8 -128
  %spec.select313.i = select i1 %i.aiv, i8 0, i8 %spec.select140.v.i
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %.thread306.i
  %i.aix = phi i64 [ %.pre266.i, %.thread306.i ], [ %.pre265.i, %bb.ij ] ; 3 uses
  %i.aiy = phi i8 [ %spec.select140.v309.i, %.thread306.i ], [ %spec.select313.i, %bb.ij ]
  %.1.i396 = or disjoint i8 %i.aiy, %spec.select.i ; 2 uses
  %i.aiz = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aja = icmp eq i64 %i.aiz, %i.aix
  br i1 %i.aja, label %bb.il, label %bb.im, !prof !192

bb.il:                                            ; preds = %bb.ik
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 61)
  br label %dbuf_putc.exit175.i

bb.im:                                            ; preds = %bb.ik
  %i.ajb = load ptr, ptr %2, align 8, !tbaa !467
  %i.ajc = add i64 %i.aix, 1
  store i64 %i.ajc, ptr %i.w, align 8, !tbaa !466
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.aix
  store i8 61, ptr %i.ajd, align 1, !tbaa !218
  br label %dbuf_putc.exit175.i

dbuf_putc.exit175.i:                              ; preds = %bb.im, %bb.il
  %i.aje = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !882 ; 4 uses
  %i.ajg = icmp slt i32 %i.ajf, 242
  br i1 %i.ajg, label %JS_DupAtom.exit176.i, label %bb.in

bb.in:                                            ; preds = %dbuf_putc.exit175.i
  %i.ajh = load ptr, ptr %i.at, align 8, !tbaa !232
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 1104
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !297
  %i.ajk = zext nneg i32 %i.ajf to i64
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ajj, i64 %i.ajk
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !299
  %i.ajn = getelementptr inbounds i8, ptr %i.ajm, i64 -4 ; 2 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !191
  %i.ajp = add nsw i32 %i.ajo, 1
  store i32 %i.ajp, ptr %i.ajn, align 4, !tbaa !191
  br label %JS_DupAtom.exit176.i

JS_DupAtom.exit176.i:                             ; preds = %bb.in, %dbuf_putc.exit175.i
  %i.ajq = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ajr = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.ajs = sub i64 %i.ajq, %i.ajr
  %i.ajt = icmp ult i64 %i.ajs, 4
  br i1 %i.ajt, label %bb.io, label %bb.ip, !prof !192

bb.io:                                            ; preds = %JS_DupAtom.exit176.i
  %i.aju = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.ajf) ; 0 uses
  %.pre267.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit178.i

bb.ip:                                            ; preds = %JS_DupAtom.exit176.i
  %i.ajv = load ptr, ptr %2, align 8, !tbaa !467
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajr
  store i32 %i.ajf, ptr %i.ajw, align 1
  %i.ajx = load i64, ptr %i.w, align 8, !tbaa !466
  %i.ajy = add i64 %i.ajx, 4                      ; 2 uses
  store i64 %i.ajy, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit178.i

dbuf_put_u32.exit178.i:                           ; preds = %bb.ip, %bb.io
  %i.ajz = phi i64 [ %.pre267.i, %bb.io ], [ %i.ajy, %bb.ip ] ; 3 uses
  %i.aka = load i64, ptr %i.v, align 8, !tbaa !465
  %i.akb = icmp eq i64 %i.aka, %i.ajz
  br i1 %i.akb, label %bb.iq, label %bb.ir, !prof !192

bb.iq:                                            ; preds = %dbuf_put_u32.exit178.i
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext %.1.i396)
  br label %.thread.i

bb.ir:                                            ; preds = %dbuf_put_u32.exit178.i
  %i.akc = load ptr, ptr %2, align 8, !tbaa !467
  %i.akd = add i64 %i.ajz, 1
  store i64 %i.akd, ptr %i.w, align 8, !tbaa !466
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.ajz
  store i8 %.1.i396, ptr %i.ake, align 1, !tbaa !218
  br label %.thread.i

.thread.thread.sink.split.i:                      ; preds = %._crit_edge.i216.i, %bb.hu, %dbuf_putc.exit161.i
  %.sink316.i = phi i64 [ %i.agm, %bb.hu ], [ %.pre.i217.i, %._crit_edge.i216.i ], [ %i.agm, %dbuf_putc.exit161.i ]
  %i.akf = load ptr, ptr %2, align 8, !tbaa !467
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %.sink316.i
  store i16 %i.agn, ptr %i.akg, align 1
  %i.akh = load i64, ptr %i.w, align 8, !tbaa !466
  %i.aki = add i64 %i.akh, 2
  store i64 %i.aki, ptr %i.w, align 8, !tbaa !466
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.thread.sink.split.i, %bb.hv
  %i.akj = load i32, ptr %i.afm, align 4, !tbaa !919
  %i.akk = icmp sgt i32 %i.akj, -1
  br i1 %i.akk, label %bb.it, label %bb.jd

.thread.loopexit.i:                               ; preds = %bb.ho
  %i.akl = trunc nuw nsw i64 %indvars.iv258.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.ir, %bb.iq
  %.0128240.i = phi i32 [ %.0128.lcssa.i, %bb.iq ], [ %.0128.lcssa.i, %bb.ir ], [ %i.akl, %.thread.loopexit.i ] ; 2 uses
  %.2226.i = phi i8 [ %.fr.i, %bb.iq ], [ %.fr.i, %bb.ir ], [ 0, %.thread.loopexit.i ]
  %.2124225.i = phi i32 [ 0, %bb.iq ], [ 0, %bb.ir ], [ 2, %.thread.loopexit.i ] ; 2 uses
  %i.akm = load i32, ptr %i.afm, align 4, !tbaa !919
  %i.akn = icmp sgt i32 %i.akm, -1                ; 2 uses
  %i.ako = trunc i8 %.2226.i to i1
  %or.cond.i = or i1 %i.akn, %i.ako
  br i1 %or.cond.i, label %bb.is, label %dbuf_putc.exit173.i

bb.is:                                            ; preds = %.thread.i
  br i1 %i.akn, label %bb.it, label %bb.jd

bb.it:                                            ; preds = %bb.is, %.thread.thread.i
  %.0128239.i = phi i32 [ %i.afz, %.thread.thread.i ], [ %.0128240.i, %bb.is ] ; 3 uses
  %.2124225231234.i = phi i32 [ 1, %.thread.thread.i ], [ %.2124225.i, %bb.is ] ; 3 uses
  %i.akp = load i64, ptr %i.v, align 8, !tbaa !465
  %i.akq = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.akr = icmp eq i64 %i.akp, %i.akq
  br i1 %i.akr, label %bb.iu, label %bb.iv, !prof !192

bb.iu:                                            ; preds = %bb.it
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 3)
  br label %dbuf_putc.exit182.i

bb.iv:                                            ; preds = %bb.it
  %i.aks = load ptr, ptr %2, align 8, !tbaa !467
  %i.akt = add i64 %i.akq, 1
  store i64 %i.akt, ptr %i.w, align 8, !tbaa !466
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aks, i64 %i.akq
  store i8 3, ptr %i.aku, align 1, !tbaa !218
  br label %dbuf_putc.exit182.i

dbuf_putc.exit182.i:                              ; preds = %bb.iv, %bb.iu
  %i.akv = load i32, ptr %i.afm, align 4, !tbaa !919 ; 2 uses
  %i.akw = load i64, ptr %i.v, align 8, !tbaa !465
  %i.akx = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.aky = sub i64 %i.akw, %i.akx
  %i.akz = icmp ult i64 %i.aky, 4
  br i1 %i.akz, label %bb.iw, label %bb.ix, !prof !192

bb.iw:                                            ; preds = %dbuf_putc.exit182.i
  %i.ala = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.akv) ; 0 uses
  br label %dbuf_put_u32.exit184.i

bb.ix:                                            ; preds = %dbuf_putc.exit182.i
  %i.alb = load ptr, ptr %2, align 8, !tbaa !467
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.akx
  store i32 %i.akv, ptr %i.alc, align 1
  %i.ald = load i64, ptr %i.w, align 8, !tbaa !466
  %i.ale = add i64 %i.ald, 4
  store i64 %i.ale, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit184.i

dbuf_put_u32.exit184.i:                           ; preds = %bb.ix, %bb.iw
  %i.alf = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !882
  %i.alh = icmp eq i32 %i.alg, 134
  br i1 %i.alh, label %bb.iy, label %dbuf_put_u32.exit188.i

bb.iy:                                            ; preds = %dbuf_put_u32.exit184.i
  %i.ali = load i64, ptr %i.v, align 8, !tbaa !465
  %i.alj = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.alk = icmp eq i64 %i.ali, %i.alj
  br i1 %i.alk, label %bb.iz, label %bb.ja, !prof !192

bb.iz:                                            ; preds = %bb.iy
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 76)
  br label %dbuf_putc.exit186.i

bb.ja:                                            ; preds = %bb.iy
  %i.all = load ptr, ptr %2, align 8, !tbaa !467
  %i.alm = add i64 %i.alj, 1
  store i64 %i.alm, ptr %i.w, align 8, !tbaa !466
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 %i.alj
  store i8 76, ptr %i.aln, align 1, !tbaa !218
  br label %dbuf_putc.exit186.i

dbuf_putc.exit186.i:                              ; preds = %bb.ja, %bb.iz
  %i.alo = load i64, ptr %i.v, align 8, !tbaa !465
  %i.alp = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.alq = sub i64 %i.alo, %i.alp
  %i.alr = icmp ult i64 %i.alq, 4
  br i1 %i.alr, label %bb.jb, label %bb.jc, !prof !192

bb.jb:                                            ; preds = %dbuf_putc.exit186.i
  %i.als = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef 22) ; 0 uses
  br label %dbuf_put_u32.exit188.i

bb.jc:                                            ; preds = %dbuf_putc.exit186.i
  %i.alt = load ptr, ptr %2, align 8, !tbaa !467
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.alp
  store i32 22, ptr %i.alu, align 1
  %i.alv = load i64, ptr %i.w, align 8, !tbaa !466
  %i.alw = add i64 %i.alv, 4
  store i64 %i.alw, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit188.i

bb.jd:                                            ; preds = %bb.is, %.thread.thread.i
  %.0128238.i = phi i32 [ %i.afz, %.thread.thread.i ], [ %.0128240.i, %bb.is ] ; 2 uses
  %.2124225231233.i = phi i32 [ 1, %.thread.thread.i ], [ %.2124225.i, %bb.is ] ; 2 uses
  %i.alx = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aly = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.alz = icmp eq i64 %i.alx, %i.aly
  br i1 %i.alz, label %bb.je, label %bb.jf, !prof !192

bb.je:                                            ; preds = %bb.jd
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 6)
  br label %dbuf_put_u32.exit188.i

bb.jf:                                            ; preds = %bb.jd
  %i.ama = load ptr, ptr %2, align 8, !tbaa !467
  %i.amb = add i64 %i.aly, 1
  store i64 %i.amb, ptr %i.w, align 8, !tbaa !466
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.aly
  store i8 6, ptr %i.amc, align 1, !tbaa !218
  br label %dbuf_put_u32.exit188.i

dbuf_put_u32.exit188.i:                           ; preds = %bb.jf, %bb.je, %bb.jc, %bb.jb, %dbuf_put_u32.exit184.i
  %.0128237.i = phi i32 [ %.0128238.i, %bb.jf ], [ %.0128238.i, %bb.je ], [ %.0128239.i, %bb.jc ], [ %.0128239.i, %bb.jb ], [ %.0128239.i, %dbuf_put_u32.exit184.i ]
  %.2124225231232.i = phi i32 [ %.2124225231233.i, %bb.jf ], [ %.2124225231233.i, %bb.je ], [ %.2124225231234.i, %bb.jc ], [ %.2124225231234.i, %bb.jb ], [ %.2124225231234.i, %dbuf_put_u32.exit184.i ]
  %i.amd = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ame = load i64, ptr %i.w, align 8, !tbaa !466 ; 7 uses
  %i.amf = icmp eq i64 %i.amd, %i.ame             ; 3 uses
  switch i32 %.2124225231232.i, label %bb.jt [
    i32 2, label %bb.jg
    i32 1, label %bb.jl
  ]

bb.jg:                                            ; preds = %dbuf_put_u32.exit188.i
  br i1 %i.amf, label %bb.jh, label %bb.ji, !prof !192

bb.jh:                                            ; preds = %bb.jg
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 94)
  br label %dbuf_putc.exit192.i

bb.ji:                                            ; preds = %bb.jg
  %i.amg = load ptr, ptr %2, align 8, !tbaa !467
  %i.amh = add i64 %i.ame, 1
  store i64 %i.amh, ptr %i.w, align 8, !tbaa !466
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.ame
  store i8 94, ptr %i.ami, align 1, !tbaa !218
  br label %dbuf_putc.exit192.i

dbuf_putc.exit192.i:                              ; preds = %bb.ji, %bb.jh
  %i.amj = trunc i32 %.0128237.i to i16           ; 2 uses
  %i.amk = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aml = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.amm = sub i64 %i.amk, %i.aml
  %i.amn = icmp ult i64 %i.amm, 2
  br i1 %i.amn, label %bb.jj, label %bb.jk, !prof !192

bb.jj:                                            ; preds = %dbuf_putc.exit192.i
  %i.amo = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %2, i16 noundef zeroext %i.amj) ; 0 uses
  br label %dbuf_putc.exit173.i

bb.jk:                                            ; preds = %dbuf_putc.exit192.i
  %i.amp = load ptr, ptr %2, align 8, !tbaa !467
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.aml
  store i16 %i.amj, ptr %i.amq, align 1
  %i.amr = load i64, ptr %i.w, align 8, !tbaa !466
  %i.ams = add i64 %i.amr, 2
  store i64 %i.ams, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_putc.exit173.i

bb.jl:                                            ; preds = %dbuf_put_u32.exit188.i
  br i1 %i.amf, label %bb.jm, label %bb.jn, !prof !192

bb.jm:                                            ; preds = %bb.jl
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 75)
  br label %dbuf_putc.exit196.i

bb.jn:                                            ; preds = %bb.jl
  %i.amt = load ptr, ptr %2, align 8, !tbaa !467
  %i.amu = add i64 %i.ame, 1
  store i64 %i.amu, ptr %i.w, align 8, !tbaa !466
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.ame
  store i8 75, ptr %i.amv, align 1, !tbaa !218
  br label %dbuf_putc.exit196.i
end_hunk_1
