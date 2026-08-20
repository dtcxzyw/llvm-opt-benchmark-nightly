inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@SDL_Zenity_ShowFileDialogWithProperties:bb.a
  br i1 %.not137.i, label %.loopexit163.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.9, ptr noundef null) #6 ; 2 uses
  %.not138.i = icmp eq ptr %i.p, null
  br i1 %.not138.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.p) #6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.q, ptr %i.r, align 8
  %.not139.i = icmp eq ptr %i.q, null
  br i1 %.not139.i, label %.loopexit163.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.10, ptr noundef null) #6 ; 2 uses
  %.not140.i = icmp eq ptr %i.s, null
  br i1 %.not140.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.s) #6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.t, ptr %i.u, align 8
  %.not141.i = icmp eq ptr %i.t, null
  br i1 %.not141.i, label %.loopexit163.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.11, ptr noundef null) #6 ; 2 uses
  %.not142.i = icmp eq ptr %i.v, null
  br i1 %.not142.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.v) #6 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.w, ptr %i.x, align 8
  %.not143.i = icmp eq ptr %i.w, null
  br i1 %.not143.i, label %.loopexit163.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr @.str.1, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.12, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @.str.13, ptr %i.z, align 8
  %i.aa = call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.14, i1 noundef zeroext false) #6
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @.str.15, ptr %i.ab, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0117.i = phi i32 [ 4, %bb.l ], [ 3, %bb.k ]   ; 5 uses
  switch i32 %0, label %bb.p [
    i32 2, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ac = zext nneg i32 %.0117.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac ; 2 uses
  store ptr @.str.16, ptr %i.ad, align 8
  %i.ae = add nuw nsw i32 %.0117.i, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @.str.17, ptr %i.af, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ag = add nuw nsw i32 %.0117.i, 1
  %i.ah = zext nneg i32 %.0117.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ah
  store ptr @.str.18, ptr %i.ai, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1118.i = phi i32 [ %.0117.i, %bb.m ], [ %i.ag, %bb.o ], [ %i.ae, %bb.n ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not144.i = icmp eq ptr %i.ak, null
  br i1 %.not144.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = zext nneg i32 %.1118.i to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al ; 2 uses
  store ptr @.str.19, ptr %i.am, align 8
  %i.an = add nuw nsw i32 %.1118.i, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.ao, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2119.i = phi i32 [ %i.an, %bb.q ], [ %.1118.i, %bb.p ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.31, ptr noundef null) #6 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i14, label %get_x11_window_handle.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = call i32 @SDL_GetWindowProperties_REAL(ptr noundef nonnull %i.aq) #6 ; 2 uses
  %.not11.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i, label %get_x11_window_handle.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.ar, ptr noundef nonnull @.str.32, i64 noundef 0) #6 ; 2 uses
  %.not12.i = icmp eq i64 %i.as, 0
  br i1 %.not12.i, label %get_x11_window_handle.exit.thread, label %get_x11_window_handle.exit

get_x11_window_handle.exit:                       ; preds = %bb.t
  %i.at = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.ap, i64 noundef 28, ptr noundef nonnull @.str.33, i64 noundef %i.as) #6
  %i.au = icmp slt i32 %i.at, 28
  br i1 %i.au, label %bb.u, label %get_x11_window_handle.exit.thread

bb.u:                                             ; preds = %get_x11_window_handle.exit
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = icmp eq i32 %i.av, 3
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = icmp sgt i32 %i.ay, 5
  %or.cond.i = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.w, label %get_x11_window_handle.exit.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ba = zext nneg i32 %.2119.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ba ; 3 uses
  store ptr @.str.20, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store ptr @.str.21, ptr %i.bc, align 8
  %i.bd = add nuw nsw i32 %.2119.i, 3
  %i.be = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.ap, ptr %i.be, align 8
  br label %get_x11_window_handle.exit.thread

