Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D_manyvec?download=true
inline.NumInlined: 49
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
  %i.fw = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %bb.z, label %check_flag.exit226

bb.z:                                             ; preds = %check_flag.exit224
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.31, i32 noundef %i.fw) #10 ; 0 uses
  br label %check_flag.exit226

check_flag.exit226:                               ; preds = %check_flag.exit224, %bb.z
  %i.ga = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.cp, i32 noundef 0, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.aa, label %check_flag.exit228

bb.aa:                                            ; preds = %check_flag.exit226
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gc, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.32, i32 noundef %i.ga) #10 ; 0 uses
  br label %check_flag.exit228

check_flag.exit228:                               ; preds = %check_flag.exit226, %bb.aa
  %i.ge = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.cp, i32 noundef 1, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.ab, label %check_flag.exit230

bb.ab:                                            ; preds = %check_flag.exit228
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.32, i32 noundef %i.ge) #10 ; 0 uses
  br label %check_flag.exit230

check_flag.exit230:                               ; preds = %check_flag.exit228, %bb.ab
  %i.gi = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.ac, label %check_flag.exit232

bb.ac:                                            ; preds = %check_flag.exit230
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.33, i32 noundef %i.gi) #10 ; 0 uses
  br label %check_flag.exit232

check_flag.exit232:                               ; preds = %check_flag.exit230, %bb.ac
  %i.gm = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.o) #9 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 0
  br i1 %i.gn, label %bb.ad, label %check_flag.exit234

bb.ad:                                            ; preds = %check_flag.exit232
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.34, i32 noundef %i.gm) #10 ; 0 uses
  br label %check_flag.exit234

check_flag.exit234:                               ; preds = %check_flag.exit232, %bb.ad
  %i.gq = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.ae, label %check_flag.exit236

bb.ae:                                            ; preds = %check_flag.exit234
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.35, i32 noundef %i.gq) #10 ; 0 uses
  br label %check_flag.exit236

check_flag.exit236:                               ; preds = %check_flag.exit234, %bb.ae
  %i.gu = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.n) #9 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.af, label %check_flag.exit238

bb.af:                                            ; preds = %check_flag.exit236
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.36, i32 noundef %i.gu) #10 ; 0 uses
  br label %check_flag.exit238

check_flag.exit238:                               ; preds = %check_flag.exit236, %bb.af
  %i.gy = call i32 @ARKodeGetNumLinIters(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.ag, label %check_flag.exit240

bb.ag:                                            ; preds = %check_flag.exit238
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.37, i32 noundef %i.gy) #10 ; 0 uses
  br label %check_flag.exit240

check_flag.exit240:                               ; preds = %check_flag.exit238, %bb.ag
  %i.hc = call i32 @ARKodeGetNumLinConvFails(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.j) #9 ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %bb.ah, label %check_flag.exit242

bb.ah:                                            ; preds = %check_flag.exit240
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.38, i32 noundef %i.hc) #10 ; 0 uses
  br label %check_flag.exit242

check_flag.exit242:                               ; preds = %check_flag.exit240, %bb.ah
  %i.hg = call i32 @ARKodeGetNumJtimesEvals(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.k) #9 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.ai, label %check_flag.exit244

bb.ai:                                            ; preds = %check_flag.exit242
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.39, i32 noundef %i.hg) #10 ; 0 uses
  br label %check_flag.exit244

check_flag.exit244:                               ; preds = %check_flag.exit242, %bb.ai
  %i.hk = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.l) #9 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %bb.aj, label %check_flag.exit246

bb.aj:                                            ; preds = %check_flag.exit244
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %i.hk) #10 ; 0 uses
  br label %check_flag.exit246

