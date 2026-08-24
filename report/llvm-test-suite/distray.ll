Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/distray?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %.sroa.026.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.di, %DistribVector.exit.i ]
  %i.cl = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.dk, %DistribVector.exit.i ]
  %i.cm = load i64, ptr @rnd, align 8, !tbaa !18
  %i.cn = mul i64 %i.cm, 1103515245
  %i.co = add i64 %i.cn, 12345                    ; 2 uses
  %i.cp = mul i64 %i.co, 1103515245
  %i.cq = add i64 %i.cp, 12345
  %i.cr = and i64 %i.co, 2147483647
  %i.cs = and i64 %i.cq, 2147483647               ; 2 uses
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = insertelement <2 x i64> %i.ct, i64 %i.cr, i64 1
  %i.cv = uitofp nneg <2 x i64> %i.cu to <2 x double>
  %i.cw = fdiv nnan <2 x double> %i.cv, splat (double f0x41CFFFFFFF800000)
  %i.cx = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cw
  %i.cy = fmul <2 x double> %i.ch, %i.cx          ; 3 uses
  store i64 %i.cs, ptr @rnd, align 8, !tbaa !18
  %i.cz = fmul <2 x double> %i.cj, %i.cy
  %i.da = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.db = fmul <2 x double> %i.ci, %i.da
  %i.dc = fmul <2 x double> %i.ck, %i.cy          ; 2 uses
  %i.dd = fadd <2 x double> %i.cz, %i.db
  %shift = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.dc
  %i.de = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.df = fadd <2 x double> %i.au, %i.dd
  store <2 x double> %i.df, ptr %3, align 16, !tbaa !14
  %i.dg = fadd double %i.az, %i.de
  store double %i.dg, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.dh = load double, ptr %2, align 8, !tbaa !20
  %i.di = fadd double %.sroa.026.036.i, %i.dh     ; 2 uses
  %i.dj = load <2 x double>, ptr %i.v, align 8, !tbaa !14
  %i.dk = fadd <2 x double> %i.cl, %i.dj          ; 2 uses
  %i.dl = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dm = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.do = phi i32 [ %i.aj, %.split.i ], [ %i.dm, %DistribVector.exit.i ] ; 4 uses
  %.sroa.026.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.di, %DistribVector.exit.i ]
  %i.dp = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.dk, %DistribVector.exit.i ]
  %i.dq = sitofp i32 %i.do to double
  %i.dr = fdiv double 1.000000e+00, %i.dq         ; 2 uses
  %i.ds = fmul double %i.dr, %.sroa.026.0.lcssa.i
  %i.dt = fmul double %i.ds, 2.550000e+02
  %i.du = fptoui double %i.dt to i8
  %i.dv = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.dw = mul nuw nsw i64 %i.dv, 3
  %i.dx = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dw ; 3 uses
  store i8 %i.du, ptr %i.dx, align 1, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dp, %i.ea
  %i.ec = fmul <2 x double> %i.eb, splat (double 2.550000e+02) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = fptoui double %i.ed to i8
  store i8 %i.ee, ptr %i.dy, align 1, !tbaa !13
  %i.ef = extractelement <2 x double> %i.ec, i64 1
  %i.eg = fptoui double %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !23

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.ei = phi i32 [ %i.y, %.split.us.i ], [ %i.do, %._crit_edge.i ]
  %i.ej = phi i32 [ %i.z, %.split.us.i ], [ %i.do, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !25

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = and i8 %i.el, -2
  %i.en = zext i8 %i.em to i32
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ep = tail call i32 @fputc(i32 noundef %i.en, ptr noundef %i.eo) ; 0 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %i.es = and i8 %i.er, -2
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ev = tail call i32 @fputc(i32 noundef %i.et, ptr noundef %i.eu) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %i.ey = and i8 %i.ex, -2
  %i.ez = zext i8 %i.ey to i32
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.fb = tail call i32 @fputc(i32 noundef %i.ez, ptr noundef %i.fa) ; 0 uses
  %i.fc = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.fc, label %bb.d, label %bb.e, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @TraceLine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 24)) %2, i32 noundef range(i32 0, 7) %3) unnamed_addr #6 {
