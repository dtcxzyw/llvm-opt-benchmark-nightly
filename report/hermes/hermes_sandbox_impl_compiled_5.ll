Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathHypot0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 9221120237041090560, ptr %i.cl, align 1
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.cj
  store i32 1, ptr %i.cm, align 1
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.cn = fcmp une double %i.ce, 0.000000e+00
  br i1 %i.cn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %i.co = zext i32 %1 to i64                      ; 2 uses
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 0, ptr %i.cq, align 1
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.co
  store i32 1, ptr %i.cr, align 1
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.ad
  %.0.copyload.i534 = load i32, ptr %i.cs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i534) #8, !srcloc !19
  %.not470 = icmp eq i32 %.0.copyload.i534, 0
  br i1 %.not470, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.ct = zext i32 %1 to i64                      ; 2 uses
  %.val541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val541, i64 %i.ct
  store i32 1, ptr %i.cu, align 1
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.ag
  %.0.copyload.i535 = load i32, ptr %i.cv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i535) #8, !srcloc !19
  %i.cw = and i32 %.0.copyload.i534, 1
  %.not471 = icmp eq i32 %i.cw, 0
  br i1 %.not471, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = zext i32 %.0.copyload.i535 to i64
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val518, i64 %i.cx
  %.0.copyload.i536 = load double, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i536) #8, !srcloc !37
  %i.cz = fdiv double %.0.copyload.i536, %i.ce    ; 2 uses
  %i.da = fmul double %i.cz, %i.cz                ; 2 uses
  %i.db = fadd double %i.da, 0.000000e+00         ; 2 uses
  %i.dc = fsub double %i.db, %i.da
  %i.dd = add i32 %.0.copyload.i535, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0449 = phi double [ %i.db, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %.0446 = phi double [ %i.dc, %bb.s ], [ 0.000000e+00, %bb.r ]
  %.1 = phi i32 [ %i.dd, %bb.s ], [ %.0.copyload.i535, %bb.r ]
  %i.de = and i32 %.0.copyload.i534, 536870911
  %.not472 = icmp eq i32 %i.de, 1
  br i1 %.not472, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = shl i32 %.0.copyload.i534, 3
  %i.dg = add i32 %.0.copyload.i535, %i.df
  %i.dh = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.2457 = phi i32 [ %.1, %bb.u ], [ %i.eb, %bb.v ] ; 2 uses
  %.1450 = phi double [ %.0449, %bb.u ], [ %i.dy, %bb.v ] ; 2 uses
  %.1447 = phi double [ %.0446, %bb.u ], [ %i.ea, %bb.v ]
  %i.dj = zext i32 %.2457 to i64                  ; 2 uses
  %.val517 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val517, i64 %i.dj
  %.0.copyload.i537 = load double, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i537) #8, !srcloc !37
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.0.copyload.i538 = load double, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i538) #8, !srcloc !37
  %i.dn = insertelement <2 x double> poison, double %.0.copyload.i537, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %.0.copyload.i538, i64 1
  %i.dp = fdiv <2 x double> %i.do, %i.di          ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp          ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fsub double %i.dr, %.1447               ; 2 uses
  %i.dt = fadd double %.1450, %i.ds               ; 3 uses
  %i.du = fsub double %i.dt, %.1450
  %i.dv = fsub double %i.du, %i.ds
  %i.dw = extractelement <2 x double> %i.dq, i64 1
  %i.dx = fsub double %i.dw, %i.dv                ; 2 uses
  %i.dy = fadd double %i.dt, %i.dx                ; 3 uses
  %i.dz = fsub double %i.dy, %i.dt
  %i.ea = fsub double %i.dz, %i.dx
  %i.eb = add i32 %.2457, 16                      ; 2 uses
  %.not473 = icmp eq i32 %i.eb, %i.dg
  br i1 %.not473, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.v, %bb.t
  %.2 = phi double [ %.0449, %bb.t ], [ %i.dy, %bb.v ] ; 3 uses
  %i.ec = zext i32 %1 to i64                      ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ec
  store i32 1, ptr %i.ed, align 1
  %i.ee = fcmp uno double %.2, 0.000000e+00
  br i1 %i.ee, label %bb.w, label %bb.x, !prof !44

bb.w:                                             ; preds = %.loopexit
  %i.ef = bitcast double %.2 to i64
  %i.eg = or i64 %i.ef, 9221120237041090560
  %i.eh = bitcast i64 %i.eg to double
  br label %wasm_sqrt.exit

bb.x:                                             ; preds = %.thread, %.loopexit
  %i.ei = phi i64 [ %i.ct, %.thread ], [ %i.ec, %.loopexit ]
  %.2542 = phi double [ 0.000000e+00, %.thread ], [ %.2, %.loopexit ]
  %i.ej = tail call double @sqrt(double noundef %.2542) #8, !tbaa !6
  br label %wasm_sqrt.exit

wasm_sqrt.exit:                                   ; preds = %bb.w, %bb.x
  %i.ek = phi i64 [ %i.ec, %bb.w ], [ %i.ei, %bb.x ]
  %.0.i = phi double [ %i.eh, %bb.w ], [ %i.ej, %bb.x ]
  %i.el = fmul double %i.ce, %.0.i                ; 2 uses
  %i.em = bitcast double %i.el to i64
  %i.en = fcmp uno double %i.el, 0.000000e+00
  %i.eo = select i1 %i.en, i64 9221120237041090560, i64 %i.em
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.eo, ptr %i.eq, align 1
  br label %bb.y