get_x11_window_handle.exit.thread:                ; preds = %bb.t, %bb.s, %bb.r, %bb.w, %bb.v, %get_x11_window_handle.exit
  %.3.i = phi i32 [ %i.bd, %bb.w ], [ %.2119.i, %bb.v ], [ %.2119.i, %get_x11_window_handle.exit ], [ %.2119.i, %bb.r ], [ %.2119.i, %bb.s ], [ %.2119.i, %bb.t ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not145.i = icmp eq ptr %i.bg, null
  br i1 %.not145.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %get_x11_window_handle.exit.thread
  %i.bh = zext nneg i32 %.3.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bh ; 2 uses
  store ptr @.str.22, ptr %i.bi, align 8
  %i.bj = add nuw nsw i32 %.3.i, 2
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.bg, ptr %i.bk, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %get_x11_window_handle.exit.thread
  %.4.i = phi i32 [ %i.bj, %bb.x ], [ %.3.i, %get_x11_window_handle.exit.thread ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not146.i = icmp eq ptr %i.bm, null
  br i1 %.not146.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = zext nneg i32 %.4.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bn ; 2 uses
  store ptr @.str.23, ptr %i.bo, align 8
  %i.bp = add nuw nsw i32 %.4.i, 2
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  store ptr %i.bm, ptr %i.bq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.5.i = phi i32 [ %i.bp, %bb.z ], [ %.4.i, %bb.y ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not147.i = icmp eq ptr %i.bs, null
  br i1 %.not147.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = zext nneg i32 %.5.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bt ; 2 uses
  store ptr @.str.24, ptr %i.bu, align 8
  %i.bv = add nuw nsw i32 %.5.i, 2
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  store ptr %i.bs, ptr %i.bw, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.6.i = phi i32 [ %i.bv, %bb.ab ], [ %.5.i, %bb.aa ] ; 3 uses
  %i.bx = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.25, ptr noundef null) #6 ; 2 uses
  %.not148.i = icmp eq ptr %i.bx, null
  br i1 %.not148.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = zext nneg i32 %.6.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = load i32, ptr %i.g, align 4             ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %.thread161.i

.lr.ph:                                           ; preds = %bb.ad, %.loopexit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ 0, %bb.ad ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr @convert_filter(ptr %i.ce, ptr %i.cg, ptr noundef nonnull @zenity_clean_name, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i1 noundef zeroext true) #6 ; 2 uses
  %.not149.not.i = icmp eq ptr %i.ch, null
  br i1 %.not149.not.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph
  %.not150164.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not150164.i, label %.loopexit163.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.ci = load ptr, ptr %i.ca, align 8
  %4 = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cj = load ptr, ptr %4, align 8
  call void @SDL_free_REAL(ptr noundef %i.cj) #6
  br label %.lr.ph.i

.loopexit.i:                                      ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.ch, ptr %i.cl, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.g, align 4             ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %.thread161.i, !llvm.loop !3

.thread161.i:                                     ; preds = %.loopexit.i, %bb.ad
  %.lcssa = phi i32 [ %i.cb, %bb.ad ], [ %i.cm, %.loopexit.i ]
  %i.cp = add nsw i32 %.lcssa, %.6.i
  br label %bb.af

.loopexit163.i:                                   ; preds = %.preheader.i, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8
  call void @SDL_free_REAL(ptr noundef %i.cr) #6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8
  call void @SDL_free_REAL(ptr noundef %i.ct) #6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8
  call void @SDL_free_REAL(ptr noundef %i.cv) #6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8
  call void @SDL_free_REAL(ptr noundef %i.cx) #6
  call void @SDL_free_REAL(ptr noundef %i.j) #6
  call void @SDL_free_REAL(ptr noundef nonnull %i.c) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #6
  br label %bb.ai

bb.af:                                            ; preds = %.thread161.i, %bb.ac
  %.7.i = phi i32 [ %i.cp, %.thread161.i ], [ %.6.i, %bb.ac ]
  %i.cy = sext i32 %.7.i to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cy
  store ptr null, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.da = call ptr @SDL_CreateThreadRuntime_REAL(ptr noundef nonnull @run_zenity_thread, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %.not13 = icmp eq ptr %i.da, null
  br i1 %.not13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call fastcc void @free_zenity_args(ptr noundef nonnull %i.c)
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @SDL_DetachThread_REAL(ptr noundef nonnull %i.da) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ae
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_CreateThreadRuntime_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @run_zenity_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8
  %i.h = tail call ptr @SDL_CreateEnvironment_REAL(i1 noundef zeroext true) #6 ; 10 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i1 noundef zeroext true) #6 ; 0 uses
  %i.j = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i1 noundef zeroext true) #6 ; 0 uses
  %i.k = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i1 noundef zeroext true) #6 ; 0 uses
  %i.l = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i1 noundef zeroext true) #6 ; 0 uses
  %i.m = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i1 noundef zeroext true) #6 ; 0 uses
  %i.n = tail call zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i1 noundef zeroext true) #6 ; 0 uses
  %i.o = tail call i32 @SDL_CreateProperties_REAL() #6 ; 7 uses
  %i.p = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.3, ptr noundef %i.g) #6 ; 0 uses
  %i.q = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.r = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.4, i64 noundef 1) #6 ; 0 uses
  %i.s = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.5, i64 noundef 2) #6 ; 0 uses
  %i.t = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.6, i64 noundef 1) #6 ; 0 uses
  %i.u = tail call ptr @SDL_CreateProcessWithProperties_REAL(i32 noundef %i.o) #6 ; 6 uses
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.o) #6
  %.not74.i = icmp eq ptr %i.u, null
  br i1 %.not74.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call ptr @SDL_ReadProcess_REAL(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6 ; 6 uses
  %.not75.i = icmp eq ptr %i.v, null
  br i1 %.not75.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #6 ; 5 uses
  %.not76.i = icmp eq ptr %i.w, null
  br i1 %.not76.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8
  %i.y = load i64, ptr %i.b, align 8              ; 2 uses
  %.not86.i = icmp eq i64 %i.y, 0
  br i1 %.not86.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %i.z = phi i64 [ %i.an, %bb.i ], [ %i.y, %bb.e ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %.05984.i = phi ptr [ %.2.i, %bb.i ], [ %i.w, %bb.e ] ; 5 uses
  %.06183.i = phi i64 [ %.162.i, %bb.i ], [ 1, %bb.e ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 10
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.aa, align 1
  %i.ad = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ae = add i64 %i.ad, -1
  %i.af = icmp ugt i64 %i.ae, %indvars.iv.i
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.05984.i, i64 %.06183.i
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = shl i64 %.06183.i, 3
  %i.aj = add i64 %i.ai, 16
  %i.ak = call ptr @SDL_realloc_REAL(ptr noundef %.05984.i, i64 noundef %i.aj) #7 ; 3 uses
  %.not77.not.i = icmp eq ptr %i.ak, null
  br i1 %.not77.not.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add i64 %.06183.i, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr null, ptr %i.am, align 8
  %.pre.i = load i64, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %i.an = phi i64 [ %.pre.i, %bb.h ], [ %i.ad, %bb.f ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.162.i = phi i64 [ %i.al, %bb.h ], [ %.06183.i, %bb.f ], [ %.06183.i, %.lr.ph.i ]
  %.2.i = phi ptr [ %i.ak, %bb.h ], [ %.05984.i, %bb.f ], [ %.05984.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %indvars.iv.next.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.i, %bb.e
  %.059.lcssa.i = phi ptr [ %i.w, %bb.e ], [ %.2.i, %bb.i ] ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4             ; 2 uses
  %or.cond.i = icmp ult i32 %i.ap, 2
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.aq = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44, i32 noundef %i.ap) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.059.lcssa.sink.i = phi ptr [ null, %bb.j ], [ %.059.lcssa.i, %._crit_edge.i ]
  call void %i.c(ptr noundef %i.e, ptr noundef %.059.lcssa.sink.i, i32 noundef -1) #6, !inline_history !6
  call void @SDL_free_REAL(ptr noundef %.059.lcssa.i) #6
  call void @SDL_free_REAL(ptr noundef nonnull %i.v) #6
  call void @SDL_DestroyEnvironment_REAL(ptr noundef nonnull %i.h) #6
  call void @SDL_DestroyProcess_REAL(ptr noundef nonnull %i.u) #6
  br label %run_zenity.exit

.critedge.i:                                      ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  %.063.ph.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.v, %bb.d ], [ null, %bb.a ], [ %i.v, %bb.g ]
  %.4.ph.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.a ], [ %.05984.i, %bb.g ]
  %.057.ph.i = phi ptr [ null, %bb.b ], [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ null, %bb.a ], [ %i.u, %bb.g ]
  call void @SDL_free_REAL(ptr noundef %.4.ph.i) #6
  call void @SDL_free_REAL(ptr noundef %.063.ph.i) #6
  call void @SDL_DestroyEnvironment_REAL(ptr noundef %i.h) #6
  call void @SDL_DestroyProcess_REAL(ptr noundef %.057.ph.i) #6
  call void %i.c(ptr noundef %i.e, ptr noundef null, i32 noundef -1) #6, !inline_history !6
  br label %run_zenity.exit

run_zenity.exit:                                  ; preds = %bb.k, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call fastcc void @free_zenity_args(ptr noundef nonnull %0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_zenity_args(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.h) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.c, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.o) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.q) #6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.s) #6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.u) #6
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #6
  ret void
}

