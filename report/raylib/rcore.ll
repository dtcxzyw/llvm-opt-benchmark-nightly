Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SetMouseScale:bb.a

declare ptr @glfwGetProcAddress(ptr noundef) #34

declare ptr @glfwSetWindowSizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @WindowSizeCallback(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #10 {
bb.a:
  ret void
}

declare ptr @glfwSetFramebufferSizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @FramebufferSizeCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #25 {
bb.a:
  %3 = alloca %struct.Vector2, align 8            ; 6 uses
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.c = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 68), align 4
  %i.d = sdiv <2 x i32> %i.c, splat (i32 2)       ; 2 uses
  %i.e = load ptr, ptr @glad_glViewport, align 8
  %i.f = extractelement <2 x i32> %i.d, i64 0
  %i.g = extractelement <2 x i32> %i.d, i64 1
  tail call void %i.e(i32 noundef %i.f, i32 noundef %i.g, i32 noundef %1, i32 noundef %2) #56, !inline_history !232
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 172), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 176), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 192), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.i = uitofp i32 %i.h to double
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.k = uitofp i32 %i.j to double
  tail call void @rlOrtho(double noundef 0.000000e+00, double noundef %i.i, double noundef %i.k, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 14), align 2
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  store <2 x float> splat (float 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = and i32 %i.m, 8192
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.e, label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 4575657222473777152, ptr %3, align 8
  %i.p = load ptr, ptr @platform.0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull %i.q) #56
  %.pre.i = load <2 x float>, ptr %3, align 8     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.r = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %2, i64 1
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.pre.i, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.pre.i, i64 1
  %i.u = fdiv <2 x float> %i.t, %.pre.i
  %i.v = fptosi <2 x float> %i.u to <2 x i32>
  store <2 x i32> %i.v, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store float %.sroa.0.0.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  store float %.sroa.0.4.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %i.w = fdiv <2 x float> splat (float 1.000000e+00), %.pre.i
  store <2 x float> %i.w, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %bb.f

bb.f:                                             ; preds = %GetWindowScaleDPI.exit, %bb.e, %bb.a, %bb.c
  ret void
}

declare ptr @glfwSetWindowPosCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowPosCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  ret void
}

declare ptr @glfwSetWindowMaximizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowMaximizeCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -1025
  %masksel = select i1 %.not, i32 0, i32 1024
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetWindowIconifyCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowIconifyCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -513
  %masksel = select i1 %.not, i32 0, i32 512
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetWindowFocusCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowFocusCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -2049
  %masksel = select i1 %.not, i32 2048, i32 0
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetDropCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal void @WindowDropCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #40 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  tail call void @free(ptr noundef %i.c) #56
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @free(ptr noundef %i.f) #56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %._crit_edge
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.j = zext nneg i32 %1 to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #60 ; 2 uses
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.c, %.lr.ph15
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.o, %.lr.ph15 ]
  %indvars.iv19 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next20, %.lr.ph15 ] ; 4 uses
  %i.m = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 4096, i64 noundef 1) #60
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv19
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv19
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv19
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 4095) #56 ; 0 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next20, %i.v
  br i1 %i.w, label %.lr.ph15, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph15, %bb.a
  ret void
}

declare ptr @glfwSetWindowContentScaleCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowContentScaleCallback(ptr nofree readnone captures(none) %0, float noundef %1, float noundef %2) #9 {
bb.a:
  %i.a = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = uitofp <2 x i32> %i.a to <2 x float>
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1 ; 2 uses
  %i.e = fmul <2 x float> %i.d, %i.b
  %i.f = fptosi <2 x float> %i.e to <2 x i32>     ; 2 uses
  store <2 x i32> %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store <2 x i32> %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %i.g = fdiv <2 x float> splat (float 1.000000e+00), %i.d
  store <2 x float> %i.g, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  ret void
}

