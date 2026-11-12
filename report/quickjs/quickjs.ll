Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@JS_IsInstanceOf:bb.a
JS_FreeValueRT.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %i.p = extractvalue { i64, i64 } %i.g, 0
  %i.q = extractvalue { i64, i64 } %i.g, 1
  %i.r = call fastcc i32 @JS_ToBoolFree(ptr noundef nonnull %0, i64 %i.p, i64 %i.q)
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.s = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.u, label %JS_IsFunction.exit [
    i16 13, label %JS_IsFunction.exit.thread
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !458
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %JS_IsFunction.exit.thread

JS_IsFunction.exit:                               ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251
  %i.ad = zext i16 %i.u to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !255
  %.not29 = icmp eq ptr %i.ag, null
  br i1 %.not29, label %bb.g, label %JS_IsFunction.exit.thread

bb.g:                                             ; preds = %.split, %JS_IsFunction.exit, %bb.a
  %i.ah = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.47) ; 0 uses
  br label %bb.h

JS_IsFunction.exit.thread:                        ; preds = %bb.f, %.split, %JS_IsFunction.exit
  %i.ai = tail call fastcc i32 @JS_OrdinaryIsInstanceOf(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %JS_IsFunction.exit.thread, %bb.g, %JS_FreeValueRT.exit
  %.0 = phi i32 [ %i.r, %JS_FreeValueRT.exit ], [ %i.ai, %JS_IsFunction.exit.thread ], [ -1, %bb.g ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_GetProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i64 %1, i64 %2, i1 noundef zeroext false)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_CallFree(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 0, i64 3, i32 noundef %5, ptr noundef %6, i32 noundef 2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.d = trunc i64 %2 to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %JS_FreeValueRT.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191  ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  %i.j = icmp slt i32 %i.h, 2
  br i1 %i.j, label %bb.c, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef %i.c, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @JS_ToBoolFree(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.a, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 6, label %JS_FreeValueRT.exit43
    i32 -7, label %bb.d
    i32 -6, label %bb.f
    i32 7, label %bb.h
    i32 -9, label %bb.i
    i32 -1, label %bb.n
    i32 8, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 4294967295
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %JS_FreeValueRT.exit43

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.sroa.0.0.extract.trunc23 = trunc i64 %1 to i32
  br label %JS_FreeValueRT.exit43

bb.d:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 2147483647
  %i.h = icmp ne i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191  ; 2 uses
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !191
  %i.n = icmp slt i32 %i.l, 2
  br i1 %i.n, label %bb.e, label %JS_FreeValueRT.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_value_rt(ptr noundef %i.j, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.d, %bb.e
  %i.o = zext i1 %i.h to i32
  br label %JS_FreeValueRT.exit43

bb.f:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !478
  %i.r = icmp ne i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !232
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191  ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !191
  %i.x = icmp slt i32 %i.v, 2
  br i1 %i.x, label %bb.g, label %JS_FreeValueRT.exit40.a

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.t, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit40.a

JS_FreeValueRT.exit40.a:                          ; preds = %bb.f, %bb.g
  %i.y = zext i1 %i.r to i32
  br label %JS_FreeValueRT.exit43

bb.h:                                             ; preds = %bb.a
  %i.z = and i64 %1, 4294967295
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  br label %JS_FreeValueRT.exit43

bb.i:                                             ; preds = %bb.a
  %i.ac = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = zext i32 %i.ad to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.af, %bb.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ag = and i64 %indvars.iv.next, 2147483648
  %i.ah = icmp eq i64 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = and i64 %indvars.iv.next, 2147483647
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !191
  %.not39 = icmp eq i32 %i.ak, 0
  br i1 %.not39, label %bb.j, label %bb.l, !llvm.loop !1135

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !191
  %i.aq = icmp slt i32 %i.ao, 2
  br i1 %i.aq, label %bb.m, label %JS_FreeValueRT.exit41.a

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @js_free_value_rt(ptr noundef %i.am, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit41.a

JS_FreeValueRT.exit41.a:                          ; preds = %bb.l, %bb.m
  %i.ar = zext i1 %i.ah to i32
  br label %JS_FreeValueRT.exit43

bb.n:                                             ; preds = %bb.a
  %i.as = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %3 = load i16, ptr %i.at, align 8
  %4 = and i16 %3, 256
  %.not = icmp eq i16 %4, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !232
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !191 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !191
  %i.az = icmp slt i32 %i.ax, 2
  br i1 %i.az, label %bb.o, label %JS_FreeValueRT.exit42.a

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.av, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit42.a

JS_FreeValueRT.exit42.a:                          ; preds = %bb.n, %bb.o
  %i.ba = zext i1 %.not to i32
  br label %JS_FreeValueRT.exit43

bb.p:                                             ; preds = %bb.a
  %i.bb = bitcast i64 %1 to double
  %i.bc = fcmp one double %i.bb, 0.000000e+00
  %i.bd = zext i1 %i.bc to i32
  br label %JS_FreeValueRT.exit43

bb.q:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !232
  %i.bg = icmp ugt i32 %i.a, -10
  br i1 %i.bg, label %bb.r, label %JS_FreeValueRT.exit43

bb.r:                                             ; preds = %bb.q
  %i.bh = inttoptr i64 %1 to ptr
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !191 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !191
  %i.bl = icmp slt i32 %i.bj, 2
  br i1 %i.bl, label %bb.s, label %JS_FreeValueRT.exit43

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bf, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit43

JS_FreeValueRT.exit43:                            ; preds = %bb.s, %bb.r, %bb.q, %bb.a, %bb.p, %JS_FreeValueRT.exit42.a, %JS_FreeValueRT.exit41.a, %bb.h, %JS_FreeValueRT.exit40.a, %JS_FreeValueRT.exit, %bb.c, %bb.b
  %.0 = phi i32 [ %i.bd, %bb.p ], [ -1, %bb.a ], [ %i.d, %bb.b ], [ %.sroa.0.0.extract.trunc23, %bb.c ], [ %i.ba, %JS_FreeValueRT.exit42.a ], [ %i.o, %JS_FreeValueRT.exit ], [ %i.y, %JS_FreeValueRT.exit40.a ], [ %i.ab, %bb.h ], [ %i.ar, %JS_FreeValueRT.exit41.a ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_IsFunction(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.a, 4294967295
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.d, label %bb.d [
    i16 13, label %bb.e
    i16 51, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !458
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = zext i16 %i.d to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !255
  %i.r = icmp ne ptr %i.q, null
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ %i.r, %bb.d ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @JS_OrdinaryIsInstanceOf(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %4, 4294967295
  %.not.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i, label %bb.b, label %JS_FreeValueRT.exit54

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %3 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276  ; 3 uses
  switch i16 %i.d, label %JS_IsFunction.exit [
    i16 13, label %JS_IsFunction.exit.thread.thread
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !458
  %.not58 = icmp ne i8 %i.h, 0
  %i.i = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.i, 4294967295
  %or.cond = select i1 %.not58, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %JS_FreeValueRT.exit54

JS_IsFunction.exit:                               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = zext i16 %i.d to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !255
  %.not59 = icmp eq ptr %i.q, null
  br i1 %.not59, label %JS_FreeValueRT.exit54, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread:                        ; preds = %JS_IsFunction.exit
  %i.r = icmp eq i16 %i.d, 14
  br i1 %i.r, label %bb.c, label %JS_IsFunction.exit.thread.thread

bb.c:                                             ; preds = %JS_IsFunction.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !218  ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i32 @JS_IsInstanceOf(ptr noundef nonnull %0, i64 %1, i64 %2, i64 %i.u, i64 %i.w)
  br label %JS_FreeValueRT.exit54

JS_IsFunction.exit.thread.thread:                 ; preds = %bb.b, %JS_IsFunction.exit.thread
  %.old = and i64 %2, 4294967295
  %.not.old = icmp eq i64 %.old, 4294967295
  br i1 %.not.old, label %bb.d, label %JS_FreeValueRT.exit54

bb.d:                                             ; preds = %.split, %JS_IsFunction.exit.thread.thread
  %i.y = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %3, i64 %4, i32 noundef 63, i64 %3, i64 %4, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 5 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %trunc = trunc i64 %i.aa to i32                 ; 2 uses
  switch i32 %trunc, label %bb.e [
    i32 -1, label %bb.f
    i32 6, label %JS_FreeValueRT.exit54
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.111) ; 0 uses
  br label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ad = inttoptr i64 %1 to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.r, %bb.f
  %.046 = phi ptr [ %i.ad, %bb.f ], [ %i.ah, %bb.r ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.046, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !317
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !336 ; 3 uses
  %.not50 = icmp eq ptr %i.ah, null
  br i1 %.not50, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.046, i64 18
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !276
  %i.ak = icmp eq i16 %i.aj, 51
  br i1 %i.ak, label %bb.i, label %JS_FreeValueRT.exit, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %.046 to i64
  %i.am = getelementptr inbounds i8, ptr %.046, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.i
  %.sroa.10.0 = phi i64 [ -1, %bb.i ], [ %i.as, %.critedge.backedge ]
  %.sroa.04.0 = phi i64 [ %i.al, %bb.i ], [ %i.ar, %.critedge.backedge ]
  %i.aq = tail call fastcc { i64, i64 } @JS_GetPrototypeFree(ptr noundef %0, i64 %.sroa.04.0, i64 %.sroa.10.0) ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0      ; 4 uses
  %i.as = extractvalue { i64, i64 } %i.aq, 1      ; 4 uses
  %trunc60 = trunc i64 %i.as to i32               ; 3 uses
  switch i32 %trunc60, label %bb.j [
    i32 6, label %JS_FreeValueRT.exit.loopexit
    i32 2, label %JS_FreeValueRT.exit
  ]

bb.j:                                             ; preds = %.critedge
  %i.at = icmp eq i64 %i.z, %i.ar
  br i1 %i.at, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !232
  %i.aw = icmp ugt i32 %trunc60, -10
  br i1 %i.aw, label %bb.l, label %JS_FreeValueRT.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
end_hunk_0
begin_hunk_1_@JS_CallInternal:bb.a
  %i.itf = and i32 %i.ite, 268435455
  %i.itg = getelementptr inbounds nuw i8, ptr %i.isq, i64 1080
  %i.ith = load i32, ptr %i.itg, align 8, !tbaa !242
  %i.iti = add nsw i32 %i.ith, -1
  %i.itj = and i32 %i.itf, %i.iti
  %i.itk = getelementptr inbounds nuw i8, ptr %i.isq, i64 1096
  %i.itl = load ptr, ptr %i.itk, align 8, !tbaa !243
  %i.itm = zext nneg i32 %i.itj to i64
  %i.itn = getelementptr inbounds nuw [4 x i8], ptr %i.itl, i64 %i.itm ; 2 uses
  %i.ito = load i32, ptr %i.itn, align 4, !tbaa !191 ; 2 uses
  %i.itp = zext i32 %i.ito to i64                 ; 2 uses
  %i.itq = getelementptr inbounds nuw [8 x i8], ptr %i.iss, i64 %i.itp
  %i.itr = load ptr, ptr %i.itq, align 8, !tbaa !299 ; 3 uses
  %i.its = icmp eq ptr %i.itr, %i.isv
  br i1 %i.its, label %bb.bao, label %.preheader.i2904

bb.bao:                                           ; preds = %bb.ban
  %i.itt = getelementptr inbounds nuw i8, ptr %i.itr, i64 8
  %i.itu = load i32, ptr %i.itt, align 8, !tbaa !249
  store i32 %i.itu, ptr %i.itn, align 4, !tbaa !191
  br label %bb.baq

.preheader.i2904:                                 ; preds = %bb.ban, %.preheader.i2904
  %.0.i2905 = phi ptr [ %i.itz, %.preheader.i2904 ], [ %i.itr, %bb.ban ] ; 2 uses
  %i.itv = getelementptr inbounds nuw i8, ptr %.0.i2905, i64 8
  %i.itw = load i32, ptr %i.itv, align 8, !tbaa !249 ; 2 uses
  %i.itx = zext i32 %i.itw to i64                 ; 2 uses
  %i.ity = getelementptr inbounds nuw [8 x i8], ptr %i.iss, i64 %i.itx
  %i.itz = load ptr, ptr %i.ity, align 8, !tbaa !299 ; 3 uses
  %i.iua = icmp eq ptr %i.itz, %i.isv
  br i1 %i.iua, label %bb.bap, label %.preheader.i2904

bb.bap:                                           ; preds = %.preheader.i2904
  %i.iub = getelementptr inbounds nuw i8, ptr %.0.i2905, i64 8
  %i.iuc = getelementptr inbounds nuw i8, ptr %i.itz, i64 8
  %i.iud = load i32, ptr %i.iuc, align 8, !tbaa !249
  store i32 %i.iud, ptr %i.iub, align 8, !tbaa !249
  br label %bb.baq

bb.baq:                                           ; preds = %bb.bap, %bb.bao, %._crit_edge.i2909
  %.pre-phi.i2906 = phi i64 [ %.pre39.i2912, %._crit_edge.i2909 ], [ %i.itp, %bb.bao ], [ %i.itx, %bb.bap ]
  %.1.i2907 = phi i32 [ %i.itc, %._crit_edge.i2909 ], [ %i.ito, %bb.bao ], [ %i.itw, %bb.bap ]
  %i.iue = getelementptr inbounds nuw i8, ptr %i.isq, i64 1112 ; 2 uses
  %i.iuf = load i32, ptr %i.iue, align 8, !tbaa !246
  %i.iug = zext i32 %i.iuf to i64
  %i.iuh = shl nuw nsw i64 %i.iug, 1
  %i.iui = or disjoint i64 %i.iuh, 1
  %i.iuj = inttoptr i64 %i.iui to ptr
  %i.iuk = getelementptr inbounds nuw [8 x i8], ptr %i.iss, i64 %.pre-phi.i2906
  store ptr %i.iuj, ptr %i.iuk, align 8, !tbaa !299
  store i32 %.1.i2907, ptr %i.iue, align 8, !tbaa !246
  %i.iul = getelementptr inbounds nuw i8, ptr %i.isv, i64 16 ; 2 uses
  %i.ium = load ptr, ptr %i.iul, align 8, !tbaa !357
  %.not35.i2908 = icmp eq ptr %i.ium, null
  br i1 %.not35.i2908, label %JS_FreeAtomStruct.exit2913, label %bb.bar, !prof !325

bb.bar:                                           ; preds = %bb.baq
  call fastcc void @reset_weak_ref(ptr noundef nonnull %i.isq, ptr noundef nonnull %i.iul), !inline_history !1325
  br label %JS_FreeAtomStruct.exit2913

JS_FreeAtomStruct.exit2913:                       ; preds = %bb.baq, %bb.bar
  call void @js_free_rt(ptr noundef nonnull %i.isq, ptr noundef nonnull %i.isv), !inline_history !1325
  %i.iun = getelementptr inbounds nuw i8, ptr %i.isq, i64 1084 ; 2 uses
  %i.iuo = load i32, ptr %i.iun, align 4, !tbaa !244
  %i.iup = add nsw i32 %i.iuo, -1
  store i32 %i.iup, ptr %i.iun, align 4, !tbaa !244
  br label %JS_FreeAtom.exit5216

JS_FreeAtom.exit5216:                             ; preds = %.JS_FreeAtom.exit5216_crit_edge, %find_own_property.exit5224, %JS_FreeAtomStruct.exit2913, %bb.bal
  %.pre-phi1844 = phi ptr [ %.pre1843, %.JS_FreeAtom.exit5216_crit_edge ], [ %i.irt, %find_own_property.exit5224 ], [ %i.irt, %JS_FreeAtomStruct.exit2913 ], [ %i.irt, %bb.bal ]
  %.132.i = phi i32 [ %i.irq, %.JS_FreeAtom.exit5216_crit_edge ], [ %.017.i5223, %find_own_property.exit5224 ], [ %.017.i5223, %JS_FreeAtomStruct.exit2913 ], [ %.017.i5223, %bb.bal ]
  %i.iuq = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 2 uses
  %i.iur = getelementptr inbounds i8, ptr %.pre-phi1844, i64 -4 ; 2 uses
  %i.ius = load i32, ptr %i.iur, align 4, !tbaa !191 ; 2 uses
  %i.iut = add nsw i32 %i.ius, -1
  store i32 %i.iut, ptr %i.iur, align 4, !tbaa !191
  %i.iuu = icmp slt i32 %i.ius, 2
  br i1 %i.iuu, label %bb.bas, label %JS_FreeValue.exit5214

bb.bas:                                           ; preds = %JS_FreeAtom.exit5216
  call fastcc void @js_free_value_rt(ptr noundef %i.iuq, i64 %.sroa.015.0.copyload.i528, i64 %.sroa.6.0.copyload.i4459), !inline_history !1326
  %.pre1763 = load ptr, ptr %i.fc, align 8, !tbaa !232
  br label %JS_FreeValue.exit5214

JS_FreeValue.exit5214:                            ; preds = %JS_FreeAtom.exit5216, %bb.bas
  %i.iuv = phi ptr [ %i.iuq, %JS_FreeAtom.exit5216 ], [ %.pre1763, %bb.bas ]
  %i.iuw = trunc i64 %.sroa.7.0.copyload.i4462 to i32
  %i.iux = icmp ugt i32 %i.iuw, -10
  br i1 %i.iux, label %bb.bat, label %bb.bav

bb.bat:                                           ; preds = %JS_FreeValue.exit5214
  %i.iuy = inttoptr i64 %.sroa.08.0.copyload.i4460 to ptr
  %i.iuz = getelementptr inbounds i8, ptr %i.iuy, i64 -4 ; 2 uses
  %i.iva = load i32, ptr %i.iuz, align 4, !tbaa !191 ; 2 uses
  %i.ivb = add nsw i32 %i.iva, -1
  store i32 %i.ivb, ptr %i.iuz, align 4, !tbaa !191
  %i.ivc = icmp slt i32 %i.iva, 2
  br i1 %i.ivc, label %bb.bau, label %bb.bav

bb.bau:                                           ; preds = %bb.bat
  call fastcc void @js_free_value_rt(ptr noundef %i.iuv, i64 %.sroa.08.0.copyload.i4460, i64 %.sroa.7.0.copyload.i4462), !inline_history !1326
  br label %bb.bav

bb.bav:                                           ; preds = %JS_FreeValue.exit5214, %bb.bat, %bb.bau
  %i.ivd = icmp ne i32 %.132.i, 0
  %.sroa.0.0.insert.ext.i5208 = zext i1 %i.ivd to i64
  store i64 %.sroa.0.0.insert.ext.i5208, ptr %i.irk, align 8, !tbaa !218
  store i64 1, ptr %.sroa.6.0..sroa_idx.i4458, align 8, !tbaa !240
  %i.ive = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.baw:                                           ; preds = %.backedge
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.ivf = getelementptr inbounds i8, ptr %.31, i64 -32 ; 2 uses
  %.sroa.06.0.copyload.i4465 = load i64, ptr %i.ivf, align 8, !tbaa !218 ; 3 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds i8, ptr %.31, i64 -24 ; 2 uses
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !240 ; 3 uses
  %i.ivg = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %.sroa.03.0.copyload.i4466 = load i64, ptr %i.ivg, align 8, !tbaa !218 ; 3 uses
  %.sroa.5.0..sroa_idx.i4467 = getelementptr inbounds i8, ptr %.31, i64 -8
  %.sroa.5.0.copyload.i4468 = load i64, ptr %.sroa.5.0..sroa_idx.i4467, align 8, !tbaa !240 ; 3 uses
  %i.ivh = call i32 @JS_IsInstanceOf(ptr noundef %.0, i64 %.sroa.06.0.copyload.i4465, i64 %.sroa.58.0.copyload.i, i64 %.sroa.03.0.copyload.i4466, i64 %.sroa.5.0.copyload.i4468), !inline_history !1327 ; 2 uses
  %i.ivi = icmp slt i32 %i.ivh, 0
  br i1 %i.ivi, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.bax

bb.bax:                                           ; preds = %bb.baw
  %i.ivj = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 3 uses
  %i.ivk = trunc i64 %.sroa.58.0.copyload.i to i32
  %i.ivl = icmp ugt i32 %i.ivk, -10
  br i1 %i.ivl, label %bb.bay, label %JS_FreeValue.exit5231

bb.bay:                                           ; preds = %bb.bax
  %i.ivm = inttoptr i64 %.sroa.06.0.copyload.i4465 to ptr
  %i.ivn = getelementptr inbounds i8, ptr %i.ivm, i64 -4 ; 2 uses
  %i.ivo = load i32, ptr %i.ivn, align 4, !tbaa !191 ; 2 uses
  %i.ivp = add nsw i32 %i.ivo, -1
  store i32 %i.ivp, ptr %i.ivn, align 4, !tbaa !191
  %i.ivq = icmp slt i32 %i.ivo, 2
  br i1 %i.ivq, label %bb.baz, label %JS_FreeValue.exit5231

bb.baz:                                           ; preds = %bb.bay
  call fastcc void @js_free_value_rt(ptr noundef %i.ivj, i64 %.sroa.06.0.copyload.i4465, i64 %.sroa.58.0.copyload.i), !inline_history !1328
  %.pre1765 = load ptr, ptr %i.fc, align 8, !tbaa !232
  br label %JS_FreeValue.exit5231

JS_FreeValue.exit5231:                            ; preds = %bb.bax, %bb.bay, %bb.baz
  %i.ivr = phi ptr [ %i.ivj, %bb.bax ], [ %i.ivj, %bb.bay ], [ %.pre1765, %bb.baz ]
  %i.ivs = trunc i64 %.sroa.5.0.copyload.i4468 to i32
  %i.ivt = icmp ugt i32 %i.ivs, -10
  br i1 %i.ivt, label %bb.bba, label %bb.bbc

bb.bba:                                           ; preds = %JS_FreeValue.exit5231
  %i.ivu = inttoptr i64 %.sroa.03.0.copyload.i4466 to ptr
  %i.ivv = getelementptr inbounds i8, ptr %i.ivu, i64 -4 ; 2 uses
  %i.ivw = load i32, ptr %i.ivv, align 4, !tbaa !191 ; 2 uses
  %i.ivx = add nsw i32 %i.ivw, -1
  store i32 %i.ivx, ptr %i.ivv, align 4, !tbaa !191
  %i.ivy = icmp slt i32 %i.ivw, 2
  br i1 %i.ivy, label %bb.bbb, label %bb.bbc

bb.bbb:                                           ; preds = %bb.bba
  call fastcc void @js_free_value_rt(ptr noundef %i.ivr, i64 %.sroa.03.0.copyload.i4466, i64 %.sroa.5.0.copyload.i4468), !inline_history !1328
  br label %bb.bbc

bb.bbc:                                           ; preds = %bb.bbb, %bb.bba, %JS_FreeValue.exit5231
  %i.ivz = icmp ne i32 %i.ivh, 0
  %.sroa.0.0.insert.ext.i5225 = zext i1 %i.ivz to i64
  store i64 %.sroa.0.0.insert.ext.i5225, ptr %i.ivf, align 8, !tbaa !218
  store i64 1, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !240
  %i.iwa = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.bbd:                                           ; preds = %.backedge
  %i.iwb = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %.sroa.0134.0.copyload = load i64, ptr %i.iwb, align 8, !tbaa !218 ; 3 uses
  %.sroa.3136.0..sroa_idx = getelementptr inbounds i8, ptr %.31, i64 -8 ; 2 uses
  %.sroa.3136.0.copyload = load i64, ptr %.sroa.3136.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  %i.iwc = trunc i64 %.sroa.3136.0.copyload to i32 ; 2 uses
  switch i32 %i.iwc, label %bb.bbk [
    i32 7, label %js_operator_typeof.exit
    i32 -9, label %js_operator_typeof.exit
    i32 0, label %JS_FreeValueRT.exit5232
    i32 8, label %JS_FreeValueRT.exit5232
    i32 3, label %bb.bbe
    i32 1, label %bb.bbf
    i32 -7, label %js_operator_typeof.exit.thread
    i32 -6, label %js_operator_typeof.exit.thread
    i32 -1, label %bb.bbg
    i32 2, label %.thread.i
    i32 -8, label %bb.bbj
  ]

bb.bbe:                                           ; preds = %bb.bbd
  br label %JS_FreeValueRT.exit5232

bb.bbf:                                           ; preds = %bb.bbd
  br label %JS_FreeValueRT.exit5232

bb.bbg:                                           ; preds = %bb.bbd
  %i.iwd = inttoptr i64 %.sroa.0134.0.copyload to ptr ; 3 uses
  %i.iwe = getelementptr inbounds nuw i8, ptr %i.iwd, i64 16
  %56 = load i16, ptr %i.iwe, align 8
  %57 = and i16 %56, 256
  %.not.i4471 = icmp eq i16 %57, 0
  br i1 %.not.i4471, label %bb.bbh, label %js_operator_typeof.exit.thread, !prof !325

bb.bbh:                                           ; preds = %bb.bbg
  %i.iwf = and i64 %.sroa.3136.0.copyload, 4294967295
  %.not.i.i4472 = icmp eq i64 %i.iwf, 4294967295
  br i1 %.not.i.i4472, label %bb.bbi, label %.thread.i

bb.bbi:                                           ; preds = %bb.bbh
  %i.iwg = getelementptr inbounds nuw i8, ptr %i.iwd, i64 18
  %i.iwh = load i16, ptr %i.iwg, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.iwh, label %JS_IsFunction.exit.i [
    i16 13, label %js_operator_typeof.exit.thread
    i16 51, label %.split.i4473
  ]

.split.i4473:                                     ; preds = %bb.bbi
  %i.iwi = getelementptr inbounds nuw i8, ptr %i.iwd, i64 48
  %i.iwj = load ptr, ptr %i.iwi, align 8, !tbaa !218
  %i.iwk = getelementptr inbounds nuw i8, ptr %i.iwj, i64 32
  %i.iwl = load i8, ptr %i.iwk, align 8, !tbaa !458
  %.fr.i = freeze i8 %i.iwl
  %.not17.i4474 = icmp eq i8 %.fr.i, 0
  br i1 %.not17.i4474, label %.thread.i, label %js_operator_typeof.exit.thread

JS_IsFunction.exit.i:                             ; preds = %bb.bbi
  %i.iwm = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.iwn = getelementptr inbounds nuw i8, ptr %i.iwm, i64 1128
  %i.iwo = load ptr, ptr %i.iwn, align 8, !tbaa !251
  %i.iwp = zext i16 %i.iwh to i64
  %i.iwq = getelementptr inbounds nuw [40 x i8], ptr %i.iwo, i64 %i.iwp
  %i.iwr = getelementptr inbounds nuw i8, ptr %i.iwq, i64 24
  %i.iws = load ptr, ptr %i.iwr, align 8, !tbaa !255
  %.fr18.i = freeze ptr %i.iws
  %.not19.i4475 = icmp eq ptr %.fr18.i, null
  br i1 %.not19.i4475, label %.thread.i, label %js_operator_typeof.exit.thread

.thread.i:                                        ; preds = %JS_IsFunction.exit.i, %.split.i4473, %bb.bbh, %bb.bbd
  br label %js_operator_typeof.exit

bb.bbj:                                           ; preds = %bb.bbd
  br label %js_operator_typeof.exit.thread

bb.bbk:                                           ; preds = %bb.bbd
  br label %js_operator_typeof.exit

js_operator_typeof.exit:                          ; preds = %bb.bbd, %bb.bbd, %.thread.i, %bb.bbk
  %.2.i4470 = phi i32 [ 80, %bb.bbk ], [ 77, %.thread.i ], [ 150, %bb.bbd ], [ 150, %bb.bbd ] ; 2 uses
  %i.iwt = icmp ugt i32 %i.iwc, -10
  br i1 %i.iwt, label %js_operator_typeof.exit.thread, label %JS_FreeValueRT.exit5232

js_operator_typeof.exit.thread:                   ; preds = %bb.bbd, %bb.bbd, %bb.bbj, %JS_IsFunction.exit.i, %.split.i4473, %bb.bbi, %bb.bbg, %js_operator_typeof.exit
  %.2.i4470488 = phi i32 [ %.2.i4470, %js_operator_typeof.exit ], [ 27, %JS_IsFunction.exit.i ], [ 27, %.split.i4473 ], [ 27, %bb.bbi ], [ 73, %bb.bbg ], [ 78, %bb.bbj ], [ 76, %bb.bbd ], [ 76, %bb.bbd ] ; 2 uses
  %i.iwu = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.iwv = inttoptr i64 %.sroa.0134.0.copyload to ptr
  %i.iww = getelementptr inbounds i8, ptr %i.iwv, i64 -4 ; 2 uses
  %i.iwx = load i32, ptr %i.iww, align 4, !tbaa !191 ; 2 uses
  %i.iwy = add nsw i32 %i.iwx, -1
  store i32 %i.iwy, ptr %i.iww, align 4, !tbaa !191
  %i.iwz = icmp slt i32 %i.iwx, 2
  br i1 %i.iwz, label %bb.bbl, label %JS_FreeValueRT.exit5232

bb.bbl:                                           ; preds = %js_operator_typeof.exit.thread
  call fastcc void @js_free_value_rt(ptr noundef %i.iwu, i64 %.sroa.0134.0.copyload, i64 %.sroa.3136.0.copyload), !inline_history !370
  br label %JS_FreeValueRT.exit5232

JS_FreeValueRT.exit5232:                          ; preds = %bb.bbd, %bb.bbd, %bb.bbf, %bb.bbe, %js_operator_typeof.exit, %js_operator_typeof.exit.thread, %bb.bbl
  %.2.i4470487 = phi i32 [ %.2.i4470, %js_operator_typeof.exit ], [ %.2.i4470488, %js_operator_typeof.exit.thread ], [ %.2.i4470488, %bb.bbl ], [ 75, %bb.bbf ], [ 73, %bb.bbe ], [ 74, %bb.bbd ], [ 74, %bb.bbd ]
  %i.ixa = call fastcc { i64, i64 } @__JS_AtomToValue(ptr noundef %.0, i32 noundef %.2.i4470487, i1 noundef zeroext true), !inline_history !398 ; 2 uses
  %i.ixb = extractvalue { i64, i64 } %i.ixa, 0
  %i.ixc = extractvalue { i64, i64 } %i.ixa, 1
  store i64 %i.ixb, ptr %i.iwb, align 8, !tbaa !218
  store i64 %i.ixc, ptr %.sroa.3136.0..sroa_idx, align 8, !tbaa !240
  %i.ixd = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.bbm:                                           ; preds = %.backedge
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.ixe = getelementptr inbounds i8, ptr %.31, i64 -32 ; 2 uses
  %.sroa.08.0.copyload.i4476 = load i64, ptr %i.ixe, align 8, !tbaa !218 ; 3 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %.31, i64 -24 ; 2 uses
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !tbaa !240 ; 3 uses
  %i.ixf = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.ixf, align 8, !tbaa !218 ; 3 uses
  %.sroa.5.0..sroa_idx.i4477 = getelementptr inbounds i8, ptr %.31, i64 -8
  %.sroa.5.0.copyload.i4478 = load i64, ptr %.sroa.5.0..sroa_idx.i4477, align 8, !tbaa !240 ; 3 uses
  %i.ixg = call fastcc i32 @JS_ValueToAtomInternal(ptr noundef %.0, i64 %.sroa.05.0.copyload.i, i64 %.sroa.5.0.copyload.i4478, i32 noundef 0), !inline_history !1329 ; 4 uses
  %i.ixh = icmp eq i32 %i.ixg, 0
  br i1 %i.ixh, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.bbn, !prof !192

bb.bbn:                                           ; preds = %bb.bbm
  %i.ixi = call { i64, i64 } @JS_ToObject(ptr noundef %.0, i64 %.sroa.08.0.copyload.i4476, i64 %.sroa.510.0.copyload.i), !inline_history !1330 ; 2 uses
  %i.ixj = extractvalue { i64, i64 } %i.ixi, 0    ; 2 uses
  %i.ixk = extractvalue { i64, i64 } %i.ixi, 1    ; 3 uses
  %i.ixl = and i64 %i.ixk, 4294967295
  %i.ixm = icmp eq i64 %i.ixl, 6
  br i1 %i.ixm, label %JS_DeleteProperty.exit, label %bb.bbo

bb.bbo:                                           ; preds = %bb.bbn
  %i.ixn = inttoptr i64 %i.ixj to ptr             ; 2 uses
  %i.ixo = call fastcc i32 @delete_property(ptr noundef %.0, ptr noundef %i.ixn, i32 noundef %i.ixg), !inline_history !1330 ; 2 uses
  %i.ixp = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.ixq = trunc i64 %i.ixk to i32
  %i.ixr = icmp ugt i32 %i.ixq, -10
  br i1 %i.ixr, label %bb.bbp, label %JS_FreeValueRT.exit5349

bb.bbp:                                           ; preds = %bb.bbo
  %i.ixs = getelementptr inbounds i8, ptr %i.ixn, i64 -4 ; 2 uses
  %i.ixt = load i32, ptr %i.ixs, align 4, !tbaa !191 ; 2 uses
  %i.ixu = add nsw i32 %i.ixt, -1
  store i32 %i.ixu, ptr %i.ixs, align 4, !tbaa !191
  %i.ixv = icmp slt i32 %i.ixt, 2
  br i1 %i.ixv, label %bb.bbq, label %JS_FreeValueRT.exit5349

bb.bbq:                                           ; preds = %bb.bbp
  call fastcc void @js_free_value_rt(ptr noundef %i.ixp, i64 %i.ixj, i64 %i.ixk), !inline_history !1331
  br label %JS_FreeValueRT.exit5349

JS_FreeValueRT.exit5349:                          ; preds = %bb.bbo, %bb.bbp, %bb.bbq
  %.not.i5242 = icmp eq i32 %i.ixo, 0
  br i1 %.not.i5242, label %bb.bbr, label %JS_DeleteProperty.exit

bb.bbr:                                           ; preds = %JS_FreeValueRT.exit5349
  %.val.i5244 = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.ixw = getelementptr i8, ptr %.val.i5244, i64 1264
  %.val.val.i5245 = load ptr, ptr %i.ixw, align 8, !tbaa !264 ; 2 uses
  %.not.i.i5246 = icmp eq ptr %.val.val.i5245, null
  br i1 %.not.i.i5246, label %JS_DeleteProperty.exit, label %is_strict_mode.exit.i

is_strict_mode.exit.i:                            ; preds = %bb.bbr
  %i.ixx = getelementptr inbounds nuw i8, ptr %.val.val.i5245, i64 60
  %i.ixy = load i8, ptr %i.ixx, align 4, !tbaa !269, !range !234, !noundef !235
  %i.ixz = trunc nuw i8 %i.ixy to i1
  br i1 %i.ixz, label %bb.bbs, label %JS_DeleteProperty.exit

bb.bbs:                                           ; preds = %is_strict_mode.exit.i
  %i.iya = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %.0, ptr noundef nonnull @.str.53), !inline_history !1330 ; 0 uses
  br label %JS_DeleteProperty.exit

JS_DeleteProperty.exit:                           ; preds = %bb.bbr, %bb.bbn, %JS_FreeValueRT.exit5349, %is_strict_mode.exit.i, %bb.bbs
  %.0.i5243 = phi i32 [ %i.ixo, %JS_FreeValueRT.exit5349 ], [ -1, %bb.bbn ], [ -1, %bb.bbs ], [ 0, %is_strict_mode.exit.i ], [ 0, %bb.bbr ] ; 2 uses
  %i.iyb = icmp slt i32 %i.ixg, 242
  br i1 %i.iyb, label %JS_FreeAtom.exit5241, label %bb.bbt

bb.bbt:                                           ; preds = %JS_DeleteProperty.exit
  %i.iyc = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 7 uses
  %i.iyd = getelementptr inbounds nuw i8, ptr %i.iyc, i64 1104
  %i.iye = load ptr, ptr %i.iyd, align 8, !tbaa !297 ; 4 uses
  %i.iyf = zext nneg i32 %i.ixg to i64
  %i.iyg = getelementptr inbounds nuw [8 x i8], ptr %i.iye, i64 %i.iyf
  %i.iyh = load ptr, ptr %i.iyg, align 8, !tbaa !299 ; 7 uses
  %i.iyi = getelementptr inbounds i8, ptr %i.iyh, i64 -4 ; 2 uses
  %i.iyj = load i32, ptr %i.iyi, align 4, !tbaa !191 ; 2 uses
  %i.iyk = add nsw i32 %i.iyj, -1
  store i32 %i.iyk, ptr %i.iyi, align 4, !tbaa !191
  %i.iyl = icmp sgt i32 %i.iyj, 1
  br i1 %i.iyl, label %JS_FreeAtom.exit5241, label %bb.bbu

bb.bbu:                                           ; preds = %bb.bbt
  %i.iym = load i64, ptr %i.iyh, align 8          ; 2 uses
  %.not.i5344 = icmp ugt i64 %i.iym, -4611686018427387905
  br i1 %.not.i5344, label %._crit_edge1822, label %bb.bbv

._crit_edge1822:                                  ; preds = %bb.bbu
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.iyh, i64 8
  %i.iyo = load i32, ptr %i.iyn, align 8, !tbaa !249 ; 2 uses
  %.pre1839 = zext i32 %i.iyo to i64
  br label %bb.bby

bb.bbv:                                           ; preds = %bb.bbu
  %i.iyp = lshr i64 %i.iym, 32
  %i.iyq = trunc nuw i64 %i.iyp to i32
  %i.iyr = and i32 %i.iyq, 268435455
  %i.iys = getelementptr inbounds nuw i8, ptr %i.iyc, i64 1080
  %i.iyt = load i32, ptr %i.iys, align 8, !tbaa !242
  %i.iyu = add nsw i32 %i.iyt, -1
  %i.iyv = and i32 %i.iyr, %i.iyu
  %i.iyw = getelementptr inbounds nuw i8, ptr %i.iyc, i64 1096
  %i.iyx = load ptr, ptr %i.iyw, align 8, !tbaa !243
  %i.iyy = zext nneg i32 %i.iyv to i64
  %i.iyz = getelementptr inbounds nuw [4 x i8], ptr %i.iyx, i64 %i.iyy ; 2 uses
  %i.iza = load i32, ptr %i.iyz, align 4, !tbaa !191 ; 2 uses
  %i.izb = zext i32 %i.iza to i64                 ; 2 uses
  %i.izc = getelementptr inbounds nuw [8 x i8], ptr %i.iye, i64 %i.izb
  %i.izd = load ptr, ptr %i.izc, align 8, !tbaa !299 ; 3 uses
  %i.ize = icmp eq ptr %i.izd, %i.iyh
  br i1 %i.ize, label %bb.bbw, label %.preheader605

bb.bbw:                                           ; preds = %bb.bbv
  %i.izf = getelementptr inbounds nuw i8, ptr %i.izd, i64 8
  %i.izg = load i32, ptr %i.izf, align 8, !tbaa !249
  store i32 %i.izg, ptr %i.iyz, align 4, !tbaa !191
  br label %bb.bby

.preheader605:                                    ; preds = %bb.bbv, %.preheader605
  %.0.i5345 = phi ptr [ %i.izl, %.preheader605 ], [ %i.izd, %bb.bbv ] ; 2 uses
  %i.izh = getelementptr inbounds nuw i8, ptr %.0.i5345, i64 8
  %i.izi = load i32, ptr %i.izh, align 8, !tbaa !249 ; 2 uses
  %i.izj = zext i32 %i.izi to i64                 ; 2 uses
  %i.izk = getelementptr inbounds nuw [8 x i8], ptr %i.iye, i64 %i.izj
  %i.izl = load ptr, ptr %i.izk, align 8, !tbaa !299 ; 3 uses
end_hunk_1
begin_hunk_2_@JS_CallInternal:bb.a
  %i.jgy = inttoptr i64 %i.jgt to ptr
  %i.jgz = getelementptr inbounds i8, ptr %i.jgy, i64 -4 ; 2 uses
  %i.jha = load i32, ptr %i.jgz, align 4, !tbaa !191 ; 2 uses
  %i.jhb = add nsw i32 %i.jha, -1
  store i32 %i.jhb, ptr %i.jgz, align 4, !tbaa !191
  %i.jhc = icmp slt i32 %i.jha, 2
  br i1 %i.jhc, label %bb.bdu, label %JS_FreeValueRT.exit5265

bb.bdu:                                           ; preds = %bb.bdt
  call fastcc void @js_free_value_rt(ptr noundef %i.jgv, i64 %i.jgt, i64 %i.jgu), !inline_history !370
  br label %JS_FreeValueRT.exit5265

JS_FreeValueRT.exit5265:                          ; preds = %bb.bds, %bb.bdt, %bb.bdu
  %i.jhd = icmp slt i32 %i.jgs, 0
  br i1 %i.jhd, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %JS_FreeValue.exit5264, !prof !192

bb.bdv:                                           ; preds = %.thread2098
  %i.jhe = call i32 @JS_DeleteProperty(ptr noundef %.0, i64 %.sroa.096.0.copyload, i64 %.sroa.8.0.copyload, i32 noundef %.10.val, i32 noundef 0) ; 2 uses
  %i.jhf = icmp slt i32 %i.jhe, 0
  br i1 %i.jhf, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.bdw, !prof !192

bb.bdw:                                           ; preds = %bb.bdv
  %i.jhg = load i64, ptr %i.jfj, align 8          ; 2 uses
  %i.jhh = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.jhi = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jhj = trunc i64 %i.jhh to i32
  %i.jhk = icmp ugt i32 %i.jhj, -10
  br i1 %i.jhk, label %bb.bdx, label %JS_FreeValueRT.exit5266

bb.bdx:                                           ; preds = %bb.bdw
  %i.jhl = inttoptr i64 %i.jhg to ptr
  %i.jhm = getelementptr inbounds i8, ptr %i.jhl, i64 -4 ; 2 uses
  %i.jhn = load i32, ptr %i.jhm, align 4, !tbaa !191 ; 2 uses
  %i.jho = add nsw i32 %i.jhn, -1
  store i32 %i.jho, ptr %i.jhm, align 4, !tbaa !191
  %i.jhp = icmp slt i32 %i.jhn, 2
  br i1 %i.jhp, label %bb.bdy, label %JS_FreeValueRT.exit5266

bb.bdy:                                           ; preds = %bb.bdx
  call fastcc void @js_free_value_rt(ptr noundef %i.jhi, i64 %i.jhg, i64 %i.jhh), !inline_history !370
  br label %JS_FreeValueRT.exit5266

JS_FreeValueRT.exit5266:                          ; preds = %bb.bdw, %bb.bdx, %bb.bdy
  %i.jhq = icmp ne i32 %i.jhe, 0
  %.sroa.0.0.insert.ext.i4490 = zext i1 %i.jhq to i64
  store i64 %.sroa.0.0.insert.ext.i4490, ptr %i.jfj, align 8, !tbaa !218
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  br label %JS_FreeValue.exit5264

bb.bdz:                                           ; preds = %.thread2098
  %i.jhr = getelementptr inbounds nuw i8, ptr %.31, i64 16
  %i.jhs = call fastcc { i64, i64 } @__JS_AtomToValue(ptr noundef %.0, i32 noundef %.10.val, i1 noundef zeroext false), !inline_history !1344 ; 2 uses
  %i.jht = extractvalue { i64, i64 } %i.jhs, 0
  %i.jhu = extractvalue { i64, i64 } %i.jhs, 1
  store i64 %i.jht, ptr %.31, align 8, !tbaa !218
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %i.jhu, ptr %.sroa.473.0..sroa_idx, align 8, !tbaa !240
  br label %JS_FreeValue.exit5264

bb.bea:                                           ; preds = %.thread2098
  %i.jhv = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %.0, i64 %.sroa.096.0.copyload, i64 %.sroa.8.0.copyload, i32 noundef %.10.val, i64 %.sroa.096.0.copyload, i64 %.sroa.8.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.jhw = extractvalue { i64, i64 } %i.jhv, 1    ; 2 uses
  %i.jhx = and i64 %i.jhw, 4294967295
  %i.jhy = icmp eq i64 %i.jhx, 6
  br i1 %i.jhy, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.beb, !prof !192

bb.beb:                                           ; preds = %bb.bea
  %i.jhz = extractvalue { i64, i64 } %i.jhv, 0
  %i.jia = getelementptr inbounds nuw i8, ptr %.31, i64 16
  store i64 %i.jhz, ptr %.31, align 8, !tbaa !218
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %i.jhw, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !240
  br label %JS_FreeValue.exit5264

bb.bec:                                           ; preds = %.thread2098
  %i.jib = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %.0, i64 %.sroa.096.0.copyload, i64 %.sroa.8.0.copyload, i32 noundef %.10.val, i64 %.sroa.096.0.copyload, i64 %.sroa.8.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.jic = extractvalue { i64, i64 } %i.jib, 0
  %i.jid = extractvalue { i64, i64 } %i.jib, 1    ; 2 uses
  %i.jie = and i64 %i.jid, 4294967295
  %i.jif = icmp eq i64 %i.jie, 6
  br i1 %i.jif, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.bed, !prof !192

bb.bed:                                           ; preds = %bb.bec
  %i.jig = load i64, ptr %i.jfj, align 8          ; 2 uses
  %i.jih = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.jii = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jij = trunc i64 %i.jih to i32
  %i.jik = icmp ugt i32 %i.jij, -10
  br i1 %i.jik, label %bb.bee, label %JS_FreeValueRT.exit5267

bb.bee:                                           ; preds = %bb.bed
  %i.jil = inttoptr i64 %i.jig to ptr
  %i.jim = getelementptr inbounds i8, ptr %i.jil, i64 -4 ; 2 uses
  %i.jin = load i32, ptr %i.jim, align 4, !tbaa !191 ; 2 uses
  %i.jio = add nsw i32 %i.jin, -1
  store i32 %i.jio, ptr %i.jim, align 4, !tbaa !191
  %i.jip = icmp slt i32 %i.jin, 2
  br i1 %i.jip, label %bb.bef, label %JS_FreeValueRT.exit5267

bb.bef:                                           ; preds = %bb.bee
  call fastcc void @js_free_value_rt(ptr noundef %i.jii, i64 %i.jig, i64 %i.jih), !inline_history !370
  br label %JS_FreeValueRT.exit5267

JS_FreeValueRT.exit5267:                          ; preds = %bb.bed, %bb.bee, %bb.bef
  store i32 0, ptr %i.jfj, align 8
  %.sroa.266.0..sroa_idx = getelementptr inbounds i8, ptr %.31, i64 -12
  store i32 0, ptr %.sroa.266.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  %i.jiq = getelementptr inbounds nuw i8, ptr %.31, i64 16
  store i64 %i.jic, ptr %.31, align 8, !tbaa !218
  %.sroa.9.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %.31, i64 8
  store i64 %i.jid, ptr %.sroa.9.0..sroa_idx91, align 8, !tbaa !240
  br label %JS_FreeValue.exit5264

JS_FreeValue.exit5264:                            ; preds = %bb.bdr, %bb.bdq, %bb.bdp, %JS_FreeValueRT.exit5265, %JS_FreeValueRT.exit5267, %bb.beb, %bb.bdz, %JS_FreeValueRT.exit5266, %.thread2098
  %.23 = phi ptr [ %.31, %.thread2098 ], [ %i.jiq, %JS_FreeValueRT.exit5267 ], [ %i.jgo, %JS_FreeValueRT.exit5265 ], [ %.31, %JS_FreeValueRT.exit5266 ], [ %i.jhr, %bb.bdz ], [ %i.jia, %bb.beb ], [ %.31, %bb.bdp ], [ %.31, %bb.bdq ], [ %.31, %bb.bdr ]
  %i.jir = sext i32 %.val3664 to i64
  %i.jis = getelementptr i8, ptr %i.jfi, i64 %i.jir
  %i.jit = getelementptr i8, ptr %i.jis, i64 -5
  br label %JS_FreeValueRT.exit5268

bb.beg:                                           ; preds = %bb.bdh, %bb.bdn
  %i.jiu = load i64, ptr %i.jfj, align 8          ; 2 uses
  %i.jiv = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.jiw = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jix = trunc i64 %i.jiv to i32
  %i.jiy = icmp ugt i32 %i.jix, -10
  br i1 %i.jiy, label %bb.beh, label %JS_FreeValueRT.exit5268

bb.beh:                                           ; preds = %bb.beg
  %i.jiz = inttoptr i64 %i.jiu to ptr
  %i.jja = getelementptr inbounds i8, ptr %i.jiz, i64 -4 ; 2 uses
  %i.jjb = load i32, ptr %i.jja, align 4, !tbaa !191 ; 2 uses
  %i.jjc = add nsw i32 %i.jjb, -1
  store i32 %i.jjc, ptr %i.jja, align 4, !tbaa !191
  %i.jjd = icmp slt i32 %i.jjb, 2
  br i1 %i.jjd, label %bb.bei, label %JS_FreeValueRT.exit5268

bb.bei:                                           ; preds = %bb.beh
  call fastcc void @js_free_value_rt(ptr noundef %i.jiw, i64 %i.jiu, i64 %i.jiv), !inline_history !370
  br label %JS_FreeValueRT.exit5268

JS_FreeValueRT.exit5268:                          ; preds = %bb.bei, %bb.beh, %bb.beg, %JS_FreeValue.exit5264
  %.24 = phi ptr [ %.23, %JS_FreeValue.exit5264 ], [ %i.jfj, %bb.beg ], [ %i.jfj, %bb.beh ], [ %i.jfj, %bb.bei ]
  %.7 = phi ptr [ %i.jit, %JS_FreeValue.exit5264 ], [ %i.jfi, %bb.beg ], [ %i.jfi, %bb.beh ], [ %i.jfi, %bb.bei ] ; 2 uses
  %i.jje = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.backedge.backedge

bb.bej:                                           ; preds = %.backedge
  br label %bb.bft

bb.bek:                                           ; preds = %.backedge
  br label %bb.bft

bb.bel:                                           ; preds = %.backedge
  br label %bb.bft

bb.bem:                                           ; preds = %.backedge
  %i.jjf = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.ben:                                           ; preds = %.backedge
  %i.jjg = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jjh = load i64, ptr %i.jjg, align 8, !tbaa !365 ; 2 uses
  %i.jji = and i64 %i.jjh, 4294967294
  %switch = icmp eq i64 %i.jji, 2
  br i1 %switch, label %JS_FreeValueRT.exit5269, label %js_operator_typeof.exit4503.thread

bb.beo:                                           ; preds = %.backedge
  %i.jjj = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jjk = load i64, ptr %i.jjj, align 8, !tbaa !365 ; 2 uses
  %i.jjl = and i64 %i.jjk, 4294967295
  %i.jjm = icmp eq i64 %i.jjl, 3
  br i1 %i.jjm, label %JS_FreeValueRT.exit5269, label %js_operator_typeof.exit4503.thread

bb.bep:                                           ; preds = %.backedge
  %i.jjn = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jjo = load i64, ptr %i.jjn, align 8, !tbaa !365 ; 2 uses
  %i.jjp = and i64 %i.jjo, 4294967295
  %i.jjq = icmp eq i64 %i.jjp, 2
  br i1 %i.jjq, label %JS_FreeValueRT.exit5269, label %js_operator_typeof.exit4503.thread

bb.beq:                                           ; preds = %.backedge
  %i.jjr = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jjs = load i64, ptr %i.jjr, align 8          ; 5 uses
  %i.jjt = trunc i64 %i.jjs to i32
  switch i32 %i.jjt, label %js_operator_typeof.exit4503.thread [
    i32 -1, label %bb.ber
    i32 3, label %.js_operator_typeof.exit4503_crit_edge
  ]

.js_operator_typeof.exit4503_crit_edge:           ; preds = %bb.beq
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.31, i64 -16
  %.pre1806 = load i64, ptr %.phi.trans.insert, align 8
  br label %js_operator_typeof.exit4503

bb.ber:                                           ; preds = %bb.beq
  %i.jju = getelementptr inbounds i8, ptr %.31, i64 -16
  %i.jjv = load i64, ptr %i.jju, align 8          ; 2 uses
  %i.jjw = inttoptr i64 %i.jjv to ptr
  %i.jjx = getelementptr inbounds nuw i8, ptr %i.jjw, i64 16
  %58 = load i16, ptr %i.jjx, align 8
  %59 = and i16 %58, 256
  %.not.i4495 = icmp eq i16 %59, 0
  br i1 %.not.i4495, label %js_operator_typeof.exit4503.thread, label %js_operator_typeof.exit4503, !prof !325

bb.bes:                                           ; preds = %.backedge
  %i.jjy = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jjz = load i64, ptr %i.jjy, align 8          ; 8 uses
  %i.jka = and i64 %i.jjz, 4294967295
  %cond = icmp eq i64 %i.jka, 4294967295
  br i1 %cond, label %bb.bet, label %js_operator_typeof.exit4503.thread

bb.bet:                                           ; preds = %bb.bes
  %i.jkb = getelementptr inbounds i8, ptr %.31, i64 -16
  %i.jkc = load i64, ptr %i.jkb, align 8          ; 4 uses
  %i.jkd = inttoptr i64 %i.jkc to ptr             ; 3 uses
  %i.jke = getelementptr inbounds nuw i8, ptr %i.jkd, i64 16
  %60 = load i16, ptr %i.jke, align 8
  %61 = and i16 %60, 256
  %.not.i4506 = icmp eq i16 %61, 0
  br i1 %.not.i4506, label %bb.beu, label %js_operator_typeof.exit4503.thread, !prof !1356

bb.beu:                                           ; preds = %bb.bet
  %i.jkf = getelementptr inbounds nuw i8, ptr %i.jkd, i64 18
  %i.jkg = load i16, ptr %i.jkf, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.jkg, label %JS_IsFunction.exit.i4511 [
    i16 13, label %js_operator_typeof.exit4503
    i16 51, label %.split.i4508
  ]

.split.i4508:                                     ; preds = %bb.beu
  %i.jkh = getelementptr inbounds nuw i8, ptr %i.jkd, i64 48
  %i.jki = load ptr, ptr %i.jkh, align 8, !tbaa !218
  %i.jkj = getelementptr inbounds nuw i8, ptr %i.jki, i64 32
  %i.jkk = load i8, ptr %i.jkj, align 8, !tbaa !458
  %.fr.i4509 = freeze i8 %i.jkk
  %.not17.i4510 = icmp eq i8 %.fr.i4509, 0
  br i1 %.not17.i4510, label %js_operator_typeof.exit4503.thread, label %js_operator_typeof.exit4503

JS_IsFunction.exit.i4511:                         ; preds = %bb.beu
  %i.jkl = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jkm = getelementptr inbounds nuw i8, ptr %i.jkl, i64 1128
  %i.jkn = load ptr, ptr %i.jkm, align 8, !tbaa !251
  %i.jko = zext i16 %i.jkg to i64
  %i.jkp = getelementptr inbounds nuw [40 x i8], ptr %i.jkn, i64 %i.jko
  %i.jkq = getelementptr inbounds nuw i8, ptr %i.jkp, i64 24
  %i.jkr = load ptr, ptr %i.jkq, align 8, !tbaa !255
  %.fr18.i4512 = freeze ptr %i.jkr
  %.not19.i4513 = icmp eq ptr %.fr18.i4512, null
  br i1 %.not19.i4513, label %js_operator_typeof.exit4503.thread, label %js_operator_typeof.exit4503

js_operator_typeof.exit4503:                      ; preds = %.js_operator_typeof.exit4503_crit_edge, %JS_IsFunction.exit.i4511, %.split.i4508, %bb.beu, %bb.ber
  %i.jks = phi i64 [ %i.jjs, %.js_operator_typeof.exit4503_crit_edge ], [ %i.jjz, %JS_IsFunction.exit.i4511 ], [ %i.jjz, %.split.i4508 ], [ %i.jjz, %bb.beu ], [ %i.jjs, %bb.ber ] ; 2 uses
  %i.jkt = phi i64 [ %.pre1806, %.js_operator_typeof.exit4503_crit_edge ], [ %i.jkc, %JS_IsFunction.exit.i4511 ], [ %i.jkc, %.split.i4508 ], [ %i.jkc, %bb.beu ], [ %i.jjv, %bb.ber ] ; 2 uses
  %i.jku = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jkv = trunc i64 %i.jks to i32
  %i.jkw = icmp ugt i32 %i.jkv, -10
  br i1 %i.jkw, label %bb.bev, label %JS_FreeValueRT.exit5269

bb.bev:                                           ; preds = %js_operator_typeof.exit4503
  %i.jkx = inttoptr i64 %i.jkt to ptr
  %i.jky = getelementptr inbounds i8, ptr %i.jkx, i64 -4 ; 2 uses
  %i.jkz = load i32, ptr %i.jky, align 4, !tbaa !191 ; 2 uses
  %i.jla = add nsw i32 %i.jkz, -1
  store i32 %i.jla, ptr %i.jky, align 4, !tbaa !191
  %i.jlb = icmp slt i32 %i.jkz, 2
  br i1 %i.jlb, label %bb.bew, label %JS_FreeValueRT.exit5269

bb.bew:                                           ; preds = %bb.bev
  call fastcc void @js_free_value_rt(ptr noundef %i.jku, i64 %i.jkt, i64 %i.jks), !inline_history !370
  br label %JS_FreeValueRT.exit5269

JS_FreeValueRT.exit5269:                          ; preds = %bb.bew, %bb.bev, %js_operator_typeof.exit4503, %bb.ben, %bb.bep, %bb.beo
  %i.jlc = getelementptr inbounds i8, ptr %.31, i64 -16
  store i32 1, ptr %i.jlc, align 8
  %.sroa.255.0..sroa_idx = getelementptr inbounds i8, ptr %.31, i64 -12
  store i32 0, ptr %.sroa.255.0..sroa_idx, align 4, !tbaa !218
  %.sroa.356.0..sroa_idx = getelementptr inbounds i8, ptr %.31, i64 -8
  store i64 1, ptr %.sroa.356.0..sroa_idx, align 8, !tbaa !240
  %i.jld = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

js_operator_typeof.exit4503.thread:               ; preds = %bb.ber, %bb.bes, %.split.i4508, %JS_IsFunction.exit.i4511, %bb.bet, %bb.beq, %bb.ben, %bb.bep, %bb.beo
  %i.jle = phi i64 [ %i.jjs, %bb.ber ], [ %i.jjz, %bb.bes ], [ %i.jjz, %.split.i4508 ], [ %i.jjz, %JS_IsFunction.exit.i4511 ], [ %i.jjz, %bb.bet ], [ %i.jjs, %bb.beq ], [ %i.jjh, %bb.ben ], [ %i.jjo, %bb.bep ], [ %i.jjk, %bb.beo ] ; 2 uses
  %i.jlf = getelementptr inbounds i8, ptr %.31, i64 -16 ; 2 uses
  %i.jlg = load i64, ptr %i.jlf, align 8          ; 2 uses
  %i.jlh = getelementptr inbounds i8, ptr %.31, i64 -8
  %i.jli = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.jlj = trunc i64 %i.jle to i32
  %i.jlk = icmp ugt i32 %i.jlj, -10
  br i1 %i.jlk, label %bb.bex, label %JS_FreeValueRT.exit5270

bb.bex:                                           ; preds = %js_operator_typeof.exit4503.thread
  %i.jll = inttoptr i64 %i.jlg to ptr
  %i.jlm = getelementptr inbounds i8, ptr %i.jll, i64 -4 ; 2 uses
  %i.jln = load i32, ptr %i.jlm, align 4, !tbaa !191 ; 2 uses
  %i.jlo = add nsw i32 %i.jln, -1
  store i32 %i.jlo, ptr %i.jlm, align 4, !tbaa !191
  %i.jlp = icmp slt i32 %i.jln, 2
  br i1 %i.jlp, label %bb.bey, label %JS_FreeValueRT.exit5270

bb.bey:                                           ; preds = %bb.bex
  call fastcc void @js_free_value_rt(ptr noundef %i.jli, i64 %i.jlg, i64 %i.jle), !inline_history !370
  br label %JS_FreeValueRT.exit5270

JS_FreeValueRT.exit5270:                          ; preds = %js_operator_typeof.exit4503.thread, %bb.bex, %bb.bey
  store i32 0, ptr %i.jlf, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds i8, ptr %.31, i64 -12
  store i32 0, ptr %.sroa.252.0..sroa_idx, align 4, !tbaa !218
  store i64 1, ptr %i.jlh, align 8, !tbaa !240
  %i.jlq = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.bez:                                           ; preds = %.backedge
  %i.jlr = load ptr, ptr %i.gg, align 8, !tbaa !432
  %i.jls = ptrtoint ptr %.10 to i64
  %i.jlt = ptrtoint ptr %i.jlr to i64
  %i.jlu = xor i64 %i.jlt, -1
  %i.jlv = add i64 %i.jlu, %i.jls
  %i.jlw = trunc i64 %i.jlv to i32
  %i.jlx = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %.0, ptr noundef nonnull @.str.164, i32 noundef %i.jlw, i32 noundef %.03424) ; 0 uses
  br label %JS_CheckDefineGlobalVar.exit

JS_CheckDefineGlobalVar.exit.loopexit608:         ; preds = %js_dup.exit3748, %bb.ak, %bb.au, %JS_NewObjectProtoClass.exit4531, %JS_NewObjectProtoClass.exit2827, %js_import_meta.exit, %JS_NewObjectProtoClass.exit, %bb.dd, %js_dup.exit3821, %bb.et, %bb.ex, %bb.fb, %bb.fg, %bb.fi, %JS_GetPrototype.exit, %JS_FreeValueRT.exit4587, %bb.gi, %bb.it, %bb.ix, %free_arg_list.exit, %bb.jw, %JS_GetPrototype.exit3858, %JS_GetGlobalVar.exit, %JS_SetGlobalVar.exit, %JS_DefineGlobalFunction.exit, %JS_NewObjectProtoClass.exit4878, %bb.vq, %JS_GetGlobalVarRef.exit, %js_poll_interrupts.exit4116, %js_poll_interrupts.exit4118, %js_poll_interrupts.exit4120, %js_poll_interrupts.exit4122, %js_poll_interrupts.exit4124, %js_poll_interrupts.exit4126, %js_poll_interrupts.exit4128, %bb.abu, %bb.acy, %bb.ady, %JS_FreeValueRT.exit4954, %bb.aez, %bb.afl, %JS_FreeValueRT.exit4961, %JS_FreeValueRT.exit4990, %JS_FreeValueRT.exit5015, %JS_FreeValueRT.exit5036, %JS_FreeValueRT.exit5037, %bb.aip, %bb.ais, %bb.aje, %JS_FreeValueRT.exit5070, %JS_FreeValueRT.exit5137, %.critedge3649, %js_dup.exit4263, %bb.ans, %JS_FreeAtom.exit4264, %JS_FreeValueRT.exit5145, %JS_FreeValueRT.exit5146, %bb.apq, %JS_FreeValueRT.exit5149, %JS_DefinePropertyValueValue.exit, %bb.ask, %js_arith_to_float64.exit, %bb.atg, %js_dup.exit4308, %js_dup.exit4314, %js_arith_to_float64.exit4328, %bb.avk, %bb.avr, %bb.avv, %bb.avz, %js_post_inc_slow.exit, %js_post_inc_slow.exit4387, %js_dup.exit4393, %js_dup.exit4402, %bb.axf, %bb.axj, %bb.axn, %bb.axt, %bb.axx, %bb.ayb, %bb.ayf, %bb.ayj, %bb.ayn, %bb.ayr, %bb.ayv, %bb.ayz, %bb.azd, %JS_DeleteGlobalVar.exit, %bb.bco, %bb.bcu, %bb.bdb, %bb.bdg, %js_has_unscopable.exit, %bb.bdo, %JS_FreeValueRT.exit5265, %bb.bdv, %bb.bea, %bb.bec, %bb.oh, %bb.baw, %JS_FreeAtom.exit4590, %.loopexit600, %bb.aal, %JS_FreeValue.exit4915, %bb.aba, %JS_FreeValue.exit4924, %bb.abh, %bb.abi, %JS_FreeValue.exit4946, %JS_FreeValue.exit4952, %bb.adr, %JS_DefinePropertyValue.exit, %JS_FreeValue.exit5180, %bb.azp, %JS_FreeAtom.exit5207, %bb.bag, %bb.bah, %bb.bbm, %JS_FreeAtom.exit5241, %.loopexit606, %bb.bcj, %bb.adq, %bb.aec, %bb.ara, %bb.bdj, %js_poll_interrupts.exit.thread.i, %js_poll_interrupts.exit.i2845, %JS_NewObjectProtoClass.exit2827.thread, %build_for_in_iterator.exit.thread, %js_dynamic_import.exit.thread, %js_build_mapped_arguments.exit.thread2027, %js_build_arguments.exit.thread2022
  %.25.ph = phi ptr [ %.31, %js_dynamic_import.exit.thread ], [ %i.se, %js_build_arguments.exit.thread2022 ], [ %i.uh, %js_build_mapped_arguments.exit.thread2027 ], [ %.31, %build_for_in_iterator.exit.thread ], [ %.31, %js_poll_interrupts.exit.i2845 ], [ %.31, %js_poll_interrupts.exit.thread.i ], [ %i.aaf, %JS_NewObjectProtoClass.exit2827.thread ], [ %.31, %JS_FreeValue.exit5180 ], [ %.31, %bb.ara ], [ %.31, %JS_FreeValue.exit4952 ], [ %.31, %JS_FreeValue.exit4946 ], [ %.31, %bb.adq ], [ %.31, %bb.abh ], [ %.31, %.loopexit606 ], [ %.31, %bb.aba ], [ %.31, %bb.aal ], [ %.31, %JS_FreeAtom.exit4590 ], [ %.31, %JS_FreeAtom.exit5241 ], [ %.31, %bb.baw ], [ %.31, %JS_DefinePropertyValue.exit ], [ %.31, %bb.oh ], [ %.31, %bb.acy ], [ %.31, %JS_FreeAtom.exit5207 ], [ %.31, %bb.abi ], [ %i.lv, %js_dup.exit3748 ], [ %.31, %bb.azd ], [ %.31, %bb.ayz ], [ %.31, %bb.ayv ], [ %.31, %bb.ayr ], [ %.31, %bb.ayn ], [ %.31, %bb.ayj ], [ %.31, %bb.ayb ], [ %.31, %bb.ayf ], [ %.31, %bb.axx ], [ %.31, %bb.axn ], [ %.31, %bb.axt ], [ %.31, %bb.axj ], [ %.31, %js_arith_to_float64.exit ], [ %.31, %js_arith_to_float64.exit4328 ], [ %.31, %JS_DeleteGlobalVar.exit ], [ %.31, %bb.bah ], [ %.31, %bb.axf ], [ %i.hyr, %js_dup.exit4314 ], [ %i.hyr, %js_dup.exit4308 ], [ %i.hyr, %bb.atg ], [ %.31, %js_dup.exit4393 ], [ %.31, %js_dup.exit4402 ], [ %.31, %js_post_inc_slow.exit ], [ %.31, %js_post_inc_slow.exit4387 ], [ %.31, %bb.avv ], [ %.31, %bb.avz ], [ %.31, %bb.avk ], [ %.31, %bb.avr ], [ %.31, %JS_FreeValueRT.exit4954 ], [ %.31, %bb.aec ], [ %.31, %bb.ady ], [ %i.esz, %bb.abu ], [ %.31, %JS_FreeValue.exit4924 ], [ %.31, %bb.bdj ], [ %.31, %JS_FreeValue.exit4915 ], [ %.31, %bb.bbm ], [ %.31, %JS_GetGlobalVarRef.exit ], [ %i.dtd, %bb.vq ], [ %i.dtd, %JS_NewObjectProtoClass.exit4878 ], [ %.31, %bb.ak ], [ %i.dzx, %js_poll_interrupts.exit4128 ], [ %i.dzk, %js_poll_interrupts.exit4126 ], [ %.31, %js_poll_interrupts.exit4120 ], [ %.31, %bb.bec ], [ %.31, %bb.bea ], [ %.31, %bb.bdv ], [ %i.jgo, %JS_FreeValueRT.exit5265 ], [ %.31, %bb.bdo ], [ %.31, %js_has_unscopable.exit ], [ %.31, %bb.bdg ], [ %.31, %bb.bdb ], [ %.31, %bb.bcu ], [ %.31, %bb.bco ], [ %.31, %.loopexit600 ], [ %.31, %js_poll_interrupts.exit4116 ], [ %i.dyk, %js_poll_interrupts.exit4122 ], [ %i.dyx, %js_poll_interrupts.exit4124 ], [ %.31, %js_poll_interrupts.exit4118 ], [ %i.gib, %JS_FreeValueRT.exit5070 ], [ %.31, %bb.aje ], [ %.31, %bb.ask ], [ %i.hnh, %JS_DefinePropertyValueValue.exit ], [ %.31, %bb.ais ], [ %.31, %bb.aip ], [ %i.fwl, %JS_FreeValueRT.exit5037 ], [ %i.hji, %JS_FreeValueRT.exit5149 ], [ %.31, %bb.apq ], [ %.31, %JS_FreeAtom.exit4264 ], [ %.31, %bb.ans ], [ %i.hgj, %JS_FreeValueRT.exit5145 ], [ %.31, %.critedge3649 ], [ %i.gvo, %JS_FreeValueRT.exit5137 ], [ %i.ftk, %JS_FreeValueRT.exit5036 ], [ %i.fpt, %JS_FreeValueRT.exit5015 ], [ %i.fml, %JS_FreeValueRT.exit4990 ], [ %i.fjb, %JS_FreeValueRT.exit4961 ], [ %.31, %bb.afl ], [ %.31, %bb.aez ], [ %.31, %JS_DefineGlobalFunction.exit ], [ %i.hhc, %JS_FreeValueRT.exit5146 ], [ %.31, %js_dup.exit4263 ], [ %i.cat, %JS_SetGlobalVar.exit ], [ %.31, %JS_GetGlobalVar.exit ], [ %.31, %JS_GetPrototype.exit3858 ], [ %i.bkt, %bb.jw ], [ %.31, %bb.ix ], [ %.31, %free_arg_list.exit ], [ %.31, %bb.it ], [ %.31, %bb.bcj ], [ %.31, %bb.gi ], [ %.31, %JS_FreeValueRT.exit4587 ], [ %.31, %JS_GetPrototype.exit ], [ %.31, %bb.fi ], [ %i.are, %bb.fg ], [ %.31, %bb.fb ], [ %.31, %bb.et ], [ %.31, %bb.ex ], [ %i.ady, %bb.dd ], [ %i.act, %JS_NewObjectProtoClass.exit ], [ %i.abg, %js_import_meta.exit ], [ %i.aaf, %JS_NewObjectProtoClass.exit2827 ], [ %.31, %bb.azp ], [ %.31, %bb.bag ], [ %i.qk, %JS_NewObjectProtoClass.exit4531 ], [ %.31, %bb.au ], [ %.31, %bb.adr ], [ %i.ams, %js_dup.exit3821 ]
  %.8.ph = phi ptr [ %.10, %js_dynamic_import.exit.thread ], [ %i.sc, %js_build_arguments.exit.thread2022 ], [ %i.sc, %js_build_mapped_arguments.exit.thread2027 ], [ %.10, %build_for_in_iterator.exit.thread ], [ %.10, %js_poll_interrupts.exit.i2845 ], [ %.10, %js_poll_interrupts.exit.thread.i ], [ %i.sc, %JS_NewObjectProtoClass.exit2827.thread ], [ %.10, %JS_FreeValue.exit5180 ], [ %.10, %bb.ara ], [ %i.ezp, %JS_FreeValue.exit4952 ], [ %i.ezp, %JS_FreeValue.exit4946 ], [ %i.ezp, %bb.adq ], [ %.10, %bb.abh ], [ %i.jav, %.loopexit606 ], [ %.10, %bb.aba ], [ %.10, %bb.aal ], [ %.10, %JS_FreeAtom.exit4590 ], [ %.10, %JS_FreeAtom.exit5241 ], [ %.10, %bb.baw ], [ %i.fxd, %JS_DefinePropertyValue.exit ], [ %i.chr, %bb.oh ], [ %i.exh, %bb.acy ], [ %.10, %JS_FreeAtom.exit5207 ], [ %.10, %bb.abi ], [ %i.lx, %js_dup.exit3748 ], [ %.10, %bb.azd ], [ %.10, %bb.ayz ], [ %.10, %bb.ayv ], [ %.10, %bb.ayr ], [ %.10, %bb.ayn ], [ %.10, %bb.ayj ], [ %.10, %bb.ayb ], [ %.10, %bb.ayf ], [ %.10, %bb.axx ], [ %.10, %bb.axn ], [ %.10, %bb.axt ], [ %.10, %bb.axj ], [ %.10, %js_arith_to_float64.exit ], [ %.10, %js_arith_to_float64.exit4328 ], [ %i.jav, %JS_DeleteGlobalVar.exit ], [ %.10, %bb.bah ], [ %.10, %bb.axf ], [ %i.hym, %js_dup.exit4314 ], [ %i.hym, %js_dup.exit4308 ], [ %i.hym, %bb.atg ], [ %i.ihp, %js_dup.exit4393 ], [ %i.iir, %js_dup.exit4402 ], [ %.10, %js_post_inc_slow.exit ], [ %.10, %js_post_inc_slow.exit4387 ], [ %.10, %bb.avv ], [ %.10, %bb.avz ], [ %.10, %bb.avk ], [ %.10, %bb.avr ], [ %i.fco, %JS_FreeValueRT.exit4954 ], [ %i.fco, %bb.aec ], [ %.10, %bb.ady ], [ %.10, %bb.abu ], [ %.10, %JS_FreeValue.exit4924 ], [ %i.jfi, %bb.bdj ], [ %.10, %JS_FreeValue.exit4915 ], [ %.10, %bb.bbm ], [ %i.duu, %JS_GetGlobalVarRef.exit ], [ %i.dtc, %bb.vq ], [ %i.dtc, %JS_NewObjectProtoClass.exit4878 ], [ %.10, %bb.ak ], [ %.5, %js_poll_interrupts.exit4128 ], [ %.43423, %js_poll_interrupts.exit4126 ], [ %i.dye, %js_poll_interrupts.exit4120 ], [ %i.jfi, %bb.bec ], [ %i.jfi, %bb.bea ], [ %i.jfi, %bb.bdv ], [ %i.jfi, %JS_FreeValueRT.exit5265 ], [ %i.jfi, %bb.bdo ], [ %i.jfi, %js_has_unscopable.exit ], [ %i.jfi, %bb.bdg ], [ %.10, %bb.bdb ], [ %.10, %bb.bcu ], [ %.10, %bb.bco ], [ %i.duu, %.loopexit600 ], [ %i.dxp, %js_poll_interrupts.exit4116 ], [ %.23421, %js_poll_interrupts.exit4122 ], [ %.33422, %js_poll_interrupts.exit4124 ], [ %i.dxw, %js_poll_interrupts.exit4118 ], [ %i.gck, %JS_FreeValueRT.exit5070 ], [ %.10, %bb.aje ], [ %i.hwm, %bb.ask ], [ %.10, %JS_DefinePropertyValueValue.exit ], [ %.10, %bb.ais ], [ %.10, %bb.aip ], [ %i.fwj, %JS_FreeValueRT.exit5037 ], [ %.10, %JS_FreeValueRT.exit5149 ], [ %.10, %bb.apq ], [ %.10, %JS_FreeAtom.exit4264 ], [ %.10, %bb.ans ], [ %.10, %JS_FreeValueRT.exit5145 ], [ %.10, %.critedge3649 ], [ %.10, %JS_FreeValueRT.exit5137 ], [ %.10, %JS_FreeValueRT.exit5036 ], [ %.10, %JS_FreeValueRT.exit5015 ], [ %.10, %JS_FreeValueRT.exit4990 ], [ %i.fja, %JS_FreeValueRT.exit4961 ], [ %i.fhb, %bb.afl ], [ %i.fet, %bb.aez ], [ %i.ciw, %JS_DefineGlobalFunction.exit ], [ %.10, %JS_FreeValueRT.exit5146 ], [ %.10, %js_dup.exit4263 ], [ %i.cas, %JS_SetGlobalVar.exit ], [ %i.bxs, %JS_GetGlobalVar.exit ], [ %.10, %JS_GetPrototype.exit3858 ], [ %.10, %bb.jw ], [ %i.bhh, %bb.ix ], [ %i.bhh, %free_arg_list.exit ], [ %i.beo, %bb.it ], [ %i.jav, %bb.bcj ], [ %.10, %bb.gi ], [ %.10, %JS_FreeValueRT.exit4587 ], [ %.10, %JS_GetPrototype.exit ], [ %i.arn, %bb.fi ], [ %i.arb, %bb.fg ], [ %i.apq, %bb.fb ], [ %.13420, %bb.et ], [ %i.aog, %bb.ex ], [ %i.adw, %bb.dd ], [ %i.sc, %JS_NewObjectProtoClass.exit ], [ %i.sc, %js_import_meta.exit ], [ %i.sc, %JS_NewObjectProtoClass.exit2827 ], [ %.10, %bb.azp ], [ %.10, %bb.bag ], [ %.10, %JS_NewObjectProtoClass.exit4531 ], [ %.10, %bb.au ], [ %i.ezp, %bb.adr ], [ %i.amr, %js_dup.exit3821 ]
  br label %JS_CheckDefineGlobalVar.exit

JS_CheckDefineGlobalVar.exit:                     ; preds = %bb.aaf, %JS_CheckDefineGlobalVar.exit.loopexit608, %bb.bae, %bb.azo, %bb.ash, %bb.asg, %JS_FreeValue.exit5161, %bb.arh, %bb.arg, %bb.ari, %bb.aqz, %bb.aql, %bb.aqk, %bb.aqm, %bb.afx, %bb.afy, %JS_FreeValue.exit4948, %bb.adt, %bb.ado, %bb.abg, %bb.vx, %bb.nn, %JS_FreeValue.exit4728, %bb.nm, %bb.nl, %JS_FreeValue.exit4750, %bb.gr, %bb.gq, %bb.gt, %bb.gu, %bb.hd, %bb.ha, %bb.gn, %js_post_inc_slow.exit4387.thread, %js_post_inc_slow.exit.thread, %js_op_define_class.exit.thread, %bb.ace, %bb.acd, %bb.acc, %js_for_of_next.exit, %JS_NewObjectProtoClass.exit4878.thread, %bb.oe, %bb.oc, %JS_GetGlobalVar.exit.thread, %JS_NewObjectProtoClass.exit.thread, %js_import_meta.exit.thread, %js_build_mapped_arguments.exit.thread, %js_build_arguments.exit.thread, %JS_NewObjectProtoClass.exit4531.thread, %bb.aph, %bb.api, %bb.ann, %bb.ano, %bb.hx, %bb.hz, %bb.ib, %bb.ic, %bb.ia, %bb.hy, %bb.c, %bb.bez, %.critedge3663, %bb.app, %JS_FreeValue.exit4944, %bb.abp, %bb.xq, %bb.vs, %bb.vh, %JS_ThrowReferenceErrorUninitialized2.exit4100, %JS_ThrowReferenceErrorUninitialized2.exit, %bb.ur, %bb.um, %bb.ui, %JS_FreeValue.exit4622, %bb.gk, %bb.fw, %bb.fs
  %.13457 = phi ptr [ %i.ak, %bb.c ], [ %.03456, %bb.bez ], [ %.03456, %bb.abg ], [ %.03456, %bb.abp ], [ %.03456, %bb.arg ], [ %.03456, %bb.arh ], [ %.03456, %.critedge3663 ], [ %.03456, %js_post_inc_slow.exit4387.thread ], [ %.03456, %bb.ash ], [ %.03456, %bb.ado ], [ %.03456, %JS_FreeValue.exit5161 ], [ %.03456, %bb.adt ], [ %.03456, %bb.asg ], [ %.03456, %JS_FreeValue.exit4948 ], [ %.03456, %bb.azo ], [ %.03456, %bb.hy ], [ %.03456, %bb.ia ], [ %.03456, %bb.fs ], [ %.03456, %bb.fw ], [ %.03456, %bb.ic ], [ %.03456, %bb.ib ], [ %.03456, %bb.hz ], [ %.03456, %bb.gk ], [ %.03456, %bb.vs ], [ %.03456, %JS_FreeValue.exit4622 ], [ %.03456, %JS_FreeValue.exit4944 ], [ %.03456, %bb.ano ], [ %.03456, %bb.api ], [ %.03456, %bb.aph ], [ %.03456, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03456, %js_build_arguments.exit.thread ], [ %.03456, %js_build_mapped_arguments.exit.thread ], [ %.03456, %js_for_of_next.exit ], [ %.03456, %js_import_meta.exit.thread ], [ %.03456, %bb.hx ], [ %.03456, %JS_NewObjectProtoClass.exit.thread ], [ %.03456, %bb.ann ], [ %.03456, %JS_GetGlobalVar.exit.thread ], [ %.03456, %bb.oe ], [ %.03456, %bb.gr ], [ %.03456, %bb.oc ], [ %.03456, %bb.afy ], [ %.03456, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03456, %bb.nn ], [ %.03456, %bb.acc ], [ %.03456, %bb.acd ], [ %.03456, %bb.ace ], [ %.03456, %bb.aqm ], [ %.03456, %js_post_inc_slow.exit.thread ], [ %.03456, %bb.aqk ], [ %.03456, %bb.aqz ], [ %.03456, %bb.gn ], [ %.03456, %bb.app ], [ %.03456, %bb.ha ], [ %.03456, %bb.hd ], [ %.03456, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03456, %bb.afx ], [ %.03456, %bb.gu ], [ %.03456, %bb.gt ], [ %.03456, %bb.gq ], [ %.03456, %bb.aql ], [ %.03456, %JS_FreeValue.exit4750 ], [ %.03456, %bb.nl ], [ %.03456, %bb.nm ], [ %.03456, %js_op_define_class.exit.thread ], [ %.03456, %JS_FreeValue.exit4728 ], [ %.03456, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03456, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03456, %bb.vh ], [ %.03456, %bb.ui ], [ %.03456, %bb.um ], [ %.03456, %bb.ur ], [ %.03456, %bb.vx ], [ %.03456, %bb.bae ], [ %.03456, %bb.ari ], [ %.03456, %bb.xq ], [ %.03456, %bb.aaf ]
  %.25 = phi ptr [ %i.au, %bb.c ], [ %.31, %bb.bez ], [ %.31, %bb.abg ], [ %.31, %bb.abp ], [ %.31, %bb.arg ], [ %.31, %bb.arh ], [ %.31, %.critedge3663 ], [ %.31, %js_post_inc_slow.exit4387.thread ], [ %.31, %bb.ash ], [ %.31, %bb.ado ], [ %.31, %JS_FreeValue.exit5161 ], [ %.31, %bb.adt ], [ %.31, %bb.asg ], [ %.31, %JS_FreeValue.exit4948 ], [ %.31, %bb.azo ], [ %.31, %bb.hy ], [ %.31, %bb.ia ], [ %.31, %bb.fs ], [ %.31, %bb.fw ], [ %.31, %bb.ic ], [ %.31, %bb.ib ], [ %.31, %bb.hz ], [ %.31, %bb.gk ], [ %i.dtd, %bb.vs ], [ %i.bdp, %JS_FreeValue.exit4622 ], [ %i.eyx, %JS_FreeValue.exit4944 ], [ %.31, %bb.ano ], [ %.31, %bb.api ], [ %.31, %bb.aph ], [ %i.qk, %JS_NewObjectProtoClass.exit4531.thread ], [ %i.se, %js_build_arguments.exit.thread ], [ %i.uh, %js_build_mapped_arguments.exit.thread ], [ %.31, %js_for_of_next.exit ], [ %i.abg, %js_import_meta.exit.thread ], [ %.31, %bb.hx ], [ %i.act, %JS_NewObjectProtoClass.exit.thread ], [ %.31, %bb.ann ], [ %.31, %JS_GetGlobalVar.exit.thread ], [ %.31, %bb.oe ], [ %.31, %bb.gr ], [ %.31, %bb.oc ], [ %.31, %bb.afy ], [ %i.dtd, %JS_NewObjectProtoClass.exit4878.thread ], [ %i.cat, %bb.nn ], [ %.23446.lcssa, %bb.acc ], [ %.23446.lcssa, %bb.acd ], [ %.23446.lcssa, %bb.ace ], [ %i.hnh, %bb.aqm ], [ %.31, %js_post_inc_slow.exit.thread ], [ %i.hnh, %bb.aqk ], [ %.31, %bb.aqz ], [ %.31, %bb.gn ], [ %.31, %bb.app ], [ %.31, %bb.ha ], [ %.31, %bb.hd ], [ %.25.ph, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.31, %bb.afx ], [ %.31, %bb.gu ], [ %.31, %bb.gt ], [ %.31, %bb.gq ], [ %i.hnh, %bb.aql ], [ %i.cat, %JS_FreeValue.exit4750 ], [ %i.cat, %bb.nl ], [ %i.cat, %bb.nm ], [ %.31, %js_op_define_class.exit.thread ], [ %i.cat, %JS_FreeValue.exit4728 ], [ %.31, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.31, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.31, %bb.vh ], [ %.31, %bb.ui ], [ %.31, %bb.um ], [ %.31, %bb.ur ], [ %.31, %bb.vx ], [ %.31, %bb.bae ], [ %.31, %bb.ari ], [ %.31, %bb.xq ], [ %.31, %bb.aaf ] ; 5 uses
  %.23443 = phi ptr [ %i.am, %bb.c ], [ %.13442, %bb.bez ], [ %.13442, %bb.abg ], [ %.13442, %bb.abp ], [ %.13442, %bb.arg ], [ %.13442, %bb.arh ], [ %.13442, %.critedge3663 ], [ %.13442, %js_post_inc_slow.exit4387.thread ], [ %.13442, %bb.ash ], [ %.13442, %bb.ado ], [ %.13442, %JS_FreeValue.exit5161 ], [ %.13442, %bb.adt ], [ %.13442, %bb.asg ], [ %.13442, %JS_FreeValue.exit4948 ], [ %.13442, %bb.azo ], [ %.13442, %bb.hy ], [ %.13442, %bb.ia ], [ %.13442, %bb.fs ], [ %.13442, %bb.fw ], [ %.13442, %bb.ic ], [ %.13442, %bb.ib ], [ %.13442, %bb.hz ], [ %.13442, %bb.gk ], [ %.13442, %bb.vs ], [ %.13442, %JS_FreeValue.exit4622 ], [ %.13442, %JS_FreeValue.exit4944 ], [ %.13442, %bb.ano ], [ %.13442, %bb.api ], [ %.13442, %bb.aph ], [ %.13442, %JS_NewObjectProtoClass.exit4531.thread ], [ %.13442, %js_build_arguments.exit.thread ], [ %.13442, %js_build_mapped_arguments.exit.thread ], [ %.13442, %js_for_of_next.exit ], [ %.13442, %js_import_meta.exit.thread ], [ %.13442, %bb.hx ], [ %.13442, %JS_NewObjectProtoClass.exit.thread ], [ %.13442, %bb.ann ], [ %.13442, %JS_GetGlobalVar.exit.thread ], [ %.13442, %bb.oe ], [ %.13442, %bb.gr ], [ %.13442, %bb.oc ], [ %.13442, %bb.afy ], [ %.13442, %JS_NewObjectProtoClass.exit4878.thread ], [ %.13442, %bb.nn ], [ %.13442, %bb.acc ], [ %.13442, %bb.acd ], [ %.13442, %bb.ace ], [ %.13442, %bb.aqm ], [ %.13442, %js_post_inc_slow.exit.thread ], [ %.13442, %bb.aqk ], [ %.13442, %bb.aqz ], [ %.13442, %bb.gn ], [ %.13442, %bb.app ], [ %.13442, %bb.ha ], [ %.13442, %bb.hd ], [ %.13442, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.13442, %bb.afx ], [ %.13442, %bb.gu ], [ %.13442, %bb.gt ], [ %.13442, %bb.gq ], [ %.13442, %bb.aql ], [ %.13442, %JS_FreeValue.exit4750 ], [ %.13442, %bb.nl ], [ %.13442, %bb.nm ], [ %.13442, %js_op_define_class.exit.thread ], [ %.13442, %JS_FreeValue.exit4728 ], [ %.13442, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.13442, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.13442, %bb.vh ], [ %.13442, %bb.ui ], [ %.13442, %bb.um ], [ %.13442, %bb.ur ], [ %.13442, %bb.vx ], [ %.13442, %bb.bae ], [ %.13442, %bb.ari ], [ %.13442, %bb.xq ], [ %.13442, %bb.aaf ]
  %.13440 = phi ptr [ %i.ao, %bb.c ], [ %.03439, %bb.bez ], [ %.03439, %bb.abg ], [ %.03439, %bb.abp ], [ %.03439, %bb.arg ], [ %.03439, %bb.arh ], [ %.03439, %.critedge3663 ], [ %.03439, %js_post_inc_slow.exit4387.thread ], [ %.03439, %bb.ash ], [ %.03439, %bb.ado ], [ %.03439, %JS_FreeValue.exit5161 ], [ %.03439, %bb.adt ], [ %.03439, %bb.asg ], [ %.03439, %JS_FreeValue.exit4948 ], [ %.03439, %bb.azo ], [ %.03439, %bb.hy ], [ %.03439, %bb.ia ], [ %.03439, %bb.fs ], [ %.03439, %bb.fw ], [ %.03439, %bb.ic ], [ %.03439, %bb.ib ], [ %.03439, %bb.hz ], [ %.03439, %bb.gk ], [ %.03439, %bb.vs ], [ %.03439, %JS_FreeValue.exit4622 ], [ %.03439, %JS_FreeValue.exit4944 ], [ %.03439, %bb.ano ], [ %.03439, %bb.api ], [ %.03439, %bb.aph ], [ %.03439, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03439, %js_build_arguments.exit.thread ], [ %.03439, %js_build_mapped_arguments.exit.thread ], [ %.03439, %js_for_of_next.exit ], [ %.03439, %js_import_meta.exit.thread ], [ %.03439, %bb.hx ], [ %.03439, %JS_NewObjectProtoClass.exit.thread ], [ %.03439, %bb.ann ], [ %.03439, %JS_GetGlobalVar.exit.thread ], [ %.03439, %bb.oe ], [ %.03439, %bb.gr ], [ %.03439, %bb.oc ], [ %.03439, %bb.afy ], [ %.03439, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03439, %bb.nn ], [ %.03439, %bb.acc ], [ %.03439, %bb.acd ], [ %.03439, %bb.ace ], [ %.03439, %bb.aqm ], [ %.03439, %js_post_inc_slow.exit.thread ], [ %.03439, %bb.aqk ], [ %.03439, %bb.aqz ], [ %.03439, %bb.gn ], [ %.03439, %bb.app ], [ %.03439, %bb.ha ], [ %.03439, %bb.hd ], [ %.03439, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03439, %bb.afx ], [ %.03439, %bb.gu ], [ %.03439, %bb.gt ], [ %.03439, %bb.gq ], [ %.03439, %bb.aql ], [ %.03439, %JS_FreeValue.exit4750 ], [ %.03439, %bb.nl ], [ %.03439, %bb.nm ], [ %.03439, %js_op_define_class.exit.thread ], [ %.03439, %JS_FreeValue.exit4728 ], [ %.03439, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03439, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03439, %bb.vh ], [ %.03439, %bb.ui ], [ %.03439, %bb.um ], [ %.03439, %bb.ur ], [ %.03439, %bb.vx ], [ %.03439, %bb.bae ], [ %.03439, %bb.ari ], [ %.03439, %bb.xq ], [ %.03439, %bb.aaf ]
  %.13438 = phi ptr [ %i.as, %bb.c ], [ %.03437, %bb.bez ], [ %.03437, %bb.abg ], [ %.03437, %bb.abp ], [ %.03437, %bb.arg ], [ %.03437, %bb.arh ], [ %.03437, %.critedge3663 ], [ %.03437, %js_post_inc_slow.exit4387.thread ], [ %.03437, %bb.ash ], [ %.03437, %bb.ado ], [ %.03437, %JS_FreeValue.exit5161 ], [ %.03437, %bb.adt ], [ %.03437, %bb.asg ], [ %.03437, %JS_FreeValue.exit4948 ], [ %.03437, %bb.azo ], [ %.03437, %bb.hy ], [ %.03437, %bb.ia ], [ %.03437, %bb.fs ], [ %.03437, %bb.fw ], [ %.03437, %bb.ic ], [ %.03437, %bb.ib ], [ %.03437, %bb.hz ], [ %.03437, %bb.gk ], [ %.03437, %bb.vs ], [ %.03437, %JS_FreeValue.exit4622 ], [ %.03437, %JS_FreeValue.exit4944 ], [ %.03437, %bb.ano ], [ %.03437, %bb.api ], [ %.03437, %bb.aph ], [ %.03437, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03437, %js_build_arguments.exit.thread ], [ %.03437, %js_build_mapped_arguments.exit.thread ], [ %.03437, %js_for_of_next.exit ], [ %.03437, %js_import_meta.exit.thread ], [ %.03437, %bb.hx ], [ %.03437, %JS_NewObjectProtoClass.exit.thread ], [ %.03437, %bb.ann ], [ %.03437, %JS_GetGlobalVar.exit.thread ], [ %.03437, %bb.oe ], [ %.03437, %bb.gr ], [ %.03437, %bb.oc ], [ %.03437, %bb.afy ], [ %.03437, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03437, %bb.nn ], [ %.03437, %bb.acc ], [ %.03437, %bb.acd ], [ %.03437, %bb.ace ], [ %.03437, %bb.aqm ], [ %.03437, %js_post_inc_slow.exit.thread ], [ %.03437, %bb.aqk ], [ %.03437, %bb.aqz ], [ %.03437, %bb.gn ], [ %.03437, %bb.app ], [ %.03437, %bb.ha ], [ %.03437, %bb.hd ], [ %.03437, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03437, %bb.afx ], [ %.03437, %bb.gu ], [ %.03437, %bb.gt ], [ %.03437, %bb.gq ], [ %.03437, %bb.aql ], [ %.03437, %JS_FreeValue.exit4750 ], [ %.03437, %bb.nl ], [ %.03437, %bb.nm ], [ %.03437, %js_op_define_class.exit.thread ], [ %.03437, %JS_FreeValue.exit4728 ], [ %.03437, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03437, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03437, %bb.vh ], [ %.03437, %bb.ui ], [ %.03437, %bb.um ], [ %.03437, %bb.ur ], [ %.03437, %bb.vx ], [ %.03437, %bb.bae ], [ %.03437, %bb.ari ], [ %.03437, %bb.xq ], [ %.03437, %bb.aaf ] ; 4 uses
  %.13435 = phi ptr [ %i.am, %bb.c ], [ %.03434, %bb.bez ], [ %.03434, %bb.abg ], [ %.03434, %bb.abp ], [ %.03434, %bb.arg ], [ %.03434, %bb.arh ], [ %.03434, %.critedge3663 ], [ %.03434, %js_post_inc_slow.exit4387.thread ], [ %.03434, %bb.ash ], [ %.03434, %bb.ado ], [ %.03434, %JS_FreeValue.exit5161 ], [ %.03434, %bb.adt ], [ %.03434, %bb.asg ], [ %.03434, %JS_FreeValue.exit4948 ], [ %.03434, %bb.azo ], [ %.03434, %bb.hy ], [ %.03434, %bb.ia ], [ %.03434, %bb.fs ], [ %.03434, %bb.fw ], [ %.03434, %bb.ic ], [ %.03434, %bb.ib ], [ %.03434, %bb.hz ], [ %.03434, %bb.gk ], [ %.03434, %bb.vs ], [ %.03434, %JS_FreeValue.exit4622 ], [ %.03434, %JS_FreeValue.exit4944 ], [ %.03434, %bb.ano ], [ %.03434, %bb.api ], [ %.03434, %bb.aph ], [ %.03434, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03434, %js_build_arguments.exit.thread ], [ %.03434, %js_build_mapped_arguments.exit.thread ], [ %.03434, %js_for_of_next.exit ], [ %.03434, %js_import_meta.exit.thread ], [ %.03434, %bb.hx ], [ %.03434, %JS_NewObjectProtoClass.exit.thread ], [ %.03434, %bb.ann ], [ %.03434, %JS_GetGlobalVar.exit.thread ], [ %.03434, %bb.oe ], [ %.03434, %bb.gr ], [ %.03434, %bb.oc ], [ %.03434, %bb.afy ], [ %.03434, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03434, %bb.nn ], [ %.03434, %bb.acc ], [ %.03434, %bb.acd ], [ %.03434, %bb.ace ], [ %.03434, %bb.aqm ], [ %.03434, %js_post_inc_slow.exit.thread ], [ %.03434, %bb.aqk ], [ %.03434, %bb.aqz ], [ %.03434, %bb.gn ], [ %.03434, %bb.app ], [ %.03434, %bb.ha ], [ %.03434, %bb.hd ], [ %.03434, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03434, %bb.afx ], [ %.03434, %bb.gu ], [ %.03434, %bb.gt ], [ %.03434, %bb.gq ], [ %.03434, %bb.aql ], [ %.03434, %JS_FreeValue.exit4750 ], [ %.03434, %bb.nl ], [ %.03434, %bb.nm ], [ %.03434, %js_op_define_class.exit.thread ], [ %.03434, %JS_FreeValue.exit4728 ], [ %.03434, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03434, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03434, %bb.vh ], [ %.03434, %bb.ui ], [ %.03434, %bb.um ], [ %.03434, %bb.ur ], [ %.03434, %bb.vx ], [ %.03434, %bb.bae ], [ %.03434, %bb.ari ], [ %.03434, %bb.xq ], [ %.03434, %bb.aaf ] ; 2 uses
  %.8 = phi ptr [ %i.aw, %bb.c ], [ %.10, %bb.bez ], [ %.10, %bb.abg ], [ %.10, %bb.abp ], [ %.10, %bb.arg ], [ %.10, %bb.arh ], [ %.10, %.critedge3663 ], [ %.10, %js_post_inc_slow.exit4387.thread ], [ %.10, %bb.ash ], [ %i.ezp, %bb.ado ], [ %.10, %JS_FreeValue.exit5161 ], [ %i.ezp, %bb.adt ], [ %.10, %bb.asg ], [ %i.ezp, %JS_FreeValue.exit4948 ], [ %.10, %bb.azo ], [ %i.bef, %bb.hy ], [ %i.bef, %bb.ia ], [ %.10, %bb.fs ], [ %.10, %bb.fw ], [ %i.bef, %bb.ic ], [ %i.bef, %bb.ib ], [ %i.bef, %bb.hz ], [ %.10, %bb.gk ], [ %i.dtc, %bb.vs ], [ %.10, %JS_FreeValue.exit4622 ], [ %.10, %JS_FreeValue.exit4944 ], [ %.10, %bb.ano ], [ %.10, %bb.api ], [ %.10, %bb.aph ], [ %.10, %JS_NewObjectProtoClass.exit4531.thread ], [ %i.sc, %js_build_arguments.exit.thread ], [ %i.sc, %js_build_mapped_arguments.exit.thread ], [ %i.eoz, %js_for_of_next.exit ], [ %i.sc, %js_import_meta.exit.thread ], [ %i.bef, %bb.hx ], [ %i.sc, %JS_NewObjectProtoClass.exit.thread ], [ %.10, %bb.ann ], [ %i.bxs, %JS_GetGlobalVar.exit.thread ], [ %i.cfl, %bb.oe ], [ %.10, %bb.gr ], [ %i.cfl, %bb.oc ], [ %i.flm, %bb.afy ], [ %i.dtc, %JS_NewObjectProtoClass.exit4878.thread ], [ %i.cas, %bb.nn ], [ %.10, %bb.acc ], [ %.10, %bb.acd ], [ %.10, %bb.ace ], [ %.10, %bb.aqm ], [ %.10, %js_post_inc_slow.exit.thread ], [ %.10, %bb.aqk ], [ %.10, %bb.aqz ], [ %.10, %bb.gn ], [ %.10, %bb.app ], [ %.10, %bb.ha ], [ %.10, %bb.hd ], [ %.8.ph, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %i.flm, %bb.afx ], [ %.10, %bb.gu ], [ %.10, %bb.gt ], [ %.10, %bb.gq ], [ %.10, %bb.aql ], [ %i.cas, %JS_FreeValue.exit4750 ], [ %i.cas, %bb.nl ], [ %i.cas, %bb.nm ], [ %i.gif, %js_op_define_class.exit.thread ], [ %i.cas, %JS_FreeValue.exit4728 ], [ %i.dqf, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %i.drb, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %i.dry, %bb.vh ], [ %i.dnf, %bb.ui ], [ %i.doa, %bb.um ], [ %i.dpa, %bb.ur ], [ %i.duu, %bb.vx ], [ %.10, %bb.bae ], [ %.10, %bb.ari ], [ %.10, %bb.xq ], [ %.10, %bb.aaf ] ; 2 uses
  %.13417 = phi ptr [ %i.ac, %bb.c ], [ %.03416, %bb.bez ], [ %.03416, %bb.abg ], [ %.03416, %bb.abp ], [ %.03416, %bb.arg ], [ %.03416, %bb.arh ], [ %.03416, %.critedge3663 ], [ %.03416, %js_post_inc_slow.exit4387.thread ], [ %.03416, %bb.ash ], [ %.03416, %bb.ado ], [ %.03416, %JS_FreeValue.exit5161 ], [ %.03416, %bb.adt ], [ %.03416, %bb.asg ], [ %.03416, %JS_FreeValue.exit4948 ], [ %.03416, %bb.azo ], [ %.03416, %bb.hy ], [ %.03416, %bb.ia ], [ %.03416, %bb.fs ], [ %.03416, %bb.fw ], [ %.03416, %bb.ic ], [ %.03416, %bb.ib ], [ %.03416, %bb.hz ], [ %.03416, %bb.gk ], [ %.03416, %bb.vs ], [ %.03416, %JS_FreeValue.exit4622 ], [ %.03416, %JS_FreeValue.exit4944 ], [ %.03416, %bb.ano ], [ %.03416, %bb.api ], [ %.03416, %bb.aph ], [ %.03416, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03416, %js_build_arguments.exit.thread ], [ %.03416, %js_build_mapped_arguments.exit.thread ], [ %.03416, %js_for_of_next.exit ], [ %.03416, %js_import_meta.exit.thread ], [ %.03416, %bb.hx ], [ %.03416, %JS_NewObjectProtoClass.exit.thread ], [ %.03416, %bb.ann ], [ %.03416, %JS_GetGlobalVar.exit.thread ], [ %.03416, %bb.oe ], [ %.03416, %bb.gr ], [ %.03416, %bb.oc ], [ %.03416, %bb.afy ], [ %.03416, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03416, %bb.nn ], [ %.03416, %bb.acc ], [ %.03416, %bb.acd ], [ %.03416, %bb.ace ], [ %.03416, %bb.aqm ], [ %.03416, %js_post_inc_slow.exit.thread ], [ %.03416, %bb.aqk ], [ %.03416, %bb.aqz ], [ %.03416, %bb.gn ], [ %.03416, %bb.app ], [ %.03416, %bb.ha ], [ %.03416, %bb.hd ], [ %.03416, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03416, %bb.afx ], [ %.03416, %bb.gu ], [ %.03416, %bb.gt ], [ %.03416, %bb.gq ], [ %.03416, %bb.aql ], [ %.03416, %JS_FreeValue.exit4750 ], [ %.03416, %bb.nl ], [ %.03416, %bb.nm ], [ %.03416, %js_op_define_class.exit.thread ], [ %.03416, %JS_FreeValue.exit4728 ], [ %.03416, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03416, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03416, %bb.vh ], [ %.03416, %bb.ui ], [ %.03416, %bb.um ], [ %.03416, %bb.ur ], [ %.03416, %bb.vx ], [ %.03416, %bb.bae ], [ %.03416, %bb.ari ], [ %.03416, %bb.xq ], [ %.03416, %bb.aaf ] ; 4 uses
  %.13415 = phi ptr [ %i.ag, %bb.c ], [ %.03414, %bb.bez ], [ %.03414, %bb.abg ], [ %.03414, %bb.abp ], [ %.03414, %bb.arg ], [ %.03414, %bb.arh ], [ %.03414, %.critedge3663 ], [ %.03414, %js_post_inc_slow.exit4387.thread ], [ %.03414, %bb.ash ], [ %.03414, %bb.ado ], [ %.03414, %JS_FreeValue.exit5161 ], [ %.03414, %bb.adt ], [ %.03414, %bb.asg ], [ %.03414, %JS_FreeValue.exit4948 ], [ %.03414, %bb.azo ], [ %.03414, %bb.hy ], [ %.03414, %bb.ia ], [ %.03414, %bb.fs ], [ %.03414, %bb.fw ], [ %.03414, %bb.ic ], [ %.03414, %bb.ib ], [ %.03414, %bb.hz ], [ %.03414, %bb.gk ], [ %.03414, %bb.vs ], [ %.03414, %JS_FreeValue.exit4622 ], [ %.03414, %JS_FreeValue.exit4944 ], [ %.03414, %bb.ano ], [ %.03414, %bb.api ], [ %.03414, %bb.aph ], [ %.03414, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03414, %js_build_arguments.exit.thread ], [ %.03414, %js_build_mapped_arguments.exit.thread ], [ %.03414, %js_for_of_next.exit ], [ %.03414, %js_import_meta.exit.thread ], [ %.03414, %bb.hx ], [ %.03414, %JS_NewObjectProtoClass.exit.thread ], [ %.03414, %bb.ann ], [ %.03414, %JS_GetGlobalVar.exit.thread ], [ %.03414, %bb.oe ], [ %.03414, %bb.gr ], [ %.03414, %bb.oc ], [ %.03414, %bb.afy ], [ %.03414, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03414, %bb.nn ], [ %.03414, %bb.acc ], [ %.03414, %bb.acd ], [ %.03414, %bb.ace ], [ %.03414, %bb.aqm ], [ %.03414, %js_post_inc_slow.exit.thread ], [ %.03414, %bb.aqk ], [ %.03414, %bb.aqz ], [ %.03414, %bb.gn ], [ %.03414, %bb.app ], [ %.03414, %bb.ha ], [ %.03414, %bb.hd ], [ %.03414, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03414, %bb.afx ], [ %.03414, %bb.gu ], [ %.03414, %bb.gt ], [ %.03414, %bb.gq ], [ %.03414, %bb.aql ], [ %.03414, %JS_FreeValue.exit4750 ], [ %.03414, %bb.nl ], [ %.03414, %bb.nm ], [ %.03414, %js_op_define_class.exit.thread ], [ %.03414, %JS_FreeValue.exit4728 ], [ %.03414, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03414, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03414, %bb.vh ], [ %.03414, %bb.ui ], [ %.03414, %bb.um ], [ %.03414, %bb.ur ], [ %.03414, %bb.vx ], [ %.03414, %bb.bae ], [ %.03414, %bb.ari ], [ %.03414, %bb.xq ], [ %.03414, %bb.aaf ] ; 3 uses
  %.13413 = phi ptr [ %i.ae, %bb.c ], [ %.03412, %bb.bez ], [ %.03412, %bb.abg ], [ %.03412, %bb.abp ], [ %.03412, %bb.arg ], [ %.03412, %bb.arh ], [ %.03412, %.critedge3663 ], [ %.03412, %js_post_inc_slow.exit4387.thread ], [ %.03412, %bb.ash ], [ %.03412, %bb.ado ], [ %.03412, %JS_FreeValue.exit5161 ], [ %.03412, %bb.adt ], [ %.03412, %bb.asg ], [ %.03412, %JS_FreeValue.exit4948 ], [ %.03412, %bb.azo ], [ %.03412, %bb.hy ], [ %.03412, %bb.ia ], [ %.03412, %bb.fs ], [ %.03412, %bb.fw ], [ %.03412, %bb.ic ], [ %.03412, %bb.ib ], [ %.03412, %bb.hz ], [ %.03412, %bb.gk ], [ %.03412, %bb.vs ], [ %.03412, %JS_FreeValue.exit4622 ], [ %.03412, %JS_FreeValue.exit4944 ], [ %.03412, %bb.ano ], [ %.03412, %bb.api ], [ %.03412, %bb.aph ], [ %.03412, %JS_NewObjectProtoClass.exit4531.thread ], [ %.03412, %js_build_arguments.exit.thread ], [ %.03412, %js_build_mapped_arguments.exit.thread ], [ %.03412, %js_for_of_next.exit ], [ %.03412, %js_import_meta.exit.thread ], [ %.03412, %bb.hx ], [ %.03412, %JS_NewObjectProtoClass.exit.thread ], [ %.03412, %bb.ann ], [ %.03412, %JS_GetGlobalVar.exit.thread ], [ %.03412, %bb.oe ], [ %.03412, %bb.gr ], [ %.03412, %bb.oc ], [ %.03412, %bb.afy ], [ %.03412, %JS_NewObjectProtoClass.exit4878.thread ], [ %.03412, %bb.nn ], [ %.03412, %bb.acc ], [ %.03412, %bb.acd ], [ %.03412, %bb.ace ], [ %.03412, %bb.aqm ], [ %.03412, %js_post_inc_slow.exit.thread ], [ %.03412, %bb.aqk ], [ %.03412, %bb.aqz ], [ %.03412, %bb.gn ], [ %.03412, %bb.app ], [ %.03412, %bb.ha ], [ %.03412, %bb.hd ], [ %.03412, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.03412, %bb.afx ], [ %.03412, %bb.gu ], [ %.03412, %bb.gt ], [ %.03412, %bb.gq ], [ %.03412, %bb.aql ], [ %.03412, %JS_FreeValue.exit4750 ], [ %.03412, %bb.nl ], [ %.03412, %bb.nm ], [ %.03412, %js_op_define_class.exit.thread ], [ %.03412, %JS_FreeValue.exit4728 ], [ %.03412, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.03412, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.03412, %bb.vh ], [ %.03412, %bb.ui ], [ %.03412, %bb.um ], [ %.03412, %bb.ur ], [ %.03412, %bb.vx ], [ %.03412, %bb.bae ], [ %.03412, %bb.ari ], [ %.03412, %bb.xq ], [ %.03412, %bb.aaf ]
  %.1 = phi ptr [ %i.ai, %bb.c ], [ %.0, %bb.bez ], [ %.0, %bb.abg ], [ %.0, %bb.abp ], [ %.0, %bb.arg ], [ %.0, %bb.arh ], [ %.0, %.critedge3663 ], [ %.0, %js_post_inc_slow.exit4387.thread ], [ %.0, %bb.ash ], [ %.0, %bb.ado ], [ %.0, %JS_FreeValue.exit5161 ], [ %.0, %bb.adt ], [ %.0, %bb.asg ], [ %.0, %JS_FreeValue.exit4948 ], [ %.0, %bb.azo ], [ %.0, %bb.hy ], [ %.0, %bb.ia ], [ %.0, %bb.fs ], [ %.0, %bb.fw ], [ %.0, %bb.ic ], [ %.0, %bb.ib ], [ %.0, %bb.hz ], [ %.0, %bb.gk ], [ %.0, %bb.vs ], [ %.0, %JS_FreeValue.exit4622 ], [ %.0, %JS_FreeValue.exit4944 ], [ %.0, %bb.ano ], [ %.0, %bb.api ], [ %.0, %bb.aph ], [ %.0, %JS_NewObjectProtoClass.exit4531.thread ], [ %.0, %js_build_arguments.exit.thread ], [ %.0, %js_build_mapped_arguments.exit.thread ], [ %.0, %js_for_of_next.exit ], [ %.0, %js_import_meta.exit.thread ], [ %.0, %bb.hx ], [ %.0, %JS_NewObjectProtoClass.exit.thread ], [ %.0, %bb.ann ], [ %.0, %JS_GetGlobalVar.exit.thread ], [ %.0, %bb.oe ], [ %.0, %bb.gr ], [ %.0, %bb.oc ], [ %.0, %bb.afy ], [ %.0, %JS_NewObjectProtoClass.exit4878.thread ], [ %.0, %bb.nn ], [ %.0, %bb.acc ], [ %.0, %bb.acd ], [ %.0, %bb.ace ], [ %.0, %bb.aqm ], [ %.0, %js_post_inc_slow.exit.thread ], [ %.0, %bb.aqk ], [ %.0, %bb.aqz ], [ %.0, %bb.gn ], [ %.0, %bb.app ], [ %.0, %bb.ha ], [ %.0, %bb.hd ], [ %.0, %JS_CheckDefineGlobalVar.exit.loopexit608 ], [ %.0, %bb.afx ], [ %.0, %bb.gu ], [ %.0, %bb.gt ], [ %.0, %bb.gq ], [ %.0, %bb.aql ], [ %.0, %JS_FreeValue.exit4750 ], [ %.0, %bb.nl ], [ %.0, %bb.nm ], [ %.0, %js_op_define_class.exit.thread ], [ %.0, %JS_FreeValue.exit4728 ], [ %.0, %JS_ThrowReferenceErrorUninitialized2.exit ], [ %.0, %JS_ThrowReferenceErrorUninitialized2.exit4100 ], [ %.0, %bb.vh ], [ %.0, %bb.ui ], [ %.0, %bb.um ], [ %.0, %bb.ur ], [ %.0, %bb.vx ], [ %.0, %bb.bae ], [ %.0, %bb.ari ], [ %.0, %bb.xq ], [ %.0, %bb.aaf ] ; 9 uses
  %i.jly = getelementptr inbounds nuw i8, ptr %i.u, i64 1240 ; 5 uses
  %i.jlz = getelementptr inbounds nuw i8, ptr %i.u, i64 1248 ; 4 uses
  %i.jma = load i64, ptr %i.jlz, align 8          ; 2 uses
  %i.jmb = and i64 %i.jma, 4294967295
  %.not.i.i4515 = icmp eq i64 %i.jmb, 4294967295
  br i1 %.not.i.i4515, label %bb.bfa, label %needs_backtrace.exit.thread506

bb.bfa:                                           ; preds = %JS_CheckDefineGlobalVar.exit
  %i.jmc = load i64, ptr %i.jly, align 8
  %i.jmd = inttoptr i64 %i.jmc to ptr             ; 4 uses
  %i.jme = getelementptr inbounds nuw i8, ptr %i.jmd, i64 18
  %i.jmf = load i16, ptr %i.jme, align 2, !tbaa !276
  switch i16 %i.jmf, label %needs_backtrace.exit.thread506 [
    i16 3, label %bb.bfb
    i16 64, label %bb.bfe
  ]

bb.bfb:                                           ; preds = %bb.bfa
  %i.jmg = getelementptr inbounds nuw i8, ptr %i.jmd, i64 56
  %i.jmh = load i64, ptr %i.jmg, align 8
  %i.jmi = and i64 %i.jmh, 4294967295
  %i.jmj = icmp eq i64 %i.jmi, 3
  br i1 %i.jmj, label %bb.bfc, label %needs_backtrace.exit.thread506

bb.bfc:                                           ; preds = %bb.bfb
  %i.jmk = getelementptr i8, ptr %i.jmd, i64 24
  %.val.i.i = load ptr, ptr %i.jmk, align 8, !tbaa !317 ; 2 uses
  %i.jml = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.jmm = load i32, ptr %i.jml, align 8, !tbaa !191 ; 2 uses
  %i.jmn = and i32 %i.jmm, 57
  %i.jmo = zext i32 %i.jmm to i64
  %i.jmp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.jmo
  %i.jmq = getelementptr inbounds nuw i8, ptr %i.jmp, i64 60 ; 2 uses
  %i.jmr = xor i32 %i.jmn, -1
  %i.jms = sext i32 %i.jmr to i64
  %i.jmt = getelementptr inbounds [4 x i8], ptr %i.jmq, i64 %i.jms
  %i.jmu = load i32, ptr %i.jmt, align 4, !tbaa !191 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %i.jmu, 0
  br i1 %.not1.i.i.i, label %needs_backtrace.exit.thread507, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bfc, %bb.bfd
  %.0.in2.i.i.i = phi i32 [ %i.jnb, %bb.bfd ], [ %i.jmu, %bb.bfc ]
  %.0.i.i.i = zext i32 %.0.in2.i.i.i to i64
  %i.jmv = getelementptr [8 x i8], ptr %i.jmq, i64 %.0.i.i.i ; 2 uses
  %i.jmw = getelementptr i8, ptr %i.jmv, i64 -8   ; 2 uses
  %i.jmx = getelementptr i8, ptr %i.jmv, i64 -4
  %i.jmy = load i32, ptr %i.jmx, align 4, !tbaa !320
  %i.jmz = icmp eq i32 %i.jmy, 57
  br i1 %i.jmz, label %can_store_error_stack.exit.i, label %bb.bfd, !prof !325

bb.bfd:                                           ; preds = %.lr.ph.i.i.i
  %i.jna = load i32, ptr %i.jmw, align 4
  %i.jnb = and i32 %i.jna, 67108863               ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.jnb, 0
  br i1 %.not.i.i.i, label %needs_backtrace.exit.thread507, label %.lr.ph.i.i.i, !llvm.loop !39

can_store_error_stack.exit.i:                     ; preds = %.lr.ph.i.i.i
  %i.jnc = icmp eq ptr %i.jmw, null
  br i1 %i.jnc, label %needs_backtrace.exit.thread507, label %needs_backtrace.exit.thread506

bb.bfe:                                           ; preds = %bb.bfa
  %i.jnd = getelementptr i8, ptr %i.jmd, i64 24
  %.val.i5.i = load ptr, ptr %i.jnd, align 8, !tbaa !317 ; 2 uses
  %i.jne = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 24
  %i.jnf = load i32, ptr %i.jne, align 8, !tbaa !191 ; 2 uses
  %i.jng = and i32 %i.jnf, 57
  %i.jnh = zext i32 %i.jnf to i64
  %i.jni = getelementptr inbounds nuw [4 x i8], ptr %.val.i5.i, i64 %i.jnh
  %i.jnj = getelementptr inbounds nuw i8, ptr %i.jni, i64 60 ; 2 uses
  %i.jnk = xor i32 %i.jng, -1
  %i.jnl = sext i32 %i.jnk to i64
  %i.jnm = getelementptr inbounds [4 x i8], ptr %i.jnj, i64 %i.jnl
  %i.jnn = load i32, ptr %i.jnm, align 4, !tbaa !191 ; 2 uses
  %.not1.i.i6.i = icmp eq i32 %i.jnn, 0
  br i1 %.not1.i.i6.i, label %needs_backtrace.exit.thread507, label %.lr.ph.i.i7.i

.lr.ph.i.i7.i:                                    ; preds = %bb.bfe, %bb.bff
  %.0.in2.i.i8.i = phi i32 [ %i.jnu, %bb.bff ], [ %i.jnn, %bb.bfe ]
  %.0.i.i9.i = zext i32 %.0.in2.i.i8.i to i64
  %i.jno = getelementptr [8 x i8], ptr %i.jnj, i64 %.0.i.i9.i ; 2 uses
end_hunk_2
begin_hunk_3_@js_date_constructor:bb.a
  %i.fq = trunc i64 %i.fn to i32
  %i.fr = icmp ugt i32 %i.fq, -10
  br i1 %i.fr, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.fs = inttoptr i64 %i.fl to ptr
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !191 ; 2 uses
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !191
  %i.fw = icmp slt i32 %i.fu, 2
  br i1 %i.fw, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fp, i64 %i.fl, i64 %i.fn), !inline_history !699
  br label %.thread

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.fx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.241), !inline_history !529 ; 0 uses
  br i1 %i.c, label %bb.bf, label %JS_SetObjectData.exit

.thread:                                          ; preds = %bb.bb, %bb.bc, %bb.bd
  store double %.4, ptr %i.fk, align 8, !tbaa !218
  store i64 8, ptr %i.fm, align 8, !tbaa !240
  br i1 %i.c, label %.thread150, label %JS_SetObjectData.exit

.thread150:                                       ; preds = %.thread
  %i.fy = tail call { i64, i64 } @get_date_string(ptr noundef nonnull %0, i64 %i.ff, i64 %i.fg, i32 poison, ptr poison, i32 noundef 19) ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fy, 0
  %i.ga = extractvalue { i64, i64 } %i.fy, 1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gb = tail call { i64, i64 } @get_date_string(ptr noundef nonnull %0, i64 %i.ff, i64 %i.fg, i32 poison, ptr poison, i32 noundef 19) ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1      ; 2 uses
  %i.ge = icmp ugt i32 %trunc, -10
  br i1 %i.ge, label %bb.bg, label %JS_SetObjectData.exit

bb.bg:                                            ; preds = %.thread150, %bb.bf
  %i.gf = phi i64 [ %i.ga, %.thread150 ], [ %i.gd, %bb.bf ] ; 2 uses
  %i.gg = phi i64 [ %i.fz, %.thread150 ], [ %i.gc, %bb.bf ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = load ptr, ptr %.in, align 8, !tbaa !232
  %i.gi = inttoptr i64 %i.ff to ptr
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !191 ; 2 uses
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !191
  %i.gm = icmp slt i32 %i.gk, 2
  br i1 %i.gm, label %bb.bh, label %JS_SetObjectData.exit

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gh, i64 %i.ff, i64 %i.fg), !inline_history !291
  br label %JS_SetObjectData.exit

JS_SetObjectData.exit:                            ; preds = %.thread, %bb.az, %bb.bh, %bb.bg, %bb.bf, %JS_ToFloat64Free.exit, %JS_ToFloat64Free.exit.thread122, %bb.be, %JS_ToFloat64.exit98
  %.sroa.7.4 = phi i64 [ 0, %JS_ToFloat64.exit98 ], [ 0, %JS_ToFloat64Free.exit ], [ 0, %JS_ToFloat64Free.exit.thread122 ], [ %i.ff, %bb.az ], [ %i.ff, %bb.be ], [ %i.gc, %bb.bf ], [ %i.gg, %bb.bg ], [ %i.gg, %bb.bh ], [ %i.ff, %.thread ]
  %.sroa.12.4 = phi i64 [ 6, %JS_ToFloat64.exit98 ], [ 6, %JS_ToFloat64Free.exit ], [ 6, %JS_ToFloat64Free.exit.thread122 ], [ %i.fg, %bb.az ], [ %i.fg, %bb.be ], [ %i.gd, %bb.bf ], [ %i.gf, %bb.bg ], [ %i.gf, %bb.bh ], [ %i.fg, %.thread ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.7.4, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.4, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @__JS_EvalInternal(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
bb.a:
  %9 = alloca %struct.BlockEnv, align 8           ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct.JSParseState, align 8      ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  store ptr %0, ptr %10, align 8, !tbaa !553
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %5, ptr %i.c, align 8, !tbaa !558
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %6, ptr %i.d, align 8, !tbaa !653
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !654
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !655
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %3, ptr %i.g, align 8, !tbaa !656
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.h, ptr %i.i, align 8, !tbaa !657
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %3, ptr %i.j, align 8, !tbaa !658
  %i.k = trunc i64 %4 to i32
  %..i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 1)
  %i.l = sext i32 %..i.i to i64
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr %i.m, ptr %i.n, align 8, !tbaa !659
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr %3, ptr %i.o, align 8, !tbaa !660
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i32 32, ptr %i.p, align 8, !tbaa !661
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 1, ptr %i.q, align 4, !tbaa !559
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 1, ptr %i.r, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.s = load i8, ptr %3, align 1, !tbaa !218
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.b, label %skip_shebang.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !218
  %i.w = icmp eq i8 %i.v, 33
  br i1 %i.w, label %bb.c, label %skip_shebang.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !364
  %i.y = icmp samesign ugt i64 %4, 2
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i.backedge
  %i.z = phi ptr [ %.be, %.lr.ph.i.backedge ], [ %i.x, %bb.c ] ; 5 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !218  ; 2 uses
  switch i8 %i.aa, label %bb.d [
    i8 10, label %._crit_edge.i
    i8 13, label %._crit_edge.i
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc i32 @utf8_decode(ptr noundef nonnull %i.z, ptr noundef %i.a)
  %i.ad = and i32 %i.ac, -2
  %or.cond.i = icmp ne i32 %i.ad, 8232
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.h
  %or.cond10.i = select i1 %or.cond.i, i1 %i.af, i1 false
  br i1 %or.cond10.i, label %.lr.ph.i.backedge, label %._crit_edge.i

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !364
  %.old9.i = icmp ult ptr %i.ag, %i.h
  br i1 %.old9.i, label %.lr.ph.i.backedge, label %._crit_edge.i

.lr.ph.i.backedge:                                ; preds = %bb.f, %bb.e
  %.be = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ]
  br label %.lr.ph.i, !llvm.loop !1502

._crit_edge.i:                                    ; preds = %bb.f, %bb.e, %.lr.ph.i, %.lr.ph.i, %bb.c
  %i.ah = phi ptr [ %i.x, %bb.c ], [ %i.z, %.lr.ph.i ], [ %i.z, %.lr.ph.i ], [ %i.ae, %bb.e ], [ %i.ag, %bb.f ]
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !364
  br label %skip_shebang.exit

skip_shebang.exit:                                ; preds = %bb.a, %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.ai = and i32 %7, 3                           ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 2                    ; 3 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %skip_shebang.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !218 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = and i16 %i.av, 1
  %i.ax = zext nneg i16 %i.aw to i64
  br label %bb.k

bb.h:                                             ; preds = %skip_shebang.exit
  %i.ay = lshr i32 %7, 3
  %i.az = and i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = icmp eq i32 %i.ai, 1
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #52, !inline_history !385
  %i.bd = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %i.bc), !inline_history !385 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call fastcc ptr @js_new_module_def(ptr noundef %0, i32 noundef %i.bd) ; 2 uses
  %.not.not = icmp eq ptr %i.bf, null
  br i1 %.not.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.g
  %.0115 = phi ptr [ %i.an, %bb.g ], [ null, %bb.j ], [ null, %bb.h ]
  %.0114 = phi ptr [ %i.at, %bb.g ], [ null, %bb.j ], [ null, %bb.h ]
  %.0113 = phi ptr [ %i.ar, %bb.g ], [ null, %bb.j ], [ null, %bb.h ] ; 10 uses
  %.1112 = phi ptr [ null, %bb.g ], [ %i.bf, %bb.j ], [ null, %bb.h ] ; 10 uses
  %.1 = phi i64 [ %i.ax, %bb.g ], [ 1, %bb.j ], [ %i.ba, %bb.h ]
  %i.bg = tail call fastcc ptr @js_new_function_def(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %5, i32 noundef %6, i32 noundef 1) ; 14 uses
  %.not121 = icmp eq ptr %i.bg, null
  br i1 %.not121, label %bb.cd, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 27 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !554
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i32 %i.ai, ptr %i.bi, align 8, !tbaa !707
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 60 ; 9 uses
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = select i1 %i.aj, i64 0, i64 1024
  %i.bm = and i64 %i.bk, -132097
  %i.bn = shl i32 %7, 11
  %i.bo = and i32 %i.bn, 131072
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = or disjoint i64 %i.bl, %i.bp
  %i.br = or disjoint i64 %i.bq, %i.bm            ; 3 uses
  store i64 %i.br, ptr %i.bj, align 4
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.0113, i64 16 ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 8
  %i.bu = shl i16 %i.bt, 4
  %i.bv = and i16 %i.bu, 2048
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i64 %i.br, -2049
  %i.by = or disjoint i64 %i.bx, %i.bw            ; 2 uses
  store i64 %i.by, ptr %i.bj, align 4
  %11 = load i16, ptr %i.bs, align 8
  %12 = shl i16 %11, 4
  %13 = and i16 %12, 4096
  %i.bz = zext nneg i16 %13 to i64
  %i.ca = and i64 %i.by, -4097
  %i.cb = or disjoint i64 %i.ca, %i.bz            ; 2 uses
  store i64 %i.cb, ptr %i.bj, align 4
  %i.cc = load i16, ptr %i.bs, align 8
  %i.cd = shl i16 %i.cc, 4
  %i.ce = and i16 %i.cd, 8192
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = and i64 %i.cb, -8193
  %i.ch = or disjoint i64 %i.cg, %i.cf            ; 2 uses
  store i64 %i.ch, ptr %i.bj, align 4
  %i.ci = load i16, ptr %i.bs, align 8
  %i.cj = shl i16 %i.ci, 4
  %i.ck = and i16 %i.cj, 16384
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = and i64 %i.ch, -16385
  %i.cn = or disjoint i64 %i.cm, %i.cl
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.co = and i64 %i.br, -30721
  %i.cp = or disjoint i64 %i.co, 16384
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i64 [ %i.cp, %bb.n ], [ %i.cn, %bb.m ]
  %i.cq = shl nuw nsw i64 %.1, 39
  %i.cr = and i64 %storemerge, -549755813889
  %i.cs = or i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.bj, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  store i32 84, ptr %i.ct, align 4, !tbaa !708
  %.not123 = icmp eq ptr %.0113, null
  br i1 %.not123, label %add_closure_variables.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.0113, i64 56 ; 6 uses
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !428
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.0113, i64 58 ; 5 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = zext i16 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %.0113, i64 66 ; 3 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !431
  %i.dd = zext i16 %i.dc to i32
  %i.de = add nuw nsw i32 %i.da, %i.dd            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 392 ; 8 uses
  store ptr null, ptr %i.df, align 8, !tbaa !709
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 384 ; 11 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !710
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 388
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !1510
  %i.di = icmp eq i32 %i.de, 0
  br i1 %i.di, label %add_closure_variables.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = shl nuw nsw i32 %i.de, 3
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !232 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !196
  %i.dq = add i64 %i.dp, %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !197
  %i.dt = add i64 %i.ds, -1
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %bb.w, label %bb.r, !prof !192

bb.r:                                             ; preds = %bb.q
  %i.dv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.dm, i64 noundef %i.dk), !inline_history !237 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.s

._crit_edge.i.i:                                  ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %i.dl, align 8, !tbaa !232
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dw = load i64, ptr %i.dn, align 8, !tbaa !217
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !217
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 3 uses
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !218
  %i.ea = icmp eq i16 %i.dz, -1
  br i1 %i.ea, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 1064
  %i.ec = icmp eq ptr %i.dy, %i.eb
  br i1 %i.ec, label %js_malloc.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !219
  %i.ef = tail call i64 %i.ee(ptr noundef nonnull %i.dy) #49, !inline_history !1503 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ef, 0
  %i.eg = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ef
  br label %js_malloc.exit.i

bb.v:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds i8, ptr %i.dv, i64 -6
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !218
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !221
  %i.em = zext i16 %i.el to i64
  br label %js_malloc.exit.i

bb.w:                                             ; preds = %._crit_edge.i.i, %bb.q
  %i.en = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.dm, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1256 ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !233, !range !234, !noundef !235
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %add_closure_variables.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.eo, align 8, !tbaa !233
  %i.er = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.eo, align 8, !tbaa !233
  br label %add_closure_variables.exit

js_malloc.exit.i:                                 ; preds = %bb.v, %bb.u, %bb.t
  %.011.i.i.i.i = phi i64 [ 8, %bb.t ], [ %i.eg, %bb.u ], [ %i.em, %bb.v ]
  %i.es = load i64, ptr %i.do, align 8, !tbaa !196
  %i.et = add i64 %i.es, %.011.i.i.i.i
  store i64 %i.et, ptr %i.do, align 8, !tbaa !196
  store ptr %i.dv, ptr %i.df, align 8, !tbaa !709
  %i.eu = icmp sgt i32 %8, -1
  br i1 %i.eu, label %.lr.ph.i133, label %._crit_edge.i132

.lr.ph.i133:                                      ; preds = %js_malloc.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.0113, i64 40
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i133
  %.090102.i = phi i32 [ %8, %.lr.ph.i133 ], [ %i.gu, %bb.ab ] ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !427
  %i.ex = load i16, ptr %i.cu, align 8, !tbaa !428
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nuw nsw i32 %.090102.i, %i.ey
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !711
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !709
  %i.fg = load i32, ptr %i.dg, align 8, !tbaa !710 ; 2 uses
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.dg, align 8, !tbaa !710
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fi ; 7 uses
  %i.fk = load i16, ptr %i.fj, align 4            ; 2 uses
  %i.fl = and i16 %i.fk, -8
  store i16 %i.fl, ptr %i.fj, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 12 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = shl i8 %i.fn, 4
  %i.fp = and i8 %i.fo, 16
  %i.fq = zext nneg i8 %i.fp to i16
  %i.fr = and i16 %i.fk, -24
  %i.fs = or disjoint i16 %i.fr, %i.fq            ; 2 uses
  store i16 %i.fs, ptr %i.fj, align 4
  %i.ft = load i8, ptr %i.fm, align 4
  %i.fu = shl i8 %i.ft, 2
  %i.fv = and i8 %i.fu, 8
  %i.fw = zext nneg i8 %i.fv to i16
  %i.fx = and i16 %i.fs, -16
  %i.fy = or disjoint i16 %i.fx, %i.fw            ; 2 uses
  store i16 %i.fy, ptr %i.fj, align 4
  %i.fz = load i8, ptr %i.fm, align 4
  %i.ga = lshr i8 %i.fz, 4
  %i.gb = zext nneg i8 %i.ga to i16
  %i.gc = shl nuw nsw i16 %i.gb, 8
  %i.gd = and i16 %i.fy, -3848
  %i.ge = or disjoint i16 %i.gd, %i.gc
  store i16 %i.ge, ptr %i.fj, align 4
  %i.gf = trunc i32 %.090102.i to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !712
  %i.gh = load i32, ptr %i.fb, align 4, !tbaa !547 ; 3 uses
  %i.gi = icmp slt i32 %i.gh, 242
  br i1 %i.gi, label %set_closure_from_var.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = load ptr, ptr %i.dl, align 8, !tbaa !232
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !297
  %i.gm = zext nneg i32 %i.gh to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !299
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !191
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !191
  br label %set_closure_from_var.exit.i

set_closure_from_var.exit.i:                      ; preds = %bb.aa, %bb.z
end_hunk_3
begin_hunk_4_@js_eq_slow:bb.a
  br i1 %i.dg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !232
  %i.dj = trunc i64 %i.cn to i32
  %i.dk = icmp ugt i32 %i.dj, -10
  br i1 %i.dk, label %bb.af, label %JS_FreeValueRT.exit232

bb.af:                                            ; preds = %bb.ae
  %i.dl = inttoptr i64 %i.cm to ptr
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !191 ; 2 uses
  %i.do = add nsw i32 %i.dn, -1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !191
  %i.dp = icmp slt i32 %i.dn, 2
  br i1 %i.dp, label %bb.ag, label %JS_FreeValueRT.exit232

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @js_free_value_rt(ptr noundef %i.di, i64 %i.cm, i64 %i.cn), !inline_history !370
  br label %JS_FreeValueRT.exit232

bb.ah:                                            ; preds = %bb.t, %bb.t, %bb.ad, %bb.s
  %.sroa.26.2 = phi i64 [ %i.bp, %bb.t ], [ %.sroa.26.0.ph.fr, %bb.s ], [ %i.dd, %bb.ad ], [ %i.bp, %bb.t ] ; 3 uses
  %.sroa.096.2 = phi double [ %i.bq, %bb.t ], [ %.sroa.096.0.ph, %bb.s ], [ %i.de, %bb.ad ], [ %i.bq, %bb.t ]
  %.sroa.26155.3 = phi i64 [ %.sroa.26155.1, %bb.t ], [ %.sroa.26155.1, %bb.s ], [ %i.cn, %bb.ad ], [ %.sroa.26155.1, %bb.t ] ; 3 uses
  %.sroa.0136.3 = phi double [ %.sroa.0136.1, %bb.t ], [ %.sroa.0136.1, %bb.s ], [ %i.cz, %bb.ad ], [ %.sroa.0136.1, %bb.t ]
  %i.dq = bitcast double %.sroa.0136.3 to i64     ; 3 uses
  %i.dr = bitcast double %.sroa.096.2 to i64      ; 3 uses
  %i.ds = tail call fastcc zeroext i1 @js_strict_eq2(i64 %i.dq, i64 %.sroa.26155.3, i64 %i.dr, i64 %.sroa.26.2, i32 noundef 0)
  %i.dt = zext i1 %i.ds to i32                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !232 ; 3 uses
  %i.dw = trunc i64 %.sroa.26155.3 to i32
  %i.dx = icmp ugt i32 %i.dw, -10
  br i1 %i.dx, label %bb.ai, label %JS_FreeValueRT.exit234

bb.ai:                                            ; preds = %bb.ah
  %i.dy = inttoptr i64 %i.dq to ptr
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !191 ; 2 uses
  %i.eb = add nsw i32 %i.ea, -1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !191
  %i.ec = icmp slt i32 %i.ea, 2
  br i1 %i.ec, label %bb.aj, label %JS_FreeValueRT.exit234

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dv, i64 %i.dq, i64 %.sroa.26155.3), !inline_history !370
  %.pre = load ptr, ptr %i.du, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit234

JS_FreeValueRT.exit234:                           ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ed = phi ptr [ %i.dv, %bb.ah ], [ %i.dv, %bb.ai ], [ %.pre, %bb.aj ]
  %i.ee = trunc i64 %.sroa.26.2 to i32
  %i.ef = icmp ugt i32 %i.ee, -10
  br i1 %i.ef, label %bb.ak, label %JS_FreeValueRT.exit229

bb.ak:                                            ; preds = %JS_FreeValueRT.exit234
  %i.eg = inttoptr i64 %i.dr to ptr
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !191
  %i.ek = icmp slt i32 %i.ei, 2
  br i1 %i.ek, label %bb.al, label %JS_FreeValueRT.exit229

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ed, i64 %i.dr, i64 %.sroa.26.2), !inline_history !370
  br label %JS_FreeValueRT.exit229

.split308.us:                                     ; preds = %bb.f, %bb.e, %tag_is_number.exit216.us368.us.peel
  %.us-phi309 = phi i64 [ %.sroa.26155.0.ph, %tag_is_number.exit216.us368.us.peel ], [ %.sroa.26155.0.ph, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %.us-phi310 = phi double [ %.sroa.0136.0.ph, %tag_is_number.exit216.us368.us.peel ], [ %.sroa.0136.0.ph, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %.us-phi311 = phi i32 [ %i.f, %tag_is_number.exit216.us368.us.peel ], [ %i.f, %bb.e ], [ 0, %bb.f ]
  %i.el = icmp eq i32 %i.c, 1
  br i1 %i.el, label %bb.am, label %.split308.us.thread

bb.am:                                            ; preds = %.split308.us
  %i.em = bitcast double %.sroa.096.0.ph to i64
  %.sroa.0.0.insert.ext.i218 = and i64 %i.em, 4294967295
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.am, %bb.at
  %.sroa.26.0.ph.be = phi i64 [ %i.fn, %bb.at ], [ 0, %bb.am ]
  %.sroa.096.0.ph.be.in = phi i64 [ %i.fm, %bb.at ], [ %.sroa.0.0.insert.ext.i218, %bb.am ]
  %.sroa.26155.0.ph.be = phi i64 [ %i.ew, %bb.at ], [ %.us-phi309, %bb.am ]
  %.sroa.0136.0.ph.be = phi double [ %i.fj, %bb.at ], [ %.us-phi310, %bb.am ]
  %.sroa.096.0.ph.be = bitcast i64 %.sroa.096.0.ph.be.in to double
  br label %.outer

.thread1060:                                      ; preds = %.outer.split.split.us.split.preheader, %.outer.split.split.split.us.preheader
  %i.en = bitcast double %.sroa.0136.0.ph to i64
  %.sroa.0.0.insert.ext.i.us410.peel = and i64 %i.en, 4294967295
  br label %JS_IsHTMLDDA.exit.thread

.split308.us.thread:                              ; preds = %.outer.split.split.split.us.preheader, %.outer.split.split.us.split.preheader, %tag_is_number.exit216.us.us.us.peel, %.split308.us
  %.us-phi3111045 = phi i32 [ %.us-phi311, %.split308.us ], [ %i.f, %.outer.split.split.us.split.preheader ], [ %i.f, %.outer.split.split.split.us.preheader ], [ %i.f, %tag_is_number.exit216.us.us.us.peel ] ; 2 uses
  %.us-phi3101044 = phi double [ %.us-phi310, %.split308.us ], [ %.sroa.0136.0.ph, %.outer.split.split.us.split.preheader ], [ %.sroa.0136.0.ph, %.outer.split.split.split.us.preheader ], [ %.sroa.0136.0.ph, %tag_is_number.exit216.us.us.us.peel ] ; 2 uses
  %.us-phi3091043 = phi i64 [ %.us-phi309, %.split308.us ], [ %.sroa.26155.0.ph, %.outer.split.split.us.split.preheader ], [ %.sroa.26155.0.ph, %.outer.split.split.split.us.preheader ], [ %.sroa.26155.0.ph, %tag_is_number.exit216.us.us.us.peel ] ; 5 uses
  %i.eo = icmp eq i32 %.us-phi3111045, -1
  br i1 %i.eo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.split308.us.thread
  switch i32 %i.c, label %tag_is_number.exit221 [
    i32 -9, label %tag_is_number.exit221.thread
    i32 8, label %tag_is_number.exit221.thread
    i32 0, label %tag_is_number.exit221.thread
    i32 7, label %tag_is_number.exit221.thread
  ]

tag_is_number.exit221:                            ; preds = %bb.an
  %i.ep = add i32 %i.c, 8
  %i.eq = icmp ult i32 %i.ep, 3
  br i1 %i.eq, label %tag_is_number.exit221.thread, label %bb.ao

bb.ao:                                            ; preds = %tag_is_number.exit221, %.split308.us.thread
  %.us-phi31110451049 = phi i32 [ %.us-phi3111045, %.split308.us.thread ], [ -1, %tag_is_number.exit221 ] ; 5 uses
  %i.er = icmp eq i32 %i.c, -1
  br i1 %i.er, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  switch i32 %.us-phi31110451049, label %tag_is_number.exit222 [
    i32 -9, label %tag_is_number.exit221.thread
    i32 8, label %tag_is_number.exit221.thread
    i32 0, label %tag_is_number.exit221.thread
    i32 7, label %tag_is_number.exit221.thread
  ]

tag_is_number.exit222:                            ; preds = %bb.ap
  %i.es = add i32 %.us-phi31110451049, 8
  %i.et = icmp ult i32 %i.es, 3
  br i1 %i.et, label %tag_is_number.exit221.thread, label %bb.ax

tag_is_number.exit221.thread:                     ; preds = %tag_is_number.exit222, %tag_is_number.exit221, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.an, %bb.an, %bb.an, %bb.an
  %i.eu = bitcast double %.us-phi3101044 to i64
  %i.ev = tail call fastcc { i64, i64 } @JS_ToPrimitiveFree(ptr noundef %0, i64 %i.eu, i64 %.us-phi3091043, i32 noundef 2) ; 2 uses
  %i.ew = extractvalue { i64, i64 } %i.ev, 1      ; 4 uses
  %i.ex = and i64 %i.ew, 4294967295
  %i.ey = icmp eq i64 %i.ex, 6
  br i1 %i.ey, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %tag_is_number.exit221.thread
  %i.ez = bitcast double %.sroa.096.0.ph to i64   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !232
  %i.fc = icmp ugt i32 %i.c, -10
  br i1 %i.fc, label %bb.ar, label %JS_FreeValueRT.exit232

bb.ar:                                            ; preds = %bb.aq
  %i.fd = inttoptr i64 %i.ez to ptr
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !191 ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !191
  %i.fh = icmp slt i32 %i.ff, 2
  br i1 %i.fh, label %bb.as, label %JS_FreeValueRT.exit232

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fb, i64 %i.ez, i64 %.sroa.26.0.ph.fr), !inline_history !370
  br label %JS_FreeValueRT.exit232

bb.at:                                            ; preds = %tag_is_number.exit221.thread
  %i.fi = extractvalue { i64, i64 } %i.ev, 0      ; 3 uses
  %i.fj = bitcast i64 %i.fi to double
  %i.fk = bitcast double %.sroa.096.0.ph to i64
  %i.fl = tail call fastcc { i64, i64 } @JS_ToPrimitiveFree(ptr noundef %0, i64 %i.fk, i64 %.sroa.26.0.ph.fr, i32 noundef 2) ; 2 uses
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = extractvalue { i64, i64 } %i.fl, 1      ; 2 uses
  %i.fo = and i64 %i.fn, 4294967295
  %i.fp = icmp eq i64 %i.fo, 6
  br i1 %i.fp, label %bb.au, label %.outer.backedge

bb.au:                                            ; preds = %bb.at
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !232
  %i.fs = trunc i64 %i.ew to i32
  %i.ft = icmp ugt i32 %i.fs, -10
  br i1 %i.ft, label %bb.av, label %JS_FreeValueRT.exit232

bb.av:                                            ; preds = %bb.au
  %i.fu = inttoptr i64 %i.fi to ptr
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !191 ; 2 uses
  %i.fx = add nsw i32 %i.fw, -1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !191
  %i.fy = icmp slt i32 %i.fw, 2
  br i1 %i.fy, label %bb.aw, label %JS_FreeValueRT.exit232

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fr, i64 %i.fi, i64 %i.ew), !inline_history !370
  br label %JS_FreeValueRT.exit232

bb.ax:                                            ; preds = %tag_is_number.exit222, %bb.ao
  %i.fz = bitcast double %.us-phi3101044 to i64   ; 4 uses
  %i.ga = and i64 %.us-phi3091043, 4294967295
  %.not.i = icmp eq i64 %i.ga, 4294967295
  br i1 %.not.i, label %JS_IsHTMLDDA.exit, label %JS_IsHTMLDDA.exit.thread

JS_IsHTMLDDA.exit:                                ; preds = %bb.ax
  %i.gb = inttoptr i64 %i.fz to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %3 = load i16, ptr %i.gc, align 8
  %4 = and i16 %3, 256
  %5 = icmp ne i16 %4, 0
  %i.gd = and i32 %i.c, -2
  %or.cond29 = icmp eq i32 %i.gd, 2
  %or.cond213 = and i1 %5, %or.cond29
  br i1 %or.cond213, label %bb.az, label %JS_IsHTMLDDA.exit.thread

JS_IsHTMLDDA.exit.thread:                         ; preds = %.thread1060, %bb.ax, %JS_IsHTMLDDA.exit
  %i.ge = phi i64 [ %.sroa.0.0.insert.ext.i.us410.peel, %.thread1060 ], [ %i.fz, %bb.ax ], [ %i.fz, %JS_IsHTMLDDA.exit ]
  %.us-phi3091043105310571069 = phi i64 [ 0, %.thread1060 ], [ %.us-phi3091043, %bb.ax ], [ %.us-phi3091043, %JS_IsHTMLDDA.exit ]
  %.us-phi3111045104910591067 = phi i32 [ 0, %.thread1060 ], [ %.us-phi31110451049, %bb.ax ], [ %.us-phi31110451049, %JS_IsHTMLDDA.exit ] ; 2 uses
  %i.gf = and i64 %.sroa.26.0.ph.fr, 4294967295
  %.not.i223 = icmp eq i64 %i.gf, 4294967295
  br i1 %.not.i223, label %bb.ay, label %JS_IsHTMLDDA.exit225

bb.ay:                                            ; preds = %JS_IsHTMLDDA.exit.thread
  %i.gg = bitcast double %.sroa.096.0.ph to i64
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %6 = load i16, ptr %i.gi, align 8
  %7 = and i16 %6, 256
  %8 = icmp ne i16 %7, 0
  br label %JS_IsHTMLDDA.exit225

JS_IsHTMLDDA.exit225:                             ; preds = %JS_IsHTMLDDA.exit.thread, %bb.ay
  %.0.i224 = phi i1 [ %8, %bb.ay ], [ false, %JS_IsHTMLDDA.exit.thread ]
  %i.gj = and i32 %.us-phi3111045104910591067, -2
  %or.cond31 = icmp eq i32 %i.gj, 2
  %or.cond214 = and i1 %or.cond31, %.0.i224
  %spec.select = zext i1 %or.cond214 to i32
  br label %bb.az

bb.az:                                            ; preds = %JS_IsHTMLDDA.exit225, %JS_IsHTMLDDA.exit
  %i.gk = phi i64 [ %i.fz, %JS_IsHTMLDDA.exit ], [ %i.ge, %JS_IsHTMLDDA.exit225 ] ; 2 uses
  %.us-phi3091043105310571068 = phi i64 [ %.us-phi3091043, %JS_IsHTMLDDA.exit ], [ %.us-phi3091043105310571069, %JS_IsHTMLDDA.exit225 ]
  %.us-phi3111045104910591066 = phi i32 [ %.us-phi31110451049, %JS_IsHTMLDDA.exit ], [ %.us-phi3111045104910591067, %JS_IsHTMLDDA.exit225 ]
  %.0207 = phi i32 [ 1, %JS_IsHTMLDDA.exit ], [ %spec.select, %JS_IsHTMLDDA.exit225 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !232 ; 3 uses
  %i.gn = icmp ugt i32 %.us-phi3111045104910591066, -10
  br i1 %i.gn, label %bb.ba, label %JS_FreeValueRT.exit238

bb.ba:                                            ; preds = %bb.az
  %i.go = inttoptr i64 %i.gk to ptr
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !191 ; 2 uses
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !191
  %i.gs = icmp slt i32 %i.gq, 2
  br i1 %i.gs, label %bb.bb, label %JS_FreeValueRT.exit238

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gm, i64 %i.gk, i64 %.us-phi3091043105310571068), !inline_history !370
  %.pre1027 = load ptr, ptr %i.gl, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit238

JS_FreeValueRT.exit238:                           ; preds = %bb.az, %bb.ba, %bb.bb
  %i.gt = phi ptr [ %i.gm, %bb.az ], [ %i.gm, %bb.ba ], [ %.pre1027, %bb.bb ]
  %i.gu = bitcast double %.sroa.096.0.ph to i64   ; 2 uses
  %i.gv = icmp ugt i32 %i.c, -10
  br i1 %i.gv, label %bb.bc, label %JS_FreeValueRT.exit229

bb.bc:                                            ; preds = %JS_FreeValueRT.exit238
  %i.gw = inttoptr i64 %i.gu to ptr
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !191 ; 2 uses
  %i.gz = add nsw i32 %i.gy, -1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !191
  %i.ha = icmp slt i32 %i.gy, 2
  br i1 %i.ha, label %bb.bd, label %JS_FreeValueRT.exit229

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gt, i64 %i.gu, i64 %.sroa.26.0.ph.fr), !inline_history !370
  br label %JS_FreeValueRT.exit229

JS_FreeValueRT.exit229:                           ; preds = %.outer.split.split.us.split.preheader, %.outer.split.split.split.us.preheader, %.split293.us, %bb.bd, %bb.bc, %JS_FreeValueRT.exit238, %bb.al, %bb.ak, %JS_FreeValueRT.exit234, %bb.y, %bb.x, %JS_FreeValueRT.exit230, %bb.p, %bb.o, %bb.l, %bb.k, %bb.g
  %.1 = phi i32 [ %i.t, %bb.g ], [ %i.ac, %bb.k ], [ %i.af, %bb.l ], [ %.0207, %bb.bc ], [ %i.dt, %bb.al ], [ %i.aj, %bb.p ], [ 0, %bb.y ], [ %.0207, %bb.bd ], [ %i.aj, %.split293.us ], [ %i.aj, %bb.o ], [ 0, %JS_FreeValueRT.exit230 ], [ 0, %bb.x ], [ %i.dt, %JS_FreeValueRT.exit234 ], [ %i.dt, %bb.ak ], [ %.0207, %JS_FreeValueRT.exit238 ], [ 1, %.outer.split.split.split.us.preheader ], [ 1, %.outer.split.split.us.split.preheader ]
  %i.hb = zext i1 %2 to i32
  %i.hc = icmp ne i32 %.1, %i.hb
  %.sroa.0.0.insert.ext.i226 = zext i1 %i.hc to i64
  store i64 %.sroa.0.0.insert.ext.i226, ptr %i.a, align 8, !tbaa !218
  store i64 1, ptr %.sroa.26155.0..sroa_idx, align 8, !tbaa !240
  br label %bb.be

JS_FreeValueRT.exit232:                           ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa
  store i32 0, ptr %i.a, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -28
  store i32 0, ptr %.sroa.233.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.26155.0..sroa_idx, align 8, !tbaa !240
  store i32 0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -12
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !240
  br label %bb.be

bb.be:                                            ; preds = %JS_FreeValueRT.exit232, %JS_FreeValueRT.exit229
  %.0 = phi i32 [ 0, %JS_FreeValueRT.exit229 ], [ -1, %JS_FreeValueRT.exit232 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @JS_IsStrictEqual(ptr nofree noundef readnone captures(none) %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @js_strict_eq2(i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc zeroext i1 @js_strict_eq2(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #13 {
bb.a:
  %5 = alloca %struct.JSBigIntBuf, align 4        ; 5 uses
  %6 = alloca %struct.JSBigIntBuf, align 4        ; 5 uses
  %i.a = trunc i64 %1 to i32                      ; 4 uses
  %i.b = trunc i64 %3 to i32                      ; 10 uses
  switch i32 %i.a, label %js_string_eq.exit [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 -7, label %bb.e
    i32 -6, label %bb.e
    i32 -8, label %bb.j
    i32 -1, label %bb.k
    i32 0, label %bb.l
    i32 8, label %bb.o
    i32 7, label %bb.y
    i32 -9, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %.not78 = icmp eq i32 %i.b, 1
  br i1 %.not78, label %bb.c, label %js_string_eq.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.054.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.039.0.extract.trunc = trunc i64 %2 to i32
  %i.c = icmp eq i32 %.sroa.054.0.extract.trunc, %.sroa.039.0.extract.trunc
  br label %js_string_eq.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.d = icmp eq i32 %i.a, %i.b
  br label %js_string_eq.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.e = add i32 %i.b, 7
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %bb.f, label %js_string_eq.exit

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq i32 %i.a, -7
  %i.h = icmp eq i32 %i.b, -7
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.i = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.j = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.i, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 2147483647                 ; 2 uses
  %i.n = load i64, ptr %i.j, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 2147483647
  %.not.i = icmp eq i32 %i.m, %i.p
  br i1 %.not.i, label %bb.h, label %js_string_eq.exit

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i32 noundef %i.m)
  %i.r = icmp eq i32 %i.q, 0
  br label %js_string_eq.exit

bb.i:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @js_string_rope_compare(i64 %0, i64 %1, i64 %2, i64 %3, i1 noundef zeroext true)
  %i.t = icmp eq i32 %i.s, 0
  br label %js_string_eq.exit

bb.j:                                             ; preds = %bb.a
  %.not77 = icmp eq i32 %i.b, -8
  %i.u = icmp eq i64 %0, %2
  %.069 = select i1 %.not77, i1 %i.u, i1 false
  br label %js_string_eq.exit

bb.k:                                             ; preds = %bb.a
  %.not76 = icmp eq i32 %i.b, -1
  %i.v = icmp eq i64 %0, %2
  %spec.select = select i1 %.not76, i1 %i.v, i1 false
  br label %js_string_eq.exit

bb.l:                                             ; preds = %bb.a
  %.sroa.054.0.extract.trunc60 = trunc i64 %0 to i32
  %i.w = sitofp i32 %.sroa.054.0.extract.trunc60 to double ; 2 uses
  switch i32 %i.b, label %js_string_eq.exit [
    i32 0, label %bb.m
    i32 8, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %.sroa.039.0.extract.trunc46 = trunc i64 %2 to i32
  %i.x = sitofp i32 %.sroa.039.0.extract.trunc46 to double
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.y = bitcast i64 %2 to double
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.z = bitcast i64 %0 to double                 ; 2 uses
  switch i32 %i.b, label %js_string_eq.exit [
    i32 8, label %bb.p
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.aa = bitcast i64 %2 to double
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.sroa.039.0.extract.trunc48 = trunc i64 %2 to i32
  %i.ab = sitofp i32 %.sroa.039.0.extract.trunc48 to double
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.m
  %.068 = phi double [ %i.w, %bb.m ], [ %i.w, %bb.n ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 5 uses
  %.067 = phi double [ %i.x, %bb.m ], [ %i.y, %bb.n ], [ %i.aa, %bb.p ], [ %i.ab, %bb.q ]
  %.067.fr = freeze double %.067                  ; 5 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.x, label %bb.s, !prof !325
end_hunk_4
begin_hunk_5_@JS_WriteString:bb.a
  %i.v = load i64, ptr %i.u, align 8, !tbaa !466  ; 3 uses
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f, !prof !192

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.d, i8 noundef zeroext %i.r)
  br label %bc_put_leb128.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.y = add i64 %i.v, 1
  store i64 %i.y, ptr %i.u, align 8, !tbaa !466
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.r, ptr %i.z, align 1, !tbaa !218
  br label %bc_put_leb128.exit

bc_put_leb128.exit:                               ; preds = %bb.e, %bb.f
  %i.aa = load i64, ptr %1, align 8               ; 5 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bc_put_leb128.exit
  %i.ac = and i64 %i.aa, 2147483647
  %.not15 = icmp eq i64 %i.ac, 0
  br i1 %.not15, label %dbuf_put.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bc_put_u16.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bc_put_u16.exit ] ; 2 uses
  %i.af = phi i64 [ %i.aa, %.lr.ph ], [ %i.ba, %bc_put_u16.exit ]
  %i.ag = lshr i64 %i.af, 60
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  switch i32 %i.ai, label %.unreachabledefault [
    i32 0, label %str16.exit
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !389
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !390
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  br label %str16.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !239
  br label %str16.exit

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.j:                                             ; preds = %bb.g
  tail call void @abort() #50
  unreachable

str16.exit:                                       ; preds = %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.an, %bb.h ], [ %i.ad, %bb.g ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %indvars.iv
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !221 ; 2 uses
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !465
  %i.as = load i64, ptr %i.u, align 8, !tbaa !466 ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.k, label %bb.l, !prof !192

bb.k:                                             ; preds = %str16.exit
  %i.av = tail call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %i.d, i16 noundef zeroext %i.aq) ; 0 uses
  br label %bc_put_u16.exit

bb.l:                                             ; preds = %str16.exit
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  store i16 %i.aq, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.u, align 8, !tbaa !466
  %i.az = add i64 %i.ay, 2
  store i64 %i.az, ptr %i.u, align 8, !tbaa !466
  br label %bc_put_u16.exit

bc_put_u16.exit:                                  ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i64, ptr %1, align 8               ; 2 uses
  %i.bb = and i64 %i.ba, 2147483647
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.g, label %dbuf_put.exit, !llvm.loop !1839

bb.m:                                             ; preds = %bc_put_leb128.exit
  %i.bd = lshr i64 %i.aa, 60
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 3
  switch i32 %i.bf, label %default.unreachable [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !389
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !390
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  br label %str8.exit

bb.p:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !239
  br label %str8.exit

bb.q:                                             ; preds = %bb.m
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.n, %bb.o, %bb.p
  %.0.i.i12 = phi ptr [ %i.bg, %bb.n ], [ %i.bn, %bb.o ], [ %i.bp, %bb.p ]
  %i.bq = and i64 %i.aa, 2147483647               ; 6 uses
  %i.br = load i64, ptr %i.u, align 8, !tbaa !466 ; 2 uses
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !465
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.r, label %bb.s, !prof !192

bb.r:                                             ; preds = %str8.exit
  %i.bv = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.d, i64 noundef range(i64 -2147483648, 2147483648) %i.bq)
  %.not.i = icmp ne i32 %i.bv, 0
  %.not13.i = icmp eq i64 %i.bq, 0
  %or.cond = or i1 %.not13.i, %.not.i
  br i1 %or.cond, label %dbuf_put.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i64, ptr %i.u, align 8, !tbaa !466
  br label %bb.t

bb.s:                                             ; preds = %str8.exit
  %.not13.i.old = icmp eq i64 %i.bq, 0
  br i1 %.not13.i.old, label %dbuf_put.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.bw = phi i64 [ %.pre, %._crit_edge ], [ %i.br, %bb.s ]
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !467
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr readonly align 1 %.0.i.i12, i64 range(i64 -2147483648, 2147483648) %i.bq, i1 false)
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !466
  %i.ca = add i64 %i.bz, %i.bq
  store i64 %i.ca, ptr %i.u, align 8, !tbaa !466
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bc_put_u16.exit, %.preheader, %bb.t, %bb.s, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_WriteFunctionTag(ptr noundef nonnull %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = inttoptr i64 %1 to ptr                   ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 113 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 53 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !465
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 134 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !466  ; 3 uses
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext 12)
  br label %bc_put_u8.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.n = add i64 %i.k, 1
  store i64 %i.n, ptr %i.j, align 8, !tbaa !466
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 12, ptr %i.o, align 1, !tbaa !218
  br label %bc_put_u8.exit

bc_put_u8.exit:                                   ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = lshr i16 %i.q, 1
  %i.s = and i16 %i.r, 2047
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !603, !range !234, !noundef !235
  %i.v = zext nneg i8 %i.u to i16
  %i.w = shl nuw nsw i16 %i.v, 11
  %i.x = or disjoint i16 %i.s, %i.w               ; 2 uses
  %i.y = load i64, ptr %i.h, align 8, !tbaa !465
  %i.z = load i64, ptr %i.j, align 8, !tbaa !466  ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !192

bb.d:                                             ; preds = %bc_put_u8.exit
  %i.ac = tail call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %i.g, i16 noundef zeroext %i.x) ; 0 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !466
  br label %bc_put_u16.exit

bb.e:                                             ; preds = %bc_put_u8.exit
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z
  store i16 %i.x, ptr %i.ae, align 1
  %i.af = load i64, ptr %i.j, align 8, !tbaa !466
  %i.ag = add i64 %i.af, 2                        ; 2 uses
  store i64 %i.ag, ptr %i.j, align 8, !tbaa !466
  br label %bc_put_u16.exit

bc_put_u16.exit:                                  ; preds = %bb.d, %bb.e
  %i.ah = phi i64 [ %.pre, %bb.d ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ai = load i16, ptr %i.p, align 8
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, 1                         ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !465
  %i.am = icmp eq i64 %i.al, %i.ah
  br i1 %i.am, label %bb.f, label %bb.g, !prof !192

bb.f:                                             ; preds = %bc_put_u16.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.ak)
  br label %bc_put_u8.exit105

bb.g:                                             ; preds = %bc_put_u16.exit
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.ao = add i64 %i.ah, 1
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !466
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah
  store i8 %i.ak, ptr %i.ap, align 1, !tbaa !218
  br label %bc_put_u8.exit105

bc_put_u8.exit105:                                ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !670 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bc_put_u8.exit105
  %i.at = shl i32 %i.ar, 1
  %i.au = or disjoint i32 %i.at, 1
  br label %bb.k

bb.i:                                             ; preds = %bc_put_u8.exit105
  %i.av = call fastcc i32 @bc_atom_to_idx(ptr noundef nonnull %0, ptr noundef %i.e, i32 noundef %i.ar)
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.j, label %bc_put_atom.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !191
  %i.ax = shl i32 %i.aw, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %storemerge.i = phi i32 [ %i.ax, %bb.j ], [ %i.au, %bb.h ] ; 3 uses
  %i.ay = lshr i32 %storemerge.i, 7               ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not9.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %dbuf_putc.exit.i.i.i
  %i.az = phi i32 [ %i.bi, %dbuf_putc.exit.i.i.i ], [ %i.ay, %bb.k ] ; 3 uses
  %.010.i.i.i = phi i32 [ %i.az, %dbuf_putc.exit.i.i.i ], [ %storemerge.i, %bb.k ]
  %i.ba = trunc i32 %.010.i.i.i to i8
  %i.bb = or i8 %i.ba, -128                       ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !465
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !466 ; 3 uses
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m, !prof !192

bb.l:                                             ; preds = %.lr.ph.i.i.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.bb)
  br label %dbuf_putc.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.bg = add i64 %i.bd, 1
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !466
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 %i.bb, ptr %i.bh, align 1, !tbaa !218
  br label %dbuf_putc.exit.i.i.i

dbuf_putc.exit.i.i.i:                             ; preds = %bb.m, %bb.l
  %i.bi = lshr i32 %i.az, 7                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dbuf_putc.exit.i.i.i, %bb.k
  %.0.lcssa.i.i.i = phi i32 [ %storemerge.i, %bb.k ], [ %i.az, %dbuf_putc.exit.i.i.i ]
  %i.bj = trunc nuw i32 %.0.lcssa.i.i.i to i8     ; 2 uses
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !465
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !466 ; 3 uses
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !192

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.bj)
  br label %bc_put_atom.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.bo = add i64 %i.bl, 1
  store i64 %i.bo, ptr %i.j, align 8, !tbaa !466
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bj, ptr %i.bp, align 1, !tbaa !218
  br label %bc_put_atom.exit

bc_put_atom.exit:                                 ; preds = %bb.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 4 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !428
  %i.bs = zext i16 %i.br to i32                   ; 3 uses
  %i.bt = lshr i32 %i.bs, 7                       ; 2 uses
  %.not9.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bc_put_atom.exit, %dbuf_putc.exit.i.i
  %i.bu = phi i32 [ %i.cd, %dbuf_putc.exit.i.i ], [ %i.bt, %bc_put_atom.exit ] ; 3 uses
  %.010.i.i = phi i32 [ %i.bu, %dbuf_putc.exit.i.i ], [ %i.bs, %bc_put_atom.exit ]
  %i.bv = trunc i32 %.010.i.i to i8
  %i.bw = or i8 %i.bv, -128                       ; 2 uses
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !465
  %i.by = load i64, ptr %i.j, align 8, !tbaa !466 ; 3 uses
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q, !prof !192

bb.p:                                             ; preds = %.lr.ph.i.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.bw)
  br label %dbuf_putc.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.cb = add i64 %i.by, 1
  store i64 %i.cb, ptr %i.j, align 8, !tbaa !466
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 %i.bw, ptr %i.cc, align 1, !tbaa !218
  br label %dbuf_putc.exit.i.i

dbuf_putc.exit.i.i:                               ; preds = %bb.q, %bb.p
  %i.cd = lshr i32 %i.bu, 7                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %dbuf_putc.exit.i.i, %bc_put_atom.exit
  %.0.lcssa.i.i = phi i32 [ %i.bs, %bc_put_atom.exit ], [ %i.bu, %dbuf_putc.exit.i.i ]
  %i.ce = trunc nuw i32 %.0.lcssa.i.i to i8       ; 2 uses
  %i.cf = load i64, ptr %i.h, align 8, !tbaa !465
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !466 ; 3 uses
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.r, label %bb.s, !prof !192

bb.r:                                             ; preds = %._crit_edge.i.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.ce)
  br label %bc_put_leb128.exit

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.cj = add i64 %i.cg, 1
  store i64 %i.cj, ptr %i.j, align 8, !tbaa !466
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !218
  br label %bc_put_leb128.exit

bc_put_leb128.exit:                               ; preds = %bb.r, %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 58 ; 4 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !429
  %i.cn = zext i16 %i.cm to i32                   ; 3 uses
  %i.co = lshr i32 %i.cn, 7                       ; 2 uses
  %.not9.i.i106 = icmp eq i32 %i.co, 0
  br i1 %.not9.i.i106, label %._crit_edge.i.i111, label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %bc_put_leb128.exit, %dbuf_putc.exit.i.i109
  %i.cp = phi i32 [ %i.cy, %dbuf_putc.exit.i.i109 ], [ %i.co, %bc_put_leb128.exit ] ; 3 uses
  %.010.i.i108 = phi i32 [ %i.cp, %dbuf_putc.exit.i.i109 ], [ %i.cn, %bc_put_leb128.exit ]
  %i.cq = trunc i32 %.010.i.i108 to i8
  %i.cr = or i8 %i.cq, -128                       ; 2 uses
  %i.cs = load i64, ptr %i.h, align 8, !tbaa !465
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !466 ; 3 uses
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %bb.u, !prof !192

bb.t:                                             ; preds = %.lr.ph.i.i107
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.cr)
  br label %dbuf_putc.exit.i.i109

bb.u:                                             ; preds = %.lr.ph.i.i107
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !467
  %i.cw = add i64 %i.ct, 1
  store i64 %i.cw, ptr %i.j, align 8, !tbaa !466
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !218
end_hunk_5
begin_hunk_6_@emit_goto:bb.a
  %i.aw = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.ap, i32 noundef %.0) ; 0 uses
  br label %emit_u32.exit