declare void @SDL_DetachThread_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_Zenity_detect() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.SDL_Zenity_detect.args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 -1, ptr %i.b, align 4
  %i.c = tail call i32 @SDL_CreateProperties_REAL() #6 ; 6 uses
  %i.d = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.e = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.4, i64 noundef 1) #6 ; 0 uses
  %i.f = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.5, i64 noundef 1) #6 ; 0 uses
  %i.g = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.6, i64 noundef 1) #6 ; 0 uses
  %i.h = call ptr @SDL_CreateProcessWithProperties_REAL(i32 noundef %i.c) #6 ; 3 uses
  call void @SDL_DestroyProperties_REAL(i32 noundef %i.c) #6
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call zeroext i1 @SDL_WaitProcess_REAL(ptr noundef nonnull %i.h, i1 noundef zeroext true, ptr noundef nonnull %i.b) #6 ; 0 uses
  call void @SDL_DestroyProcess_REAL(ptr noundef nonnull %i.h) #6
  %.pre = load i32, ptr %i.b, align 4
  %i.j = icmp eq i32 %.pre, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @SDL_CreateProperties_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateProcessWithProperties_REAL(i32 noundef) local_unnamed_addr #2

declare void @SDL_DestroyProperties_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_WaitProcess_REAL(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyProcess_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @SDL_GetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_get_zenity_version(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SDL_GetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @convert_filter(ptr, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias ptr @zenity_clean_name(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %0) #6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.e ]  ; 3 uses
  %i.b = load i8, ptr %.0, align 1
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.c
    i8 124, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b
  store i8 47, ptr %.0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !8
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetWindowProperties_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @SDL_CreateEnvironment_REAL(i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_SetEnvironmentVariable_REAL(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SDL_ReadProcess_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

declare void @SDL_DestroyEnvironment_REAL(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{null}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
end_hunk_0