declare ptr @glfwSetKeyCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @KeyCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %3, 3
  br i1 %i.b, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.KeyCallback, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.cast = trunc nuw i32 %3 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.d
  store i8 %switch.masked, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %i.f = icmp ne i32 %1, 280
  %i.g = and i32 %4, 16
  %.not = icmp eq i32 %i.g, 0
  %or.cond22 = or i1 %i.f, %.not
  br i1 %or.cond22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i32 %1, 282
  %i.i = and i32 %4, 32
  %.not21 = icmp eq i32 %i.i, 0
  %or.cond23 = or i1 %i.h, %.not21
  br i1 %or.cond23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 196), i64 %i.j
  store i8 1, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4 ; 2 uses
  %i.m = icmp slt i32 %i.l, 16
  %i.n = icmp eq i32 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1732), i64 %i.o
  store i32 %1, ptr %i.p, align 4
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 192), align 8
  %i.t = icmp eq i32 %1, %i.s
  %or.cond3 = and i1 %i.n, %i.t
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowShouldClose(ptr noundef %i.u, i32 noundef 1) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  ret void
}

declare ptr @glfwSetCharCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @CharCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1800), i64 %i.c
  store i32 %1, ptr %i.d, align 4
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @glfwSetMouseButtonCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @MouseButtonCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3) #25 {
bb.a:
  %4 = alloca %struct.GestureEvent, align 8       ; 8 uses
  %i.a = trunc i32 %2 to i8                       ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1915), i64 %i.b
  store i8 %i.a, ptr %i.c, align 1
  %i.d = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2112), i64 %i.b
  store i8 %i.a, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  %sext.mask = and i32 %2, 255
  %i.e = icmp eq i32 %sext.mask, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1923), i64 %i.b
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.m = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = fdiv <2 x float> %i.p, %i.r
  store <2 x float> %i.s, ptr %i.k, align 8
  tail call void @ProcessGestureEvent(ptr noundef nonnull byval(%struct.GestureEvent) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  ret void
}