bb.a:
  %4 = alloca %struct.VECTOR, align 16            ; 9 uses
  %5 = alloca %struct.VECTOR, align 16            ; 5 uses
  %6 = alloca %struct.VECTOR, align 16            ; 6 uses
  %7 = alloca %struct.VECTOR, align 16            ; 11 uses
  %8 = alloca %struct.VECTOR, align 16            ; 7 uses
  %9 = alloca %struct.VECTOR, align 8             ; 5 uses
  %10 = alloca %struct.VECTOR, align 8            ; 5 uses
  %11 = alloca %struct.VECTOR, align 8            ; 4 uses
  %12 = alloca %struct.VECTOR, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.not = icmp eq i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %3, 3              ; 2 uses
  %i.f = call fastcc double @IntersectObjs(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %i.a)
  %i.g = fcmp ogt double %i.f, 1.000000e-05
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x double>, ptr @Lightpos, align 16, !tbaa !14
  %i.i = load <2 x double>, ptr %4, align 16, !tbaa !14
  %i.j = fsub <2 x double> %i.h, %i.i             ; 11 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  store <2 x double> %i.j, ptr %6, align 16, !tbaa !14
  %i.l = load double, ptr getelementptr inbounds nuw (i8, ptr @Lightpos, i64 16), align 16, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load double, ptr %i.m, align 16, !tbaa !16
  %i.o = fsub double %i.l, %i.n                   ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.o, ptr %i.p, align 16, !tbaa !16
  %i.q = load <2 x double>, ptr %5, align 16, !tbaa !14 ; 9 uses
  %foldExtExtBinop = fmul <2 x double> %i.j, %i.q
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x double> %i.q, i64 0
  %i.t = tail call double @llvm.fmuladd.f64(double %i.k, double %i.s, double %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load double, ptr %i.u, align 16, !tbaa !16 ; 6 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.o, double %i.v, double %i.t) ; 2 uses
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.aa = load double, ptr @Lightr, align 8, !tbaa !14
  %rnd.promoted = load i64, ptr @rnd, align 8
  %i.ab = tail call double @llvm.fabs.f64(double %i.o)
  %i.ac = fcmp ogt double %i.ab, 1.000000e-05     ; 3 uses
  %i.ad = fneg double %i.k                        ; 3 uses
  %i.ae = fmul double %i.o, %i.ad                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x double> %i.j, double %i.ae, i64 0
  %i.aj = fmul <2 x double> %i.ah, %i.ai          ; 4 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1
  %i.al = fneg double %i.ak
  %i.am = fmul double %i.o, %i.al
  %i.an = fmul double %i.ae, %i.ad
  %foldExtExtBinop129 = fmul <2 x double> %i.j, %i.j
  %i.ao = shufflevector <2 x double> %i.j, <2 x double> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <2 x double> %foldExtExtBinop129, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.j, <2 x double> %i.aq) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.as)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.at) ; 2 uses
  %i.au = fdiv double %i.aa, %sqrt.i
  %i.av = extractelement <2 x double> %i.ar, i64 1
  %.99 = select i1 %i.ac, double %i.av, double 1.000000e+00 ; 2 uses
  %.100 = select i1 %i.ac, double %i.am, double 0.000000e+00
  %i.aw = insertelement <2 x i1> poison, i1 %i.ac, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = insertelement <2 x double> %i.aj, double %i.ae, i64 1
  %i.az = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ad, i64 1
  %i.ba = select <2 x i1> %i.ax, <2 x double> %i.ay, <2 x double> %i.az ; 2 uses
  %i.bb = insertelement <2 x double> %i.j, double 0.000000e+00, i64 0
  %i.bc = select <2 x i1> %i.ax, <2 x double> %i.aj, <2 x double> %i.bb ; 3 uses
  %i.bd = insertelement <2 x double> %i.ba, double %.100, i64 0 ; 3 uses
  %i.be = fmul <2 x double> %i.bd, %i.bd
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bc, <2 x double> %i.be)
  %i.bg = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.99, i64 0 ; 2 uses
  %i.bh = insertelement <2 x double> %i.bg, double 0.000000e+00, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bf)
  %i.bj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi)
  %i.bk = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.bl, %i.bj
  %i.bn = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, %i.bm
  %i.bq = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 1, i32 2>
  %i.br = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.99, i64 0
  br label %DistribVector.exit

