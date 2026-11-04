Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/x11_window?download=true
inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwPlatformGetKeyScancode:bb.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwPlatformCreateCursor(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_glfwCreateCursorX11(ptr noundef %1, i32 noundef %2, i32 noundef %3) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !218
  %.not = icmp ne i64 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare i64 @_glfwCreateCursorX11(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwPlatformCreateStandardCursor(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135320), align 8, !tbaa !381
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135352), align 8, !tbaa !382
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.d = tail call ptr %i.b(ptr noundef %i.c) #21 ; 2 uses
  %.not36 = icmp eq ptr %i.d, null
  br i1 %.not36, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135360), align 8, !tbaa !383
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.g = tail call i32 %i.e(ptr noundef %i.f) #21
  %switch.tableidx = add i32 %1, -221185          ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 10
  br i1 %i.h, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.c
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._glfwPlatformCreateStandardCursor, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.fold.split

.fold.split:                                      ; preds = %bb.c, %switch.lookup
  %.031 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.c ]
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135368), align 8, !tbaa !384
  %i.k = tail call ptr %i.j(ptr noundef %.031, ptr noundef nonnull %i.d, i32 noundef %i.g) #21 ; 3 uses
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.fold.split
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135344), align 8, !tbaa !385
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.n = tail call i64 %i.l(ptr noundef %i.m, ptr noundef nonnull %i.k) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !218
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135336), align 8, !tbaa !386
  tail call void %i.p(ptr noundef nonnull %i.k) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %.fold.split, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !218
  %.not38 = icmp eq i64 %i.r, 0
  br i1 %.not38, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %switch.tableidx42 = add i32 %1, -221185        ; 3 uses
  %i.s = icmp ult i32 %switch.tableidx42, 9
  %switch.maskindex = trunc i32 %switch.tableidx42 to i16
  %switch.shifted = lshr i16 319, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.s, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup44, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65547, ptr noundef nonnull @.str.18) #21
  br label %.thread

switch.lookup44:                                  ; preds = %bb.f
  %i.t = zext nneg i32 %switch.tableidx42 to i64
  %switch.gep45 = getelementptr inbounds nuw i8, ptr @switch.table._glfwPlatformCreateStandardCursor.6, i64 %i.t
  %switch.load46 = load i8, ptr %switch.gep45, align 1
  %switch.ext = zext i8 %switch.load46 to i32
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134336), align 8, !tbaa !387
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.w = tail call i64 %i.u(ptr noundef %i.v, i32 noundef %switch.ext) #21 ; 2 uses
  store i64 %i.w, ptr %i.q, align 8, !tbaa !218
  %.not39 = icmp eq i64 %i.w, 0
  br i1 %.not39, label %bb.h, label %.thread

bb.h:                                             ; preds = %switch.lookup44
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.19) #21
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.e, %switch.lookup44
  %.1 = phi i32 [ 1, %bb.e ], [ 1, %switch.lookup44 ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformDestroyCursor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134472), align 8, !tbaa !388
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.e = tail call i32 %i.c(ptr noundef %i.d, i64 noundef %i.b) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetCursor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !207
  %i.c = icmp eq i32 %i.b, 212993
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134368), align 8, !tbaa !208
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !218
  %i.l = tail call i32 %i.i(ptr noundef %i.f, i64 noundef %i.h, i64 noundef %i.k) #21, !inline_history !5 ; 0 uses
  br label %updateCursorImage.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134880), align 8, !tbaa !219
  %i.n = tail call i32 %i.m(ptr noundef %i.f, i64 noundef %i.h) #21, !inline_history !5 ; 0 uses
  br label %updateCursorImage.exit