declare ptr @glfwSetCursorPosCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @MouseCursorPosCallback(ptr nofree readnone captures(none) %0, double noundef %1, double noundef %2) #0 {
bb.a:
  %3 = alloca %struct.GestureEvent, align 8       ; 7 uses
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %2, i64 1
  %i.c = fptrunc <2 x double> %i.b to <2 x float> ; 3 uses
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  store i32 2, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.h = sitofp <2 x i32> %i.g to <2 x float>
  %i.i = fdiv <2 x float> %i.c, %i.h
  store <2 x float> %i.i, ptr %i.f, align 8
  tail call void @ProcessGestureEvent(ptr noundef nonnull byval(%struct.GestureEvent) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret void
}
end_hunk_0
begin_hunk_1_@DecodeDataBase64:bb.a
.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph
  %indvars.iv85107 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 4 uses
  %indvars.iv87106 = phi i64 [ %indvars.iv.next88, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not70 = icmp eq i8 %i.ae, 61
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph108
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.f
  %i.ak = phi i32 [ %i.aj, %bb.f ], [ 0, %.lr.ph108 ] ; 4 uses
  %i.al = or disjoint i64 %indvars.iv85107, 3     ; 2 uses
  %i.am = icmp slt i64 %i.al, %i.d
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.ao, 61
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or i32 %i.ak, %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.au = phi i32 [ %i.at, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87106, 3 ; 4 uses
  %.not72 = icmp sgt i64 %indvars.iv.next88, %i.l
  br i1 %.not72, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.av = trunc nuw nsw i64 %indvars.iv87106 to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aw = shl nuw nsw i32 %i.v, 18
  %i.ax = shl nuw nsw i32 %i.ab, 12
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ak                     ; 2 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv87106 ; 3 uses
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i32 %i.az, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = trunc i32 %i.au to i8
  %i.bh = getelementptr i8, ptr %i.bc, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85107, 4 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bj = icmp slt i32 %i.bi, %i.c
  br i1 %i.bj, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.thread, %bb.e
  %.05778 = phi i32 [ %indvars.iv87.lcssa, %bb.e ], [ %i.av, %.thread ], [ 0, %.preheader ], [ %i.bk, %.loopexit.loopexit ]
  %.not73 = icmp eq i32 %i.j, %.05778
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.254)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store i32 %i.k, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.a
  %.163 = phi ptr [ null, %bb.a ], [ %i.m, %bb.m ], [ null, %bb.d ]
  ret ptr %.163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ComputeCRC32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.s, %bb.c ], [ 1732584193, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %i.t, %bb.c ], [ -271733879, %bb.a ] ; 2 uses
  %i.p = phi i32 [ %i.u, %bb.c ], [ -1732584194, %bb.a ] ; 2 uses
  %i.q = phi i32 [ %i.v, %bb.c ], [ 271733878, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ %i.ag, %bb.g ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %.0 = phi i64 [ %indvars.iv, %bb.e ], [ %i.aj, %bb.g ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.059, %.06466
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.k, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.r, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = shl i32 %i.bb, %i.bd
  %i.bf = sub i32 32, %i.bd
  %i.bg = lshr i32 %i.bb, %i.bf
  %i.bh = add i32 %i.be, %.06367
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 8 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeSHA1.hash, align 16
  store i32 -1009589776, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %i.b = add nsw i32 %1, 8
  %i.c = sdiv i32 %i.b, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i64 %i.h, 3                      ; 8 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l     ; 8 uses
  %i.n = getelementptr i8, ptr %i.m, i64 63
  store i8 %i.k, ptr %i.n, align 1
  %i.o = lshr i64 %i.j, 8
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr i8, ptr %i.m, i64 62
  store i8 %i.p, ptr %i.q, align 1
  %i.r = lshr i64 %i.j, 16
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr i8, ptr %i.m, i64 61
  store i8 %i.s, ptr %i.t, align 1
  %i.u = lshr i64 %i.j, 24
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr i8, ptr %i.m, i64 60
  store i8 %i.v, ptr %i.w, align 1
  %i.x = lshr i64 %i.j, 32
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr i8, ptr %i.m, i64 59
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.j, 40
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr i8, ptr %i.m, i64 58
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %i.j, 48
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr i8, ptr %i.m, i64 57
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = lshr i64 %i.j, 56
  %i.ah = trunc nuw i64 %i.ag to i8
  %i.ai = getelementptr i8, ptr %i.m, i64 56
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = icmp sgt i32 %i.e, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.cz, ptr @ComputeSHA1.hash, align 16
  store i32 %i.da, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 4), align 4
  store i32 %i.db, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 8), align 8
  store i32 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 12), align 4
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %i.g) #56
  ret ptr @ComputeSHA1.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next139, %bb.c ] ; 3 uses
  %i.am = phi i32 [ 1732584193, %.lr.ph.preheader ], [ %i.cz, %bb.c ] ; 2 uses
  %i.an = phi i32 [ -271733879, %.lr.ph.preheader ], [ %i.da, %bb.c ] ; 2 uses
  %i.ao = phi i32 [ -1732584194, %.lr.ph.preheader ], [ %i.db, %bb.c ] ; 2 uses
  %i.ap = phi i32 [ 271733878, %.lr.ph.preheader ], [ %i.dc, %bb.c ] ; 2 uses
  %i.aq = phi i32 [ -1009589776, %.lr.ph.preheader ], [ %i.dd, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ak, i8 0, i64 256, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %i.as = load <32 x i8>, ptr %i.ar, align 1      ; 4 uses
  %i.at = shufflevector <32 x i8> %i.as, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.au = zext <8 x i8> %i.at to <8 x i32>
  %i.av = shl nuw <8 x i32> %i.au, splat (i32 24)
  %i.aw = shufflevector <32 x i8> %i.as, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ax = zext <8 x i8> %i.aw to <8 x i32>
  %i.ay = shl nuw nsw <8 x i32> %i.ax, splat (i32 16)
  %i.az = or disjoint <8 x i32> %i.ay, %i.av
  %i.ba = shufflevector <32 x i8> %i.as, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.bb = zext <8 x i8> %i.ba to <8 x i32>
  %i.bc = shl nuw nsw <8 x i32> %i.bb, splat (i32 8)
  %i.bd = or disjoint <8 x i32> %i.az, %i.bc
  %i.be = shufflevector <32 x i8> %i.as, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bf = zext <8 x i8> %i.be to <8 x i32>
  %i.bg = or disjoint <8 x i32> %i.bd, %i.bf
  store <8 x i32> %i.bg, ptr %i.a, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load <32 x i8>, ptr %i.bi, align 1      ; 4 uses
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i8> %i.bk to <8 x i32>
  %i.bm = shl nuw <8 x i32> %i.bl, splat (i32 24)
  %i.bn = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = shl nuw nsw <8 x i32> %i.bo, splat (i32 16)
  %i.bq = or disjoint <8 x i32> %i.bp, %i.bm
  %i.br = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.bs = zext <8 x i8> %i.br to <8 x i32>
  %i.bt = shl nuw nsw <8 x i32> %i.bs, splat (i32 8)
  %i.bu = or disjoint <8 x i32> %i.bq, %i.bt
  %i.bv = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bw = zext <8 x i8> %i.bv to <8 x i32>
  %i.bx = or disjoint <8 x i32> %i.bu, %i.bw
  store <8 x i32> %i.bx, ptr %i.al, align 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -12
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr i8, ptr %i.by, i64 -32
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = xor i32 %i.cc, %i.ca
  %i.ce = getelementptr i8, ptr %i.by, i64 -56
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = xor i32 %i.cd, %i.cf
  %i.ch = getelementptr i8, ptr %i.by, i64 -64
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = xor i32 %i.cg, %i.ci                    ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 1)
  store i32 %i.ck, ptr %i.by, align 8
  %i.cl = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = getelementptr i8, ptr %i.cl, i64 -8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %i.cl, i64 -28
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = xor i32 %i.cq, %i.co
  %i.cs = getelementptr i8, ptr %i.cl, i64 -52
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = xor i32 %i.cr, %i.ct
  %i.cv = getelementptr i8, ptr %i.cl, i64 -60
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = xor i32 %i.cu, %i.cw                    ; 2 uses
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 1)
  store i32 %i.cy, ptr %i.cm, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 80
  br i1 %exitcond.not.1, label %.preheader125, label %.preheader

