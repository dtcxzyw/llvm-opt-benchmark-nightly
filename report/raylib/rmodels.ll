Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@par_shapes__connect:bb.a
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = add i16 %i.bi, 1                        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.168, i64 2
  store i16 %i.bj, ptr %.168, align 2
  %i.bl = add nsw i32 %i.bf, %i.aj                ; 2 uses
  %i.bm = trunc i32 %i.bl to i16                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.168, i64 4
  store i16 %i.bm, ptr %i.bk, align 2
  %i.bo = trunc i32 %i.bg to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.168, i64 6
  store i16 %i.bo, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.168, i64 8
  store i16 %i.bj, ptr %i.bp, align 2
  %i.br = add nsw i32 %i.bl, %2
  %i.bs = trunc i32 %i.br to i16
  %i.bt = add i16 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.168, i64 10
  store i16 %i.bt, ptr %i.bq, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.168, i64 12
  store i16 %i.bm, ptr %i.bu, align 2
  %i.bw = add nuw nsw i32 %.069, 2                ; 3 uses
  %i.bx = add nsw i32 %i.bf, %i.aj                ; 2 uses
  %i.by = add nsw i32 %i.bx, %2
  %i.bz = trunc i32 %i.by to i16
  %i.ca = add i16 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.168, i64 14
  store i16 %i.ca, ptr %i.bv, align 2
  %i.cc = add nsw i32 %i.bw, %i.aj                ; 2 uses
  %i.cd = trunc i32 %i.cc to i16                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.168, i64 16
  store i16 %i.cd, ptr %i.cb, align 2
  %i.cf = trunc i32 %i.bx to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %.168, i64 18
  store i16 %i.cf, ptr %i.ce, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.168, i64 20
  store i16 %i.ca, ptr %i.cg, align 2
  %i.ci = add nsw i32 %i.cc, %2
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.168, i64 22
  store i16 %i.ck, ptr %i.ch, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.168, i64 24 ; 2 uses
  store i16 %i.cd, ptr %i.cl, align 2
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split72.loopexit.unr-lcssa, label %.preheader
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @par_shapes_create_lsystem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #51
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #56 ; 5 uses
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0) #54 ; 0 uses
  %i.e = tail call ptr @strtok(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.18) #54 ; 2 uses
  %.not270 = icmp eq ptr %i.e, null
  br i1 %.not270, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0148273 = phi i32 [ %.1149, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0151272 = phi i32 [ %.1152, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %.0155271 = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %i.f = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #54
  %.not160 = icmp eq ptr %i.f, null
  br i1 %.not160, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.g = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0155271, ptr noundef nonnull dereferenceable(5) @.str.20) #51
  %.not161 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = zext i1 %.not161 to i32
  %.1152 = add nuw nsw i32 %.0151272, %i.i        ; 2 uses
  %not..not161 = xor i1 %.not161, true
  %i.j = zext i1 %not..not161 to i32
  %.1149 = add nuw nsw i32 %.0148273, %i.j        ; 2 uses
  %i.k = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #54 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.0151269 = phi i32 [ %.0151272, %.thread ], [ 1, %bb.a ], [ %.1152, %bb.b ] ; 2 uses
  %.0148267 = phi i32 [ %.0148273, %.thread ], [ 0, %bb.a ], [ %.1149, %bb.b ]
  %i.l = zext nneg i32 %.0151269 to i64           ; 3 uses
  %i.m = mul nuw nsw i64 %i.l, 24
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #56 ; 10 uses
  %i.o = zext nneg i32 %.0148267 to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #56 ; 3 uses
  store ptr @.str.21, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.t, align 8
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0) #54 ; 0 uses
  %i.v = tail call ptr @strtok(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.18) #54 ; 2 uses
  %.not162275 = icmp eq ptr %i.v, null
  br i1 %.not162275, label %._crit_edge, label %.lr.ph279