DistribVector.exit:                               ; preds = %.lr.ph, %DistribVector.exit
  %.086 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %DistribVector.exit ]
  %.06385 = phi i32 [ 0, %.lr.ph ], [ %i.ct, %DistribVector.exit ]
  %i.bs = phi i64 [ %rnd.promoted, %.lr.ph ], [ %i.by, %DistribVector.exit ]
  %i.bt = mul i64 %i.bs, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !27
  %i.bu = add i64 %i.bt, 12345                    ; 2 uses
  %i.bv = mul i64 %i.bu, 1103515245
  %i.bw = add i64 %i.bv, 12345
  %i.bx = and i64 %i.bu, 2147483647
  %i.by = and i64 %i.bw, 2147483647               ; 3 uses
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = insertelement <2 x i64> %i.bz, i64 %i.bx, i64 1
  %i.cb = uitofp nneg <2 x i64> %i.ca to <2 x double>
  %i.cc = fdiv nnan <2 x double> %i.cb, splat (double f0x41CFFFFFFF800000)
  %i.cd = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cc
  %i.ce = fmul <2 x double> %i.bp, %i.cd          ; 3 uses
  store i64 %i.by, ptr @rnd, align 8, !tbaa !18
  %i.cf = fmul <2 x double> %i.ba, %i.ce
  %i.cg = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fmul <2 x double> %i.bq, %i.cg
  %i.ci = fmul <2 x double> %i.br, %i.ce          ; 2 uses
  %i.cj = fadd <2 x double> %i.cf, %i.ch
  %shift = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop131 = fadd <2 x double> %shift, %i.ci
  %i.ck = extractelement <2 x double> %foldExtExtBinop131, i64 0
  %i.cl = load <2 x double>, ptr %7, align 16, !tbaa !14
  %i.cm = fadd <2 x double> %i.cl, %i.cj
  store <2 x double> %i.cm, ptr %7, align 16, !tbaa !14
  %i.cn = load double, ptr %i.af, align 16, !tbaa !16
  %i.co = fadd double %i.cn, %i.ck
  store double %i.co, ptr %i.af, align 16, !tbaa !16
  %i.cp = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.cq = fcmp olt double %i.cp, 1.000000e-05
  %i.cr = fcmp ogt double %i.cp, 1.000000e+00
  %or.cond = or i1 %i.cq, %i.cr
  %i.cs = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.086, %i.cs     ; 2 uses
  %i.ct = add nuw nsw i32 %.06385, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %i.y
  br i1 %exitcond.not, label %select.unfold, label %DistribVector.exit, !llvm.loop !28

bb.f:                                             ; preds = %bb.d
  %i.cu = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.cv = fcmp olt double %i.cu, 1.000000e-05
  %i.cw = fcmp ogt double %i.cu, 1.000000e+00
  %or.cond3 = or i1 %i.cv, %i.cw
  %i.cx = load i32, ptr @DISTRIB, align 4         ; 2 uses
  br i1 %or.cond3, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %DistribVector.exit, %bb.f
  %13 = phi i32 [ %i.cx, %bb.f ], [ %i.y, %DistribVector.exit ]
  %.2 = phi i32 [ %i.cx, %bb.f ], [ %spec.select, %DistribVector.exit ] ; 2 uses
  %i.cy = icmp sgt i32 %.2, 0
  br i1 %i.cy, label %bb.g, label %.thread

