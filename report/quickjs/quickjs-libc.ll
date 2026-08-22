Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs-libc?download=true
inline.NumInlined: 425
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@js_os_read_write:bb.a
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call i32 @JS_ToIndex(ptr noundef %0, ptr noundef nonnull %i.b, i64 %i.j, i64 %i.l) #34
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call i32 @JS_ToIndex(ptr noundef %0, ptr noundef nonnull %i.c, i64 %i.o, i64 %i.q) #34
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = call ptr @JS_GetArrayBuffer(ptr noundef %0, ptr noundef nonnull %i.d, i64 %i.t, i64 %i.v) #34 ; 2 uses
  %.not21 = icmp eq ptr %i.w, null
  br i1 %.not21, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %i.z = add i64 %i.y, %i.x
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !12
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.206) #34 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  %.sroa.7.0.extract.shift = and i64 %i.ad, -4294967296
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not22 = icmp eq i32 %5, 0
  %i.af = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i64 @write(i32 noundef %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.y) #34 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %js_get_errno.exit.sink.split, label %js_get_errno.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = call i64 @read(i32 noundef %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.y) #34 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %js_get_errno.exit.sink.split, label %js_get_errno.exit

js_get_errno.exit.sink.split:                     ; preds = %bb.i, %bb.h
  %i.al = tail call ptr @__errno_location() #37
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = sub nsw i32 0, %i.am
  %i.ao = sext i32 %i.an to i64
  br label %js_get_errno.exit

js_get_errno.exit:                                ; preds = %js_get_errno.exit.sink.split, %bb.i, %bb.h
  %.0 = phi i64 [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ao, %js_get_errno.exit.sink.split ] ; 3 uses
  %i.ap = add i64 %.0, 2147483648
  %or.cond.i = icmp ult i64 %i.ap, 4294967296     ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.0, 4294967295
  %i.aq = sitofp i64 %.0 to double
  %i.ar = bitcast double %i.aq to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.ar ; 2 uses
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  %.sroa.7.0.extract.shift16 = and i64 %.sroa.0.0.insert.ext.i.pn.i, -4294967296
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %js_get_errno.exit, %bb.f
  %.sroa.014.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ad, %bb.f ], [ %.sroa.0.0.insert.ext.i.pn.i, %js_get_errno.exit ], [ 0, %bb.d ]
  %.sroa.7.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.7.0.extract.shift, %bb.f ], [ %.sroa.7.0.extract.shift16, %js_get_errno.exit ], [ 0, %bb.d ]
  %.sroa.11.0 = phi i64 [ 6, %bb.c ], [ 6, %bb.a ], [ 6, %bb.b ], [ %i.ae, %bb.f ], [ %.sroa.3.0.i, %js_get_errno.exit ], [ 6, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.sroa.014.0.insert.ext = and i64 %.sroa.014.0, 4294967295
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.7.0, %.sroa.014.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.014.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_isatty(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.b, i64 %i.d) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !14
  %i.g = call i32 @isatty(i32 noundef %i.f) #34
  %i.h = icmp ne i32 %i.g, 0
  %.sroa.0.0.insert.ext.i = zext i1 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0 = phi i64 [ 1, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_ttyGetWinSize(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.winsize, align 2            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.b, i64 %i.d) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !14
  %i.g = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.f, i64 noundef 21523, ptr noundef nonnull %5) #34
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp ugt i16 %i.j, 3
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  %i.l = load i16, ptr %5, align 2
  %i.m = icmp ugt i16 %i.l, 3
  %or.cond7 = select i1 %or.cond, i1 %i.m, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = call { i64, i64 } @JS_NewArray(ptr noundef %0) #34 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 6 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 5 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.shift = and i64 %i.o, -4294967296
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = load i16, ptr %i.i, align 2, !tbaa !151
  %.sroa.0.0.insert.ext.i = zext i16 %i.s to i64
  %i.t = call i32 @JS_DefinePropertyValueUint32(ptr noundef %0, i64 %i.o, i64 %i.p, i32 noundef 0, i64 %.sroa.0.0.insert.ext.i, i64 0, i32 noundef 7) #34 ; 0 uses
  %i.u = load i16, ptr %5, align 2, !tbaa !153
  %.sroa.0.0.insert.ext.i30 = zext i16 %i.u to i64
  %i.v = call i32 @JS_DefinePropertyValueUint32(ptr noundef %0, i64 %i.o, i64 %i.p, i32 noundef 1, i64 %.sroa.0.0.insert.ext.i30, i64 0, i32 noundef 7) #34 ; 0 uses
  %.sroa.5.0.extract.shift28 = and i64 %i.o, -4294967296
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.sroa.026.0 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.b ]
  %.sroa.5.0 = phi i64 [ 0, %bb.a ], [ %.sroa.5.0.extract.shift, %bb.d ], [ %.sroa.5.0.extract.shift28, %bb.e ], [ 0, %bb.b ]
  %.sroa.7.0 = phi i64 [ 6, %bb.a ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.sroa.026.0.insert.ext = and i64 %.sroa.026.0, 4294967295
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.026.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.026.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_ttySetRaw(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.termios, align 16           ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.b, i64 %i.d) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i64 60, i1 false)
  %i.f = load i32, ptr %i.a, align 4, !tbaa !14
  %i.g = call i32 @tcgetattr(i32 noundef %i.f, ptr noundef nonnull %5) #34 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @oldtty, ptr noundef nonnull align 4 dereferenceable(60) %5, i64 60, i1 false), !tbaa.struct !154
  %i.h = load <4 x i32>, ptr %5, align 16, !tbaa !14 ; 2 uses
  %i.i = and <4 x i32> %i.h, <i32 poison, i32 -1, i32 -305, i32 poison>
  %i.j = and <4 x i32> %i.h, <i32 -1516, i32 poison, i32 poison, i32 -32843>
  %i.k = or <4 x i32> %i.i, <i32 poison, i32 1, i32 48, i32 poison>
  %i.l = shufflevector <4 x i32> %i.j, <4 x i32> %i.k, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.l, ptr %5, align 16, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 1, ptr %i.m, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.n, align 2, !tbaa !9
  %i.o = load i32, ptr %i.a, align 4, !tbaa !14
  %i.p = call i32 @tcsetattr(i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %5) #34 ; 0 uses
  %i.q = call i32 @atexit(ptr noundef nonnull @term_exit) #34 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ 3, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_remove(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @remove(ptr noundef nonnull %i.d) #34 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %js_get_errno.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #37
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = sub nsw i32 0, %i.h
  br label %js_get_errno.exit