bb.c:                                             ; preds = %bb.j
  %i.cz = add i32 %i.ea, %i.am                    ; 2 uses
  %i.da = add i32 %.0105111, %i.an                ; 2 uses
  %i.db = add i32 %i.eb, %i.ao                    ; 2 uses
  %i.dc = add i32 %.0103113, %i.ap                ; 2 uses
  %i.dd = add i32 %.0102114, %i.aq                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 64 ; 2 uses
  %i.de = icmp slt i64 %indvars.iv.next139, %i.f
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.preheader125:                                    ; preds = %.preheader, %bb.j
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.j ], [ 0, %.preheader ] ; 5 uses
  %.0101115 = phi i32 [ %.0102114, %bb.j ], [ %i.aq, %.preheader ]
  %.0102114 = phi i32 [ %.0103113, %bb.j ], [ %i.ap, %.preheader ] ; 7 uses
  %.0103113 = phi i32 [ %i.eb, %bb.j ], [ %i.ao, %.preheader ] ; 7 uses
  %.0104112 = phi i32 [ %.0105111, %bb.j ], [ %i.an, %.preheader ] ; 7 uses
  %.0105111 = phi i32 [ %i.ea, %bb.j ], [ %i.am, %.preheader ] ; 4 uses
  %i.df = icmp samesign ult i64 %indvars.iv134, 20
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader125
  %i.dg = and i32 %.0103113, %.0104112
  %i.dh = xor i32 %.0104112, -1
  %i.di = and i32 %.0102114, %i.dh
  %i.dj = or i32 %i.di, %i.dg
  br label %bb.j