bb.g:                                             ; preds = %select.unfold
  %i.cz = shufflevector <2 x double> %i.q, <2 x double> %i.j, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.da = fmul <2 x double> %i.cz, %i.cz
  %i.db = shufflevector <2 x double> %i.j, <2 x double> %i.q, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.db, <2 x double> %i.da)
  %i.dd = insertelement <2 x double> poison, double %i.o, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.v, i64 1 ; 2 uses
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.de, <2 x double> %i.dc) ; 2 uses
  %shift133 = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop134 = fmul <2 x double> %i.df, %shift133
  %i.dg = extractelement <2 x double> %foldExtExtBinop134, i64 0
  %i.dh = tail call double @sqrt(double noundef %i.dg) #13, !tbaa !4
  %i.di = fdiv double %i.w, %i.dh
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !30
  %i.dm = fmul double %i.di, %i.dl
  %i.dn = uitofp nneg i32 %.2 to double
  %i.do = fmul double %i.dm, %i.dn
  %i.dp = sitofp i32 %13 to double
  %i.dq = fdiv double %i.do, %i.dp
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %select.unfold, %bb.g
  %.065 = phi double [ %i.dq, %bb.g ], [ 0.000000e+00, %select.unfold ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !29  ; 4 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !32
  %i.dt = load double, ptr @Ambient, align 8, !tbaa !14
  %i.du = fadd double %.065, %i.dt
  %i.dv = fmul double %i.ds, %i.du                ; 2 uses
  store double %i.dv, ptr %2, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dx = load double, ptr @Ambient, align 8, !tbaa !14
  %i.dy = fadd double %.065, %i.dx
  %i.dz = load <2 x double>, ptr %i.dw, align 8, !tbaa !14
  %i.ea = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.eb, %i.dz          ; 2 uses
  store <2 x double> %i.ec, ptr %i.d, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !33
  %i.ef = fcmp ogt double %i.ee, 1.000000e-05
  br i1 %i.ef, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !16 ; 2 uses
  %i.ei = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.ej = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = shufflevector <2 x double> %i.q, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.el = fmul <2 x double> %i.ej, %i.ek
  %i.em = shufflevector <2 x double> %i.q, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.el) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ep)
  %i.er = extractelement <2 x double> %i.eo, i64 1
  %i.es = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.v, double %i.er)
  %i.et = fmul double %i.es, -2.000000e+00
  %i.eu = fdiv double %i.et, %i.eq                ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.q, <2 x double> %i.ei) ; 5 uses
  store <2 x double> %i.ex, ptr %7, align 16, !tbaa !14
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.v, double %i.eh) ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ey, ptr %i.ez, align 16, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 40 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !34
  %i.fd = fcmp ogt double %i.fc, 1.000000e-05
  br i1 %i.fd, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.fe = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.preheader
  %i.fg = tail call double @llvm.fabs.f64(double %i.ey)
  %i.fh = fcmp ogt double %i.fg, 1.000000e-05     ; 4 uses
  %i.fi = extractelement <2 x double> %i.ex, i64 0
  %i.fj = fneg double %i.fi                       ; 3 uses
  %i.fk = fmul double %i.ey, %i.fj                ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fm = add nsw i32 %3, -1
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fo = extractelement <2 x double> %i.ex, i64 1 ; 4 uses
  %i.fp = fmul double %i.ey, %i.fo                ; 3 uses
  %i.fq = fmul double %i.ey, %i.fk
  %i.fr = fneg double %i.fp
  %i.fs = fmul double %i.ey, %i.fr
  %i.ft = fmul double %i.fk, %i.fj
  %i.fu = fmul double %i.fo, %i.fo
  %i.fv = insertelement <2 x double> %i.ex, double %i.fp, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.ft, i64 1
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.ex, <2 x double> %i.fx) ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.fz)
  %sqrt.i.i77 = tail call double @llvm.sqrt.f64(double %i.ga)
  %i.gb = extractelement <2 x double> %i.fy, i64 1
  %.104 = select i1 %i.fh, double %i.gb, double 1.000000e+00 ; 2 uses
  %.105 = select i1 %i.fh, double %i.fs, double 0.000000e+00 ; 2 uses
  %i.gc = insertelement <2 x i1> poison, i1 %i.fh, i64 0
  %i.gd = shufflevector <2 x i1> %i.gc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ge = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fk, i64 1
  %i.gg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fj, i64 1
  %i.gh = select <2 x i1> %i.gd, <2 x double> %i.gf, <2 x double> %i.gg ; 3 uses
  %.103 = select i1 %i.fh, double %i.fp, double %i.fo ; 2 uses
  %i.gi = insertelement <2 x double> %i.gh, double %.105, i64 0 ; 2 uses
  %i.gj = fmul <2 x double> %i.gi, %i.gi
  %i.gk = insertelement <2 x double> %i.gh, double %.103, i64 1 ; 2 uses
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gk, <2 x double> %i.gj)
  %i.gm = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.104, i64 0 ; 2 uses
  %i.gn = insertelement <2 x double> %i.gm, double 0.000000e+00, i64 1
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gn, <2 x double> %i.gl)
  %i.gp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.go)
  %i.gq = insertelement <2 x double> poison, double %sqrt.i.i77, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fdiv <2 x double> %i.gr, %i.gp
  %i.gt = insertelement <2 x double> poison, double %.103, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %.105, i64 1
  %i.gv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.104, i64 0
  br label %DistribVector.exit80