updateCursorImage.exit:                           ; preds = %bb.c, %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.q = tail call i32 %i.o(ptr noundef %i.p) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %updateCursorImage.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetClipboardString(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_glfw_strdup(ptr noundef %0) #21
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130840), align 8, !tbaa !80
  tail call void @free(ptr noundef %i.b) #21
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130840), align 8, !tbaa !80
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134824), align 8, !tbaa !220
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !221
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %i.g = tail call i32 %i.c(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %i.f, i64 noundef 0) #21 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134544), align 8, !tbaa !191
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !221
  %i.k = tail call i64 %i.h(ptr noundef %i.i, i64 noundef %i.j) #21
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %.not = icmp eq i64 %i.k, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.20) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @_glfw_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @_glfwPlatformGetClipboardString() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !221
  %i.b = tail call fastcc ptr @getSelectionString(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getSelectionString(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fd_set, align 8             ; 6 uses
  %2 = alloca %struct.fd_set, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %union._XEvent, align 8             ; 10 uses
  %4 = alloca %union._XEvent, align 8             ; 6 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134200), align 8, !tbaa !88
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134168), align 8, !tbaa !78
  %i.h = icmp eq i64 %0, %i.g
  %. = select i1 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130832), ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130840) ; 9 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134544), align 8, !tbaa !191
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.k = tail call i64 %i.i(ptr noundef %i.j, i64 noundef %0) #21
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %i.m = icmp eq i64 %i.k, %i.l
  %.034.pre80 = load ptr, ptr %., align 8, !tbaa !212 ; 2 uses
  br i1 %i.m, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.034.pre80) #21
  store ptr null, ptr %., align 8, !tbaa !212
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %.sroa.idx = phi i64 [ %i.f, %bb.b ], [ 31, %select.unfold ] ; 4 uses
  %5 = phi i1 [ true, %bb.b ], [ false, %select.unfold ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134320), align 8, !tbaa !73
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134224), align 8, !tbaa !389
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %i.t = call i32 %i.p(ptr noundef %i.q, i64 noundef %0, i64 noundef %.sroa.idx, i64 noundef %i.r, i64 noundef %i.s, i64 noundef 0) #21 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134296), align 8, !tbaa !159
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %i.x = call i32 %i.u(ptr noundef %i.v, i64 noundef %i.w, i32 noundef 31, ptr noundef nonnull %3) #21
  %.not73 = icmp eq i32 %i.x, 0
  br i1 %.not73, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %waitForEvent.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !85  ; 3 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135896), align 8, !tbaa !86
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.aa)
  %.025.i = add nsw i32 %spec.select.i, 1
  %i.ac = srem i32 %i.aa, 64
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = sdiv i32 %i.aa, 64
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag ; 2 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.f, %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !66
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.aj = or i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !66
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135896), align 8, !tbaa !86 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.us.i
  %i.am = and i32 %i.ak, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = lshr i32 %i.ak, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !66
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us.i
  %i.au = call i32 @select(i32 noundef %.025.i, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %.not32.us.i = icmp eq i32 %i.au, -1
  br i1 %.not32.us.i, label %bb.f, label %waitForEvent.exit

bb.f:                                             ; preds = %bb.e
  %i.av = tail call ptr @__errno_location() #22
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %.not33.us.i = icmp eq i32 %i.aw, 4
  br i1 %.not33.us.i, label %.split.us.i, label %waitForEvent.exit

waitForEvent.exit:                                ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134296), align 8, !tbaa !159
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130792), align 8, !tbaa !75
  %i.ba = call i32 %i.ax(ptr noundef %i.ay, i64 noundef %i.az, i32 noundef 31, ptr noundef nonnull %3) #21
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %waitForEvent.exit, %bb.c
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !77
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134288), align 8, !tbaa !76
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bf = call i32 %i.bd(ptr noundef %i.be, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #21 ; 0 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134576), align 8, !tbaa !64
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !77
  %i.bj = load i64, ptr %i.n, align 8, !tbaa !77
  %i.bk = call i32 %i.bg(ptr noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bj, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134152), align 8, !tbaa !390
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.g, %bb.k
  %.029 = phi i64 [ %i.dc, %bb.k ], [ 1, %bb.g ]
  %.0 = phi ptr [ %i.dd, %bb.k ], [ null, %bb.g ] ; 7 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134288), align 8, !tbaa !76
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bq = call i32 %i.bo(ptr noundef %i.bp, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #21
  %.not3874 = icmp eq i32 %i.bq, 0
  br i1 %.not3874, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %.preheader, %waitForEvent.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !85 ; 3 uses
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135896), align 8, !tbaa !86
  %spec.select.i44 = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.bt)
  %.025.i45 = add nsw i32 %spec.select.i44, 1
  %i.bv = srem i32 %i.bt, 64
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = sdiv i32 %i.bt, 64
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bz ; 2 uses
  br label %.split.us.i46

