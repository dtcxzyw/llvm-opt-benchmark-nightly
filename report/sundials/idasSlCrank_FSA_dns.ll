inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.gv = extractelement <2 x double> %i.gt, i64 1
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.gu, double noundef %i.gv) ; 0 uses
  %puts175 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts176 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.gx = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gm, i64 1 ; 2 uses
  %i.gz = fsub <2 x double> %i.gy, %i.gp
  %i.ha = fdiv <2 x double> %i.gz, splat (double 1.000000e-05) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = extractelement <2 x double> %i.ha, i64 1
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.hb, double noundef %i.hc) ; 0 uses
  %puts177 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts178 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.he = fsub <2 x double> %i.gy, %i.gr
  %i.hf = fdiv <2 x double> %i.he, splat (double 2.000000e-05) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.hg, double noundef %i.hh) ; 0 uses
  %puts179 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #11
  call void @N_VDestroy(ptr noundef nonnull %i.k) #11
  call void @N_VDestroy(ptr noundef %i.l) #11
  call void @N_VDestroy(ptr noundef %i.m) #11
  call void @N_VDestroy(ptr noundef nonnull %i.o) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.p, i32 noundef 2) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.q, i32 noundef 2) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.r, i32 noundef 2) #11
  %i.hj = call i32 @SUNContext_Free(ptr noundef nonnull %i.e) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %check_retval.exit195, %check_retval.exit193, %check_retval.exit191, %check_retval.exit189, %check_retval.exit187, %check_retval.exit185, %check_retval.exit183, %check_retval.exit181, %check_retval.exit, %bb.j
  %.0159 = phi i32 [ 0, %bb.j ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit181 ], [ 1, %check_retval.exit183 ], [ 1, %check_retval.exit185 ], [ 1, %check_retval.exit187 ], [ 1, %check_retval.exit189 ], [ 1, %check_retval.exit191 ], [ 1, %check_retval.exit193 ], [ 1, %check_retval.exit195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @setIC(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %0) #11
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #11
  %i.a = load double, ptr %2, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !30
  %i.g = fneg double %i.a
  %i.h = tail call double @asin(double noundef %i.g) #11 ; 4 uses
  %i.i = tail call double @cos(double noundef %i.h) #11 ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !14 ; 2 uses
  %i.y = tail call double @sin(double noundef %i.h) #11 ; 5 uses
  %i.z = tail call double @cos(double noundef %i.h) #11 ; 4 uses
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double f0x3C91A62633145C07, double %i.y)
  %i.ac = fmul double %i.i, 2.000000e+00
  %i.ad = fsub double %i.x, %i.t
  %i.ae = fmul double %i.z, 5.000000e-01
  %i.af = load double, ptr %i.b, align 8, !tbaa !31
  store double f0x3FF921FB54442D18, ptr %i.l, align 8, !tbaa !14
  store double %i.i, ptr %i.m, align 8, !tbaa !14
  store double %i.h, ptr %i.n, align 8, !tbaa !14
  %i.ag = load double, ptr %2, align 8, !tbaa !28 ; 8 uses
  %i.ah = load double, ptr %i.o, align 8, !tbaa !14
  %i.ai = load double, ptr %i.p, align 8, !tbaa !14
  %i.aj = load double, ptr %i.q, align 8, !tbaa !32
  %i.ak = load double, ptr %i.r, align 8, !tbaa !16 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.y, double f0x3C91A62633145C07, double %i.aa) ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double f0x3C91A62633145C07, double %i.z)
  %i.an = fneg double %i.am                       ; 2 uses
  %i.ao = fmul double %i.i, %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.ao)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double 1.000000e+00)
  %i.ar = fmul double %i.aq, 2.500000e-01
  %i.as = fadd double %i.ar, %i.ap
  %i.at = fmul double %i.ag, %i.ab
  %i.au = fmul double %i.at, 5.000000e-01
  %i.av = fadd double %i.au, %i.as
  %i.aw = tail call double @sqrt(double noundef %i.av) #11 ; 3 uses
  %i.ax = fmul double %i.v, %i.an
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.v, double %i.ax)
  %i.az = fmul double %i.ag, %i.t
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.y, double %i.x, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ba, double %i.ay)
  %i.bc = fmul double %i.ag, %i.al                ; 2 uses
  %i.bd = fmul double %i.ad, %i.bc
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fsub double %i.bb, %i.be
  %i.bg = fmul double %i.aw, 2.000000e+00
  %i.bh = fdiv double %i.bf, %i.bg
  %i.bi = fsub double %i.aw, %i.aj
  %i.bj = fmul double %i.ai, %i.bh
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bi, double %i.bj)
  %i.bl = fdiv double %i.bk, %i.aw                ; 2 uses
  %i.bm = fneg double %i.bl                       ; 2 uses
  %i.bn = fsub double %i.ae, %i.i
  %i.bo = fmul double %i.ag, %i.bm
  %i.bp = fmul double %i.ag, f0x3C91A62633145C07
  %i.bq = fmul double %i.al, 5.000000e-01
  %i.br = fmul double %i.bp, 5.000000e-01
  %i.bs = fadd double %i.i, %i.bq
  %i.bt = fadd double %i.br, %i.bn
  %i.bu = fmul double %i.bs, %i.bo
  %i.bv = fmul double %i.bu, 5.000000e-01
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bt, double %i.ak)
  %i.bx = fmul double %i.bc, -5.000000e-01
  %i.by = tail call double @llvm.fmuladd.f64(double %i.i, double %i.y, double %i.bx)
  %i.bz = fmul double %i.by, %i.bm
  %i.ca = fmul double %i.bz, 5.000000e-01
  %i.cb = fneg double %i.ak
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.y, double %i.ca)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.bw, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.d, i64 1
  %i.cl = fdiv <2 x double> %i.ci, %i.ck
  store <2 x double> %i.cl, ptr %i.cg, align 8, !tbaa !14
  %i.cm = fdiv double %i.cc, %i.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store double %i.cm, ptr %i.cn, align 8, !tbaa !14
  ret void
}

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ressc(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !28  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !30
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 10 uses
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #11 ; 6 uses
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #11 ; 8 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !14 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = tail call double @sin(double noundef %i.k) #11 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.k) #11 ; 3 uses
  %5 = tail call double @sin(double noundef %i.o) #11 ; 4 uses
  %6 = tail call double @cos(double noundef %i.o) #11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !18
  %i.ad = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 6 uses
  %7 = load double, ptr %4, align 8, !tbaa !28    ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = load double, ptr %i.af, align 8, !tbaa !32
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ah = load double, ptr %8, align 8, !tbaa !16 ; 2 uses
  %i.ai = load double, ptr %.val.val, align 8, !tbaa !14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !14 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val, i64 32
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.at = tail call double @sin(double noundef %i.ai) #11 ; 4 uses
  %i.au = tail call double @cos(double noundef %i.ai) #11 ; 3 uses
  %i.av = tail call double @sin(double noundef %i.am) #11 ; 4 uses
  %i.aw = tail call double @cos(double noundef %i.am) #11 ; 3 uses
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.at, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1 ; 2 uses
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = shufflevector <2 x double> %i.bb, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.be = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bf, <2 x double> %i.bc) ; 3 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %7, double %i.au, double %i.aw)
  %i.bi = fneg double %i.bh                       ; 2 uses
  %i.bj = fmul double %i.ak, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.bj)
  %i.bl = tail call double @llvm.fmuladd.f64(double %7, double %7, double 1.000000e+00)
  %i.bm = fmul double %i.bl, 2.500000e-01
  %i.bn = fadd double %i.bm, %i.bk
  %i.bo = extractelement <2 x double> %i.bg, i64 1
  %i.bp = fmul double %7, %i.bo
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = fadd double %i.bq, %i.bn
  %i.bs = tail call double @sqrt(double noundef %i.br) #11 ; 3 uses
  %i.bt = fmul double %i.ak, 2.000000e+00
  %i.bu = fmul double %i.aq, %i.bi
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.aq, double %i.bu)
  %i.bw = fmul double %7, %i.at
  %i.bx = fmul double %i.ao, %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.av, double %i.as, double %i.bx)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.by, double %i.bv)
  %i.ca = extractelement <2 x double> %i.bg, i64 0
  %i.cb = fmul double %7, %i.ca                   ; 2 uses
  %i.cc = fsub double %i.as, %i.ao
  %i.cd = fmul double %i.cc, %i.cb
  %i.ce = fmul double %i.cd, 5.000000e-01
  %i.cf = fsub double %i.bz, %i.ce
  %i.cg = fmul double %i.bs, 2.000000e+00
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = fsub double %i.bs, %i.ag
  %i.cj = load <2 x double>, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.cl = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.ch, i64 0
  %i.cm = fmul <2 x double> %i.ck, %i.cl
  %i.cn = insertelement <2 x double> %i.cj, double %i.ak, i64 1
  %i.co = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.at, i64 1
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cp, <2 x double> %i.cm) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = fdiv double %i.cr, %i.bs                ; 2 uses
  %i.ct = fneg double %i.cs                       ; 2 uses
  %i.cu = fmul double %7, %i.ct
  %i.cv = extractelement <2 x double> %i.cq, i64 1
  %i.cw = fmul double %i.cv, %i.cu
  %i.cx = fmul double %i.aw, 5.000000e-01
  %i.cy = fsub double %i.cx, %i.ak
  %i.cz = fmul double %7, %i.au
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = fadd double %i.da, %i.cy
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.db, double %i.ah)
  %i.dd = fmul double %i.cb, -5.000000e-01
  %i.de = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.av, double %i.dd)
  %i.df = fmul double %i.de, %i.ct
  %i.dg = fmul double %i.df, 5.000000e-01
  %i.dh = fneg double %i.ah
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.av, double %i.dg)
  %i.dj = load double, ptr %i.i, align 8, !tbaa !14
  %9 = fmul double %i.a, %i.ab                    ; 3 uses
  %10 = fneg double %i.ac
  %11 = fmul double %i.a, %10                     ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.dk = fmul double %i.cw, -5.000000e-01
  %17 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.dl = fneg double %i.dc
  %19 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dm = fneg double %i.di
  %21 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dn = fsub double %i.m, %6
  %i.do = insertelement <2 x double> poison, double %6, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.a, i64 1
  %i.dq = fneg <2 x double> %i.dp                 ; 4 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %22 = insertelement <2 x double> poison, double %i.w, i64 0
  %23 = insertelement <2 x double> %22, double %i.ac, i64 1
  %i.ds = extractelement <2 x double> %i.dq, i64 1
  %24 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %25 = fneg double %5
  %i.dt = load <2 x double>, ptr %i.p, align 8, !tbaa !14 ; 3 uses
  %i.du = load double, ptr %i.q, align 8, !tbaa !14
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dw = fsub double %i.dj, %i.dv
  %i.dx = tail call double @llvm.fmuladd.f64(double %9, double %i.y, double %i.dw)
  %i.dy = tail call double @llvm.fmuladd.f64(double %11, double %i.aa, double %i.dx)
  store double %i.dy, ptr %i.j, align 8, !tbaa !14
  %i.dz = load double, ptr %12, align 8, !tbaa !14
  %i.ea = fsub double %i.dz, %i.du
  %i.eb = fadd double %i.y, %i.ea
  store double %i.eb, ptr %13, align 8, !tbaa !14
  %i.ec = load double, ptr %14, align 8, !tbaa !14
  %i.ed = fsub double %i.ec, %i.s
  %i.ee = tail call double @llvm.fmuladd.f64(double %5, double %i.y, double %i.ed)
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.aa, double %i.ee)
  store double %i.ef, ptr %15, align 8, !tbaa !14
  %i.eg = load double, ptr %16, align 8, !tbaa !14
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.c, double %i.eg, double %i.dk)
  %i.ei = tail call double @llvm.fmuladd.f64(double %9, double %i.u, double %i.eh)
  %i.ej = tail call double @llvm.fmuladd.f64(double %11, double %i.w, double %i.ei)
  store double %i.ej, ptr %17, align 8, !tbaa !14
  %i.ek = load double, ptr %18, align 8, !tbaa !14
  %i.el = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ek, double %i.dl)
  %i.em = fadd double %i.u, %i.el
  store double %i.em, ptr %19, align 8, !tbaa !14
  %i.en = load double, ptr %20, align 8, !tbaa !14
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.g, double %i.en, double %i.dm)
  %i.ep = insertelement <2 x double> poison, double %5, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %9, i64 1
  %i.er = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x double> %i.er, double %i.u, i64 0
  %i.et = insertelement <2 x double> %i.dt, double %i.eo, i64 0
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.es, <2 x double> %i.et) ; 2 uses
  %i.ev = insertelement <2 x double> %i.eu, double %i.dn, i64 1
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %23, <2 x double> %i.ev)
  store <2 x double> %i.ew, ptr %21, align 8, !tbaa !14
  %i.ex = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = insertelement <2 x double> %i.ex, double %5, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.s, i64 1
  %i.fb = insertelement <2 x double> %i.eu, double %25, i64 0
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.fb)
  store <2 x double> %i.fc, ptr %24, align 8, !tbaa !14
  %i.fd = fmul double %i.ac, %i.ds
  %i.fe = fneg double %i.s
  %i.ff = fmul double %6, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.dv, double %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double %i.fg, ptr %i.fh, align 8, !tbaa !14
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSuppressAlg(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASensInit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSensParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASensEEtolerances(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQ(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !30
  %i.g = load ptr, ptr %1, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fmul double %i.b, %i.k
  %i.q = fmul double %i.d, %i.m
  %i.r = fmul double %i.m, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.p, double %i.k, double %i.r)
  %i.t = fmul double %i.f, %i.o
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.o, double %i.s)
  %i.v = fmul double %i.u, 5.000000e-01
  %i.w = load ptr, ptr %3, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  store double %i.v, ptr %i.y, align 8, !tbaa !14
  ret i32 0
}