.lr.ph279:                                        ; preds = %.loopexit, %bb.h
  %.0143278 = phi ptr [ %.1144, %bb.h ], [ %i.q, %.loopexit ] ; 5 uses
  %.0145277 = phi ptr [ %.1146, %bb.h ], [ %i.n, %.loopexit ] ; 7 uses
  %.2157276 = phi ptr [ %i.am, %bb.h ], [ %i.v, %.loopexit ] ; 2 uses
  %i.w = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #54 ; 3 uses
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.2157276, ptr noundef nonnull dereferenceable(5) @.str.20) #51
  %.not177 = icmp eq i32 %i.x, 0
  br i1 %.not177, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph279
  %i.y = getelementptr inbounds nuw i8, ptr %.0145277, i64 24 ; 2 uses
  %i.z = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 46) #51 ; 3 uses
  %.not178 = icmp eq ptr %i.z, null
  br i1 %.not178, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aa, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0145277, i64 32
  store i32 %i.ac, ptr %i.ad, align 8
  store i8 0, ptr %i.z, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0145277, i64 32
  store i32 1, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.w, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0145277, i64 36
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.0145277, i64 40
  store ptr %.0143278, ptr %i.ag, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph279
  %i.ah = getelementptr inbounds nuw i8, ptr %.0145277, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4
  store ptr %.2157276, ptr %.0143278, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0143278, i64 8
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0143278, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1146 = phi ptr [ %.0145277, %bb.g ], [ %i.y, %bb.f ]
  %.1144 = phi ptr [ %i.al, %bb.g ], [ %.0143278, %bb.f ]
  %i.am = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #54 ; 2 uses
  %.not162 = icmp eq ptr %i.am, null
  br i1 %.not162, label %._crit_edge, label %.lr.ph279

._crit_edge:                                      ; preds = %bb.h, %.loopexit
  %i.an = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 3 uses
  %i.ao = tail call ptr @par_shapes_create_cylinder(i32 noundef %1, i32 noundef 1) ; 3 uses
  %i.ap = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 3, ptr %i.aq, align 8
  %i.ar = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 36, i64 noundef 1) #57 ; 4 uses
  store ptr %i.ar, ptr %i.ap, align 8
  store float 1.000000e+00, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store float 1.000000e+00, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store float 1.000000e+00, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @free(ptr noundef %i.av) #54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void @free(ptr noundef %i.ax) #54
  %i.ay = sext i32 %2 to i64
  %i.az = mul nsw i64 %i.ay, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 1) #57 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.ap, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.n, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store float 1.000000e+00, ptr %i.be, align 8
  %i.bf = add nsw i32 %2, -1
  %i.bg = add nsw i32 %.0151269, -1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %scevgep53.i = getelementptr i8, ptr %i.n, i64 %i.bi
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.tail261.thread
  %.0280 = phi i32 [ 0, %._crit_edge ], [ %.2, %.tail261.thread ] ; 22 uses
  %i.bj = zext nneg i32 %.0280 to i64
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %i.bj ; 14 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8            ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.br = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %.not163 = icmp slt i32 %i.br, %i.bt
  br i1 %.not163, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bo, align 8
  tail call void @free(ptr noundef %i.bu) #54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void @free(ptr noundef %i.bw) #54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void @free(ptr noundef %i.by) #54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void @free(ptr noundef %i.ca) #54
  tail call void @free(ptr noundef %i.bo) #54
  %i.cb = add nsw i32 %.0280, -1
  br label %.tail261.thread

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.br, 1
  store i32 %i.ce, ptr %i.bk, align 8
  %i.cf = sext i32 %i.br to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.cf ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ch, ptr noundef nonnull dereferenceable(6) @.str.22) #51
  %.not164 = icmp eq i32 %i.ci, 0
  br i1 %.not164, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cj = tail call ptr @par_shapes_clone(ptr noundef readonly %i.ao, ptr noundef null) ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i, label %par_shapes__apply_turtle.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %3 = load <3 x float>, ptr %i.bq, align 8
  %i.co = load <2 x float>, ptr %i.bp, align 4
  %i.cp = load float, ptr %i.cn, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.cq = load ptr, ptr %i.cj, align 8
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %4 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %5 = load <3 x float>, ptr %4, align 4
  %6 = fmul <3 x float> %3, %5                    ; 6 uses
  %7 = extractelement <3 x float> %6, i64 0       ; 2 uses
  store float %7, ptr %4, align 4
  %8 = extractelement <3 x float> %6, i64 1       ; 2 uses
  store float %8, ptr %i.cr, align 4
  %9 = extractelement <3 x float> %6, i64 2       ; 2 uses
  store float %9, ptr %i.cs, align 4
  %i.ct = load ptr, ptr %i.bo, align 8            ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load <4 x float>, ptr %i.ct, align 4    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load <2 x float>, ptr %i.cw, align 4    ; 2 uses
  %i.cy = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.da = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.cv, <4 x float> %i.da, <2 x i32> <i32 1, i32 4>
  %i.dc = fmul <2 x float> %i.cy, %i.db
  %i.dd = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.de = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3>
  %10 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %10, <2 x float> %i.df)
  %i.di = load float, ptr %i.cu, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = fmul float %8, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.di, float %7, float %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %9, float %i.dm)
  %i.dq = fadd <2 x float> %i.dh, %i.co
  store <2 x float> %i.dq, ptr %4, align 4
  %i.dr = fadd float %i.dp, %i.cp
  store float %i.dr, ptr %i.cs, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = load i32, ptr %i.ck, align 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.dt
  br i1 %i.du, label %bb.m, label %par_shapes__apply_turtle.exit

