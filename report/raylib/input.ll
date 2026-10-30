Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/input?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@glfwGetKeyName:bb.a

bb.g:                                             ; preds = %bb.f
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 144), align 8
  %i.f = tail call i32 %i.e(i32 noundef %0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0 = phi i32 [ %i.f, %bb.g ], [ %1, %bb.c ]
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136), align 8
  %i.h = tail call ptr %i.g(i32 noundef %.0) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e, %bb.b
  %.016 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ %i.h, %bb.h ], [ null, %bb.f ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define hidden i32 @glfwGetKeyScancode(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = add i32 %0, -349
  %or.cond = icmp ult i32 %i.b, -317
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.692, i32 noundef %0) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 144), align 8
  %i.d = tail call i32 %i.c(i32 noundef %0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.d, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -128, 128) i32 @glfwGetKey(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = add i32 %1, -349
  %or.cond = icmp ult i32 %i.b, -317
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.692, i32 noundef %1) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = sext i8 %i.f to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.f ], [ %i.h, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -128, 128) i32 @glfwGetMouseButton(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.693, i32 noundef %1) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.d, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.g = sext i8 %i.e to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.f ], [ %i.g, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @glfwGetCursorPos(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not17 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = load i32, ptr @_glfw, align 8
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 212995
  br i1 %i.d, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = load double, ptr %i.e, align 8
  store double %i.f, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not17, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load double, ptr %i.g, align 8
  store double %i.h, ptr %2, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 64), align 8
  tail call void %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @glfwSetCursorPos(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %3 = fcmp uno double %1, 0.000000e+00
  %4 = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp ogt double %4, f0x7FEFFFFFFFFFFFFF
  %or.cond3 = or i1 %3, %i.b
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = fcmp uno double %2, 0.000000e+00
  %6 = tail call double @llvm.fabs.f64(double %2)
  %i.c = fcmp ogt double %6, f0x7FEFFFFFFFFFFFFF
  %or.cond7 = or i1 %5, %i.c
  br i1 %or.cond7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.694, double noundef %1, double noundef %2) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 440), align 8
  %i.e = tail call i32 %i.d(ptr noundef %0) #10
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 212995
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store double %2, ptr %i.j, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 72), align 8
  tail call void %i.k(ptr noundef nonnull %0, double noundef %1, double noundef %2) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @glfwCreateCursor(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %glfwDestroyCursor.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.695) #10
  br label %glfwDestroyCursor.exit

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @_glfw_calloc(i64 noundef 1, i64 noundef 16) #10 ; 9 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1904), align 8
  store ptr %i.h, ptr %i.g, align 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1904), align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 104), align 8
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #10
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.g, label %glfwDestroyCursor.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr @_glfw, align 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %glfwDestroyCursor.exit

.preheader.i:                                     ; preds = %bb.g
  %.01419.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1912), align 8 ; 2 uses
  %.not1720.i = icmp eq ptr %.01419.i, null
  br i1 %.not1720.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %glfwSetCursor.exit.i
  %.01421.i = phi ptr [ %.014.i, %glfwSetCursor.exit.i ], [ %.01419.i, %.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01421.i, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %bb.i, label %glfwSetCursor.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.o = load i32, ptr @_glfw, align 8
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %glfwSetCursor.exit.i

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %i.l, align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 128), align 8
  tail call void %i.p(ptr noundef nonnull %.01421.i, ptr noundef null) #10, !inline_history !4
  br label %glfwSetCursor.exit.i

glfwSetCursor.exit.i:                             ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.014.i = load ptr, ptr %.01421.i, align 8      ; 2 uses
  %.not17.i = icmp eq ptr %.014.i, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %glfwSetCursor.exit.i, %.preheader.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 120), align 8
  tail call void %i.q(ptr noundef nonnull %i.g) #10, !inline_history !5
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.0.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_glfw, i64 1904), %._crit_edge.i ], [ %i.r, %bb.l ] ; 2 uses
  %i.r = load ptr, ptr %.0.i, align 8             ; 2 uses
  %.not18.i = icmp eq ptr %i.r, %i.g
  br i1 %.not18.i, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %i.g, align 8
  store ptr %i.s, ptr %.0.i, align 8
  tail call void @_glfw_free(ptr noundef nonnull %i.g) #10
  br label %glfwDestroyCursor.exit

