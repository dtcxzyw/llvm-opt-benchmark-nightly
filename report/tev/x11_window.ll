Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/x11_window?download=true
inline.NumInlined: 92
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_glfwGetKeyScancodeX11:bb.a
; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_glfwCreateCursorX11(ptr nofree noundef writeonly captures(none) initializes((56, 64)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_glfwCreateNativeCursorX11(ptr noundef %1, i32 noundef %2, i32 noundef %3) #18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.a, ptr %i.b, align 8, !tbaa !282
  %.not = icmp ne i64 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare i64 @_glfwCreateNativeCursorX11(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_glfwCreateStandardCursorX11(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142624), align 8, !tbaa !495
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142656), align 8, !tbaa !496
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.d = tail call ptr %i.b(ptr noundef %i.c) #18 ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142664), align 8, !tbaa !497
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.g = tail call i32 %i.e(ptr noundef %i.f) #18
  %switch.tableidx = add i32 %1, -221185          ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 10
  br i1 %i.h, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._glfwCreateStandardCursorX11, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.016 = phi ptr [ null, %bb.c ], [ %switch.load, %switch.lookup ]
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142672), align 8, !tbaa !498
  %i.k = tail call ptr %i.j(ptr noundef %.016, ptr noundef nonnull %i.d, i32 noundef %i.g) #18 ; 3 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142648), align 8, !tbaa !499
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.n = tail call i64 %i.l(ptr noundef %i.m, ptr noundef nonnull %i.k) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !282
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142640), align 8, !tbaa !500
  tail call void %i.p(ptr noundef nonnull %i.k) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !282
  %.not22 = icmp eq i64 %i.r, 0
  br i1 %.not22, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %switch.tableidx26 = add i32 %1, -221185        ; 3 uses
  %i.s = icmp ult i32 %switch.tableidx26, 9
  %switch.maskindex = trunc i32 %switch.tableidx26 to i16
  %switch.shifted = lshr i16 319, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.s, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup28, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65547, ptr noundef nonnull @.str.18) #18
  br label %.thread

switch.lookup28:                                  ; preds = %bb.g
  %i.t = zext nneg i32 %switch.tableidx26 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._glfwCreateStandardCursorX11.6, i64 %i.t
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  %switch.ext = zext i8 %switch.load30 to i32
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141664), align 8, !tbaa !501
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.w = tail call i64 %i.u(ptr noundef %i.v, i32 noundef %switch.ext) #18 ; 2 uses
  store i64 %i.w, ptr %i.q, align 8, !tbaa !282
  %.not23 = icmp eq i64 %i.w, 0
  br i1 %.not23, label %bb.i, label %.thread

bb.i:                                             ; preds = %switch.lookup28
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.19) #18
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.f, %switch.lookup28
  %.1 = phi i32 [ 1, %bb.f ], [ 1, %switch.lookup28 ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @_glfwDestroyCursorX11(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141800), align 8, !tbaa !502
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.e = tail call i32 %i.c(ptr noundef %i.d, i64 noundef %i.b) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_glfwSetCursorX11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !275
  switch i32 %i.b, label %bb.e [
    i32 212993, label %bb.b
    i32 212996, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.g = load i64, ptr %i.f, align 8, !tbaa !188  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141696), align 8, !tbaa !277
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !282
  %i.k = tail call i32 %i.h(ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.j) #18, !inline_history !8 ; 0 uses
  br label %updateCursorImage.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142192), align 8, !tbaa !283
  %i.m = tail call i32 %i.l(ptr noundef %i.e, i64 noundef %i.g) #18, !inline_history !8 ; 0 uses
  br label %updateCursorImage.exit

