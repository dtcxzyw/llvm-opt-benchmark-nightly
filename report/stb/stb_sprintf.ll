Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbsp_vsnprintf:bb.a
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %stbsp__clamp_callback.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select17 = select i1 %i.k, ptr %0, ptr %i.l
  br label %stbsp__clamp_callback.exit

stbsp__clamp_callback.exit:                       ; preds = %bb.f, %bb.e
  %.028.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17, %bb.f ]
  %i.m = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %4, ptr noundef %.028.i, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %stbsp__clamp_callback.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stbsp__context, align 8     ; 14 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %stbsp_vsnprintf.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !25
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.not34.i.i = icmp eq ptr %0, null
  %.pre36.i.i = sext i32 %1 to i64
  call void @llvm.assume(i1 %.not34.i.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !27
  store i32 0, ptr %i.f, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %stbsp__clamp_callback.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select17.i = select i1 %i.k, ptr %0, ptr %i.l
  br label %stbsp__clamp_callback.exit.i

stbsp__clamp_callback.exit.i:                     ; preds = %bb.f, %bb.e
  %.028.i.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17.i, %bb.f ]
  %i.m = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %3, ptr noundef %.028.i.i, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select.i to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !9
  br label %stbsp_vsnprintf.exit

stbsp_vsnprintf.exit:                             ; preds = %bb.b, %stbsp__clamp_callback.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbsp__raise_to_power10(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %or.cond = icmp ult i32 %3, 23
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.a
  %i.c = load double, ptr %i.b, align 8           ; 3 uses
  %i.d = fmul double %2, %i.c                     ; 2 uses
  %i.e = bitcast double %2 to i64
  %i.f = and i64 %i.e, -134217728
  %i.g = bitcast i64 %i.f to double               ; 3 uses
  %i.h = bitcast double %i.c to i64
  %i.i = and i64 %i.h, -134217728
  %i.j = bitcast i64 %i.i to double               ; 3 uses
  %i.k = fsub double %2, %i.g                     ; 2 uses
  %i.l = fsub double %i.c, %i.j                   ; 2 uses
  %i.m = fneg double %i.d
  %i.n = tail call double @llvm.fmuladd.f64(double %i.g, double %i.j, double %i.m)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.g, double %i.l, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.j, double %i.o)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.p)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %3, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.s = mul nuw nsw i32 %spec.select, 713
  %i.t = lshr i32 %i.s, 14                        ; 3 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.t, i32 13) ; 3 uses
  %.neg = mul nsw i32 %spec.store.select, -23
  %i.u = add nsw i32 %.neg, %spec.select          ; 5 uses
  %.not235 = icmp eq i32 %i.u, 0                  ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.u, -1
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr @stbsp__negbot, i64 %i.w
  %i.y = load double, ptr %i.x, align 8           ; 3 uses
  %i.z = fmul double %2, %i.y                     ; 2 uses
  %i.aa = bitcast double %2 to i64
  %i.ab = and i64 %i.aa, -134217728
  %i.ac = bitcast i64 %i.ab to double             ; 3 uses
  %i.ad = bitcast double %i.y to i64
  %i.ae = and i64 %i.ad, -134217728
  %i.af = bitcast i64 %i.ae to double             ; 3 uses
  %i.ag = fsub double %2, %i.ac                   ; 2 uses
  %i.ah = fsub double %i.y, %i.af                 ; 2 uses
  %i.ai = fneg double %i.z
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.af, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %i.al)
  %i.an = getelementptr inbounds [8 x i8], ptr @stbsp__negboterr, i64 %i.w
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16
  %i.ap = tail call double @llvm.fmuladd.f64(double %2, double %i.ao, double %i.am)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.ap, %bb.e ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.aq = phi double [ %i.z, %bb.e ], [ %2, %bb.d ] ; 3 uses
  %.not236 = icmp eq i32 %i.t, 0
  br i1 %.not236, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fadd double %.0, %i.aq                  ; 5 uses
  %i.as = add nsw i32 %spec.store.select, -1
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtop, i64 %i.at
  %i.av = load double, ptr %i.au, align 8         ; 4 uses
  %i.aw = bitcast double %i.ar to i64
  %i.ax = and i64 %i.aw, -134217728
  %i.ay = bitcast i64 %i.ax to double             ; 3 uses
  %i.az = bitcast double %i.av to i64
  %i.ba = and i64 %i.az, -134217728
  %i.bb = bitcast i64 %i.ba to double             ; 3 uses
  %i.bc = fsub double %i.ar, %i.aq
  %4 = fmul double %i.ar, %i.av                   ; 2 uses
  %i.bd = fsub double %i.av, %i.bb                ; 2 uses
  %5 = fneg double %4
  %6 = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtoperr, i64 %i.at
  %7 = load double, ptr %6, align 8, !tbaa !16
  %i.be = fsub double %.0, %i.bc
  %i.bf = fsub double %i.ar, %i.ay                ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bb, double %5)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bd, double %8)
  %9 = fmul double %i.be, %i.av
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bb, double %i.bg)
  %10 = insertelement <2 x double> poison, double %i.bf, i64 0
  %11 = insertelement <2 x double> %10, double %i.ar, i64 1
  %12 = insertelement <2 x double> poison, double %i.bd, i64 0
  %13 = insertelement <2 x double> %12, double %7, i64 1
  %14 = insertelement <2 x double> poison, double %i.bh, i64 0
  %15 = insertelement <2 x double> %14, double %9, i64 1
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %13, <2 x double> %15)
  %17 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %16)
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.store.select2 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 22) ; 2 uses
  %i.bi = sext i32 %spec.store.select2 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr @stbsp__bot, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8         ; 3 uses
  %i.bl = fmul double %2, %i.bk                   ; 4 uses
  %i.bm = bitcast double %2 to i64
  %i.bn = and i64 %i.bm, -134217728
  %i.bo = bitcast i64 %i.bn to double             ; 3 uses
  %i.bp = bitcast double %i.bk to i64
  %i.bq = and i64 %i.bp, -134217728
  %i.br = bitcast i64 %i.bq to double             ; 3 uses
  %i.bs = fsub double %2, %i.bo                   ; 2 uses
  %i.bt = fsub double %i.bk, %i.br                ; 2 uses
  %i.bu = fneg double %i.bl
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.br, double %i.bu)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bt, double %i.bv)
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.br, double %i.bw)
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bx) ; 3 uses
  %.not233 = icmp slt i32 %i.u, 23
  br i1 %.not233, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = sub nsw i32 %i.u, %spec.store.select2
  %i.ca = fadd double %i.bl, %i.by                ; 4 uses
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8         ; 4 uses
  %i.ce = bitcast double %i.ca to i64
  %i.cf = and i64 %i.ce, -134217728
  %i.cg = bitcast i64 %i.cf to double             ; 3 uses
  %i.ch = bitcast double %i.cd to i64
  %i.ci = and i64 %i.ch, -134217728
  %i.cj = bitcast i64 %i.ci to double             ; 3 uses
  %i.ck = fsub double %i.ca, %i.bl
  %i.cl = fsub double %i.by, %i.ck
  %i.cm = fmul double %i.ca, %i.cd                ; 2 uses
  %i.cn = fsub double %i.ca, %i.cg                ; 2 uses
  %i.co = fsub double %i.cd, %i.cj                ; 2 uses
  %i.cp = fneg double %i.cm
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cj, double %i.cp)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.co, double %i.cq)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cj, double %i.cr)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cs)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cl, double %i.ct)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi double [ %i.cu, %bb.j ], [ %i.by, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.cv = phi double [ %i.cm, %bb.j ], [ %i.bl, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.not234 = icmp eq i32 %i.t, 0
  br i1 %.not234, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = fadd double %.1, %i.cv                  ; 5 uses
  %i.cx = add nsw i32 %spec.store.select, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @stbsp__top, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8         ; 4 uses
  %i.db = bitcast double %i.cw to i64
  %i.dc = and i64 %i.db, -134217728
  %i.dd = bitcast i64 %i.dc to double             ; 3 uses
  %i.de = bitcast double %i.da to i64
  %i.df = and i64 %i.de, -134217728
  %i.dg = bitcast i64 %i.df to double             ; 3 uses
  %i.dh = fsub double %i.cw, %i.cv
  %18 = fmul double %i.cw, %i.da                  ; 2 uses
  %i.di = fsub double %i.da, %i.dg                ; 2 uses
  %19 = fneg double %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr @stbsp__toperr, i64 %i.cy
  %21 = load double, ptr %20, align 8, !tbaa !16
  %i.dj = fsub double %.1, %i.dh
  %i.dk = fsub double %i.cw, %i.dd                ; 2 uses
  %22 = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dg, double %19)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.di, double %22)
  %23 = fmul double %i.dj, %i.da
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dg, double %i.dl)
  %24 = insertelement <2 x double> poison, double %i.dk, i64 0
  %25 = insertelement <2 x double> %24, double %i.cw, i64 1
  %26 = insertelement <2 x double> poison, double %i.di, i64 0
  %27 = insertelement <2 x double> %26, double %21, i64 1
  %28 = insertelement <2 x double> poison, double %i.dm, i64 0
  %29 = insertelement <2 x double> %28, double %23, i64 1
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %27, <2 x double> %29)
  %31 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %30)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.l, %bb.k, %bb.b
  %.3 = phi double [ %i.q, %bb.b ], [ %17, %bb.g ], [ %.0, %bb.f ], [ %31, %bb.l ], [ %.1, %bb.k ] ; 2 uses
  %i.dn = phi double [ %i.d, %bb.b ], [ %4, %bb.g ], [ %i.aq, %bb.f ], [ %18, %bb.l ], [ %i.cv, %bb.k ] ; 2 uses
  %i.do = fadd double %.3, %i.dn                  ; 2 uses
  %i.dp = fsub double %i.do, %i.dn
  %i.dq = fsub double %.3, %i.dp
  store double %i.do, ptr %0, align 8, !tbaa !16
  store double %i.dq, ptr %1, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 8, i32 24}
!20 = !{!"long long", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"short", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"stbsp__context", !13, i64 0, !6, i64 8, !6, i64 12, !5, i64 16}
!25 = !{!24, !6, i64 12}
!26 = !{!24, !6, i64 8}
!27 = !{!24, !13, i64 0}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !73}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11, !17, !18}
!35 = distinct !{!35, !11, !17, !18}
!36 = distinct !{!36, !73}
!37 = distinct !{!37, !11, !17}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !73}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !73}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !73}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !73}
!58 = distinct !{!58, !11, !17, !18}
!59 = distinct !{!59, !11, !17, !18}
!60 = distinct !{!60, !73}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11, !17}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !73}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = !{!"p1 int", !12, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11, !17, !18}
!80 = distinct !{!80, !11, !17, !18}
!81 = distinct !{!81, !11, !17}
end_hunk_0
