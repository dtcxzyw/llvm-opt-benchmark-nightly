Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_ls?download=true
inline.NumInlined: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@arkLsInitialize:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.l, %bb.k, %bb.n
  %.not44 = icmp eq ptr %.0, null
  br i1 %.not44, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !62  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !86 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  %i.at = xor i1 %i.ap, %i.as
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 3088, ptr noundef nonnull @__func__.arkLsInitialize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47) #11
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i32 -3, ptr %i.au, align 8, !tbaa !60
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  br i1 %i.ap, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !153
  %i.ay = icmp eq ptr %i.ax, null                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !153
  %i.bc = icmp eq ptr %i.bb, null
  %i.bd = xor i1 %i.ay, %i.bc                     ; 2 uses
  br i1 %i.ay, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = tail call i32 @SUNMatGetID(ptr noundef nonnull %i.ao) #11
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.bg = tail call i32 @SUNMatGetID(ptr noundef %i.bf) #11
  %.not47 = icmp ne i32 %i.be, %i.bg
  %or.cond.not = select i1 %.not47, i1 true, i1 %i.bd
  br i1 %or.cond.not, label %.thread, label %bb.u

select.unfold:                                    ; preds = %bb.s
  br i1 %i.bd, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t, %select.unfold
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 3112, ptr noundef nonnull @__func__.arkLsInitialize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i32 -3, ptr %i.bh, align 8, !tbaa !60
  br label %bb.aj

bb.u:                                             ; preds = %bb.t, %select.unfold, %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = tail call i32 @SUNLinSolGetType(ptr noundef %i.bj) #11
  %i.bl = icmp eq i32 %i.bk, 3
  br i1 %i.bl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87
  %i.bo = tail call i32 @SUNLinSolGetType(ptr noundef %i.bn) #11
  %.not49 = icmp eq i32 %i.bo, 3
  br i1 %.not49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 3123, ptr noundef nonnull @__func__.arkLsInitialize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49) #11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i32 -3, ptr %i.bp, align 8, !tbaa !60
  br label %bb.aj

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.br = tail call i32 @SUNLinSolGetType(ptr noundef %i.bq) #11
  %.not50 = icmp eq i32 %i.br, 3
  br i1 %.not50, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = tail call i32 @SUNLinSolGetType(ptr noundef %i.bt) #11
  %i.bv = icmp eq i32 %i.bu, 3
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 3131, ptr noundef nonnull @__func__.arkLsInitialize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49) #11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i32 -3, ptr %i.bw, align 8, !tbaa !60
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i8 0, i64 72, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !47
  %.not51 = icmp eq i32 %i.bz, 0
  br i1 %.not51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr null, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr @arkLsDQJtimes, ptr %i.cb, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store ptr %0, ptr %i.cc, align 8, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !154 ; 2 uses
  %.not52 = icmp eq ptr %i.cj, null
  br i1 %.not52, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void %i.cj(ptr noundef nonnull %0) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.cm = tail call i32 @SUNLinSolGetType(ptr noundef %i.cl) #11
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !154
  tail call void %i.cp(ptr noundef nonnull %0) #11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %i.cq, align 4, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.cs = tail call i32 @SUNLinSolInitialize(ptr noundef %i.cr) #11 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !60
  br label %bb.aj

