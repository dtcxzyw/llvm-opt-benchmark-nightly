Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ToggleFullscreen:bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store <2 x i64> %i.d, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.e = tail call i32 @GetCurrentMonitor()       ; 2 uses
  %i.f = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @glfwGetVideoMode(ptr noundef nonnull %i.k) #56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 20), align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 24), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 20), align 4
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.r = or i32 %i.q, 2
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.s = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowAttrib(ptr noundef %i.s, i32 noundef 131077, i32 noundef 0) #56
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.u = or i32 %i.t, 8
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.v = load ptr, ptr @platform.0, align 8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  call void @glfwSetWindowMonitor(ptr noundef %i.v, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0, i32 noundef %i.w, i32 noundef %i.x, i32 noundef -1) #56
  br label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.120)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %.pre15 = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 52), align 4 ; 3 uses
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4 ; 3 uses
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.aa = and i32 %i.b, -3
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.ab = and i32 %i.b, 8192
  %.not11 = icmp eq i32 %i.ab, 0
  %i.ac = trunc i64 %i.y to i32
  %i.ad = lshr i64 %i.y, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = trunc i64 %i.z to i32
  %i.ag = lshr i64 %i.z, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  br i1 %.not11, label %bb.g, label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store i64 4575657222473777152, ptr %0, align 8
  %i.ai = load ptr, ptr @platform.0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.ai, ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #56
  %.pre.i = load <2 x float>, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.ak = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.al = uitofp <2 x i32> %i.ak to <2 x float>
  %i.am = fmul <2 x float> %.pre.i, %i.al
  %i.an = fptoui <2 x float> %i.am to <2 x i32>   ; 3 uses
  store <2 x i32> %i.an, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  %.pre14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  %i.ao = extractelement <2 x i32> %i.an, i64 0
  %i.ap = extractelement <2 x i32> %i.an, i64 1
  br label %bb.g