par_shapes__apply_turtle.exit:                    ; preds = %bb.m, %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dw, ptr noundef nonnull dereferenceable(8) @.str.23) #51
  %.not165 = icmp eq i32 %i.dx, 0
  br i1 %.not165, label %bb.n, label %bb.o

bb.n:                                             ; preds = %par_shapes__apply_turtle.exit
  tail call void @par_shapes__connect(ptr noundef %i.an, ptr noundef nonnull %i.cj, i32 noundef %1)
  br label %bb.p

bb.o:                                             ; preds = %par_shapes__apply_turtle.exit
  tail call void @par_shapes_merge(ptr noundef %i.an, ptr noundef nonnull %i.cj)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dy = load ptr, ptr %i.cj, align 8
  tail call void @free(ptr noundef %i.dy) #54
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void @free(ptr noundef %i.ea) #54
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void @free(ptr noundef %i.ec) #54
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void @free(ptr noundef %i.ee) #54
  tail call void @free(ptr noundef nonnull %i.cj) #54
  br label %.tail261.thread

bb.q:                                             ; preds = %bb.k
  %i.ef = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ch, ptr noundef nonnull dereferenceable(5) @.str.24) #51
  %.not166 = icmp eq i32 %i.ef, 0
  %i.eg = icmp slt i32 %.0280, %i.bf
  %or.cond = select i1 %.not166, i1 %i.eg, i1 false
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  br i1 %or.cond, label %.lr.ph.i180, label %sub_0

._crit_edge.i:                                    ; preds = %bb.s
  %i.ej = sitofp i32 %.128.i to float
  %i.ek = tail call i32 @rand() #54
  %i.el = sitofp i32 %i.ek to float
  %i.em = fmul nnan float %i.el, f0x30000000
  br label %bb.t

.lr.ph.i180:                                      ; preds = %bb.q, %bb.s
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i182, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.02737.i = phi i32 [ %.128.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv.i181 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eo, ptr noundef nonnull readonly dereferenceable(1) %i.ei) #51
  %.not36.i = icmp eq i32 %i.ep, 0
  br i1 %.not36.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i180
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = add nsw i32 %i.er, %.02737.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i180
  %.128.i = phi i32 [ %.02737.i, %.lr.ph.i180 ], [ %i.es, %bb.r ] ; 2 uses
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i181, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i182, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i180

bb.t:                                             ; preds = %bb.v, %._crit_edge.i
  %indvars.iv51.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next52.i, %bb.v ] ; 2 uses
  %.02541.i = phi float [ 0.000000e+00, %._crit_edge.i ], [ %.1.i, %bb.v ] ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv51.i ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull readonly dereferenceable(1) %i.ei) #51
  %.not.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = fdiv float %i.ey, %i.ej
  %i.fa = fadd float %.02541.i, %i.ez             ; 2 uses
  %i.fb = fcmp ult float %i.fa, %i.em
  br i1 %i.fb, label %bb.v, label %par_shapes__pick_rule.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi float [ %.02541.i, %bb.t ], [ %i.fa, %bb.u ]
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next52.i, %i.l
  br i1 %exitcond56.not.i, label %par_shapes__pick_rule.exit, label %bb.t

