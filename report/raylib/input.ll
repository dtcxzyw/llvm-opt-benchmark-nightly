Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/input?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_glfwInputMouseClick:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputCursorPos(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = fcmp oeq double %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp oeq double %i.e, %2
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store double %1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store double %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.i(ptr noundef nonnull %0, double noundef %1, double noundef %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputCursorEnter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputDrop(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputJoystick(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 262145, label %.sink.split
    i32 262146, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133880), align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1936) to i64)
  %i.e = sdiv exact i64 %i.d, 8216
  %i.f = trunc i64 %i.e to i32
  tail call void %i.b(i32 noundef %i.f, i32 noundef %1) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_glfwInputJoystickAxis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store float %2, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_glfwInputJoystickButton(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  store i8 %2, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_glfwInputJoystickHat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = shl nsw i32 %1, 2
  %i.d = add nsw i32 %i.b, %i.c
  %i.e = and i8 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = sext i32 %i.d to i64                     ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 %i.e, ptr %i.i, align 1
  %i.j = lshr i8 %2, 1
  %.lobit = and i8 %i.j, 1
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 %i.h
  %i.m = getelementptr i8, ptr %i.l, i64 1
  store i8 %.lobit, ptr %i.m, align 1
  %i.n = lshr i8 %2, 2
  %.lobit16 = and i8 %i.n, 1
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 %i.h
  %i.q = getelementptr i8, ptr %i.p, i64 2
  store i8 %.lobit16, ptr %i.q, align 1
  %i.r = lshr i8 %2, 3
  %.lobit17 = and i8 %i.r, 1
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 %i.h
  %i.u = getelementptr i8, ptr %i.t, i64 3
  store i8 %.lobit17, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 %2, ptr %i.y, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInitGamepadMappings() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_glfw_calloc(i64 noundef 689, i64 noundef 245) #10
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133392), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.03 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ]    ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133392), align 8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133400), align 8
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [245 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_glfwDefaultMappings, i64 %.03
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call fastcc i32 @parseMapping(ptr noundef %i.e, ptr noundef %i.g)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133400), align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133400), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nuw nsw i64 %.03, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, 689
  br i1 %exitcond.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  ret void
}

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parseMapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %2 = alloca [22 x %struct.anon.29], align 16    ; 47 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr @.str.700, ptr %2, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.701, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 161
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.702, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 165
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.703, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 169
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.704, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 173
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr @.str.705, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 185
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr @.str.706, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 189
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr @.str.707, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr @.str.708, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 177
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr @.str.709, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 181
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr @.str.710, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 197
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr @.str.711, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 201
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr @.str.712, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 205
  store ptr %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr @.str.713, ptr %i.am, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 209
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr @.str.714, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 213
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 240
  store ptr @.str.715, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 217
  store ptr %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 256
  store ptr @.str.716, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 237
  store ptr %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 272
  store ptr @.str.717, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 241
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 288
  store ptr @.str.718, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr %i.ax, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr @.str.719, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 225
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 320
  store ptr @.str.720, ptr %i.bh, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 229
  store ptr %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 336
  store ptr @.str.721, ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 233
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = tail call i64 @strcspn(ptr noundef %1, ptr noundef nonnull @.str.722) #11
  %.not = icmp eq i64 %i.bn, 32
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load i8, ptr %i.bo, align 1
  %.not86 = icmp eq i8 %i.bp, 44
  br i1 %.not86, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef null) #10
  br label %.loopexit95

bb.d:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bq, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 3 uses
  %i.bs = tail call i64 @strcspn(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.722) #11 ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, 127
  br i1 %i.bt, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %.not87 = icmp eq i8 %i.bv, 44
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef null) #10
  br label %.loopexit95

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g
  %storemerge = phi ptr [ %i.bw, %bb.g ], [ %i.du, %.loopexit ] ; 5 uses
  %i.bx = load i8, ptr %storemerge, align 1
  switch i8 %i.bx, label %.preheader94 [
    i8 0, label %.preheader.preheader
    i8 43, label %.loopexit95
    i8 45, label %.loopexit95
  ]

.preheader.preheader:                             ; preds = %bb.h
  %i.by = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bz = add i8 %i.by, -65
  %or.cond = icmp ult i8 %i.bz, 6
  br i1 %or.cond, label %bb.v, label %.preheader.1

