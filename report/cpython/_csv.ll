inline.NumInlined: 116
inline.NumDeleted: 38
begin_hunk_0_@join_append_data
define internal fastcc i64 @join_append_data(ptr noundef readonly captures(none) %0, i32 noundef range(i32 -1, 8) %1, ptr noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr noundef nonnull captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %i.d
  store i32 %i.i, ptr %i.l, align 4, !tbaa !6
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 9223372036854775807
  br i1 %i.m, label %.thread143, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = add i64 %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0108 = phi i64 [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 4 uses
  %.not118 = icmp eq i32 %5, 0                    ; 5 uses
  br i1 %.not118, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %4, align 4, !tbaa !6
  %.not119 = icmp eq i32 %i.o, 0
  br i1 %.not119, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.b, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %.0108
  store i32 %i.q, ptr %i.t, align 4, !tbaa !6
  %i.u = add i64 %.0108, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1109 = phi i64 [ %i.u, %bb.g ], [ %.0108, %bb.f ], [ %.0108, %bb.e ] ; 2 uses
  %i.v = icmp ne ptr %2, null
  %i.w = icmp sgt i64 %3, 0
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.b, i64 24
  %i.z = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 28      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 40
  %i.ac = getelementptr i8, ptr %i.b, i64 20
  %i.ad = getelementptr i8, ptr %i.b, i64 16
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ab
  %.2110157 = phi i64 [ %.1109, %.lr.ph ], [ %.6, %bb.ab ] ; 8 uses
  %.0111156 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.ab ] ; 4 uses
  switch i32 %1, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %2, i64 %.0111156
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr [2 x i8], ptr %2, i64 %.0111156
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !34
  %i.ak = zext i16 %i.aj to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr [4 x i8], ptr %2, i64 %.0111156
  %i.am = load i32, ptr %i.al, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ah, %bb.j ], [ %i.ak, %bb.k ], [ %i.am, %bb.l ] ; 9 uses
  %i.an = load i32, ptr %i.y, align 8, !tbaa !37
  %i.ao = icmp eq i32 %.0.i, %i.an
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !38
  %i.aq = icmp eq i32 %.0.i, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !36
  %i.as = icmp eq i32 %.0.i, %i.ar
  %i.at = freeze i1 %i.as
  br i1 %i.at, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i32 %.0.i, label %bb.o [
    i32 13, label %bb.p
    i32 10, label %bb.p
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val = load i64, ptr %i.av, align 8, !tbaa !41
  %i.aw = tail call i64 @PyUnicode_FindChar(ptr noundef %i.au, i32 noundef %.0.i, i64 noundef 0, i64 noundef %.val, i32 noundef 1) #5
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.p, label %bb.z

bb.p:                                             ; preds = %switch.early.test, %switch.early.test, %bb.n, %bb.o, %bb.m, %PyUnicode_READ.exit
  %i.ay = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.az = icmp eq i32 %i.ay, 3
  br i1 %i.az, label %.thread133thread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !36
  %i.bb = icmp eq i32 %.0.i, %i.ba
  br i1 %i.bb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.ad, align 8, !tbaa !67
  %.not121 = icmp eq i8 %i.bc, 0
  br i1 %.not121, label %.thread133thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not118, label %bb.t, label %.thread127

.thread127:                                       ; preds = %bb.s
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %.2110157
  store i32 %.0.i, ptr %i.be, align 4, !tbaa !6
  br label %.thread129

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp eq i64 %.2110157, 9223372036854775807
  br i1 %i.bf, label %.thread143, label %.thread129

.thread129:                                       ; preds = %bb.t, %.thread127
  %i.bg = add i64 %.2110157, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %.not153 = icmp eq i32 %.0.i, %i.bh
  br i1 %.not153, label %.thread133, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread129
  %.3132 = phi i64 [ %i.bg, %.thread129 ], [ %.2110157, %bb.u ]
  store i32 1, ptr %4, align 4, !tbaa !6
  br label %bb.z

.thread133thread-pre-split:                       ; preds = %bb.p, %bb.r
  %.pr = load i32, ptr %i.z, align 8, !tbaa !38
  br label %.thread133

.thread133:                                       ; preds = %.thread133thread-pre-split, %bb.u
  %i.bi = phi i32 [ %.pr, %.thread133thread-pre-split ], [ %i.bh, %bb.u ] ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %.thread146, label %bb.w

.thread146:                                       ; preds = %.thread133
  %i.bk = getelementptr i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bl, ptr noundef nonnull @.str.58) #5 ; 0 uses
  br label %bb.ag

