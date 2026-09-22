Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/input?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@findValidMapping:bb.a
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 241
  %i.la = load i8, ptr %i.kz, align 1
  switch i8 %i.la, label %isValidElementForJoystick.exit25.5 [
    i8 3, label %bb.bn
    i8 2, label %bb.bm
    i8 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %isValidElementForJoystick.exit25.4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 242
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i32
  %i.le = load i32, ptr %i.j, align 8
  %.not10.i20.5 = icmp sgt i32 %i.le, %i.ld
  br i1 %.not10.i20.5, label %isValidElementForJoystick.exit25.5, label %.critedge

bb.bm:                                            ; preds = %isValidElementForJoystick.exit25.4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.e, i64 242
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i32
  %i.li = load i32, ptr %i.k, align 8
  %.not9.i23.5 = icmp sgt i32 %i.li, %i.lh
  br i1 %.not9.i23.5, label %isValidElementForJoystick.exit25.5, label %.critedge

bb.bn:                                            ; preds = %isValidElementForJoystick.exit25.4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.e, i64 242
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = lshr i8 %i.lk, 4
  %i.lm = zext nneg i8 %i.ll to i32
  %i.ln = load i32, ptr %i.l, align 8
  %.not.i24.5 = icmp sgt i32 %i.ln, %i.lm
  br i1 %.not.i24.5, label %isValidElementForJoystick.exit25.5, label %.critedge

isValidElementForJoystick.exit25.5:               ; preds = %bb.bn, %bb.bm, %bb.bl, %isValidElementForJoystick.exit25.4
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ay, %bb.ax, %bb.aw, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %isValidElementForJoystick.exit25.5, %bb.a
  %.116 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.bk ], [ null, %bb.aw ], [ null, %bb.ax ], [ null, %bb.ay ], [ %i.e, %isValidElementForJoystick.exit25.5 ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.bb ], [ null, %bb.bn ], [ null, %bb.bc ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.bm ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.bl ], [ null, %bb.bi ], [ null, %bb.bj ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.116
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwFreeJoystick(ptr nofree noundef captures(none) initializes((0, 8), (16, 24), (32, 40), (48, 8216)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_glfw_free(ptr noundef %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_glfw_free(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_glfw_free(ptr noundef %i.f) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8216) %0, i8 0, i64 8216, i1 false)
  ret void
}

declare void @_glfw_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define hidden void @_glfwCenterCursorInContentArea(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 320), align 8
  call void %i.c(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 72), align 8
  %i.e = load i32, ptr %i.a, align 4
  %i.f = sitofp i32 %i.e to double
  %i.g = fmul nnan double %i.f, 5.000000e-01
  %i.h = load i32, ptr %i.b, align 4
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul nnan double %i.i, 5.000000e-01
  call void %i.d(ptr noundef %0, double noundef %i.g, double noundef %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @glfwGetInputMode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 208897, label %bb.d
    i32 208898, label %bb.e
    i32 208899, label %bb.f
    i32 208900, label %bb.g
    i32 208901, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.k = load i32, ptr %i.j, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.689, i32 noundef %1) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.i ], [ %i.c, %bb.d ], [ %i.e, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ], [ %i.k, %bb.h ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @glfwSetInputMode(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #10
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.ak [
    i32 208897, label %bb.d
    i32 208898, label %bb.h
    i32 208899, label %bb.o
    i32 208900, label %bb.af
    i32 208901, label %bb.ag
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = add i32 %2, -212997
  %or.cond5 = icmp ult i32 %i.b, -4
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.690, i32 noundef %2) #10
  br label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %2
  br i1 %i.e, label %bb.al, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %2, ptr %i.c, align 4
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 64), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #10
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 80), align 8
  tail call void %i.i(ptr noundef nonnull %0, i32 noundef %2) #10
  br label %bb.al

bb.h:                                             ; preds = %bb.c
  %.not63 = icmp ne i32 %2, 0                     ; 2 uses
  %i.j = zext i1 %.not63 to i32                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %i.j
  br i1 %i.m, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not63, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue135, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %pred.store.continue135 ] ; 33 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <16 x i8>, ptr %i.o, align 1
  %wide.load73 = load <16 x i8>, ptr %i.p, align 1
  %i.q = icmp eq <16 x i8> %wide.load, splat (i8 3) ; 16 uses
  %i.r = icmp eq <16 x i8> %wide.load73, splat (i8 3) ; 16 uses
  %i.s = extractelement <16 x i1> %i.q, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 0, ptr %i.o, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.q, i64 1
  br i1 %i.t, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.v, align 1
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue
  %i.w = extractelement <16 x i1> %i.q, i64 2
  br i1 %i.w, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.y, align 1
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.z = extractelement <16 x i1> %i.q, i64 3
  br i1 %i.z, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 0, ptr %i.ab, align 1
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.ac = extractelement <16 x i1> %i.q, i64 4
  br i1 %i.ac, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 0, ptr %i.ae, align 1
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.af = extractelement <16 x i1> %i.q, i64 5
  br i1 %i.af, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store i8 0, ptr %i.ah, align 1
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.ai = extractelement <16 x i1> %i.q, i64 6
  br i1 %i.ai, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i8 0, ptr %i.ak, align 1
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.al = extractelement <16 x i1> %i.q, i64 7
  br i1 %i.al, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 7
  store i8 0, ptr %i.an, align 1
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.ao = extractelement <16 x i1> %i.q, i64 8
  br i1 %i.ao, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 0, ptr %i.aq, align 1
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.ar = extractelement <16 x i1> %i.q, i64 9
  br i1 %i.ar, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store i8 0, ptr %i.at, align 1
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.au = extractelement <16 x i1> %i.q, i64 10
  br i1 %i.au, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 0, ptr %i.aw, align 1
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.ax = extractelement <16 x i1> %i.q, i64 11
  br i1 %i.ax, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  store i8 0, ptr %i.az, align 1
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.ba = extractelement <16 x i1> %i.q, i64 12
  br i1 %i.ba, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i8 0, ptr %i.bc, align 1
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.bd = extractelement <16 x i1> %i.q, i64 13
  br i1 %i.bd, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  store i8 0, ptr %i.bf, align 1
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.bg = extractelement <16 x i1> %i.q, i64 14
  br i1 %i.bg, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  store i8 0, ptr %i.bi, align 1
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.bj = extractelement <16 x i1> %i.q, i64 15
  br i1 %i.bj, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  store i8 0, ptr %i.bl, align 1
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.bm = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.bm, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 0, ptr %i.bo, align 1
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.bp = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.bp, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 17
  store i8 0, ptr %i.br, align 1
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.bs = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.bs, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 18
  store i8 0, ptr %i.bu, align 1
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.bv = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.bv, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
end_hunk_0