check_flag.exit246:                               ; preds = %check_flag.exit244, %bb.aj
  %puts192 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ho = load i64, ptr %i.d, align 8, !tbaa !31
  %i.hp = load i64, ptr %i.e, align 8, !tbaa !31
  %i.hq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.ho, i64 noundef %i.hp) ; 0 uses
  %i.hr = load i64, ptr %i.f, align 8, !tbaa !31
  %i.hs = load i64, ptr %i.g, align 8, !tbaa !31
  %i.ht = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.hr, i64 noundef %i.hs) ; 0 uses
  %i.hu = load i64, ptr %i.h, align 8, !tbaa !31
  %i.hv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.hu) ; 0 uses
  %i.hw = load i64, ptr %i.i, align 8, !tbaa !31
  %i.hx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.hw) ; 0 uses
  %i.hy = load i64, ptr %i.j, align 8, !tbaa !31
  %i.hz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %i.hy) ; 0 uses
  %i.ia = load i64, ptr %i.k, align 8, !tbaa !31
  %i.ib = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %i.ia) ; 0 uses
  %i.ic = load i64, ptr %i.l, align 8, !tbaa !31
  %i.id = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.ic) ; 0 uses
  %i.ie = load i64, ptr %i.m, align 8, !tbaa !31
  %i.if = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i64 noundef %i.ie) ; 0 uses
  %i.ig = load i64, ptr %i.n, align 8, !tbaa !31
  %i.ih = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i64 noundef %i.ig) ; 0 uses
  %i.ii = load i64, ptr %i.o, align 8, !tbaa !31
  %i.ij = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i64 noundef %i.ii) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.bg) #9
  call void @N_VDestroy(ptr noundef nonnull %i.ar) #9
  call void @N_VDestroy(ptr noundef nonnull %i.av) #9
  call void @N_VDestroy(ptr noundef nonnull %i.az) #9
  call void @free(ptr noundef %i.u) #9
  call void @ARKodeFree(ptr noundef nonnull %i.b) #9
  %i.ik = call i32 @SUNLinSolFree(ptr noundef nonnull %i.dc) #9 ; 0 uses
  %i.il = call i32 @SUNContext_Free(ptr noundef nonnull %i.p) #9 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %check_flag.exit220, %check_flag.exit218, %check_flag.exit216, %check_flag.exit214, %check_flag.exit212, %check_flag.exit210, %check_flag.exit208.thread, %check_flag.exit206, %check_flag.exit204, %check_flag.exit202, %check_flag.exit200, %check_flag.exit198, %check_flag.exit196, %check_flag.exit194, %check_flag.exit, %check_flag.exit246
  %.0165 = phi i32 [ 0, %check_flag.exit246 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit194 ], [ 1, %check_flag.exit196 ], [ 1, %check_flag.exit198 ], [ 1, %check_flag.exit200 ], [ 1, %check_flag.exit202 ], [ 1, %check_flag.exit204 ], [ 1, %check_flag.exit206 ], [ 1, %check_flag.exit208.thread ], [ 1, %check_flag.exit210 ], [ 1, %check_flag.exit212 ], [ 1, %check_flag.exit214 ], [ 1, %check_flag.exit216 ], [ 1, %check_flag.exit218 ], [ 1, %check_flag.exit220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_ManyVector(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fe(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !21 ; 5 uses
  %i.h = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 0) #9
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %i.h) #9 ; 11 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 1) #9
  %i.n = tail call ptr @N_VGetArrayPointer(ptr noundef %i.m) #9 ; 11 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %check_flag.exit75, label %bb.c

check_flag.exit75:                                ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 2) #9
  %i.s = tail call ptr @N_VGetArrayPointer(ptr noundef %i.r) #9 ; 11 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %check_flag.exit77, label %bb.d

check_flag.exit77:                                ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 0) #9
  %i.x = tail call ptr @N_VGetArrayPointer(ptr noundef %i.w) #9 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %check_flag.exit79, label %bb.e

check_flag.exit79:                                ; preds = %bb.d
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 1) #9
  %i.ac = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ab) #9 ; 7 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %check_flag.exit81, label %bb.f

check_flag.exit81:                                ; preds = %bb.e
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 2) #9
  %i.ah = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ag) #9 ; 7 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %check_flag.exit83, label %bb.g