updateCursorImage.exit:                           ; preds = %bb.c, %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141776), align 8, !tbaa !237
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.p = tail call i32 %i.n(ptr noundef %i.o) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %updateCursorImage.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_glfwSetClipboardStringX11(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_glfw_strdup(ptr noundef %0) #18
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138160), align 8, !tbaa !503
  tail call void @_glfw_free(ptr noundef %i.b) #18
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138160), align 8, !tbaa !503
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142136), align 8, !tbaa !315
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141488), align 8, !tbaa !316
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %i.g = tail call i32 %i.c(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %i.f, i64 noundef 0) #18 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141872), align 8, !tbaa !299
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141488), align 8, !tbaa !316
  %i.k = tail call i64 %i.h(ptr noundef %i.i, i64 noundef %i.j) #18
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %.not = icmp eq i64 %i.k, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.20) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @_glfw_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @_glfwGetClipboardStringX11() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141488), align 8, !tbaa !316
  %i.b = tail call fastcc ptr @getSelectionString(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getSelectionString(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pollfd, align 4             ; 6 uses
  %2 = alloca %struct.pollfd, align 4             ; 6 uses
  %.sroa.0 = alloca i64, align 16                 ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 4 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %union._XEvent, align 8             ; 10 uses
  %4 = alloca %union._XEvent, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141528), align 8, !tbaa !138
  store i64 %i.f, ptr %.sroa.0, align 16, !tbaa !115
  store i64 31, ptr %.sroa.4, align 8, !tbaa !115
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141496), align 8, !tbaa !139
  %i.h = icmp eq i64 %0, %i.g
  %. = select i1 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138152), ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138160) ; 9 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141872), align 8, !tbaa !299
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.k = tail call i64 %i.i(ptr noundef %i.j, i64 noundef %0) #18
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %i.m = icmp eq i64 %i.k, %i.l
  %.035.pre87 = load ptr, ptr %., align 8, !tbaa !311 ; 2 uses
  br i1 %i.m, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_glfw_free(ptr noundef %.035.pre87) #18
  store ptr null, ptr %., align 8, !tbaa !311
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %5 = phi i1 [ true, %bb.b ], [ false, %select.unfold ]
  %.03283.sroa.phi = phi ptr [ %.sroa.0, %bb.b ], [ %.sroa.4, %select.unfold ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141648), align 8, !tbaa !122
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %6 = load i64, ptr %.03283.sroa.phi, align 8, !tbaa !115 ; 4 uses
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141552), align 8, !tbaa !509
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %i.x = call i32 %i.t(ptr noundef %i.u, i64 noundef %0, i64 noundef %6, i64 noundef %i.v, i64 noundef %i.w, i64 noundef 0) #18 ; 0 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141624), align 8, !tbaa !244
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %i.ab = call i32 %i.y(ptr noundef %i.z, i64 noundef %i.aa, i32 noundef 31, ptr noundef nonnull %3) #18
  %.not78 = icmp eq i32 %i.ab, 0
  br i1 %.not78, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %waitForX11Event.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !132
  store i32 %i.ae, ptr %2, align 4, !tbaa !134
  store i16 1, ptr %i.n, align 4, !tbaa !135
  store i16 0, ptr %i.o, align 2, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142000), align 8, !tbaa !137
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.ah = call i32 %i.af(ptr noundef %i.ag) #18, !inline_history !0
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.e, label %waitForX11Event.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = call i32 @_glfwPollPOSIX(ptr noundef nonnull %2, i64 noundef 1, ptr noundef null) #18
  %.not1.i = icmp eq i32 %i.ai, 0
  br i1 %.not1.i, label %waitForX11Event.exit, label %bb.d, !llvm.loop !1

waitForX11Event.exit:                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141624), align 8, !tbaa !244
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138104), align 8, !tbaa !124
  %i.am = call i32 %i.aj(ptr noundef %i.ak, i64 noundef %i.al, i32 noundef 31, ptr noundef nonnull %3) #18
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !504

._crit_edge:                                      ; preds = %waitForX11Event.exit, %bb.c
  %i.an = load i64, ptr %i.p, align 8, !tbaa !126
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141616), align 8, !tbaa !125
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.ar = call i32 %i.ap(ptr noundef %i.aq, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #18 ; 0 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141904), align 8, !tbaa !113
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.au = load i64, ptr %i.q, align 8, !tbaa !126
  %i.av = load i64, ptr %i.p, align 8, !tbaa !126
  %i.aw = call i32 %i.as(ptr noundef %i.at, i64 noundef %i.au, i64 noundef %i.av, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141480), align 8, !tbaa !510
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.f, %bb.i
  %.030 = phi i64 [ %i.bw, %bb.i ], [ 1, %bb.f ]
  %.0 = phi ptr [ %i.bx, %bb.i ], [ null, %bb.f ] ; 3 uses
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141616), align 8, !tbaa !125
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.bc = call i32 %i.ba(ptr noundef %i.bb, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #18
  %.not3979 = icmp eq i32 %i.bc, 0
  br i1 %.not3979, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader, %waitForX11Event.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !132
  store i32 %i.bf, ptr %1, align 4, !tbaa !134
  store i16 1, ptr %i.r, align 4, !tbaa !135
  store i16 0, ptr %i.s, align 2, !tbaa !136
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph81
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142000), align 8, !tbaa !137
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.bi = call i32 %i.bg(ptr noundef %i.bh) #18, !inline_history !0
  %.not.i46 = icmp eq i32 %i.bi, 0
  br i1 %.not.i46, label %bb.h, label %waitForX11Event.exit49

