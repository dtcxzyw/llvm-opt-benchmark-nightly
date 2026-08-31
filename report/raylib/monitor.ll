Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/monitor?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@_glfwInputMonitor:bb.a
  br i1 %.not, label %.preheader, label %.lr.ph

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph37, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.an = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = sub nuw nsw i64 %i.ap, %indvars.iv
  %i.ar = shl nuw nsw i64 %i.aq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ao, i64 %i.ar, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.i, %bb.a, %bb.c, %bb.d
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133872), align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.as, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void %i.as(ptr noundef %0, i32 noundef %1) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.at = icmp eq i32 %1, 262146
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_glfwFreeMonitor(ptr noundef %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare ptr @_glfw_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @_glfwFreeMonitor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 208), align 8
  tail call void %i.b(ptr noundef nonnull %0) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_glfw_free(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_glfw_free(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_glfw_free(ptr noundef %i.h) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_glfw_free(ptr noundef %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @_glfw_free(ptr noundef %i.l) #12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_glfw_free(ptr noundef %i.n) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_glfw_free(ptr noundef %i.p) #12
  tail call void @_glfw_free(ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_glfwInputMonitorWindow(ptr nofree noundef writeonly captures(none) initializes((144, 152)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_glfwAllocMonitor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_glfw_calloc(i64 noundef 1, i64 noundef 320) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  store i32 %2, ptr %i.c, align 4
  %i.d = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 127) #12 ; 0 uses
  ret ptr %i.a
}

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_glfwFreeGammaArrays(ptr nofree noundef captures(none) initializes((24, 32)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_glfw_free(ptr noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_glfw_free(ptr noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_glfw_free(ptr noundef %i.e) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

declare void @_glfw_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_glfwAllocGammaArrays(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  store ptr %i.b, ptr %0, align 8
  %i.c = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.g, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden ptr @_glfwChooseVideoMode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %.refreshVideoModes.exit_crit_edge

.refreshVideoModes.exit_crit_edge:                ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %refreshVideoModes.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 240), align 8
  %i.e = call ptr %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12, !inline_history !3 ; 4 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %refreshVideoModes.exit.thread, label %bb.c

refreshVideoModes.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 4
  %i.g = sext i32 %i.f to i64
  call void @qsort(ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef 24, ptr noundef nonnull @compareVideoModes) #12
  %i.h = load ptr, ptr %i.b, align 8
  call void @_glfw_free(ptr noundef %i.h) #12
  store ptr %i.e, ptr %i.b, align 8
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.i, ptr %i.j, align 8
  br label %refreshVideoModes.exit

refreshVideoModes.exit:                           ; preds = %.refreshVideoModes.exit_crit_edge, %bb.c
  %i.k = phi ptr [ %i.c, %.refreshVideoModes.exit_crit_edge ], [ %i.e, %bb.c ] ; 4 uses
  %i.l = phi i32 [ %.pre, %.refreshVideoModes.exit_crit_edge ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %refreshVideoModes.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %.not62.a = icmp eq i32 %i.o, -1                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4              ; 4 uses
  %.not63 = icmp eq i32 %i.q, -1                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 4              ; 4 uses
  %.not64 = icmp eq i32 %i.s, -1                  ; 3 uses
  %i.t = load i32, ptr %1, align 4                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load i32, ptr %i.w, align 4              ; 4 uses
  %.not65 = icmp eq i32 %i.x, -1
  %wide.trip.count125 = zext nneg i32 %i.l to i64 ; 4 uses
  br i1 %.not65, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.0.071.us = phi i64 [ %.sroa.0.1.us, %bb.m ], [ 0, %.lr.ph ]
  %.04773.us = phi i32 [ %.148.us, %bb.m ], [ -1, %.lr.ph ] ; 3 uses
  %.05172.us = phi i32 [ %.152.us, %bb.m ], [ -1, %.lr.ph ] ; 2 uses
  %.05471.us = phi i32 [ %.155.us, %bb.m ], [ -1, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv122 ; 7 uses
  br i1 %.not62.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub nsw i32 %i.aa, %i.o
  %i.ac = call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.049.us = phi i32 [ %i.ac, %bb.d ], [ 0, %.lr.ph.split.us ] ; 2 uses
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 %i.ae, %i.q
  %i.ag = call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = add nuw i32 %i.ag, %.049.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.150.us = phi i32 [ %i.ah, %bb.f ], [ %.049.us, %bb.e ] ; 2 uses
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub nsw i32 %i.aj, %i.s
  %i.al = call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = add i32 %i.al, %.150.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.us = phi i32 [ %i.am, %bb.h ], [ %.150.us, %bb.g ] ; 3 uses
  %i.an = load i32, ptr %i.y, align 4
  %i.ao = sub nsw i32 %i.an, %i.t                 ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub nsw i32 %i.ar, %i.v                 ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.as
  %i.au = add nuw nsw i32 %i.at, %i.ap            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = xor i32 %i.aw, -1                       ; 2 uses
  %i.ay = icmp ult i32 %.2.us, %.04773.us
  br i1 %i.ay, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp eq i32 %.2.us, %.04773.us          ; 2 uses
  %i.ba = icmp ult i32 %i.au, %.05471.us
  %or.cond.us = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.au, %.05471.us
  %or.cond66.us = select i1 %i.az, i1 %i.bb, i1 false
  %i.bc = icmp ugt i32 %.05172.us, %i.ax
  %or.cond67.us = select i1 %or.cond66.us, i1 %i.bc, i1 false
  br i1 %or.cond67.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %2 = ptrtoint ptr %i.y to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.155.us = phi i32 [ %i.au, %bb.l ], [ %.05471.us, %bb.k ]
  %.152.us = phi i32 [ %i.ax, %bb.l ], [ %.05172.us, %bb.k ]
  %.148.us = phi i32 [ %.2.us, %bb.l ], [ %.04773.us, %bb.k ]
  %.sroa.0.1.us = phi i64 [ %2, %bb.l ], [ %.sroa.0.071.us, %bb.k ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not63, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.u
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.u ], [ 0, %.lr.ph.split ] ; 2 uses
  %.sroa.0.071.us72 = phi i64 [ %.sroa.0.1.us86, %bb.u ], [ 0, %.lr.ph.split ]
  %.04773.us76 = phi i32 [ %.148.us88, %bb.u ], [ -1, %.lr.ph.split ] ; 3 uses
  %.05172.us77 = phi i32 [ %.152.us87, %bb.u ], [ -1, %.lr.ph.split ] ; 2 uses
  %.05471.us78 = phi i32 [ %.155.us86, %bb.u ], [ -1, %.lr.ph.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv117 ; 6 uses
  br i1 %.not62.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = sub nsw i32 %i.bf, %i.o
  %i.bh = call i32 @llvm.abs.i32(i32 %i.bg, i1 true)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.split.us
  %.049.us80 = phi i32 [ %i.bh, %bb.n ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  br i1 %.not64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = sub nsw i32 %i.bj, %i.s
  %i.bl = call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  %i.bm = add nuw i32 %i.bl, %.049.us80
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.us82 = phi i32 [ %i.bm, %bb.p ], [ %.049.us80, %bb.o ] ; 3 uses
  %i.bn = load i32, ptr %i.bd, align 4
  %i.bo = sub nsw i32 %i.bn, %i.t                 ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = sub nsw i32 %i.br, %i.v                 ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.bs
  %i.bu = add nuw nsw i32 %i.bt, %i.bp            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = sub nsw i32 %i.bw, %i.x
  %i.by = call i32 @llvm.abs.i32(i32 %i.bx, i1 true) ; 2 uses
  %i.bz = icmp ult i32 %.2.us82, %.04773.us76
  br i1 %i.bz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i32 %.2.us82, %.04773.us76      ; 2 uses
  %i.cb = icmp ult i32 %i.bu, %.05471.us78
  %or.cond.us83 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.us83, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp eq i32 %i.bu, %.05471.us78
  %or.cond66.us84 = select i1 %i.ca, i1 %i.cc, i1 false
  %i.cd = icmp ult i32 %i.by, %.05172.us77
  %or.cond67.us85 = select i1 %or.cond66.us84, i1 %i.cd, i1 false
  br i1 %or.cond67.us85, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %3 = ptrtoint ptr %i.bd to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.155.us86 = phi i32 [ %i.bu, %bb.t ], [ %.05471.us78, %bb.s ]
  %.152.us87 = phi i32 [ %i.by, %bb.t ], [ %.05172.us77, %bb.s ]
  %.148.us88 = phi i32 [ %.2.us82, %bb.t ], [ %.04773.us76, %bb.s ]
  %.sroa.0.1.us86 = phi i64 [ %3, %bb.t ], [ %.sroa.0.071.us72, %bb.s ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count125
  br i1 %exitcond121.not, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not64, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.aa
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %bb.aa ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.sroa.0.071.us89 = phi i64 [ %.sroa.0.1.us102, %bb.aa ], [ 0, %.lr.ph.split.split ]
  %.04773.us93 = phi i32 [ %.148.us104, %bb.aa ], [ -1, %.lr.ph.split.split ] ; 3 uses
  %.05172.us94 = phi i32 [ %.152.us103, %bb.aa ], [ -1, %.lr.ph.split.split ] ; 2 uses
  %.05471.us95 = phi i32 [ %.155.us102, %bb.aa ], [ -1, %.lr.ph.split.split ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv112 ; 6 uses
  br i1 %.not62.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.split.us
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = sub nsw i32 %i.cg, %i.o
  %i.ci = call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.split.split.split.us
  %.049.us97 = phi i32 [ %i.ci, %bb.v ], [ 0, %.lr.ph.split.split.split.us ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = sub nsw i32 %i.ck, %i.q
  %i.cm = call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = add nuw i32 %i.cm, %.049.us97           ; 3 uses
  %i.co = load i32, ptr %i.ce, align 4
  %i.cp = sub nsw i32 %i.co, %i.t                 ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = sub nsw i32 %i.cs, %i.v                 ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.ct
  %i.cv = add nuw nsw i32 %i.cu, %i.cq            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sub nsw i32 %i.cx, %i.x
  %i.cz = call i32 @llvm.abs.i32(i32 %i.cy, i1 true) ; 2 uses
  %i.da = icmp ult i32 %i.cn, %.04773.us93
  br i1 %i.da, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = icmp eq i32 %i.cn, %.04773.us93         ; 2 uses
  %i.dc = icmp ult i32 %i.cv, %.05471.us95
  %or.cond.us99 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.us99, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = icmp eq i32 %i.cv, %.05471.us95
  %or.cond66.us100 = select i1 %i.db, i1 %i.dd, i1 false
  %i.de = icmp ult i32 %i.cz, %.05172.us94
  %or.cond67.us101 = select i1 %or.cond66.us100, i1 %i.de, i1 false
  br i1 %or.cond67.us101, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %4 = ptrtoint ptr %i.ce to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.155.us102 = phi i32 [ %i.cv, %bb.z ], [ %.05471.us95, %bb.y ]
  %.152.us103 = phi i32 [ %i.cz, %bb.z ], [ %.05172.us94, %bb.y ]
  %.148.us104 = phi i32 [ %i.cn, %bb.z ], [ %.04773.us93, %bb.y ]
  %.sroa.0.1.us102 = phi i64 [ %4, %bb.z ], [ %.sroa.0.071.us89, %bb.y ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count125
  br i1 %exitcond116.not, label %._crit_edge, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.sroa.0.071 = phi i64 [ %.sroa.0.1, %bb.ag ], [ 0, %.lr.ph.split.split ]
  %.04773 = phi i32 [ %.148, %bb.ag ], [ -1, %.lr.ph.split.split ] ; 3 uses
  %.05172 = phi i32 [ %.152, %bb.ag ], [ -1, %.lr.ph.split.split ] ; 2 uses
  %.05471 = phi i32 [ %.155, %bb.ag ], [ -1, %.lr.ph.split.split ] ; 3 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 7 uses
  br i1 %.not62.a, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split.split
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sub nsw i32 %i.dh, %i.o
  %i.dj = call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.split.split
  %.049 = phi i32 [ %i.dj, %bb.ab ], [ 0, %.lr.ph.split.split.split ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sub nsw i32 %i.dl, %i.q
  %i.dn = call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = add nuw i32 %i.dn, %.049
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = sub nsw i32 %i.dq, %i.s
  %i.ds = call i32 @llvm.abs.i32(i32 %i.dr, i1 true)
  %i.dt = add i32 %i.ds, %i.do                    ; 3 uses
  %i.du = load i32, ptr %i.df, align 4
  %i.dv = sub nsw i32 %i.du, %i.t                 ; 2 uses
  %i.dw = mul nsw i32 %i.dv, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = sub nsw i32 %i.dy, %i.v                 ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dz
  %i.eb = add nuw nsw i32 %i.ea, %i.dw            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sub nsw i32 %i.ed, %i.x
  %i.ef = call i32 @llvm.abs.i32(i32 %i.ee, i1 true) ; 2 uses
  %i.eg = icmp ult i32 %i.dt, %.04773
  br i1 %i.eg, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = icmp eq i32 %i.dt, %.04773              ; 2 uses
  %i.ei = icmp ult i32 %i.eb, %.05471
  %or.cond = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = icmp eq i32 %i.eb, %.05471
  %or.cond66 = select i1 %i.eh, i1 %i.ej, i1 false
  %i.ek = icmp ult i32 %i.ef, %.05172
  %or.cond67 = select i1 %or.cond66, i1 %i.ek, i1 false
  br i1 %or.cond67, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %5 = ptrtoint ptr %i.df to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.155 = phi i32 [ %i.eb, %bb.af ], [ %.05471, %bb.ae ]
  %.152 = phi i32 [ %i.ef, %bb.af ], [ %.05172, %bb.ae ]
  %.148 = phi i32 [ %i.dt, %bb.af ], [ %.04773, %bb.ae ]
  %.sroa.0.1 = phi i64 [ %5, %bb.af ], [ %.sroa.0.071, %bb.ae ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count125
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split

._crit_edge:                                      ; preds = %bb.ag, %bb.aa, %bb.u, %bb.m, %refreshVideoModes.exit
  %.sroa.0.0.lcssa = phi i64 [ 0, %refreshVideoModes.exit ], [ %.sroa.0.1.us86, %bb.u ], [ %.sroa.0.1.us102, %bb.aa ], [ %.sroa.0.1.us, %bb.m ], [ %.sroa.0.1, %bb.ag ]
  %6 = inttoptr i64 %.sroa.0.0.lcssa to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %refreshVideoModes.exit.thread, %._crit_edge
  %.054 = phi ptr [ %6, %._crit_edge ], [ null, %refreshVideoModes.exit.thread ]
  ret ptr %.054
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @_glfwCompareVideoModes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add nsw i32 %i.m, %i.o                   ; 2 uses
  %i.q = load i32, ptr %0, align 4                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = mul nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = load i32, ptr %1, align 4                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul nsw i32 %i.w, %i.u                   ; 2 uses
  %.not.i = icmp eq i32 %i.h, %i.p
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = sub nsw i32 %i.h, %i.p
  br label %compareVideoModes.exit

bb.c:                                             ; preds = %bb.a
  %.not32.i.a = icmp eq i32 %i.t, %i.x
  br i1 %.not32.i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sub nsw i32 %i.t, %i.x
  br label %compareVideoModes.exit

bb.e:                                             ; preds = %bb.c
  %.not33.i = icmp eq i32 %i.q, %i.u
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sub nsw i32 %i.q, %i.u
  br label %compareVideoModes.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 %i.ac, %i.ae
  br label %compareVideoModes.exit

compareVideoModes.exit:                           ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.y, %bb.b ], [ %i.z, %bb.d ], [ %i.aa, %bb.f ], [ %i.af, %bb.g ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compareVideoModes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add nsw i32 %i.m, %i.o                   ; 2 uses
  %i.q = load i32, ptr %0, align 4                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = mul nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = load i32, ptr %1, align 4                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul nsw i32 %i.w, %i.u                   ; 2 uses
  %.not = icmp eq i32 %i.h, %i.p
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = sub nsw i32 %i.h, %i.p
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not32.a = icmp eq i32 %i.t, %i.x
  br i1 %.not32.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sub nsw i32 %i.t, %i.x
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not33 = icmp eq i32 %i.q, %i.u
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sub nsw i32 %i.q, %i.u
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 %i.ac, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.z, %bb.d ], [ %i.aa, %bb.f ], [ %i.af, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_glfwSplitBPP(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %0, 32
  %spec.store.select = select i1 %i.a, i32 24, i32 %0 ; 2 uses
  %i.b = sdiv i32 %spec.store.select, 3           ; 4 uses
  store i32 %i.b, ptr %3, align 4
  store i32 %i.b, ptr %2, align 4
  store i32 %i.b, ptr %1, align 4
  %.neg = mul nsw i32 %i.b, -3
  %i.c = add i32 %.neg, %spec.store.select        ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %2, align 4
  %i.g = icmp eq i32 %i.c, 2
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %1, align 4
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @glfwGetMonitors(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 4
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  store i32 %i.b, ptr %0, align 4
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1920), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @glfwGetPrimaryMonitor() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
end_hunk_0