js_get_errno.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.in = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i.in to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %js_get_errno.exit
  %.sroa.08.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %js_get_errno.exit ], [ 0, %bb.a ]
  %.sroa.4.0 = phi i64 [ 0, %js_get_errno.exit ], [ 6, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_rename(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.a, i64 %i.c, i1 noundef zeroext false) #34 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.f, i64 %i.h, i1 noundef zeroext false) #34 ; 3 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i32 @rename(ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) #34 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %js_get_errno.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #37
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = sub nsw i32 0, %i.m
  br label %js_get_errno.exit

js_get_errno.exit:                                ; preds = %bb.d, %bb.e
  %.0.i.in = phi i32 [ %i.n, %bb.e ], [ %i.j, %bb.d ]
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.d) #34
  tail call void @JS_FreeCString(ptr noundef %0, ptr noundef nonnull %i.i) #34
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i.in to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %js_get_errno.exit, %bb.c
  %.sroa.015.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %js_get_errno.exit ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ 0, %js_get_errno.exit ], [ 6, %bb.c ], [ 6, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.015.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_os_setReadHandler(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = tail call ptr @JS_GetRuntime(ptr noundef %0) #34
  %i.c = tail call i64 (i32, ...) @js_std_cmd(i32 noundef 0, ptr noundef %i.b) #34
  %i.d = inttoptr i64 %i.c to ptr                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.e = load i64, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = call i32 @JS_ToInt32(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.e, i64 %i.g) #34
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %find_rh.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.08.0.copyload = load i64, ptr %i.i, align 8, !tbaa !9 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12 ; 3 uses
  %i.j = and i64 %.sroa.6.0.copyload, 4294967295
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi ptr [ %i.d, %bb.c ], [ %.0.i, %bb.e ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !31 ; 11 uses
  %.not.i = icmp eq ptr %.0.i, %i.d
  br i1 %.not.i, label %find_rh.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !42
  %i.o = icmp eq i32 %i.n, %i.l
  br i1 %i.o, label %find_rh.exit, label %bb.d, !llvm.loop !55

find_rh.exit:                                     ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.q = sext i32 %5 to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 4 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  call void @JS_FreeValue(ptr noundef %0, i64 %i.s, i64 %i.u) #34
  store i32 0, ptr %i.r, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !9
  store i64 2, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %find_rh.exit.thread

bb.f:                                             ; preds = %find_rh.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.g, label %find_rh.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ae = call ptr @JS_GetRuntime(ptr noundef %0) #34 ; 3 uses
  %i.af = load ptr, ptr %.0.i, align 8, !tbaa !57 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !31
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  %i.aj = load i64, ptr %i.p, align 8
  %i.ak = load i64, ptr %i.v, align 8
  call void @JS_FreeValueRT(ptr noundef %i.ae, i64 %i.aj, i64 %i.ak) #34
  %i.al = load i64, ptr %i.ad, align 8
  %i.am = load i64, ptr %i.z, align 8
  call void @JS_FreeValueRT(ptr noundef %i.ae, i64 %i.al, i64 %i.am) #34
  call void @js_free_rt(ptr noundef %i.ae, ptr noundef nonnull %.0.i) #34
  br label %find_rh.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.an = call zeroext i1 @JS_IsFunction(ptr noundef %0, i64 %.sroa.08.0.copyload, i64 %.sroa.6.0.copyload) #34
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.125) #34 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
end_hunk_0