glfwDestroyCursor.exit:                           ; preds = %bb.m, %bb.h, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ %i.g, %bb.f ], [ null, %bb.h ], [ null, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @glfwDestroyCursor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.01419 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1912), align 8 ; 2 uses
  %.not1720 = icmp eq ptr %.01419, null
  br i1 %.not1720, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %glfwSetCursor.exit
  %.01421 = phi ptr [ %.014, %glfwSetCursor.exit ], [ %.01419, %.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01421, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.d, label %glfwSetCursor.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = load i32, ptr @_glfw, align 8
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %glfwSetCursor.exit

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 128), align 8
  tail call void %i.g(ptr noundef nonnull %.01421, ptr noundef null) #10, !inline_history !9
  br label %glfwSetCursor.exit

glfwSetCursor.exit:                               ; preds = %bb.f, %bb.e, %.lr.ph
  %.014 = load ptr, ptr %.01421, align 8          ; 2 uses
  %.not17 = icmp eq ptr %.014, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %glfwSetCursor.exit, %.preheader
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 120), align 8
  tail call void %i.h(ptr noundef nonnull %0) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_glfw, i64 1904), %._crit_edge ], [ %i.i, %bb.g ] ; 2 uses
  %i.i = load ptr, ptr %.0, align 8               ; 2 uses
  %.not18 = icmp eq ptr %i.i, %0
  br i1 %.not18, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %0, align 8
  store ptr %i.j, ptr %.0, align 8
  tail call void @_glfw_free(ptr noundef nonnull %0) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.b
  ret void
}
end_hunk_0
begin_hunk_1_@glfwGetGamepadState:bb.a

bb.av:                                            ; preds = %bb.au
  store float 1.000000e+00, ptr %i.jm, align 4
  br label %.loopexit

bb.aw:                                            ; preds = %bb.au
  store float -1.000000e+00, ptr %i.jm, align 4
  br label %.loopexit

bb.ax:                                            ; preds = %bb.as
  %i.jn = load ptr, ptr %i.p, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 242
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ip, i64 243
  %i.ju = load <2 x i8>, ptr %i.jt, align 1
  %i.jv = sitofp <2 x i8> %i.ju to <2 x float>    ; 2 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 0
  %i.jx = extractelement <2 x float> %i.jv, i64 1
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.js, float %i.jw, float %i.jx)
  %i.jz = tail call nsz float @llvm.maxnum.f32(float %i.jy, float -1.000000e+00)
  %i.ka = tail call nsz float @llvm.minnum.f32(float %i.jz, float 1.000000e+00)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.ka, ptr %i.kb, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %bb.at, %bb.av, %bb.aw, %bb.ax, %initJoysticks.exit.thread, %bb.i, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %initJoysticks.exit.thread ], [ 0, %bb.b ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.at ], [ 1, %bb.as ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nounwind uwtable
define hidden void @glfwSetClipboardString(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 152), align 8
  tail call void %i.b(ptr noundef %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @glfwGetClipboardString(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 160), align 8
  %i.c = tail call ptr %i.b() #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden double @glfwGetTime() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @_glfwPlatformGetTimerValue() #10
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133472), align 8
  %i.d = sub i64 %i.b, %i.c
  %i.e = uitofp i64 %i.d to double
  %i.f = tail call i64 @_glfwPlatformGetTimerFrequency() #10
  %i.g = uitofp i64 %i.f to double
  %i.h = fdiv double %i.e, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.h, %bb.c ], [ 0.000000e+00, %bb.b ]
  ret double %.0
}

declare i64 @_glfwPlatformGetTimerValue() local_unnamed_addr #3

declare i64 @_glfwPlatformGetTimerFrequency() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @glfwSetTime(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp ult double %0, 0.000000e+00
  %i.b = fcmp ogt double %0, f0x42112E0BE8240000
  %or.cond3 = or i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.699, double noundef %0) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = tail call i64 @_glfwPlatformGetTimerValue() #10
  %i.d = tail call i64 @_glfwPlatformGetTimerFrequency() #10
  %i.e = uitofp i64 %i.d to double
  %i.f = fmul nnan double %0, %i.e
  %i.g = fptoui double %i.f to i64
  %i.h = sub i64 %i.c, %i.g
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133472), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @glfwGetTimerValue() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @_glfwPlatformGetTimerValue() #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @glfwGetTimerFrequency() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @_glfwPlatformGetTimerFrequency() #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{ptr @glfwDestroyCursor, ptr @glfwSetCursor}
!5 = !{ptr @glfwDestroyCursor}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{ptr @glfwSetCursor}
end_hunk_1