bb.w:                                             ; preds = %.thread133
  br i1 %.not118, label %bb.x, label %.thread140

.thread140:                                       ; preds = %bb.w
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %.2110157
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !6
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i64 %.2110157, 9223372036854775807
  br i1 %i.bp, label %.thread143, label %bb.y

bb.y:                                             ; preds = %.thread140, %bb.x
  %i.bq = add i64 %.2110157, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.o, %bb.y
  %.5 = phi i64 [ %i.bq, %bb.y ], [ %.3132, %bb.v ], [ %.2110157, %bb.o ]
  %.5.fr = freeze i64 %.5                         ; 3 uses
  br i1 %.not118, label %bb.aa, label %.thread149

.thread149:                                       ; preds = %bb.z
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %.5.fr
  store i32 %.0.i, ptr %i.bs, align 4, !tbaa !6
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bt = icmp eq i64 %.5.fr, 9223372036854775807
  br i1 %i.bt, label %.thread143, label %bb.ab

bb.ab:                                            ; preds = %.thread149, %bb.aa
  %.6 = add i64 %.5.fr, 1                         ; 2 uses
  %i.bu = add nuw nsw i64 %.0111156, 1            ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %3
  br i1 %i.bv, label %bb.i, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.ab, %bb.h
  %.2110.lcssa = phi i64 [ %.1109, %bb.h ], [ %.6, %bb.ab ] ; 5 uses
  %i.bw = load i32, ptr %4, align 4, !tbaa !6
  %.not120 = icmp eq i32 %i.bw, 0
  br i1 %.not120, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  br i1 %.not118, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr i8, ptr %i.b, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36
  %i.bz = getelementptr i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %.2110.lcssa
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !6
  %i.cc = add i64 %.2110.lcssa, 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %switch = icmp sgt i64 %.2110.lcssa, 9223372036854775805
  br i1 %switch, label %.thread143, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = add nsw i64 %.2110.lcssa, 2
  br label %bb.ag

.thread143:                                       ; preds = %bb.aa, %bb.x, %bb.t, %bb.ae, %bb.c
  %i.ce = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.thread146, %._crit_edge, %bb.af, %bb.ad, %.thread143
  %.2 = phi i64 [ -1, %.thread143 ], [ -1, %.thread146 ], [ %i.cc, %bb.ad ], [ %i.cd, %bb.af ], [ %.2110.lcssa, %._crit_edge ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @_csv_traverse(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not53 = icmp eq i32 %i.c, 0
  br i1 %.not53, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not54 = icmp eq ptr %i.e, null
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #5 ; 2 uses
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not56 = icmp eq ptr %i.h, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #5 ; 2 uses
  %.not57 = icmp eq i32 %i.i, 0
  br i1 %.not57, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %.not58 = icmp eq ptr %i.k, null
  br i1 %.not58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #5 ; 2 uses
  %.not59 = icmp eq i32 %i.l, 0
  br i1 %.not59, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not60 = icmp eq ptr %i.n, null
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 %1(ptr noundef nonnull %i.n, ptr noundef %2) #5 ; 2 uses
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k
  %.9 = phi i32 [ 0, %bb.k ], [ %i.o, %bb.j ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_csv_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit50, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i49 = icmp sgt i32 %i.c, -1
  br i1 %.not.i49, label %bb.c, label %Py_DECREF.exit50

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit50

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 4 uses
  %.not36 = icmp eq ptr %i.g, null
  br i1 %.not36, label %Py_DECREF.exit48, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit50
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i47 = icmp sgt i32 %i.h, -1
  br i1 %.not.i47, label %bb.f, label %Py_DECREF.exit48

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit48

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit50
  %i.k = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 4 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %Py_DECREF.exit46, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit48
  store ptr null, ptr %i.k, align 8, !tbaa !97
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not.i45 = icmp sgt i32 %i.m, -1
  br i1 %.not.i45, label %bb.i, label %Py_DECREF.exit46

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit46

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #5
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit48
  %i.p = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97   ; 4 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %Py_DECREF.exit44, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit46
  store ptr null, ptr %i.p, align 8, !tbaa !97
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %.not.i43 = icmp sgt i32 %i.r, -1
  br i1 %.not.i43, label %bb.l, label %Py_DECREF.exit44

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit44

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #5
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit46
  %i.u = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 4 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %Py_DECREF.exit42, label %bb.n
end_hunk_0