check_flag.exit83:                                ; preds = %bb.f
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %i.al = insertelement <2 x double> poison, double %i.g, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x double> %i.c, %i.am           ; 2 uses
  %4 = extractelement <2 x double> %i.an, i64 0
  %5 = fdiv double %4, %i.g                       ; 2 uses
  %6 = extractelement <2 x double> %i.an, i64 1
  %7 = fdiv double %6, %i.g                       ; 2 uses
  %i.ao = fdiv double %i.e, %i.g
  %i.ap = fdiv double %i.ao, %i.g                 ; 2 uses
  %i.aq = add i64 %i.a, -1                        ; 4 uses
  %i.ar = icmp sgt i64 %i.a, 2
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.as = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.as, 14
  br i1 %min.iters.check, label %.lr.ph.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.at = getelementptr i8, ptr %i.x, i64 8       ; 5 uses
  %i.au = shl i64 %i.a, 3                         ; 4 uses
  %i.av = add i64 %i.au, -8                       ; 3 uses
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av   ; 5 uses
  %i.ax = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %i.ay = getelementptr i8, ptr %i.ac, i64 %i.av  ; 5 uses
  %i.az = getelementptr i8, ptr %i.ah, i64 8      ; 5 uses
  %i.ba = getelementptr i8, ptr %i.ah, i64 %i.av  ; 5 uses
  %i.bb = getelementptr i8, ptr %i.i, i64 %i.au   ; 3 uses
  %i.bc = getelementptr i8, ptr %i.n, i64 %i.au   ; 3 uses
  %i.bd = getelementptr i8, ptr %i.s, i64 %i.au   ; 3 uses
  %bound0 = icmp ult ptr %i.at, %i.ay
  %bound1 = icmp ult ptr %i.ax, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  %bound0153 = icmp ult ptr %i.at, %i.ba
  %bound1154 = icmp ult ptr %i.az, %i.aw
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx = or i1 %found.conflict, %found.conflict155
  %bound0156 = icmp ult ptr %i.at, %i.bb
  %bound1157 = icmp ult ptr %i.i, %i.aw
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx, %found.conflict158
  %bound0160 = icmp ult ptr %i.at, %i.bc
  %bound1161 = icmp ult ptr %i.n, %i.aw
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %i.at, %i.bd
  %bound1165 = icmp ult ptr %i.s, %i.aw
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %i.ax, %i.ba
  %bound1169 = icmp ult ptr %i.az, %i.ay
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %i.ax, %i.bb
  %bound1173 = icmp ult ptr %i.i, %i.ay
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %i.ax, %i.bc
  %bound1177 = icmp ult ptr %i.n, %i.ay
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %i.ax, %i.bd
  %bound1181 = icmp ult ptr %i.s, %i.ay
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %i.az, %i.bb
  %bound1185 = icmp ult ptr %i.i, %i.ba
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %i.az, %i.bc
  %bound1189 = icmp ult ptr %i.n, %i.ba
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  %bound0192 = icmp ult ptr %i.az, %i.bd
  %bound1193 = icmp ult ptr %i.s, %i.ba
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  br i1 %conflict.rdx195, label %.lr.ph.preheader208, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -2                      ; 2 uses
  %i.be = or i64 %i.as, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat197 = shufflevector <2 x double> %broadcast.splatinsert196, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bf = or disjoint i64 %index, 1               ; 6 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %index
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !16, !alias.scope !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bf
  %wide.load200 = load <2 x double>, ptr %i.bh, align 8, !tbaa !16, !alias.scope !41
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load200, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load)
  %i.bj = add nuw nsw i64 %index, 2               ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bj
  %wide.load201 = load <2 x double>, ptr %i.bk, align 8, !tbaa !16, !alias.scope !41
  %i.bl = fadd <2 x double> %i.bi, %wide.load201
  %i.bm = fmul <2 x double> %broadcast.splat, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bf
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !16, !alias.scope !42, !noalias !43
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.n, i64 %index
  %wide.load202 = load <2 x double>, ptr %i.bo, align 8, !tbaa !16, !alias.scope !44
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bf
  %wide.load203 = load <2 x double>, ptr %i.bp, align 8, !tbaa !16, !alias.scope !44
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load203, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load202)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bj
  %wide.load204 = load <2 x double>, ptr %i.br, align 8, !tbaa !16, !alias.scope !44
  %i.bs = fadd <2 x double> %i.bq, %wide.load204
  %i.bt = fmul <2 x double> %broadcast.splat197, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bf
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !16, !alias.scope !45, !noalias !46
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %index
  %wide.load205 = load <2 x double>, ptr %i.bv, align 8, !tbaa !16, !alias.scope !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  %wide.load206 = load <2 x double>, ptr %i.bw, align 8, !tbaa !16, !alias.scope !47
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load206, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load205)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bj
  %wide.load207 = load <2 x double>, ptr %i.by, align 8, !tbaa !16, !alias.scope !47
  %i.bz = fadd <2 x double> %i.bx, %wide.load207
  %i.ca = fmul <2 x double> %broadcast.splat199, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bf
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader208, %.lr.ph
  %.096 = phi i64 [ %i.cj, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader208 ] ; 8 uses
  %i.cd = add nsw i64 %.096, -1                   ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.096
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.cf)
  %i.cj = add nuw nsw i64 %.096, 1                ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !16
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = fmul double %5, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.096
  store double %i.cn, ptr %i.co, align 8, !tbaa !16
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cd
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.096
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !16
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double -2.000000e+00, double %i.cq)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cj
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !16
  %i.cw = fadd double %i.ct, %i.cv
  %i.cx = fmul double %7, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.096
  store double %i.cx, ptr %i.cy, align 8, !tbaa !16
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cd
  %i.da = load double, ptr %i.cz, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.096
  %i.dc = load double, ptr %i.db, align 8, !tbaa !16
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double -2.000000e+00, double %i.da)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cj
  %i.df = load double, ptr %i.de, align 8, !tbaa !16
  %i.dg = fadd double %i.dd, %i.df
  %i.dh = fmul double %i.ap, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.096
  store double %i.dh, ptr %i.di, align 8, !tbaa !16
  %exitcond.not = icmp eq i64 %i.cj, %i.aq
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.g
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !16
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aq
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !16
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aq
  store double 0.000000e+00, ptr %i.dk, align 8, !tbaa !16
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aq
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %check_flag.exit83, %check_flag.exit81, %check_flag.exit79, %check_flag.exit77, %check_flag.exit75, %check_flag.exit, %._crit_edge
  %.067 = phi i32 [ 0, %._crit_edge ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit75 ], [ 1, %check_flag.exit77 ], [ 1, %check_flag.exit79 ], [ 1, %check_flag.exit81 ], [ 1, %check_flag.exit83 ]
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fi(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.h = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 0) #9
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %i.h) #9 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 1) #9
  %i.n = tail call ptr @N_VGetArrayPointer(ptr noundef %i.m) #9 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %check_flag.exit73, label %bb.c