par_shapes__pick_rule.exit:                       ; preds = %bb.u, %bb.v
  %spec.select.i = phi ptr [ %i.et, %bb.u ], [ %scevgep53.i, %bb.v ]
  %i.fc = add nuw nsw i32 %.0280, 1               ; 2 uses
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %i.fd ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store ptr %spec.select.i, ptr %i.ff, align 8
  %i.fg = tail call ptr @par_shapes_clone(ptr noundef %i.bo, ptr noundef null)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.fg, ptr %i.fh, align 8
  store i32 0, ptr %i.fe, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fk = load <2 x float>, ptr %i.fi, align 4
  store <2 x float> %i.fk, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load <4 x float>, ptr %i.bp, align 4
  store <4 x float> %i.fm, ptr %i.fl, align 4
  br label %.tail261.thread

sub_0:                                            ; preds = %bb.q
  %i.fn = tail call double @strtod(ptr noundef nonnull captures(none) %i.ei, ptr noundef null) #54, !inline_history !1
  %i.fo = fptrunc double %i.fn to float           ; 14 uses
  %i.fp = load ptr, ptr %i.cg, align 8            ; 21 uses
  %i.fq = load i8, ptr %i.fp, align 1
  switch i8 %i.fq, label %.tail261.thread [
    i8 114, label %sub_1
    i8 116, label %sub_1233
    i8 115, label %sub_1248
  ]

sub_1:                                            ; preds = %sub_0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fs = load i8, ptr %i.fr, align 1
  %.not282 = icmp eq i8 %i.fs, 120
  br i1 %.not282, label %.tail, label %sub_1223

.tail:                                            ; preds = %sub_1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.w, label %sub_1223

bb.w:                                             ; preds = %.tail
  %i.fw = fpext float %i.fo to double
  %i.fx = fmul double %i.fw, f0x400921FB54442EEA
  %i.fy = fdiv double %i.fx, 1.800000e+02
  %i.fz = fptrunc double %i.fy to float
  tail call void @par_shapes_rotate(ptr noundef %i.bo, float noundef %i.fz, ptr noundef nonnull @__const.par_shapes_create_lsystem.xaxis)
  br label %.tail261.thread

sub_1223:                                         ; preds = %.tail, %sub_1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.gb = load i8, ptr %i.ga, align 1
  %.not284 = icmp eq i8 %i.gb, 121
  br i1 %.not284, label %.tail221, label %sub_1228

.tail221:                                         ; preds = %sub_1223
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.x, label %sub_1228

bb.x:                                             ; preds = %.tail221
  %i.gf = fpext float %i.fo to double
  %i.gg = fmul double %i.gf, f0x400921FB54442EEA
  %i.gh = fdiv double %i.gg, 1.800000e+02
  %i.gi = fptrunc double %i.gh to float
  tail call void @par_shapes_rotate(ptr noundef %i.bo, float noundef %i.gi, ptr noundef nonnull @__const.par_shapes_create_lsystem.yaxis)
  br label %.tail261.thread

sub_1228:                                         ; preds = %.tail221, %sub_1223
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.gk = load i8, ptr %i.gj, align 1
  %.not286 = icmp eq i8 %i.gk, 122
  br i1 %.not286, label %.tail226, label %.tail261.thread

.tail226:                                         ; preds = %sub_1228
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.y, label %.tail261.thread

bb.y:                                             ; preds = %.tail226
  %i.go = fpext float %i.fo to double
  %i.gp = fmul double %i.go, f0x400921FB54442EEA
  %i.gq = fdiv double %i.gp, 1.800000e+02
  %i.gr = fptrunc double %i.gq to float
  tail call void @par_shapes_rotate(ptr noundef %i.bo, float noundef %i.gr, ptr noundef nonnull @__const.UploadMesh.value)
  br label %.tail261.thread

sub_1233:                                         ; preds = %sub_0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.gt = load i8, ptr %i.gs, align 1
  %.not288 = icmp eq i8 %i.gt, 120
  br i1 %.not288, label %.tail231, label %sub_1238

.tail231:                                         ; preds = %sub_1233
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp eq i8 %i.gv, 0
end_hunk_0
