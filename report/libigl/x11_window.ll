Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/x11_window?download=true
inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwPlatformSetWindowResizable:bb.a
  %.not40.i = icmp eq i32 %i.aa, -1
  br i1 %.not40.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !145
  %i.ac = or i64 %i.ab, 32
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.y, ptr %i.ad, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !151
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !152 ; 2 uses
  %.not41.i = icmp eq i32 %i.ag, -1
  br i1 %.not41.i, label %updateNormalHints.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !153 ; 2 uses
  %.not42.i = icmp eq i32 %i.ai, -1
  br i1 %.not42.i, label %updateNormalHints.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.b
  %.sink61.i = phi i64 [ 128, %bb.j ], [ 48, %bb.b ]
  %.sink58.i = phi i64 [ 56, %bb.j ], [ 32, %bb.b ]
  %.sink56.i = phi i32 [ %i.ag, %bb.j ], [ %i.g, %bb.b ] ; 2 uses
  %.sink55.i = phi i64 [ 48, %bb.j ], [ 24, %bb.b ]
  %.sink52.i = phi i64 [ 60, %bb.j ], [ 36, %bb.b ]
  %.sink50.i = phi i32 [ %i.ai, %bb.j ], [ %i.i, %bb.b ] ; 2 uses
  %.sink49.i = phi i64 [ 52, %bb.j ], [ 28, %bb.b ]
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !145
  %i.ak = or i64 %i.aj, %.sink61.i
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink58.i
  store i32 %.sink56.i, ptr %i.al, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink55.i
  store i32 %.sink56.i, ptr %i.am, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink52.i
  store i32 %.sink50.i, ptr %i.an, align 4, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink49.i
  store i32 %.sink50.i, ptr %i.ao, align 4, !tbaa !87
  br label %updateNormalHints.exit