bb.h:                                             ; preds = %emit_op.exit
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !467
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  store i32 %.0, ptr %i.ay, align 1
  %i.az = load i64, ptr %i.as, align 8, !tbaa !466
  %i.ba = add i64 %i.az, 4
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !466
  br label %emit_u32.exit

emit_u32.exit:                                    ; preds = %bb.g, %bb.h
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !554
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !733
  %i.be = zext nneg i32 %.0 to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !921
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !921
  br label %js_is_live_code.exit

js_is_live_code.exit:                             ; preds = %new_label.exit.thread, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %get_prev_opcode.exit.i, %emit_u32.exit
  %.011 = phi i32 [ -1, %new_label.exit.thread ], [ %.0, %emit_u32.exit ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ], [ -1, %get_prev_opcode.exit.i ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_object_name(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !554  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !730  ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %emit_atom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 312
  %.val.i = load i8, ptr %i.f, align 8, !tbaa !470, !range !234, !noundef !235
  %i.g = trunc nuw i8 %.val.i to i1
  br i1 %i.g, label %emit_atom.exit, label %get_prev_opcode.exit

get_prev_opcode.exit:                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !731  ; 2 uses
  %i.j = zext nneg i32 %i.d to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !218
  switch i8 %i.l, label %emit_atom.exit [
    i8 76, label %bb.c
    i8 -55, label %bb.l
  ]

bb.c:                                             ; preds = %get_prev_opcode.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  store i64 %i.j, ptr %i.m, align 8, !tbaa !732
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.o = load i64, ptr %i.n, align 8, !tbaa !465
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %bb.d, label %bb.e, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.h, i8 noundef zeroext 76)
  br label %emit_op.exit

bb.e:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %i.j, 1
  store i64 %i.q, ptr %i.m, align 8, !tbaa !466
  store i8 76, ptr %i.k, align 1, !tbaa !218
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.d, %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !554  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 288 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 296 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !466  ; 3 uses
  %i.v = add nuw i64 %i.u, 4                      ; 3 uses
  %i.w = icmp ugt i64 %i.u, -5
  br i1 %i.w, label %emit_atom.exit, label %bb.f

bb.f:                                             ; preds = %emit_op.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 304 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !465  ; 4 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.g, label %.dbuf_claim.exit_crit_edge.i

.dbuf_claim.exit_crit_edge.i:                     ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !467
  br label %dbuf_claim.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 312 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !470, !range !234, !noundef !235
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %emit_atom.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i64 %i.y, 1
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.y
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.v)
  %.0.i.i = select i1 %i.af, i64 %i.v, i64 %i.ag  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !464
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !463
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !467
  %i.am = tail call ptr %i.ai(ptr noundef %i.ak, ptr noundef %i.al, i64 noundef %.0.i.i) #49, !inline_history !907 ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.aa, align 8, !tbaa !470
  br label %emit_atom.exit