bb.h:                                             ; preds = %bb.g
  %i.bj = call i32 @_glfwPollPOSIX(ptr noundef nonnull %1, i64 noundef 1, ptr noundef null) #18
  %.not1.i48 = icmp eq i32 %i.bj, 0
  br i1 %.not1.i48, label %waitForX11Event.exit49, label %bb.g, !llvm.loop !1

waitForX11Event.exit49:                           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141616), align 8, !tbaa !125
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.bm = call i32 %i.bk(ptr noundef %i.bl, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #18
  %.not39 = icmp eq i32 %i.bm, 0
  br i1 %.not39, label %.lr.ph81, label %._crit_edge82, !llvm.loop !505

._crit_edge82:                                    ; preds = %waitForX11Event.exit49, %.preheader
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141784), align 8, !tbaa !143
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.bp = call i32 %i.bn(ptr noundef %i.bo) #18   ; 0 uses
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141904), align 8, !tbaa !113
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.bs = load i64, ptr %i.q, align 8, !tbaa !126
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !126
  %i.bu = call i32 %i.bq(ptr noundef %i.br, i64 noundef %i.bs, i64 noundef %i.bt, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  %.not40 = icmp eq i64 %i.bv, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  %i.bw = add i64 %i.bv, %.030                    ; 3 uses
  %i.bx = call ptr @_glfw_realloc(ptr noundef %.0, i64 noundef %i.bw) #18 ; 4 uses
  %i.by = load i64, ptr %i.d, align 8, !tbaa !115
  %i.bz = xor i64 %i.by, -1
  %i.ca = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !126
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.cd = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(1) %i.cc) #18 ; 0 uses
  %.pr = load i64, ptr %i.d, align 8, !tbaa !115
  %.not41 = icmp eq i64 %.pr, 0
  br i1 %.not41, label %.thread69, label %.preheader

bb.j:                                             ; preds = %._crit_edge82
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %bb.q, label %.thread69

.thread69:                                        ; preds = %bb.i, %bb.j
  %.16872 = phi ptr [ %.0, %bb.j ], [ %i.bx, %bb.i ] ; 6 uses
  %i.ce = icmp eq i64 %6, 31
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread69
  %i.cf = load i8, ptr %.16872, align 1, !tbaa !126 ; 2 uses
  %.not19.i = icmp eq i8 %i.cf, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.cg = phi i8 [ %i.ck, %.lr.ph.i ], [ %i.cf, %bb.k ]
  %.01321.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %.16872, %bb.k ]
  %.01420.i = phi i64 [ %i.ci, %.lr.ph.i ], [ 1, %bb.k ]
  %.not18.i = icmp sgt i8 %i.cg, -1
  %i.ch = select i1 %.not18.i, i64 1, i64 2
  %i.ci = add i64 %i.ch, %.01420.i                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01321.i, i64 1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !126 ; 2 uses
  %.not.i50 = icmp eq i8 %i.ck, 0
  br i1 %.not.i50, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !506

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.014.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.ci, %.lr.ph.i ]
  %i.cl = call ptr @_glfw_calloc(i64 noundef %.014.lcssa.i, i64 noundef 1) #18 ; 2 uses
  %i.cm = load i8, ptr %.16872, align 1, !tbaa !126 ; 2 uses
  %.not1722.i = icmp eq i8 %i.cm, 0
  br i1 %.not1722.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %._crit_edge.i, %.lr.ph26.i
  %i.cn = phi i8 [ %i.cs, %.lr.ph26.i ], [ %i.cm, %._crit_edge.i ]
  %.024.i = phi ptr [ %i.cq, %.lr.ph26.i ], [ %i.cl, %._crit_edge.i ] ; 2 uses
  %.123.i = phi ptr [ %i.cr, %.lr.ph26.i ], [ %.16872, %._crit_edge.i ]
  %i.co = sext i8 %i.cn to i32
  %i.cp = call i64 @_glfwEncodeUTF8(ptr noundef %.024.i, i32 noundef %i.co) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %.024.i, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.123.i, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !126 ; 2 uses
  %.not17.i = icmp eq i8 %i.cs, 0
  br i1 %.not17.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i, !llvm.loop !507