updateNormalHints.exit:                           ; preds = %bb.a, %bb.i, %bb.j, %.sink.split.i
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !145
  %i.aq = or i64 %i.ap, 512
  store i64 %i.aq, ptr %i.k, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 10, ptr %i.ar, align 8, !tbaa !154
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134840), align 8, !tbaa !155
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.au = load i64, ptr %i.c, align 8, !tbaa !112
  call void %i.as(ptr noundef %i.at, i64 noundef %i.au, ptr noundef nonnull %i.k) #21, !inline_history !2
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.aw = call i32 %i.av(ptr noundef nonnull %i.k) #21, !inline_history !2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowDecorated(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.anon.24, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 2, ptr %2, align 8, !tbaa !132
  %.not = icmp ne i32 %1, 0
  %i.b = zext i1 %.not to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.c, align 8, !tbaa !319
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134048), align 8, !tbaa !133 ; 2 uses
  %i.i = call i32 %i.d(ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 5) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowFloating(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %2 = alloca %union._XEvent, align 8             ; 11 uses
  %3 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134
  %i.g = icmp ne i64 %i.f, 0
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112
  %i.n = call i32 %i.j(ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull %3) #21, !inline_history !161 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !157
  %.not = icmp eq i32 %i.p, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not31 = icmp ne i32 %1, 0
  %i.q = zext i1 %.not31 to i64
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8, !tbaa !320
  %.val = load i64, ptr %i.l, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  store i32 33, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.val, ptr %i.t, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 32, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.r, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.q, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.s, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 1, ptr %i.y, align 8, !tbaa !77
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134760), align 8, !tbaa !94
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !125
  %i.ac = call i32 %i.z(ptr noundef %i.aa, i64 noundef %i.ab, i32 noundef 0, i64 noundef 1572864, ptr noundef nonnull %2) #21, !inline_history !1 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr null, ptr %i.e, align 8, !tbaa !91
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !112
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134576), align 8, !tbaa !64
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ah = call i32 %i.af(ptr noundef %i.ag, i64 noundef %i.ad, i64 noundef %i.ae, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21, !inline_history !184 ; 0 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !66  ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not28 = icmp eq i32 %1, 0
  br i1 %.not28, label %bb.g, label %.preheader35

.preheader35:                                     ; preds = %bb.d
  %.not41 = icmp eq i64 %i.ai, 0
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader35
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8, !tbaa !320
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i64 %.02536, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.ai
  br i1 %exitcond.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.02536 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.02536
  %i.an = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ao = icmp eq i64 %i.an, %i.ak
  br i1 %i.ao, label %.loopexit, label %bb.e

.critedge:                                        ; preds = %bb.e, %.preheader35
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !112
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134
  %i.at = call i32 %i.ap(ptr noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.as, i64 noundef 4, i32 noundef 32, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), i32 noundef 1) #21 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !91  ; 5 uses
  %.not29 = icmp eq ptr %i.au, null
  br i1 %.not29, label %.thread33, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not42 = icmp eq i64 %i.ai, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8, !tbaa !320
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph38, %bb.i
  %.137 = phi i64 [ 0, %.lr.ph38 ], [ %i.az, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.137
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !66
  %i.ay = icmp eq i64 %i.ax, %i.av
  br i1 %i.ay, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nuw i64 %.137, 1                    ; 2 uses
  %exitcond43.not = icmp eq i64 %i.az, %i.ai
  br i1 %exitcond43.not, label %.loopexit, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.1.lcssa = phi i64 [ 0, %.preheader ], [ %.137, %bb.h ] ; 2 uses
  %i.ba = icmp eq i64 %.1.lcssa, %i.ai
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %i.ai
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.1.lcssa
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !66
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !112
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134
  %i.bj = trunc i64 %i.ai to i32
  %i.bk = add i32 %i.bj, -1
  %i.bl = call i32 %i.bf(ptr noundef %i.bg, i64 noundef %i.bh, i64 noundef %i.bi, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.au, i32 noundef %i.bk) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %.not30 = icmp eq ptr %.pr, null
  br i1 %.not30, label %.thread33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.bn = call i32 %i.bm(ptr noundef nonnull %.pr) #21 ; 0 uses
  br label %.thread33

.thread33:                                        ; preds = %bb.k, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.m

.loopexit:                                        ; preds = %bb.f, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.n

bb.m:                                             ; preds = %.thread33, %bb.c
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bq = call i32 %i.bo(ptr noundef %i.bp) #21   ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowMousePassthrough(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135608), align 8, !tbaa !321
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq i32 %1, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134352), align 8, !tbaa !322
  %i.c = tail call ptr %i.b() #21                 ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135648), align 8, !tbaa !323
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112
  tail call void %i.d(ptr noundef %i.e, i64 noundef %i.g, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef %i.c, i32 noundef 0) #21
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134400), align 8, !tbaa !324
  %i.i = tail call i32 %i.h(ptr noundef %i.c) #21 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135664), align 8, !tbaa !325
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112
  tail call void %i.j(ptr noundef %i.k, i64 noundef %i.m, i32 noundef 2, i32 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define float @_glfwPlatformGetWindowOpacity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134544), align 8, !tbaa !191
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134000), align 8, !tbaa !192
  %i.i = tail call i64 %i.f(ptr noundef %i.g, i64 noundef %i.h) #21
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr null, ptr %i.e, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.k = load i64, ptr %i.j, align 8, !tbaa !112
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133992), align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134576), align 8, !tbaa !64
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.o = call i32 %i.m(ptr noundef %i.n, i64 noundef %i.k, i64 noundef %i.l, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef 6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21, !inline_history !184 ; 0 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not3 = icmp eq i64 %i.p, 0
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !194  ; 3 uses
  br i1 %.not3, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.q = load i32, ptr %.pr, align 4, !tbaa !87
  %i.r = uitofp i32 %i.q to double
  %i.s = fdiv double %i.r, f0x41EFFFFFFFE00000
  %i.t = fptrunc double %i.s to float
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not4 = icmp eq ptr %.pr, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.07 = phi float [ %i.t, %.thread ], [ 1.000000e+00, %bb.c ]
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.v = call i32 %i.u(ptr noundef nonnull %.pr) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.08 = phi float [ %.07, %bb.d ], [ 1.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.1 = phi float [ %.08, %bb.e ], [ 1.000000e+00, %bb.a ]
  ret float %.1
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowOpacity(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = fpext float %1 to double
  %i.c = fmul double %i.b, f0x41EFFFFFFFE00000
  %i.d = fptoui double %i.c to i32
  store i32 %i.d, ptr %i.a, align 4, !tbaa !87
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133992), align 8, !tbaa !195
  %i.j = call i32 %i.e(ptr noundef %i.f, i64 noundef %i.h, i64 noundef %i.i, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetRawMouseMotion(ptr nofree noundef readnone captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.XIEventMask, align 8        ; 6 uses
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %3 = alloca %struct.XIEventMask, align 8        ; 6 uses
  %i.b = alloca [3 x i8], align 2                 ; 5 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135496), align 8, !tbaa !196
  %.not = icmp ne i32 %i.c, 0
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133824), align 8
  %.not3 = icmp eq ptr %i.d, %0
  %or.cond = select i1 %.not, i1 %.not3, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq i32 %1, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i16 0, ptr %i.b, align 2
  store i32 1, ptr %3, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.e, align 4, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 2, ptr %i.g, align 2, !tbaa !77
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135544), align 8, !tbaa !201
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !125
  %i.k = call i32 %i.h(ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %3, i32 noundef 1) #21, !inline_history !3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1
  store i32 1, ptr %2, align 8, !tbaa !198
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !199
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.m, align 8, !tbaa !200
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135544), align 8, !tbaa !201
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !125
  %i.q = call i32 %i.n(ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %2, i32 noundef 1) #21, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @_glfwPlatformRawMouseMotionSupported() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135496), align 8, !tbaa !196
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformPollEvents() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
end_hunk_0