.split.us.i46:                                    ; preds = %bb.j, %.lr.ph76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !tbaa !66
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !66
  %i.cc = or i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !66
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135896), align 8, !tbaa !86 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us.i46
  %i.cf = and i32 %i.cd, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = lshr i32 %i.cd, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !66
  %i.cm = or i64 %i.cl, %i.ch
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.us.i46
  %i.cn = call i32 @select(i32 noundef %.025.i45, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %.not32.us.i47 = icmp eq i32 %i.cn, -1
  br i1 %.not32.us.i47, label %bb.j, label %waitForEvent.exit49

bb.j:                                             ; preds = %bb.i
  %i.co = tail call ptr @__errno_location() #22
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !87
  %.not33.us.i48 = icmp eq i32 %i.cp, 4
  br i1 %.not33.us.i48, label %.split.us.i46, label %waitForEvent.exit49

waitForEvent.exit49:                              ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134288), align 8, !tbaa !76
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.cs = call i32 %i.cq(ptr noundef %i.cr, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #21
  %.not38 = icmp eq i32 %i.cs, 0
  br i1 %.not38, label %.lr.ph76, label %._crit_edge77

._crit_edge77:                                    ; preds = %waitForEvent.exit49, %.preheader
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.cv = call i32 %i.ct(ptr noundef %i.cu) #21   ; 0 uses
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134576), align 8, !tbaa !64
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !77
  %i.cz = load i64, ptr %i.n, align 8, !tbaa !77
  %i.da = call i32 %i.cw(ptr noundef %i.cx, i64 noundef %i.cy, i64 noundef %i.cz, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.db = load i64, ptr %i.d, align 8, !tbaa !66  ; 3 uses
  %.not39 = icmp eq i64 %i.db, 0
  br i1 %.not39, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge77
  %i.dc = add i64 %i.db, %.029                    ; 3 uses
  %i.dd = call ptr @realloc(ptr noundef %.0, i64 noundef %i.dc) #25 ; 3 uses
  %i.de = xor i64 %i.db, -1
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !77
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.di = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.dh) #21 ; 0 uses
  br label %.preheader

.thread:                                          ; preds = %._crit_edge77
  %i.dj = icmp eq i64 %.sroa.idx, 31
  br i1 %i.dj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread
  %i.dk = load i8, ptr %.0, align 1, !tbaa !77    ; 2 uses
  %.not19.i = icmp eq i8 %i.dk, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.dl = phi i8 [ %i.dp, %.lr.ph.i ], [ %i.dk, %bb.l ]
  %.01321.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.0, %bb.l ]
  %.01420.i = phi i64 [ %i.dn, %.lr.ph.i ], [ 1, %bb.l ]
  %.not18.i = icmp sgt i8 %i.dl, -1
  %i.dm = select i1 %.not18.i, i64 1, i64 2
  %i.dn = add i64 %i.dm, %.01420.i                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01321.i, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !77  ; 2 uses
  %.not.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.014.lcssa.i = phi i64 [ 1, %bb.l ], [ %i.dn, %.lr.ph.i ]
  %i.dq = call noalias ptr @calloc(i64 noundef %.014.lcssa.i, i64 noundef 1) #24 ; 2 uses
  %i.dr = load i8, ptr %.0, align 1, !tbaa !77    ; 2 uses
  %.not1722.i = icmp eq i8 %i.dr, 0
  br i1 %.not1722.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %._crit_edge.i, %encodeUTF8.exit.i
  %i.ds = phi i8 [ %i.dw, %encodeUTF8.exit.i ], [ %i.dr, %._crit_edge.i ] ; 2 uses
  %.024.i = phi ptr [ %i.du, %encodeUTF8.exit.i ], [ %i.dq, %._crit_edge.i ] ; 2 uses
  %.123.i = phi ptr [ %i.dv, %encodeUTF8.exit.i ], [ %.0, %._crit_edge.i ]
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.m, label %encodeUTF8.exit.i

bb.m:                                             ; preds = %.lr.ph26.i
  store i8 %i.ds, ptr %.024.i, align 1, !tbaa !77
  br label %encodeUTF8.exit.i