bb.j:                                             ; preds = %bb.h
  store ptr %i.am, ptr %i.s, align 8, !tbaa !467
  store i64 %.0.i.i, ptr %i.x, align 8, !tbaa !465
  %.pre8.i = load i64, ptr %i.t, align 8, !tbaa !466
  br label %dbuf_claim.exit.i

dbuf_claim.exit.i:                                ; preds = %bb.j, %.dbuf_claim.exit_crit_edge.i
  %i.an = phi i64 [ %i.u, %.dbuf_claim.exit_crit_edge.i ], [ %.pre8.i, %bb.j ]
  %i.ao = phi ptr [ %.pre.i, %.dbuf_claim.exit_crit_edge.i ], [ %i.am, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = icmp slt i32 %1, 242
  br i1 %i.aq, label %JS_DupAtom.exit.i, label %bb.k

bb.k:                                             ; preds = %dbuf_claim.exit.i
  %i.ar = load ptr, ptr %0, align 8, !tbaa !553
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !297
  %i.aw = zext nneg i32 %1 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !299
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !191
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !191
  br label %JS_DupAtom.exit.i

JS_DupAtom.exit.i:                                ; preds = %bb.k, %dbuf_claim.exit.i
  store i32 %1, ptr %i.ap, align 1
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !466
  %i.bd = add i64 %i.bc, 4
  store i64 %i.bd, ptr %i.t, align 8, !tbaa !466
  br label %emit_atom.exit

bb.l:                                             ; preds = %get_prev_opcode.exit
  %i.be = add nuw nsw i32 %i.d, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.val21 = load i32, ptr %i.bf, align 1
  %i.bg = sub i32 %i.be, %.val21
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.val = load i32, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %0, align 8, !tbaa !553
  tail call void @JS_FreeAtom(ptr noundef %i.bk, i32 noundef %.val)
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !731
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = icmp slt i32 %1, 242
  br i1 %i.bo, label %JS_DupAtom.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %0, align 8, !tbaa !553
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !232
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !297
  %i.bu = zext nneg i32 %1 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !299
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %bb.l, %bb.m
  store i32 %1, ptr %i.bn, align 1
  store i32 -1, ptr %i.c, align 8, !tbaa !730
  br label %emit_atom.exit

emit_atom.exit:                                   ; preds = %bb.a, %bb.b, %JS_DupAtom.exit.i, %bb.i, %bb.g, %emit_op.exit, %get_prev_opcode.exit, %JS_DupAtom.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_function_check_names(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i64, ptr %i.a, align 4              ; 5 uses
  %i.c = and i64 %i.b, 549755813888
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 160
  %or.cond.not = icmp eq i64 %i.d, 128
  br i1 %or.cond.not, label %.loopexit60.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %2, -38              ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 8796109799935, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond101 = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond101, label %.loopexit60.sink.split, label %js_invalid_strict_name.exit.preheader

js_invalid_strict_name.exit.preheader:            ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !877  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit61

.lr.ph:                                           ; preds = %js_invalid_strict_name.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !878
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %js_invalid_strict_name.exit54
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %js_invalid_strict_name.exit54 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !547
  %switch.tableidx94 = add i32 %i.l, -38          ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx94, 44
  %switch.maskindex98 = zext nneg i32 %switch.tableidx94 to i64
  %switch.shifted99 = lshr i64 8796109799935, %switch.maskindex98
  %switch.lobit100 = trunc i64 %switch.shifted99 to i1
  %or.cond102 = select i1 %i.m, i1 %switch.lobit100, i1 false
  br i1 %or.cond102, label %.loopexit60.sink.split, label %js_invalid_strict_name.exit54

js_invalid_strict_name.exit54:                    ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit61, label %bb.d, !llvm.loop !2040

.loopexit61:                                      ; preds = %js_invalid_strict_name.exit54, %js_invalid_strict_name.exit.preheader, %bb.a
  %i.n = and i64 %i.b, 549755813920
  %or.cond50.not = icmp ne i64 %i.n, 32
  %i.o = and i64 %i.b, 545995620352
  %or.cond52 = icmp eq i64 %i.o, 25773998080
  %or.cond = or i1 %or.cond50.not, %or.cond52
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit61
  %3 = lshr i64 %i.b, 32
  %4 = trunc nuw i64 %3 to i32
  %i.p = and i32 %4, 127
  switch i32 %i.p, label %.loopexit60 [
    i32 3, label %bb.f
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %.loopexit61
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !877  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph69, label %.loopexit60

.lr.ph69:                                         ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !878  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %wide.trip.count86 = zext nneg i32 %i.r to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph69, %.loopexit
  %indvars.iv83 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next84, %.loopexit ] ; 4 uses
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv83
  %i.y = load i32, ptr %i.x, align 4, !tbaa !547  ; 3 uses
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %.loopexit, label %.preheader58

.preheader58:                                     ; preds = %bb.g
  %.not70 = icmp eq i64 %indvars.iv83, 0
  br i1 %.not70, label %.preheader, label %.lr.ph64

bb.h:                                             ; preds = %.lr.ph64
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %indvars.iv83
  br i1 %exitcond77.not, label %.preheader, label %.lr.ph64, !llvm.loop !2041

.preheader:                                       ; preds = %bb.h, %.preheader58
  %i.z = load i32, ptr %i.v, align 4, !tbaa !874  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !875
  %wide.trip.count81 = zext nneg i32 %i.z to i64
  br label %bb.i

.lr.ph64:                                         ; preds = %.preheader58, %bb.h
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.h ], [ 0, %.preheader58 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv73
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !547
  %i.ae = icmp eq i32 %i.ad, %i.y
  br i1 %i.ae, label %.loopexit60.sink.split, label %bb.h

bb.i:                                             ; preds = %.lr.ph66, %bb.k
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %indvars.iv78 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !547
  %i.ah = icmp eq i32 %i.ag, %i.y
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !711
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit60.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %bb.i, !llvm.loop !2042

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.g
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit60, label %bb.g, !llvm.loop !2043

.loopexit60.sink.split:                           ; preds = %bb.d, %.lr.ph64, %bb.j, %bb.c, %bb.b
  %.str.581.sink = phi ptr [ @.str.581, %bb.j ], [ @.str.583, %bb.c ], [ @.str.582, %bb.b ], [ @.str.581, %.lr.ph64 ], [ @.str.584, %bb.d ]
  %i.al = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull %.str.581.sink) ; 0 uses
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit, %.loopexit60.sink.split, %bb.f, %bb.e
  %.042 = phi i32 [ -1, %.loopexit60.sink.split ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @cpool_add(ptr %.0.val, ptr nofree captures(none) %.160.val, i64 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.160.val, i64 368 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.160.val, i64 380 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.160.val, i64 376 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !872  ; 3 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !191
  %.not3 = icmp slt i32 %i.d, %i.e
  br i1 %.not3, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !325

js_resize_array.exit:                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, 1
  %i.g = tail call fastcc i32 @js_realloc_array(ptr noundef %.0.val, ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull %i.b, i32 noundef %i.f), !inline_history !90
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, label %bb.b

js_resize_array.exit.js_resize_array.exit.thread_crit_edge: ; preds = %js_resize_array.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !872
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, %bb.a
  %i.h = phi i32 [ %.pre, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !873
  %i.j = add nsw i32 %i.h, 1
  store i32 %i.j, ptr %i.c, align 8, !tbaa !872
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.k ; 2 uses
  store i64 %0, ptr %i.l, align 8, !tbaa !218
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !240
  %i.m = load i32, ptr %i.c, align 8, !tbaa !872
  %i.n = add nsw i32 %i.m, -1
  br label %bb.b

bb.b:                                             ; preds = %js_resize_array.exit, %js_resize_array.exit.thread
  %.0 = phi i32 [ %i.n, %js_resize_array.exit.thread ], [ -1, %js_resize_array.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_u32(ptr nofree captures(none) %.160.val, i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.160.val, i64 288 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.160.val, i64 304
  %i.c = load i64, ptr %i.b, align 8, !tbaa !465
  %i.d = getelementptr inbounds nuw i8, ptr %.160.val, i64 296 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !466  ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.a, i32 noundef %0) ; 0 uses
  br label %dbuf_put_u32.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !467
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  store i32 %0, ptr %i.j, align 1
  %i.k = load i64, ptr %i.d, align 8, !tbaa !466
  %i.l = add i64 %i.k, 4
  store i64 %i.l, ptr %i.d, align 8, !tbaa !466
  br label %dbuf_put_u32.exit

dbuf_put_u32.exit:                                ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @add_global_var(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !879  ; 3 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !191
  %.not18 = icmp slt i32 %i.d, %i.e
  br i1 %.not18, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !325

js_resize_array.exit:                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, 1
  %i.g = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull %i.b, i32 noundef %i.f), !inline_history !90
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, label %bb.c

js_resize_array.exit.js_resize_array.exit.thread_crit_edge: ; preds = %js_resize_array.exit
  %.pre = load i32, ptr %i.c, align 4, !tbaa !879
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, %bb.a
  %i.h = phi i32 [ %.pre, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !880
  %i.j = add nsw i32 %i.h, 1
  store i32 %i.j, ptr %i.c, align 4, !tbaa !879
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.k ; 5 uses
  store i32 -1, ptr %i.l, align 4, !tbaa !919
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -8
  store i8 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !717
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.q, ptr %i.r, align 4, !tbaa !916
  %i.s = icmp slt i32 %2, 242
  br i1 %i.s, label %JS_DupAtom.exit, label %bb.b

bb.b:                                             ; preds = %js_resize_array.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !297
end_hunk_6