bb.e:                                             ; preds = %.preheader125
  %i.dk = icmp samesign ult i64 %indvars.iv134, 40
  br i1 %i.dk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dl = xor i32 %.0103113, %.0104112
  %i.dm = xor i32 %i.dl, %.0102114
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.dn = icmp samesign ult i64 %indvars.iv134, 60
  br i1 %i.dn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.do = or i32 %.0102114, %.0103113
  %i.dp = and i32 %i.do, %.0104112
  %i.dq = and i32 %.0102114, %.0103113
  %i.dr = or i32 %i.dp, %i.dq
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ds = xor i32 %.0103113, %.0104112
  %i.dt = xor i32 %i.ds, %.0102114
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.099 = phi i32 [ %i.dj, %bb.d ], [ %i.dm, %bb.f ], [ %i.dr, %bb.h ], [ %i.dt, %bb.i ]
  %.0 = phi i32 [ 1518500249, %bb.d ], [ 1859775393, %bb.f ], [ -1894007588, %bb.h ], [ -899497514, %bb.i ]
  %i.du = tail call i32 @llvm.fshl.i32(i32 %.0105111, i32 %.0105111, i32 5)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = add i32 %.0101115, %i.du
  %i.dy = add i32 %i.dx, %.099
  %i.dz = add i32 %i.dy, %.0
  %i.ea = add i32 %i.dz, %i.dw                    ; 2 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %.0104112, i32 %.0104112, i32 30) ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 80
  br i1 %exitcond137.not, label %bb.c, label %.preheader125
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA256(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
.preheader111:
  %i.a = alloca [64 x i32], align 16              ; 7 uses
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr @ComputeSHA256.hash, align 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 16), align 16
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 8 uses
  %i.d = add nsw i64 %i.b, 4
  %i.e = and i64 %i.d, 63
  %i.f = sub nsw i64 %i.b, %i.e                   ; 2 uses
  %i.g = add nsw i64 %i.f, 68                     ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #60 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %0, i64 %i.b, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.b
  store i8 -128, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.h, i64 %i.f     ; 8 uses
  %i.k = lshr i64 %i.c, 56
  %i.l = trunc nuw i64 %i.k to i8
  %i.m = getelementptr i8, ptr %i.j, i64 60
  store i8 %i.l, ptr %i.m, align 1
  %i.n = lshr i64 %i.c, 48
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr i8, ptr %i.j, i64 61
  store i8 %i.o, ptr %i.p, align 1
  %i.q = lshr i64 %i.c, 40
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr i8, ptr %i.j, i64 62
  store i8 %i.r, ptr %i.s, align 1
  %i.t = lshr i64 %i.c, 32
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr i8, ptr %i.j, i64 63
  store i8 %i.u, ptr %i.v, align 1
  %i.w = lshr i64 %i.c, 24
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr i8, ptr %i.j, i64 64
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i64 %i.c, 16
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr i8, ptr %i.j, i64 65
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i64 %i.c, 8
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr i8, ptr %i.j, i64 66
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = trunc i64 %i.c to i8
  %i.ag = getelementptr i8, ptr %i.j, i64 67
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = lshr i64 %i.g, 6                        ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.a, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b
  store i32 %i.cv, ptr @ComputeSHA256.hash, align 16
  store i32 %i.cw, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 4), align 4
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 8), align 8
  store i32 %i.cy, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 12), align 4
  store i32 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 16), align 16
  store i32 %i.da, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 20), align 4
  store i32 %i.db, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 24), align 8
  store i32 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 28), align 4
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %.preheader111
  tail call void @free(ptr noundef nonnull %i.h) #56
  ret ptr @ComputeSHA256.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.097130 = phi i64 [ %i.dd, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ak = phi i32 [ %i.cv, %bb.b ], [ 1779033703, %.lr.ph.preheader ] ; 2 uses
  %i.al = phi i32 [ %i.cw, %bb.b ], [ -1150833019, %.lr.ph.preheader ] ; 2 uses
  %i.am = phi i32 [ %i.cx, %bb.b ], [ 1013904242, %.lr.ph.preheader ] ; 2 uses
  %i.an = phi i32 [ %i.cy, %bb.b ], [ -1521486534, %.lr.ph.preheader ] ; 2 uses
  %i.ao = phi i32 [ %i.cz, %bb.b ], [ 1359893119, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.da, %bb.b ], [ -1694144372, %.lr.ph.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.db, %bb.b ], [ 528734635, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.dc, %bb.b ], [ 1541459225, %.lr.ph.preheader ] ; 2 uses
  %i.as = shl nuw i64 %.097130, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.as ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.ai, i8 0, i64 192, i1 false)
  %i.au = load <32 x i8>, ptr %i.at, align 1      ; 4 uses
  %i.av = shufflevector <32 x i8> %i.au, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aw = zext <8 x i8> %i.av to <8 x i32>
  %i.ax = shl nuw <8 x i32> %i.aw, splat (i32 24)
  %i.ay = shufflevector <32 x i8> %i.au, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.az = zext <8 x i8> %i.ay to <8 x i32>
  %i.ba = shl nuw nsw <8 x i32> %i.az, splat (i32 16)
  %i.bb = or disjoint <8 x i32> %i.ba, %i.ax
  %i.bc = shufflevector <32 x i8> %i.au, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.bd = zext <8 x i8> %i.bc to <8 x i32>
  %i.be = shl nuw nsw <8 x i32> %i.bd, splat (i32 8)
  %i.bf = or disjoint <8 x i32> %i.bb, %i.be
  %i.bg = shufflevector <32 x i8> %i.au, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bh = zext <8 x i8> %i.bg to <8 x i32>
  %i.bi = or disjoint <8 x i32> %i.bf, %i.bh
  store <8 x i32> %i.bi, ptr %i.a, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bk = load <32 x i8>, ptr %i.bj, align 1      ; 4 uses
  %i.bl = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  %i.bn = shl nuw <8 x i32> %i.bm, splat (i32 24)
  %i.bo = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bp = zext <8 x i8> %i.bo to <8 x i32>
  %i.bq = shl nuw nsw <8 x i32> %i.bp, splat (i32 16)
  %i.br = or disjoint <8 x i32> %i.bq, %i.bn
  %i.bs = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.bt = zext <8 x i8> %i.bs to <8 x i32>
  %i.bu = shl nuw nsw <8 x i32> %i.bt, splat (i32 8)
  %i.bv = or disjoint <8 x i32> %i.br, %i.bu
  %i.bw = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bx = zext <8 x i8> %i.bw to <8 x i32>
  %i.by = or disjoint <8 x i32> %i.bv, %i.bx
  store <8 x i32> %i.by, ptr %i.aj, align 16
  br label %.preheader110