DistribVector.exit80:                             ; preds = %.lr.ph93, %DistribVector.exit80
  %.16492 = phi i32 [ 0, %.lr.ph93 ], [ %i.id, %DistribVector.exit80 ]
  %i.gw = phi double [ 0.000000e+00, %.lr.ph93 ], [ %i.ia, %DistribVector.exit80 ]
  %i.gx = phi <2 x double> [ zeroinitializer, %.lr.ph93 ], [ %i.ic, %DistribVector.exit80 ]
  %i.gy = load double, ptr %i.fb, align 8, !tbaa !34
  %i.gz = load i64, ptr @rnd, align 8, !tbaa !18
  %i.ha = mul i64 %i.gz, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !27
  %i.hb = add i64 %i.ha, 12345                    ; 2 uses
  %i.hc = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x double> %i.hd, %i.gs
  %i.hf = mul i64 %i.hb, 1103515245
  %i.hg = add i64 %i.hf, 12345
  %i.hh = and i64 %i.hb, 2147483647
  %i.hi = and i64 %i.hg, 2147483647               ; 2 uses
  %i.hj = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %i.hk = insertelement <2 x i64> %i.hj, i64 %i.hh, i64 1
  %i.hl = uitofp nneg <2 x i64> %i.hk to <2 x double>
  %i.hm = fdiv nnan <2 x double> %i.hl, splat (double f0x41CFFFFFFF800000)
  %i.hn = fsub nnan <2 x double> splat (double 1.000000e+00), %i.hm
  %i.ho = fmul <2 x double> %i.he, %i.hn          ; 3 uses
  store i64 %i.hi, ptr @rnd, align 8, !tbaa !18
  %i.hp = fmul <2 x double> %i.gh, %i.ho
  %i.hq = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = fmul <2 x double> %i.gu, %i.hq
  %i.hs = fmul <2 x double> %i.gv, %i.ho          ; 2 uses
  %i.ht = fadd <2 x double> %i.hp, %i.hr
  %shift136 = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fadd <2 x double> %shift136, %i.hs
  %i.hu = extractelement <2 x double> %foldExtExtBinop137, i64 0
  %i.hv = load <2 x double>, ptr %8, align 16, !tbaa !14
  %i.hw = fadd <2 x double> %i.hv, %i.ht
  store <2 x double> %i.hw, ptr %8, align 16, !tbaa !14
  %i.hx = load double, ptr %i.fl, align 16, !tbaa !16
  %i.hy = fadd double %i.hx, %i.hu
  store double %i.hy, ptr %i.fl, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.fm)
  %i.hz = load double, ptr %10, align 8, !tbaa !20
  %i.ia = fadd double %i.hz, %i.gw                ; 2 uses
  %i.ib = load <2 x double>, ptr %i.fn, align 8, !tbaa !14
  %i.ic = fadd <2 x double> %i.ib, %i.gx          ; 2 uses
  %i.id = add nuw nsw i32 %.16492, 1              ; 2 uses
  %i.ie = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %DistribVector.exit80, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %DistribVector.exit80, %.preheader
  %.lcssa87 = phi double [ 0.000000e+00, %.preheader ], [ %i.ia, %DistribVector.exit80 ]
  %.lcssa = phi i32 [ %i.fe, %.preheader ], [ %i.ie, %DistribVector.exit80 ]
  %i.ig = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ic, %DistribVector.exit80 ]
  %i.ih = sitofp i32 %.lcssa to double
  %i.ii = fdiv double 1.000000e+00, %i.ih         ; 2 uses
  %i.ij = fmul double %i.ii, %.lcssa87
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %i.il, %i.ig
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.in = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.in)
  %.pre = load double, ptr %9, align 8, !tbaa !20
  %i.io = load <2 x double>, ptr %i.fa, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ip = phi double [ %.pre, %bb.j ], [ %i.ij, %._crit_edge ]
  %i.iq = phi <2 x double> [ %i.io, %bb.j ], [ %i.im, %._crit_edge ]
  %i.ir = load double, ptr %i.ed, align 8, !tbaa !33 ; 2 uses
  %i.is = load double, ptr %2, align 8, !tbaa !20
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.ir, double %i.is) ; 2 uses
  store double %i.it, ptr %2, align 8, !tbaa !20
  %i.iu = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.iv = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.iw, <2 x double> %i.iu) ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.iz = load double, ptr %1, align 8, !tbaa !20 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !36 ; 2 uses
  %i.jc = fmul double %i.jb, %i.jb
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.iz, double %i.iz, double %i.jc) ; 2 uses
  %i.je = fcmp ogt double %i.jd, 0.000000e+00
  br i1 %i.je, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_0