encodeUTF8.exit.i:                                ; preds = %bb.m, %.lr.ph26.i
  %.0.i.i = phi i64 [ 1, %bb.m ], [ 0, %.lr.ph26.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.024.i, i64 %.0.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.123.i, i64 1 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !77  ; 2 uses
  %.not17.i = icmp eq i8 %i.dw, 0
  br i1 %.not17.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i

convertLatin1toUTF8.exit:                         ; preds = %encodeUTF8.exit.i, %._crit_edge.i
  store ptr %i.dq, ptr %., align 8, !tbaa !212
  call void @free(ptr noundef %.0) #21
  br label %bb.t

bb.n:                                             ; preds = %.thread
  store ptr %.0, ptr %., align 8, !tbaa !212
  br label %bb.t

bb.o:                                             ; preds = %bb.g
  %i.dx = icmp eq i64 %i.bl, %.sroa.idx
  br i1 %i.dx, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.dy = icmp eq i64 %.sroa.idx, 31
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !212 ; 5 uses
  br i1 %i.dy, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !77  ; 2 uses
  %.not19.i50 = icmp eq i8 %i.ea, 0
  br i1 %.not19.i50, label %._crit_edge.i56, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.q, %.lr.ph.i51
  %i.eb = phi i8 [ %i.ef, %.lr.ph.i51 ], [ %i.ea, %bb.q ]
  %.01321.i52 = phi ptr [ %i.ee, %.lr.ph.i51 ], [ %i.dz, %bb.q ]
  %.01420.i53 = phi i64 [ %i.ed, %.lr.ph.i51 ], [ 1, %bb.q ]
  %.not18.i54 = icmp sgt i8 %i.eb, -1
  %i.ec = select i1 %.not18.i54, i64 1, i64 2
  %i.ed = add i64 %i.ec, %.01420.i53              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01321.i52, i64 1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !77  ; 2 uses
  %.not.i55 = icmp eq i8 %i.ef, 0
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i51

._crit_edge.i56:                                  ; preds = %.lr.ph.i51, %bb.q
  %.014.lcssa.i57 = phi i64 [ 1, %bb.q ], [ %i.ed, %.lr.ph.i51 ]
  %i.eg = call noalias ptr @calloc(i64 noundef %.014.lcssa.i57, i64 noundef 1) #24 ; 2 uses
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !77  ; 2 uses
  %.not1722.i58 = icmp eq i8 %i.eh, 0
  br i1 %.not1722.i58, label %convertLatin1toUTF8.exit65, label %.lr.ph26.i59

.lr.ph26.i59:                                     ; preds = %._crit_edge.i56, %encodeUTF8.exit.i62
  %i.ei = phi i8 [ %i.em, %encodeUTF8.exit.i62 ], [ %i.eh, %._crit_edge.i56 ] ; 2 uses
  %.024.i60 = phi ptr [ %i.ek, %encodeUTF8.exit.i62 ], [ %i.eg, %._crit_edge.i56 ] ; 2 uses
  %.123.i61 = phi ptr [ %i.el, %encodeUTF8.exit.i62 ], [ %i.dz, %._crit_edge.i56 ]
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.r, label %encodeUTF8.exit.i62

bb.r:                                             ; preds = %.lr.ph26.i59
  store i8 %i.ei, ptr %.024.i60, align 1, !tbaa !77
  br label %encodeUTF8.exit.i62

encodeUTF8.exit.i62:                              ; preds = %bb.r, %.lr.ph26.i59
  %.0.i.i63 = phi i64 [ 1, %bb.r ], [ 0, %.lr.ph26.i59 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.024.i60, i64 %.0.i.i63
  %i.el = getelementptr inbounds nuw i8, ptr %.123.i61, i64 1 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !77  ; 2 uses
  %.not17.i64 = icmp eq i8 %i.em, 0
  br i1 %.not17.i64, label %convertLatin1toUTF8.exit65, label %.lr.ph26.i59

convertLatin1toUTF8.exit65:                       ; preds = %encodeUTF8.exit.i62, %._crit_edge.i56
  store ptr %i.eg, ptr %., align 8, !tbaa !212
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.en = call ptr @_glfw_strdup(ptr noundef %i.dz) #21
  store ptr %i.en, ptr %., align 8, !tbaa !212
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %convertLatin1toUTF8.exit, %bb.o, %bb.s, %convertLatin1toUTF8.exit65
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.eq = call i32 %i.eo(ptr noundef %i.ep) #21   ; 0 uses
  %i.er = load ptr, ptr %., align 8, !tbaa !212   ; 2 uses
  %.not41 = icmp eq ptr %i.er, null
  br i1 %.not41, label %select.unfold, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.v

select.unfold:                                    ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %5, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %select.unfold
  %.pre = load ptr, ptr %., align 8, !tbaa !212   ; 2 uses
  %.not42 = icmp eq ptr %.pre, null
  br i1 %.not42, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.41) #21
  %.034.pre = load ptr, ptr %., align 8, !tbaa !212
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.u, %bb.a
  %.034 = phi ptr [ %.pre, %.loopexit ], [ %.034.pre, %bb.u ], [ %.034.pre80, %bb.a ], [ %i.er, %.loopexit.thread ]
  ret ptr %.034
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define range(i32 0, 12803) i32 @_glfwPlatformGetEGLPlatform(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136040), align 8, !tbaa !391
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136044), align 4, !tbaa !392
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 12), align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 225282
  %or.cond3 = select i1 %i.c, i1 %i.e, i1 false   ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136052), align 4, !tbaa !393
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp eq i32 %i.d, 225287
  %or.cond5 = select i1 %i.g, i1 %i.h, i1 false   ; 2 uses
  %.not16 = select i1 %or.cond5, i1 true, i1 %or.cond3
  br i1 %.not16, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %spec.store.select = select i1 %or.cond3, i32 12813, i32 0
  %spec.store.select6 = select i1 %or.cond5, i32 13392, i32 %spec.store.select
  %i.i = tail call noalias dereferenceable_or_null(20) ptr @calloc(i64 noundef 5, i64 noundef 4) #24 ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !194
  store i32 12803, ptr %i.i, align 4, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %spec.store.select6, ptr %i.j, align 4, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 13455, ptr %i.k, align 4, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 12757, ptr %i.l, align 4, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 12344, ptr %i.m, align 4, !tbaa !87
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136028), align 4, !tbaa !394
  %i.o = icmp ne i32 %i.n, 0
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136032), align 8
  %i.q = icmp ne i32 %i.p, 0
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  %. = select i1 %or.cond, i32 12757, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.1 = phi i32 [ %., %.thread ], [ 12802, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_glfwPlatformGetEGLNativeDisplay() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_glfwPlatformGetEGLNativeWindow(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135976), align 8, !tbaa !395
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !112
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_glfwPlatformGetRequiredInstanceExtensions(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130728), align 8, !tbaa !396
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130736), align 8, !tbaa !222
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135424), align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130732), align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond5, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  store ptr @.str.21, ptr %0, align 8, !tbaa !212
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135424), align 8
  %i.i = icmp ne ptr %i.h, null
  %or.cond3 = select i1 %i.c, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.str.22..str.23 = select i1 %or.cond3, ptr @.str.22, ptr @.str.23
  store ptr %.str.22..str.23, ptr %i.j, align 8, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_glfwPlatformGetPhysicalDevicePresentationSupport(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134912), align 8, !tbaa !397
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130768), align 8, !tbaa !121
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.j = tail call i64 %i.a(ptr noundef %i.i) #21 ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130736), align 8, !tbaa !222
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135424), align 8
  %i.n = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130720), align 8, !tbaa !223 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr %i.o(ptr noundef %0, ptr noundef nonnull @.str.24) #21 ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.25) #21
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135432), align 8, !tbaa !224
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.s = tail call ptr %i.q(ptr noundef %i.r) #21 ; 2 uses
  %.not19 = icmp eq ptr %i.s, null
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.26) #21
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.t = tail call i32 %i.p(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.s, i64 noundef %i.j) #21
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.u = tail call ptr %i.o(ptr noundef %0, ptr noundef nonnull @.str.27) #21 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.28) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.w = tail call i32 %i.u(ptr noundef %1, i32 noundef %2, ptr noundef %i.v, i64 noundef %i.j) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c, %bb.f, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ %i.t, %bb.f ], [ %i.w, %bb.i ], [ 0, %bb.h ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define i32 @_glfwPlatformCreateWindowSurface(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VkXcbSurfaceCreateInfoKHR, align 8 ; 7 uses
  %5 = alloca %struct.VkXlibSurfaceCreateInfoKHR, align 8 ; 7 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130736), align 8, !tbaa !222
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135424), align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135432), align 8, !tbaa !224
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.g = tail call ptr %i.e(ptr noundef %i.f) #21 ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.26) #21
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130720), align 8, !tbaa !223
end_hunk_0