convertLatin1toUTF8.exit:                         ; preds = %.lr.ph26.i, %._crit_edge.i
  store ptr %i.cl, ptr %., align 8, !tbaa !311
  call void @_glfw_free(ptr noundef nonnull %.16872) #18
  br label %bb.q

bb.l:                                             ; preds = %.thread69
  store ptr %.16872, ptr %., align 8, !tbaa !311
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.ct = icmp eq i64 %i.ax, %6
  br i1 %i.ct, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cu = icmp eq i64 %6, 31
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !311 ; 5 uses
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !126 ; 2 uses
  %.not19.i51 = icmp eq i8 %i.cw, 0
  br i1 %.not19.i51, label %._crit_edge.i57, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.o, %.lr.ph.i52
  %i.cx = phi i8 [ %i.db, %.lr.ph.i52 ], [ %i.cw, %bb.o ]
  %.01321.i53 = phi ptr [ %i.da, %.lr.ph.i52 ], [ %i.cv, %bb.o ]
  %.01420.i54 = phi i64 [ %i.cz, %.lr.ph.i52 ], [ 1, %bb.o ]
  %.not18.i55 = icmp sgt i8 %i.cx, -1
  %i.cy = select i1 %.not18.i55, i64 1, i64 2
  %i.cz = add i64 %i.cy, %.01420.i54              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01321.i53, i64 1 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !126 ; 2 uses
  %.not.i56 = icmp eq i8 %i.db, 0
  br i1 %.not.i56, label %._crit_edge.i57, label %.lr.ph.i52, !llvm.loop !506

._crit_edge.i57:                                  ; preds = %.lr.ph.i52, %bb.o
  %.014.lcssa.i58 = phi i64 [ 1, %bb.o ], [ %i.cz, %.lr.ph.i52 ]
  %i.dc = call ptr @_glfw_calloc(i64 noundef %.014.lcssa.i58, i64 noundef 1) #18 ; 2 uses
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !126 ; 2 uses
  %.not1722.i59 = icmp eq i8 %i.dd, 0
  br i1 %.not1722.i59, label %convertLatin1toUTF8.exit64, label %.lr.ph26.i60

.lr.ph26.i60:                                     ; preds = %._crit_edge.i57, %.lr.ph26.i60
  %i.de = phi i8 [ %i.dj, %.lr.ph26.i60 ], [ %i.dd, %._crit_edge.i57 ]
  %.024.i61 = phi ptr [ %i.dh, %.lr.ph26.i60 ], [ %i.dc, %._crit_edge.i57 ] ; 2 uses
  %.123.i62 = phi ptr [ %i.di, %.lr.ph26.i60 ], [ %i.cv, %._crit_edge.i57 ]
  %i.df = sext i8 %i.de to i32
  %i.dg = call i64 @_glfwEncodeUTF8(ptr noundef %.024.i61, i32 noundef %i.df) #18
  %i.dh = getelementptr inbounds nuw i8, ptr %.024.i61, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.123.i62, i64 1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !126 ; 2 uses
  %.not17.i63 = icmp eq i8 %i.dj, 0
  br i1 %.not17.i63, label %convertLatin1toUTF8.exit64, label %.lr.ph26.i60, !llvm.loop !507

convertLatin1toUTF8.exit64:                       ; preds = %.lr.ph26.i60, %._crit_edge.i57
  store ptr %i.dc, ptr %., align 8, !tbaa !311
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dk = call ptr @_glfw_strdup(ptr noundef %i.cv) #18
  store ptr %i.dk, ptr %., align 8, !tbaa !311
  br label %bb.q

bb.q:                                             ; preds = %convertLatin1toUTF8.exit, %bb.l, %bb.j, %bb.m, %bb.p, %convertLatin1toUTF8.exit64
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141784), align 8, !tbaa !143
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.dn = call i32 %i.dl(ptr noundef %i.dm) #18   ; 0 uses
  %i.do = load ptr, ptr %., align 8, !tbaa !311   ; 2 uses
  %.not43 = icmp eq ptr %i.do, null
  br i1 %.not43, label %select.unfold, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.s

select.unfold:                                    ; preds = %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %5, label %bb.c, label %.loopexit, !llvm.loop !508