bb.y:                                             ; preds = %wasm_sqrt.exit, %bb.p, %bb.n, %bb.l, %bb.g
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.ag
  %.0.copyload.i539 = load i32, ptr %i.er, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i539) #8, !srcloc !19
  %.not474 = icmp eq i32 %i.af, %.0.copyload.i539
  br i1 %.not474, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i539) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathFround0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val56 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i59 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i59, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val54, i64 %i.k
  %.0.copyload.i60 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60) #8, !srcloc !19
  %.not53 = icmp eq i32 %.0.copyload.i60, 0
  br i1 %.not53, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val58 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i61 = load double, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i61) #8, !srcloc !37
  %i.o = fcmp uno double %.0.copyload.i61, 0.000000e+00 ; 2 uses
  br i1 %i.o, label %wasm_quiet.exit.thread, label %wasm_quietf.exit, !prof !31

wasm_quiet.exit.thread:                           ; preds = %bb.b
  %i.p = bitcast double %.0.copyload.i61 to i64
  %i.q = or i64 %i.p, 9221120237041090560
  %i.r = bitcast i64 %i.q to double
  br label %wasm_quietf.exit

wasm_quietf.exit:                                 ; preds = %bb.b, %wasm_quiet.exit.thread
  %.0.i62.in = phi double [ %i.r, %wasm_quiet.exit.thread ], [ %.0.copyload.i61, %bb.b ]
  %.0.i62 = fptrunc double %.0.i62.in to float
  %i.s = fpext float %.0.i62 to double
  %i.t = bitcast double %i.s to i64
  %i.u = select i1 %i.o, i64 9221120237041090560, i64 %i.t
  %i.v = zext i32 %1 to i64                       ; 2 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.u, ptr %i.x, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %wasm_quietf.exit
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.v, %wasm_quietf.exit ]
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %wasm_quietf.exit ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi
  store i32 %.0, ptr %i.y, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathClz320x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val65 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val64 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val64, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i68 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i68, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoUInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val63 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.k
  %.0.copyload.i69 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69) #8, !srcloc !19
  %.not61 = icmp eq i32 %.0.copyload.i69, 0
  br i1 %.not61, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i70 = load double, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i70) #8, !srcloc !37
  %i.o = fcmp olt double %.0.copyload.i70, f0x41F0000000000000
  %i.p = fcmp oge double %.0.copyload.i70, 0.000000e+00
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = fptoui double %.0.copyload.i70 to i32
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 false)
  %i.t = uitofp nneg i32 %i.s to double
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi double [ %i.t, %bb.c ], [ 3.200000e+01, %bb.b ]
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %.0, ptr %i.w, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.u, %bb.d ]
  %.060 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.d ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi
  store i32 %.060, ptr %i.x, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmapPrototypeValues0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.e = zext i32 %4 to i64
  %.val184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.g
  %.0.copyload.i193 = load i64, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i193) #8, !srcloc !20
  %i.i = icmp ugt i64 %.0.copyload.i193, -844424930131969
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i193, 4294967295    ; 2 uses
  %.val192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %.0.copyload.i194 = load i8, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i194) #8, !srcloc !21
  %i.m = icmp eq i8 %.0.copyload.i194, 48
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val190, i64 70384
  %.0.copyload.i195 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i195) #8, !srcloc !20
  %.pre = and i64 %.0.copyload.i195, 4294967295
  %i.o = icmp ult i64 %.0.copyload.i195, -844424930131968
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.j, %bb.b ], [ %.pre, %bb.c ]
  %.0166 = phi i32 [ %.0.copyload.i, %bb.b ], [ 70384, %bb.c ]
  %.0 = phi i1 [ false, %bb.b ], [ %i.o, %bb.c ]
  %i.p = icmp eq i64 %.pre-phi, 0
  %.not171 = or i1 %.0, %i.p
  br i1 %.not171, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %i.c to i64                     ; 4 uses
  %.val178 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val178, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.s, align 1
  %.val187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 193273528321, ptr %i.u, align 1
  %.val177 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val177, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 3, ptr %i.w, align 1
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val176, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 34713, ptr %i.y, align 1
  %i.z = add i32 %i.b, -40
  %i.aa = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.z) #8
  %i.ab = zext i32 %1 to i64
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ac = add i32 %3, 496
  %i.ad = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSMapIteratorImpl0x3C0x28hermes0x3A0x3Avm0x3A0x3ACellKind0x29500x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ac) #8
  %i.ae = zext i32 %i.ad to i64
  %i.af = or disjoint i64 %i.ae, -281474976710656 ; 3 uses
  %i.ag = zext i32 %3 to i64
  %.val183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.0.copyload.i196 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i196) #8, !srcloc !19
  %i.aj = zext i32 %.0.copyload.i196 to i64       ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 164              ; 2 uses
  %.val182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.ak
  %.0.copyload.i197 = load i32, ptr %i.al, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i197) #8, !srcloc !19
  %.val181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  %.0.copyload.i198 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #8, !srcloc !19
  %i.ao = icmp ult i32 %.0.copyload.i197, %.0.copyload.i198
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %.0.copyload.i197, 8
  %.val174 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.ak
  store i32 %i.ap, ptr %i.aq, align 1
  %i.ar = zext i32 %.0.copyload.i197 to i64
  %.val186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ar
  store i64 %i.af, ptr %i.as, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i196, i64 noundef %i.af) #8 ; 2 uses
  %i.au = zext i32 %i.at to i64
end_hunk_0