bb.aj:                                            ; preds = %arkLs_AccessMassMem.exit, %arkLs_AccessLMem.exit, %bb.ai, %bb.z, %bb.w, %.thread, %bb.q, %bb.m, %bb.j
  %.029 = phi i32 [ -4, %bb.m ], [ -2, %arkLs_AccessLMem.exit ], [ -3, %bb.q ], [ -3, %.thread ], [ -3, %bb.w ], [ -3, %bb.z ], [ %i.cs, %bb.ai ], [ -3, %bb.j ], [ -6, %arkLs_AccessMassMem.exit ]
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define i32 @arkLsSetup(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = tail call ptr %i.f(ptr noundef %0) #11, !inline_history !79 ; 20 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %arkLs_AccessLMem.exit, label %bb.b

arkLs_AccessLMem.exit:                            ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 4112, ptr noundef nonnull @__func__.arkLsSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #11
  br label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = tail call i32 @SUNLinSolGetType(ptr noundef %i.j) #11
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i32 0, ptr %i.m, align 8, !tbaa !60
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store double %2, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %3, ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %4, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = call i32 %i.r(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #11 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 8 uses
  store i32 %i.s, ptr %i.t, align 8, !tbaa !60
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef 3215, ptr noundef nonnull @__func__.arkLsSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) #11
  %i.u = load i32, ptr %i.t, align 8, !tbaa !60
  br label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.w = load i32, ptr %i.v, align 4, !tbaa !155
  %.not53 = icmp eq i32 %i.w, 0
  br i1 %.not53, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.y = load i64, ptr %i.x, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57
  %i.ad = add nsw i64 %i.ac, %i.aa
  %.not54 = icmp slt i64 %i.y, %i.ad
  br i1 %.not54, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ne i32 %1, 1
  %i.af = load i32, ptr %i.c, align 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i32 %1, 2
  %i.ai = zext i1 %i.ah to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.f
  %i.aj = phi i32 [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ %i.ai, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %.not55 = icmp eq ptr %i.am, null
  br i1 %.not55, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call ptr %i.am(ptr noundef nonnull %0) #11 ; 2 uses
  %.not56 = icmp eq ptr %i.an, null
  br i1 %.not56, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.aq = call i32 @arkLsMassSetup(ptr noundef nonnull %0, double noundef %2, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 2 uses
  store i32 %i.aq, ptr %i.t, align 8, !tbaa !60
  %.not57 = icmp eq i32 %i.aq, 0
  br i1 %.not57, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 3244, ptr noundef nonnull @__func__.arkLsSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #11
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !60
  br label %bb.z

.thread:                                          ; preds = %bb.j, %bb.l, %bb.k
  %.0 = phi ptr [ %i.ap, %bb.l ], [ null, %bb.k ], [ null, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62 ; 2 uses
  %.not58 = icmp eq ptr %i.at, null
  br i1 %.not58, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = load i32, ptr %i.ak, align 8, !tbaa !58
  %.not59 = icmp eq i32 %i.aw, 0
  %i.ax = zext i1 %.not59 to i32
  %i.ay = load double, ptr %i.a, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = call i32 %i.av(double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.at, ptr noundef %.0, i32 noundef %i.ax, ptr noundef %5, double noundef %i.ay, ptr noundef %i.ba, ptr noundef %6, ptr noundef %7, ptr noundef %8) #11 ; 3 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !72
  %.not60 = icmp eq i32 %i.bc, 0
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !90
  %i.bf = add nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !156
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  store double %2, ptr %i.bj, align 8, !tbaa !91
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not61 = icmp eq i32 %i.bb, 0
  br i1 %.not61, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !62
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !52
  %.not64 = icmp eq i32 %i.bl, 0
  br i1 %.not64, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp slt i32 %i.bb, 0
  br i1 %i.bm, label %bb.s, label %9

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 3273, ptr noundef nonnull @__func__.arkLsSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #11
  store i32 -7, ptr %i.t, align 8, !tbaa !60
  br label %bb.z

9:                                                ; preds = %bb.r
  store i32 -8, ptr %i.t, align 8, !tbaa !60
  br label %bb.z

bb.t:                                             ; preds = %.thread
  %i.bn = load i32, ptr %i.ak, align 8, !tbaa !58
  store i32 %i.bn, ptr %5, align 4, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t
  %i.bo = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.t ]
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.bq = call i32 @SUNLinSolSetup(ptr noundef %i.bp, ptr noundef %i.bo) #11 ; 3 uses
  store i32 %i.bq, ptr %i.t, align 8, !tbaa !60
  %i.br = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bt = load i32, ptr %5, align 4, !tbaa !72
  %.not62 = icmp eq i32 %i.bt, 0
  br i1 %.not62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 152 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !92
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !156
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  store double %2, ptr %i.ca, align 8, !tbaa !91
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = load i32, ptr %i.ak, align 8, !tbaa !58
  %.not63 = icmp eq i32 %i.cb, 0
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %5, align 4, !tbaa !72
  %.pre89 = load i32, ptr %i.t, align 8, !tbaa !60
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y, %bb.x, %arkLs_AccessLMem.exit, %bb.q, %9, %bb.s, %bb.m, %bb.e, %bb.c
  %.046 = phi i32 [ %i.bb, %bb.q ], [ 0, %bb.c ], [ %i.u, %bb.e ], [ %i.ar, %bb.m ], [ -1, %bb.s ], [ 1, %9 ], [ -2, %arkLs_AccessLMem.exit ], [ %i.bq, %bb.x ], [ %.pre89, %bb.y ], [ %i.bq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define i32 @arkLsSolve(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = tail call ptr %i.f(ptr noundef %0) #11, !inline_history !79 ; 25 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %arkLs_AccessLMem.exit, label %bb.b

arkLs_AccessLMem.exit:                            ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 4112, ptr noundef nonnull @__func__.arkLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #11
  br label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store double %2, ptr %i.i, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %3, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %4, ptr %i.k, align 8, !tbaa !76
  %i.l = load i32, ptr %i.g, align 8, !tbaa !42
  %.not50 = icmp eq i32 %i.l, 0
  br i1 %.not50, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !59
  %i.o = fmul double %5, %i.n                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = tail call double @N_VWrmsNorm(ptr noundef %1, ptr noundef %i.q) #11
  %i.s = fcmp ugt double %i.r, %i.o
  br i1 %i.s, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp sgt i32 %6, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i32 0, ptr %i.u, align 8, !tbaa !60
  br label %bb.ai

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !65
  %i.x = fmul double %i.o, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.042 = phi double [ %i.x, %bb.g ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  %.not51 = icmp eq ptr %i.ad, null
  br i1 %.not51, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = tail call i32 @SUNLinSolSetScalingVectors(ptr noundef nonnull %i.z, ptr noundef %i.af, ptr noundef %i.ah) #11
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -12, i32 noundef 3387, ptr noundef nonnull @__func__.arkLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i32 -12, ptr %i.aj, align 8, !tbaa !60
  br label %bb.ai

bb.k:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !42
  %.not52 = icmp eq i32 %i.ak, 0
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67
  tail call void @N_VConst(double noundef 1.000000e+00, ptr noundef %i.am) #11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.aq = tail call double @N_VWrmsNorm(ptr noundef %i.ao, ptr noundef %i.ap) #11
  %i.ar = fdiv double %.042, %i.aq
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.1 = phi double [ %.042, %bb.i ], [ %i.ar, %bb.l ], [ %.042, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.at) #11
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.av = tail call i32 @SUNLinSolSetZeroGuess(ptr noundef %i.au, i32 noundef 1) #11
  %.not54 = icmp eq i32 %i.av, 0
  br i1 %.not54, label %bb.n, label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 2 uses
  %.not55 = icmp eq ptr %i.ax, null
  br i1 %.not55, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ba = tail call i32 %i.ax(double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.az) #11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 184 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !95
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !95
  %.not56 = icmp eq i32 %i.ba, 0
  br i1 %.not56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ba, i32 noundef 3442, ptr noundef nonnull @__func__.arkLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #11
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !60
  br label %bb.ai

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.bk = tail call i32 @SUNLinSolSolve(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %1, double noundef %.1) #11 ; 3 uses
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !67
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bl, ptr noundef %1) #11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !66
  %.not57 = icmp eq i32 %i.bn, 0
  br i1 %.not57, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.bq = call i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #11 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !60
  %.not58 = icmp eq i32 %i.bq, 0
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef 3462, ptr noundef nonnull @__func__.arkLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) #11
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !60
  br label %bb.ai

bb.t:                                             ; preds = %bb.r
  %i.bt = load double, ptr %i.b, align 8, !tbaa !78 ; 2 uses
  %i.bu = fcmp une double %i.bt, 1.000000e+00
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bv = fadd double %i.bt, 1.000000e+00
  %i.bw = fdiv double 2.000000e+00, %i.bv
  call void @N_VScale(double noundef %i.bw, ptr noundef %1, ptr noundef %1) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q
  %i.bx = load i32, ptr %i.g, align 8, !tbaa !42
  %.not59 = icmp eq i32 %i.bx, 0
  br i1 %.not59, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !41  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !96
  %.not60 = icmp eq ptr %i.cc, null
  br i1 %.not60, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = call double @SUNLinSolResNorm(ptr noundef nonnull %i.by) #11 ; 0 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
end_hunk_0