declare i32 @IDAQuadSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetQuadErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDAQuadSensInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQS(i32 %0, double %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !30
  %i.g = load ptr, ptr %2, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !14
  %i.p = load ptr, ptr %4, align 8, !tbaa !25
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = fmul double %i.b, %i.k                   ; 2 uses
  %i.aa = fmul double %i.d, %i.m                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.w
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.u, double %i.ab)
  %i.ad = fmul double %i.f, %i.o                  ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.y, double %i.ac)
  %i.af = load ptr, ptr %7, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  store double %i.ae, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load double, ptr %i.as, align 8, !tbaa !14
  %i.au = fmul double %i.aa, %i.ar
  %i.av = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ap, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.at, double %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  store double %i.aw, ptr %i.bb, align 8, !tbaa !14
  ret i32 0
}

declare i32 @IDAQuadSensSStolerances(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetQuadSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @PrintFinalStats(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.i = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.j = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.e) #11 ; 0 uses
  %i.k = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.l = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.m = call i32 @IDAGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.g) #11 ; 0 uses
  %i.n = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.o = call i32 @IDAGetNumStepSolveFails(ptr noundef %0, ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.p = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.f) #11
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !33
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %i.q) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !33
  %i.t = load i64, ptr %i.f, align 8, !tbaa !33
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.u) ; 0 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !33
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %i.w) ; 0 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !33
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.y) ; 0 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !33
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %i.ac) ; 0 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !33
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.p
}

declare i32 @IDAGetQuad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetQuadSens(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2
end_hunk_0