.loopexit:                                        ; preds = %select.unfold
  %.pre = load ptr, ptr %., align 8, !tbaa !311   ; 2 uses
  %.not44 = icmp eq ptr %.pre, null
  br i1 %.not44, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.41) #18
  %.035.pre = load ptr, ptr %., align 8, !tbaa !311
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.r, %bb.a
  %.035 = phi ptr [ %.pre, %.loopexit ], [ %.035.pre, %bb.r ], [ %.035.pre87, %bb.a ], [ %i.do, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12803) i32 @_glfwGetEGLPlatformX11(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133518), align 2, !tbaa !511, !range !202, !noundef !203
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133519), align 1, !tbaa !512, !range !202, !noundef !203
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 668), align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 225282
  %or.cond3 = select i1 %i.d, i1 %i.f, i1 false   ; 2 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133521), align 1, !tbaa !513, !range !202, !noundef !203
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp eq i32 %i.e, 225287
  %or.cond5 = select i1 %i.h, i1 %i.i, i1 false   ; 2 uses
  %.not = select i1 %or.cond5, i1 true, i1 %or.cond3
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %spec.store.select = select i1 %or.cond3, i32 12813, i32 0
  %spec.store.select6 = select i1 %or.cond5, i32 13392, i32 %spec.store.select
  %i.j = tail call ptr @_glfw_calloc(i64 noundef 5, i64 noundef 4) #18 ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !302
  store i32 12803, ptr %i.j, align 4, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %spec.store.select6, ptr %i.k, align 4, !tbaa !196
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 13455, ptr %i.l, align 4, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 12757, ptr %i.m, align 4, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 12344, ptr %i.n, align 4, !tbaa !196
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133514), align 2, !tbaa !514, !range !202, !noundef !203
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133515), align 1, !range !202
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  %. = select i1 %or.cond, i32 12757, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.1 = phi i32 [ %., %.thread ], [ 12802, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @_glfwGetEGLNativeDisplayX11() local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @_glfwGetEGLNativeWindowX11(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133480), align 8, !tbaa !515
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !188
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_glfwGetRequiredInstanceExtensionsX11(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133792), align 8, !tbaa !516, !range !202, !noundef !203
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133797), align 1, !tbaa !317, !range !202, !noundef !203
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142728), align 8
  %i.f = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133796), align 4, !range !202
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond5, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  store ptr @.str.21, ptr %0, align 8, !tbaa !311
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142728), align 8
  %i.j = icmp ne ptr %i.i, null
  %or.cond3 = select i1 %i.d, i1 %i.j, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.str.22..str.23 = select i1 %or.cond3, ptr @.str.22, ptr @.str.23
  store ptr %.str.22..str.23, ptr %i.k, align 8, !tbaa !311
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_glfwGetPhysicalDevicePresentationSupportX11(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142224), align 8, !tbaa !517
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !197
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138080), align 8, !tbaa !198
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.j = tail call i64 %i.a(ptr noundef %i.i) #18 ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133797), align 1, !tbaa !317, !range !202, !noundef !203
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142728), align 8
  %i.n = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133784), align 8, !tbaa !318 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr %i.o(ptr noundef %0, ptr noundef nonnull @.str.24) #18 ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.25) #18
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142736), align 8, !tbaa !319
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.s = tail call ptr %i.q(ptr noundef %i.r) #18 ; 2 uses
  %.not19 = icmp eq ptr %i.s, null
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.26) #18
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.t = tail call i32 %i.p(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.s, i64 noundef %i.j) #18
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.u = tail call ptr %i.o(ptr noundef %0, ptr noundef nonnull @.str.27) #18 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.28) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.w = tail call i32 %i.u(ptr noundef %1, i32 noundef %2, ptr noundef %i.v, i64 noundef %i.j) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c, %bb.f, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ %i.t, %bb.f ], [ %i.w, %bb.i ], [ 0, %bb.h ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_glfwCreateWindowSurfaceX11(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VkXcbSurfaceCreateInfoKHR, align 8 ; 7 uses
  %5 = alloca %struct.VkXlibSurfaceCreateInfoKHR, align 8 ; 7 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133797), align 1, !tbaa !317, !range !202, !noundef !203
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142728), align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142736), align 8, !tbaa !319
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8, !tbaa !114
  %i.g = tail call ptr %i.e(ptr noundef %i.f) #18 ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.26) #18
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133784), align 8, !tbaa !318
end_hunk_0