.preheader94:                                     ; preds = %bb.h, %bb.u
  %.07398 = phi i64 [ %i.dp, %bb.u ], [ 0, %bb.h ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.07398 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 16           ; 2 uses
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #11 ; 3 uses
  %i.cd = tail call i32 @strncmp(ptr noundef nonnull %storemerge, ptr noundef nonnull %i.cb, i64 noundef %i.cc) #11
  %.not89 = icmp eq i32 %i.cd, 0
  br i1 %.not89, label %bb.i, label %bb.u

bb.i:                                             ; preds = %.preheader94
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1
  %.not90 = icmp eq i8 %i.cf, 58
  br i1 %.not90, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.cc ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 1      ; 5 uses
  store ptr %i.ch, ptr %i.a, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 7 uses
  %.not91 = icmp eq ptr %i.cj, null
  br i1 %.not91, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load i8, ptr %i.ch, align 1             ; 2 uses
  switch i8 %i.ck, label %bb.m [
    i8 43, label %thread-pre-split
    i8 45, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %bb.l
  %.076.ph = phi i32 [ -1, %bb.l ], [ 0, %bb.k ]
  %.075.ph = phi i32 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.cl = getelementptr i8, ptr %i.cg, i64 2      ; 3 uses
  store ptr %i.cl, ptr %i.a, align 8
  %.pr = load i8, ptr %i.cl, align 1
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.k
  %i.cm = phi i8 [ %.pr, %thread-pre-split ], [ %i.ck, %bb.k ]
  %i.cn = phi ptr [ %i.cl, %thread-pre-split ], [ %i.ch, %bb.k ] ; 3 uses
  %.076 = phi i32 [ %.076.ph, %thread-pre-split ], [ -1, %bb.k ] ; 2 uses
  %.075 = phi i32 [ %.075.ph, %thread-pre-split ], [ 1, %bb.k ] ; 2 uses
  switch i8 %i.cm, label %.loopexit [
    i8 97, label %bb.p
    i8 98, label %bb.n
    i8 104, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 3, ptr %i.cj, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = call i64 @strtoul(ptr noundef nonnull %i.co, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %i.cq = load ptr, ptr %i.a, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = call i64 @strtoul(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %i.ct = shl i64 %i.cp, 4
  %i.cu = or i64 %i.cs, %i.ct
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n
  %storemerge93 = phi i8 [ 2, %bb.n ], [ 1, %bb.m ]
  store i8 %storemerge93, ptr %i.cj, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cw = call i64 @strtoul(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.a, i32 noundef 10) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink110 = phi i64 [ %i.cw, %bb.p ], [ %i.cu, %bb.o ]
  %i.cx = trunc i64 %.sink110 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = load i8, ptr %i.cj, align 1
  %i.da = icmp eq i8 %i.cz, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 4 uses
  br i1 %i.da, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.db = sub nsw i32 %.075, %.076
  %.rhs.trunc = trunc nuw nsw i32 %i.db to i8
  %i.dc = udiv i8 2, %.rhs.trunc                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = add nsw i32 %.075, %.076
  %i.df = trunc nsw i32 %i.de to i8               ; 2 uses
  %i.dg = sub nsw i8 0, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 3 ; 2 uses
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = load i8, ptr %.pre, align 1
  %i.dj = icmp eq i8 %i.di, 126
  br i1 %i.dj, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dk = sub nsw i8 0, %i.dc
  store i8 %i.dk, ptr %i.dd, align 1
  store i8 %i.df, ptr %i.dh, align 1
  br label %.loopexit

bb.t:                                             ; preds = %bb.j
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 192), align 8
  %i.dm = tail call ptr %i.dl() #10               ; 2 uses
  %i.dn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dm) #11
  %i.do = tail call i32 @strncmp(ptr noundef %i.ch, ptr noundef nonnull %i.dm, i64 noundef %i.dn) #11
  %.not92 = icmp eq i32 %i.do, 0
  br i1 %.not92, label %.loopexit, label %.loopexit95

bb.u:                                             ; preds = %.preheader94, %bb.i
  %i.dp = add nuw nsw i64 %.07398, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, 22
  br i1 %exitcond.not, label %.loopexit, label %.preheader94

.loopexit:                                        ; preds = %bb.u, %bb.m, %bb.r, %bb.s, %bb.q, %bb.t
  %i.dq = phi ptr [ %i.ch, %bb.t ], [ %i.cn, %bb.m ], [ %.pre, %bb.r ], [ %.pre, %bb.s ], [ %.pre, %bb.q ], [ %storemerge, %bb.u ] ; 2 uses
  %i.dr = tail call i64 @strcspn(ptr noundef %i.dq, ptr noundef nonnull @.str.722) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr ; 3 uses
  store ptr %i.ds, ptr %i.a, align 8
  %i.dt = tail call i64 @strspn(ptr noundef %i.ds, ptr noundef nonnull @.str.722) #11
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  br label %bb.h

bb.v:                                             ; preds = %.preheader.preheader
  %i.dv = or disjoint i8 %i.by, 32
  store i8 %i.dv, ptr %i.bq, align 1
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = add i8 %i.dx, -65
  %or.cond.1 = icmp ult i8 %i.dy, 6
  br i1 %or.cond.1, label %bb.w, label %.preheader.2

bb.w:                                             ; preds = %.preheader.1
  %i.dz = or disjoint i8 %i.dx, 32
  store i8 %i.dz, ptr %i.dw, align 1
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.w, %.preheader.1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1             ; 2 uses
  %i.ec = add i8 %i.eb, -65
  %or.cond.2 = icmp ult i8 %i.ec, 6
  br i1 %or.cond.2, label %bb.x, label %.preheader.3

bb.x:                                             ; preds = %.preheader.2
  %i.ed = or disjoint i8 %i.eb, 32
  store i8 %i.ed, ptr %i.ea, align 1
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.x, %.preheader.2
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 131 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1             ; 2 uses
  %i.eg = add i8 %i.ef, -65
  %or.cond.3 = icmp ult i8 %i.eg, 6
  br i1 %or.cond.3, label %bb.y, label %.preheader.4

bb.y:                                             ; preds = %.preheader.3
  %i.eh = or disjoint i8 %i.ef, 32
  store i8 %i.eh, ptr %i.ee, align 1
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.y, %.preheader.3
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = add i8 %i.ej, -65
  %or.cond.4 = icmp ult i8 %i.ek, 6
  br i1 %or.cond.4, label %bb.z, label %.preheader.5

bb.z:                                             ; preds = %.preheader.4
  %i.el = or disjoint i8 %i.ej, 32
  store i8 %i.el, ptr %i.ei, align 1
  br label %.preheader.5

.preheader.5:                                     ; preds = %bb.z, %.preheader.4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1             ; 2 uses
  %i.eo = add i8 %i.en, -65
  %or.cond.5 = icmp ult i8 %i.eo, 6
  br i1 %or.cond.5, label %bb.aa, label %.preheader.6

end_hunk_0