check_flag.exit73:                                ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %1, i64 noundef 2) #9
  %i.s = tail call ptr @N_VGetArrayPointer(ptr noundef %i.r) #9 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %check_flag.exit75, label %bb.d

check_flag.exit75:                                ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 0) #9
  %i.x = tail call ptr @N_VGetArrayPointer(ptr noundef %i.w) #9 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %check_flag.exit77, label %bb.e

check_flag.exit77:                                ; preds = %bb.d
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 1) #9
  %i.ac = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ab) #9 ; 7 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %check_flag.exit79, label %bb.f

check_flag.exit79:                                ; preds = %bb.e
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %2, i64 noundef 2) #9
  %i.ah = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ag) #9 ; 7 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %check_flag.exit81, label %bb.g

check_flag.exit81:                                ; preds = %bb.f
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %i.al = add i64 %i.a, -1                        ; 4 uses
  %i.am = icmp sgt i64 %i.a, 2
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.an = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ao = getelementptr i8, ptr %i.x, i64 8       ; 5 uses
  %i.ap = shl i64 %i.a, 3
  %i.aq = add i64 %i.ap, -8                       ; 6 uses
  %i.ar = getelementptr i8, ptr %i.x, i64 %i.aq   ; 5 uses
  %i.as = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %i.at = getelementptr i8, ptr %i.ac, i64 %i.aq  ; 5 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 8      ; 5 uses
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 5 uses
  %i.aw = getelementptr i8, ptr %i.s, i64 8       ; 3 uses
  %i.ax = getelementptr i8, ptr %i.s, i64 %i.aq   ; 3 uses
  %i.ay = getelementptr i8, ptr %i.i, i64 8       ; 3 uses
  %i.az = getelementptr i8, ptr %i.i, i64 %i.aq   ; 3 uses
  %i.ba = getelementptr i8, ptr %i.n, i64 8       ; 3 uses
  %i.bb = getelementptr i8, ptr %i.n, i64 %i.aq   ; 3 uses
  %bound0 = icmp ult ptr %i.ao, %i.at
  %bound1 = icmp ult ptr %i.as, %i.ar
  %found.conflict = and i1 %bound0, %bound1
  %bound0154 = icmp ult ptr %i.ao, %i.av
  %bound1155 = icmp ult ptr %i.au, %i.ar
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx = or i1 %found.conflict, %found.conflict156
  %bound0157 = icmp ult ptr %i.ao, %i.ax
  %bound1158 = icmp ult ptr %i.aw, %i.ar
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx, %found.conflict159
  %bound0161 = icmp ult ptr %i.ao, %i.az
  %bound1162 = icmp ult ptr %i.ay, %i.ar
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.ao, %i.bb
  %bound1166 = icmp ult ptr %i.ba, %i.ar
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.as, %i.av
  %bound1170 = icmp ult ptr %i.au, %i.at
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.as, %i.ax
  %bound1174 = icmp ult ptr %i.aw, %i.at
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %i.as, %i.az
  %bound1178 = icmp ult ptr %i.ay, %i.at
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %i.as, %i.bb
  %bound1182 = icmp ult ptr %i.ba, %i.at
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %i.au, %i.ax
  %bound1186 = icmp ult ptr %i.aw, %i.av
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %i.au, %i.az
  %bound1190 = icmp ult ptr %i.ay, %i.av
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %i.au, %i.bb
  %bound1194 = icmp ult ptr %i.ba, %i.av
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  br i1 %conflict.rdx196, label %.lr.ph.preheader208, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -2                      ; 2 uses
  %i.bc = or i64 %i.an, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = or disjoint i64 %index, 1               ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bd ; 3 uses
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !16, !alias.scope !59
  %i.bf = fadd <2 x double> %wide.load, splat (double 1.000000e+00)
end_hunk_0