bb.g:                                             ; preds = %GetWindowScaleDPI.exit, %bb.f
  %i.aq = phi i32 [ %i.ap, %GetWindowScaleDPI.exit ], [ %i.ah, %bb.f ]
  %i.ar = phi i32 [ %i.ao, %GetWindowScaleDPI.exit ], [ %i.af, %bb.f ]
  %i.as = phi i32 [ %.pre14, %GetWindowScaleDPI.exit ], [ %i.ae, %bb.f ]
  %i.at = phi i32 [ %.pre, %GetWindowScaleDPI.exit ], [ %i.ac, %bb.f ]
  %i.au = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowMonitor(ptr noundef %i.au, ptr noundef null, i32 noundef %i.at, i32 noundef %i.as, i32 noundef %i.ar, i32 noundef %i.aq, i32 noundef -1) #56
  %i.av = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowAttrib(ptr noundef %i.av, i32 noundef 131077, i32 noundef 1) #56
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.ax = and i32 %i.aw, -9                       ; 2 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ %.pre15, %bb.e ]
  %i.az = and i32 %i.ay, 64
  %.not12 = icmp eq i32 %i.az, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @glfwSwapInterval(i32 noundef 1) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetCurrentMonitor() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.f = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.loopexit83

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.j = and i32 %i.i, 2
  %.not82 = icmp eq i32 %i.j, 0
  br i1 %.not82, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @platform.0, align 8
  %i.l = call ptr @glfwGetWindowMonitor(ptr noundef %i.k) #56
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %.loopexit83

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %.loopexit83.loopexit.split.loop.exit102, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit83, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  store i32 0, ptr %i.c, align 4
  %i.r = load ptr, ptr @platform.0, align 8
  call void @glfwGetWindowPos(ptr noundef %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #56
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.t = sdiv i32 %i.s, 2
  %i.u = load i32, ptr %i.b, align 4
  %i.v = add nsw i32 %i.u, %i.t
  store i32 %i.v, ptr %i.b, align 4
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  %i.x = sdiv i32 %i.w, 2
  %i.y = load i32, ptr %i.c, align 4
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %i.c, align 4
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %bb.e, %bb.k
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.k ], [ 0, %bb.e ] ; 4 uses
  %.03790 = phi i32 [ %.4.ph, %bb.k ], [ 2147483647, %bb.e ] ; 3 uses
  %.14289 = phi i32 [ %.5.ph, %bb.k ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  store i32 0, ptr %i.e, align 4
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  call void @glfwGetMonitorPos(ptr noundef %i.ad, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #56
  %i.ae = call ptr @glfwGetVideoMode(ptr noundef %i.ad) #56 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph92
  %i.af = load i32, ptr %i.d, align 4             ; 4 uses
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = add nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = load i32, ptr %i.e, align 4             ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  %i.ao = load i32, ptr %i.b, align 4             ; 5 uses
  %.not56 = icmp sge i32 %i.ao, %i.af
  %.not57.not = icmp slt i32 %i.ao, %i.ah
  %or.cond = select i1 %.not56, i1 %.not57.not, i1 false
  %.pre = load i32, ptr %i.c, align 4             ; 5 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not58 = icmp sge i32 %.pre, %i.aj
  %.not59.not = icmp slt i32 %.pre, %i.am
  %or.cond62 = select i1 %.not58, i1 %.not59.not, i1 false
  br i1 %or.cond62, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %0 = icmp slt i32 %i.ao, %i.af
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.ai)
  %.035 = select i1 %0, i32 %i.af, i32 %spec.select
  %i.ap = icmp slt i32 %.pre, %i.aj
  %spec.select63 = call i32 @llvm.smin.i32(i32 %.pre, i32 %i.an)
  %.0 = select i1 %i.ap, i32 %i.aj, i32 %spec.select63
  %i.aq = sub nsw i32 %i.ao, %.035                ; 2 uses
  %i.ar = sub nsw i32 %.pre, %.0                  ; 2 uses
  %i.as = mul nsw i32 %i.aq, %i.aq
  %i.at = mul nsw i32 %i.ar, %i.ar
  %i.au = add nuw nsw i32 %i.at, %i.as            ; 2 uses
  %i.av = icmp slt i32 %i.au, %.03790
  %i.aw = trunc nuw nsw i64 %indvars.iv96 to i32
  %spec.select64 = select i1 %i.av, i32 %i.aw, i32 %.14289
  %spec.select65 = call i32 @llvm.smin.i32(i32 %i.au, i32 %.03790)
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph92
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.121)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ax = trunc nuw nsw i64 %indvars.iv96 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.h
  %.5.ph = phi i32 [ %spec.select64, %bb.h ], [ %.14289, %bb.i ] ; 2 uses
  %.4.ph = phi i32 [ %spec.select65, %bb.h ], [ %.03790, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next97, %i.az
  br i1 %i.ba, label %.lr.ph92, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.e, %bb.j
  %.6 = phi i32 [ %i.ax, %bb.j ], [ 0, %bb.e ], [ %.5.ph, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  br label %.loopexit83

.loopexit83.loopexit.split.loop.exit102:          ; preds = %.lr.ph
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit83

.loopexit83:                                      ; preds = %bb.d, %.loopexit83.loopexit.split.loop.exit102, %bb.c, %.loopexit, %bb.a
  %.7 = phi i32 [ 0, %bb.a ], [ %.6, %.loopexit ], [ 0, %bb.c ], [ %i.bb, %.loopexit83.loopexit.split.loop.exit102 ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.7
}

declare ptr @glfwGetMonitors(ptr noundef) local_unnamed_addr #34

declare ptr @glfwGetVideoMode(ptr noundef) local_unnamed_addr #34

declare void @glfwSetWindowAttrib(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

declare void @glfwSetWindowMonitor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define <2 x float> @GetWindowScaleDPI() local_unnamed_addr #25 {
bb.a:
  %0 = alloca %struct.Vector2, align 8            ; 4 uses
  store i64 4575657222473777152, ptr %0, align 8
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, 8194
  %or.cond = icmp eq i32 %i.b, 8192
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @platform.0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.d) #56
  %.pre = load <2 x float>, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi <2 x float> [ %.pre, %bb.b ], [ splat (float 1.000000e+00), %bb.a ]
  ret <2 x float> %i.e
}

declare void @glfwSwapInterval(i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @ToggleBorderlessWindowed() local_unnamed_addr #25 {
bb.a:
  %0 = alloca %struct.Vector2, align 8            ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ToggleFullscreen()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.d = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.e = call i32 @GetCurrentMonitor()            ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp slt i32 %i.e, %i.g
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call ptr @glfwGetVideoMode(ptr noundef %i.k) #56 ; 5 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.n = and i32 %i.m, 32768
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store <2 x i64> %i.o, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4
  %i.p = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowAttrib(ptr noundef %i.p, i32 noundef 131077, i32 noundef 0) #56
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.r = or i32 %i.q, 8
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.s = load ptr, ptr %i.j, align 8
  call void @glfwGetMonitorPos(ptr noundef %i.s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @CORE, i64 36), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @CORE, i64 40)) #56
  %i.t = load i32, ptr %i.l, align 4              ; 2 uses
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  %i.w = load ptr, ptr @platform.0, align 8
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  call void @glfwSetWindowMonitor(ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.ab) #56
  %i.ac = load ptr, ptr @platform.0, align 8
  call void @glfwFocusWindow(ptr noundef %i.ac) #56
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.ae = or i32 %i.ad, 32768
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.af = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4
  store <2 x i64> %i.af, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.ag = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowAttrib(ptr noundef %i.ag, i32 noundef 131077, i32 noundef 1) #56
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 3 uses
  %i.ai = and i32 %i.ah, -9
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.aj = and i32 %i.ah, 8192
  %.not15 = icmp eq i32 %i.aj, 0
  br i1 %.not15, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %.pre17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store i64 4575657222473777152, ptr %0, align 8
  %i.ak = and i32 %i.ah, 8194
  %or.cond.i = icmp eq i32 %i.ak, 8192
  br i1 %or.cond.i, label %bb.i, label %GetWindowScaleDPI.exit

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr @platform.0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.al, ptr noundef nonnull %0, ptr noundef nonnull %i.am) #56
  %.pre.i = load <2 x float>, ptr %0, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.h, %bb.i
  %i.an = phi <2 x float> [ %.pre.i, %bb.i ], [ splat (float 1.000000e+00), %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.ao = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.ap = uitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = fmul <2 x float> %i.an, %i.ap
  %i.ar = fptoui <2 x float> %i.aq to <2 x i32>   ; 3 uses
  store <2 x i32> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.as = extractelement <2 x i32> %i.ar, i64 0
  %i.at = extractelement <2 x i32> %i.ar, i64 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %GetWindowScaleDPI.exit
  %i.au = phi i32 [ %.pre17, %._crit_edge ], [ %i.at, %GetWindowScaleDPI.exit ]
  %i.av = phi i32 [ %.pre, %._crit_edge ], [ %i.as, %GetWindowScaleDPI.exit ]
  %i.aw = load ptr, ptr @platform.0, align 8
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
end_hunk_0