.preheader110:                                    ; preds = %.lr.ph, %.preheader110
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next, %.preheader110 ] ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4            ; 5 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 15)
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 13)
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = lshr i32 %i.cb, 10
  %i.cg = xor i32 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %i.bz, i64 -28
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.cg, %i.ci
  %i.ck = getelementptr i8, ptr %i.bz, i64 -60
  %i.cl = load i32, ptr %i.ck, align 4            ; 5 uses
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 25)
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 14)
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = lshr i32 %i.cl, 3
  %i.cq = xor i32 %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %i.bz, i64 -64
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add i32 %i.cj, %i.cs
  %i.cu = add i32 %i.ct, %i.cq
  store i32 %i.cu, ptr %i.bz, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader, label %.preheader110

bb.b:                                             ; preds = %.preheader
  %i.cv = add i32 %i.eg, %i.ak                    ; 2 uses
  %i.cw = add i32 %.0108115, %i.al                ; 2 uses
  %i.cx = add i32 %.0107116, %i.am                ; 2 uses
  %i.cy = add i32 %.0106117, %i.an                ; 2 uses
  %i.cz = add i32 %i.ef, %i.ao                    ; 2 uses
  %i.da = add i32 %.0104119, %i.ap                ; 2 uses
  %i.db = add i32 %.0103120, %i.aq                ; 2 uses
  %i.dc = add i32 %.0102121, %i.ar                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.dd = add nuw nsw i64 %.097130, 1             ; 2 uses
  %exitcond151.not = icmp eq i64 %i.dd, %i.ah
  br i1 %exitcond151.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.preheader110, %.preheader
  %.098123 = phi i64 [ %i.eh, %.preheader ], [ 0, %.preheader110 ] ; 3 uses
  %.0101122 = phi i32 [ %.0102121, %.preheader ], [ %i.ar, %.preheader110 ]
  %.0102121 = phi i32 [ %.0103120, %.preheader ], [ %i.aq, %.preheader110 ] ; 3 uses
  %.0103120 = phi i32 [ %.0104119, %.preheader ], [ %i.ap, %.preheader110 ] ; 3 uses
  %.0104119 = phi i32 [ %i.ef, %.preheader ], [ %i.ao, %.preheader110 ] ; 10 uses
  %.0105118 = phi i32 [ %.0106117, %.preheader ], [ %i.an, %.preheader110 ]
  %.0106117 = phi i32 [ %.0107116, %.preheader ], [ %i.am, %.preheader110 ] ; 4 uses
  %.0107116 = phi i32 [ %.0108115, %.preheader ], [ %i.al, %.preheader110 ] ; 4 uses
  %.0108115 = phi i32 [ %i.eg, %.preheader ], [ %i.ak, %.preheader110 ] ; 9 uses
  %i.de = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 26)
  %i.df = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 21)
  %i.dg = xor i32 %i.de, %i.df
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 7)
  %i.di = xor i32 %i.dg, %i.dh
  %i.dj = and i32 %.0103120, %.0104119
  %i.dk = xor i32 %.0104119, -1
  %i.dl = and i32 %.0102121, %i.dk
  %i.dm = or i32 %i.dl, %i.dj
  %i.dn = add i32 %.0101122, %i.di
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @ComputeSHA256.k, i64 %.098123
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i32 %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.098123
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = add i32 %i.dr, %i.dt                    ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 30)
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 19)
  %i.dx = xor i32 %i.dv, %i.dw
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 10)
  %i.dz = xor i32 %i.dx, %i.dy
  %i.ea = xor i32 %.0106117, %.0107116
  %i.eb = and i32 %i.ea, %.0108115
  %i.ec = and i32 %.0106117, %.0107116
  %i.ed = xor i32 %i.eb, %i.ec
  %i.ee = add i32 %i.ed, %i.dz
  %i.ef = add i32 %i.du, %.0105118                ; 2 uses
  %i.eg = add i32 %i.ee, %i.du                    ; 2 uses
  %i.eh = add nuw nsw i64 %.098123, 1             ; 2 uses
  %exitcond150.not = icmp eq i64 %i.eh, 64
  br i1 %exitcond150.not, label %bb.b, label %.preheader
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @LoadAutomationEventList(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.AutomationEventList, align 8 ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  store i64 0, ptr %1, align 8
  %i.c = tail call noalias dereferenceable_or_null(393216) ptr @calloc(i64 noundef 16384, i64 noundef 24) #60 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8
  store i32 16384, ptr %1, align 8
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.255)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.g = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.f)
  %.not23 = icmp eq ptr %i.g, %i.a
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.256, ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = call i32 @feof(ptr noundef nonnull %i.f) #56
  %.not2427 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %.not2427, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.028 = phi i32 [ %.1, %bb.k ], [ 0, %bb.f ]    ; 4 uses
  %i.j = load i8, ptr %i.a, align 16
  switch i8 %i.j, label %bb.i [
    i8 99, label %bb.g
    i8 101, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.k = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.257, ptr noundef nonnull %i.i) #56 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = zext i32 %.028 to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.t = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.258, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #56 ; 0 uses
  %i.u = add i32 %.028, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h, %bb.g
  %.1 = phi i32 [ %.028, %.lr.ph ], [ %.028, %bb.g ], [ %i.u, %bb.h ] ; 4 uses
  %i.v = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.f)
  %.not26 = icmp eq ptr %i.v, %i.a
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_1
