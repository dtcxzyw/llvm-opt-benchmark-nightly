Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/route?download=true
inline.NumInlined: 60
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Proutespline:bb.a
  %i.b = load <2 x double>, ptr %4, align 8       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load <2 x double>, ptr %i.c, align 8     ; 4 uses
  %i.f = shufflevector <2 x double> %i.e, <2 x double> %i.b, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.g = fmul <2 x double> %i.f, %i.f
  %i.h = shufflevector <2 x double> %i.e, <2 x double> %i.b, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.h, <2 x double> %i.g) ; 2 uses
  %i.j = fcmp ogt <2 x double> %i.i, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.k = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.i) ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fdiv <2 x double> %i.b, %i.m
  %i.o = select <2 x i1> %i.k, <2 x double> %i.n, <2 x double> %i.b
  store <2 x double> %i.o, ptr %4, align 8, !tbaa !9
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.e, %i.p
  %i.r = shufflevector <2 x i1> %i.j, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %i.q, <2 x double> %i.e
  store <2 x double> %i.s, ptr %i.c, align 8, !tbaa !9
  store i64 0, ptr @opl, align 8, !tbaa !11
  %i.t = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i = icmp ult i64 %i.t, 4
  %.pre = load ptr, ptr @ops, align 8, !tbaa !14  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %.pre, i64 noundef 64) #9 ; 3 uses
  store ptr %i.u, ptr @ops, align 8, !tbaa !14
  %.not5.i = icmp eq ptr %i.u, null
  br i1 %.not5.i, label %growops.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr @opn, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.v = phi ptr [ %.pre, %bb.a ], [ %i.u, %bb.c ]
  %i.w = trunc i64 %3 to i32
  store i64 1, ptr @opl, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %i.x = load double, ptr %4, align 8
  %i.y = load double, ptr %i.a, align 8
  %i.z = load double, ptr %i.c, align 8
  %i.aa = load double, ptr %i.d, align 8
  %i.ab = tail call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %i.w, double %i.x, double %i.y, double %i.z, double %i.aa)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %growops.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr @opl, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = load ptr, ptr @ops, align 8, !tbaa !14
  store ptr %i.af, ptr %5, align 8, !tbaa !18
  br label %growops.exit

growops.exit:                                     ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 12 uses
  %i.b = alloca [3 x double], align 16            ; 11 uses
  %i.c = alloca [3 x double], align 16            ; 10 uses
  %i.d = alloca [4 x double], align 16            ; 15 uses
  %i.e = sext i32 %3 to i64                       ; 4 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 40) #10 ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.i = load <2 x double>, ptr %2, align 8
  br label %.lr.ph

.lr.ph208:                                        ; preds = %.lr.ph
  %i.j = getelementptr [40 x i8], ptr %i.f, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -40      ; 3 uses
  %i.l = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %3, 2
  br i1 %i.m, label %.epil.preheader, label %.lr.ph208.new

.lr.ph208.new:                                    ; preds = %.lr.ph208
  %unroll_iter = and i64 %i.l, -2
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.n = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.v, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.o = phi <2 x double> [ %i.i, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.q = load <2 x double>, ptr %i.p, align 8     ; 2 uses
  %i.r = fsub <2 x double> %i.o, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.r, i64 1
  %i.u = tail call double @hypot(double noundef %i.s, double noundef %i.t) #11
  %i.v = fadd double %i.n, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.v, ptr %i.w, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph208, label %.lr.ph, !llvm.loop !19

.preheader:                                       ; preds = %bb.b
  %i.x = icmp eq i32 %3, 1
  br i1 %i.x, label %.lr.ph210.preheader, label %._crit_edge.i

.lr.ph210.preheader.loopexit.unr-lcssa:           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph210.preheader.loopexit.unr-lcssa, %.lr.ph208
  %indvars.iv244.epil.init = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next245.1, %.lr.ph210.preheader.loopexit.unr-lcssa ]
  %lcmp.mod379 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.y = load double, ptr %i.k, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244.epil.init ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  %i.ab = fdiv double %i.aa, %i.y
  store double %i.ab, ptr %i.z, align 8, !tbaa !34
  br label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.epil.preheader, %.lr.ph210.preheader.loopexit.unr-lcssa, %.preheader
  %wide.trip.count252 = zext nneg i32 %3 to i64
  %i.ac = insertelement <2 x double> poison, double %4, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %5, i64 1
  %i.ae = insertelement <2 x double> poison, double %6, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %7, i64 1
  br label %.lr.ph210

bb.c:                                             ; preds = %bb.c, %.lr.ph208.new
  %indvars.iv244 = phi i64 [ 1, %.lr.ph208.new ], [ %indvars.iv.next245.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph208.new ], [ %niter.next.1, %bb.c ]
  %i.ag = load double, ptr %i.k, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = fdiv double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !34
  %i.ak = load double, ptr %i.k, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !34
  %i.ao = fdiv double %i.an, %i.ak
  store double %i.ao, ptr %i.am, align 8, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph210.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.ap = load double, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = zext nneg i32 %3 to i64                 ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %i.av = load double, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.at, i64 -8
  %i.ax = load double, ptr %i.aw, align 8
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ap, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.sroa.17.0107.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cj, %bb.d ]
  %i.bc = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ce, %bb.d ]
  %i.bd = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cp, %bb.d ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bi = load double, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.bj = fsub double 1.000000e+00, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 4 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bl)
  %i.bp = fmul <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fmul <2 x double> %i.az, %i.bp
  %i.br = fmul <2 x double> %i.bb, %i.bp
  %8 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bq)
  %9 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.br)
  %i.bs = load double, ptr %i.bh, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load double, ptr %i.bt, align 8
  %i.bv = fsub double %i.bs, %8                   ; 2 uses
  %i.bw = fsub double %i.bu, %9
  %i.bx = load <2 x double>, ptr %i.bf, align 8   ; 3 uses
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bz = insertelement <2 x double> %i.by, double %i.bw, i64 1 ; 2 uses
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = insertelement <2 x double> %i.cb, double %i.bv, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cc, <2 x double> %i.ca)
  %i.ce = fadd <2 x double> %i.bc, %i.cd          ; 2 uses
  %i.cf = load <2 x double>, ptr %i.bg, align 8   ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.cf, %i.cf
  %i.cg = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ch = extractelement <2 x double> %i.cf, i64 0 ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.cg)
  %i.cj = fadd double %.sroa.17.0107.i, %i.ci     ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x double> %i.bz, %i.ck
  %i.cm = insertelement <2 x double> %i.bx, double %i.bv, i64 1
  %i.cn = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cn, <2 x double> %i.cl)
  %i.cp = fadd <2 x double> %i.bd, %i.co          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.d, %.preheader
  %.sroa.17.0.lcssa.i = phi double [ 0.000000e+00, %.preheader ], [ %i.cj, %bb.d ] ; 2 uses
  %i.cq = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ce, %bb.d ] ; 3 uses
  %i.cr = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cp, %bb.d ] ; 3 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.ct = fneg double %i.cs                       ; 2 uses
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = extractelement <2 x double> %i.cq, i64 0
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %.sroa.17.0.lcssa.i, double %i.cu) ; 2 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ult double %i.cx, f0x3EB0C6F7A0B5ED8D
  br i1 %i.cy, label %._crit_edge.i..thread.i_crit_edge, label %bb.e

._crit_edge.i..thread.i_crit_edge:                ; preds = %._crit_edge.i
  %.pre267 = load double, ptr %2, align 8
  br label %.thread.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.cz = fneg <2 x double> %i.cq
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %i.da, double %i.ct, i64 1
  %i.dc = fmul <2 x double> %i.cr, %i.db
  %i.dd = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.de = insertelement <2 x double> %i.dd, double %.sroa.17.0.lcssa.i, i64 1
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.de, <2 x double> %i.dc)
  %i.dg = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fdiv <2 x double> %i.df, %i.dh          ; 3 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1 ; 2 uses
  %i.dk = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.dl = fcmp ole double %i.dj, 0.000000e+00
  %i.dm = fcmp ole double %i.dk, 0.000000e+00
  %or.cond3.i = select i1 %i.dl, i1 true, i1 %i.dm
  %.pre268 = load double, ptr %2, align 8         ; 2 uses
  br i1 %or.cond3.i, label %.thread.i, label %.mkspline.exit_crit_edge

.mkspline.exit_crit_edge:                         ; preds = %bb.e
  %.sroa.6173.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6173.0.copyload.pre = load double, ptr %.sroa.6173.0..sroa_idx.phi.trans.insert, align 8, !tbaa !9
  %.phi.trans.insert262 = getelementptr [16 x i8], ptr %2, i64 %i.e
  %.phi.trans.insert263 = getelementptr i8, ptr %.phi.trans.insert262, i64 -16
  %i.dn = load <2 x double>, ptr %.phi.trans.insert263, align 8, !tbaa !9
  br label %mkspline.exit

.thread.i:                                        ; preds = %._crit_edge.i..thread.i_crit_edge, %bb.e
  %i.do = phi double [ %.pre267, %._crit_edge.i..thread.i_crit_edge ], [ %.pre268, %bb.e ] ; 2 uses
  %i.dp = getelementptr [16 x i8], ptr %2, i64 %i.e
  %i.dq = getelementptr i8, ptr %i.dp, i64 -16
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load double, ptr %i.dr, align 8         ; 2 uses
  %i.dt = load <2 x double>, ptr %i.dq, align 8   ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = fsub double %i.du, %i.do
  %i.dw = extractelement <2 x double> %i.dt, i64 1
  %i.dx = fsub double %i.dw, %i.ds
  %i.dy = tail call double @hypot(double noundef %i.dv, double noundef %i.dx) #11
  %i.dz = fdiv double %i.dy, 3.000000e+00         ; 3 uses
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  br label %mkspline.exit

mkspline.exit:                                    ; preds = %.mkspline.exit_crit_edge, %.thread.i
  %.sroa.6173.0.copyload = phi double [ %i.ds, %.thread.i ], [ %.sroa.6173.0.copyload.pre, %.mkspline.exit_crit_edge ] ; 9 uses
  %.sroa.0170.0.copyload = phi double [ %i.do, %.thread.i ], [ %.pre268, %.mkspline.exit_crit_edge ] ; 10 uses
  %.185.i = phi double [ %i.dz, %.thread.i ], [ %i.dj, %.mkspline.exit_crit_edge ]
  %.1.i = phi double [ %i.dz, %.thread.i ], [ %i.dk, %.mkspline.exit_crit_edge ]
  %i.ec = phi <2 x double> [ %i.dt, %.thread.i ], [ %i.dn, %.mkspline.exit_crit_edge ] ; 11 uses
  %i.ed = phi <2 x double> [ %i.eb, %.thread.i ], [ %i.di, %.mkspline.exit_crit_edge ]
  %i.ee = fmul double %4, %.185.i                 ; 2 uses
  %i.ef = insertelement <2 x double> poison, double %6, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %5, i64 1
  %i.eh = fmul <2 x double> %i.eg, %i.ed          ; 2 uses
  %i.ei = fmul double %7, %.1.i                   ; 2 uses
  %i.ej = icmp eq i32 %3, 2
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %.not68.i.i = icmp eq i64 %1, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.en = extractelement <2 x double> %i.ec, i64 1 ; 3 uses
  %i.eo = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ep = insertelement <2 x double> %i.eo, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.ee, i64 0
  %i.es = insertelement <2 x double> %i.ec, double %.sroa.0170.0.copyload, i64 1
  %i.et = insertelement <2 x double> poison, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.eu = insertelement <2 x double> %i.ec, double %.sroa.6173.0.copyload, i64 0 ; 3 uses
  %i.ev = insertelement <2 x double> %i.eq, double %i.ei, i64 1
  %i.ew = insertelement <2 x double> poison, double %.sroa.6173.0.copyload, i64 0
  %i.ex = insertelement <2 x double> %i.eo, double %.sroa.6173.0.copyload, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %mkspline.exit
  %.032.i = phi double [ 4.000000e+00, %mkspline.exit ], [ %.133.i, %bb.am ] ; 4 uses
  %.not.i = phi i1 [ false, %mkspline.exit ], [ true, %bb.am ]
  %i.ey = insertelement <2 x double> poison, double %.032.i, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = fmul <2 x double> %i.er, %i.ez
  %i.fb = fdiv <2 x double> %i.fa, splat (double 3.000000e+00) ; 2 uses
  %i.fc = fadd <2 x double> %i.ep, %i.fb          ; 3 uses
  %i.fd = fsub <2 x double> %i.ep, %i.fb          ; 6 uses
  %i.fe = shufflevector <2 x double> %i.fc, <2 x double> %i.fd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ff = extractelement <2 x double> %i.fc, i64 0 ; 6 uses
  %i.fg = fmul <2 x double> %i.ev, %i.ez
  %i.fh = fdiv <2 x double> %i.fg, splat (double 3.000000e+00) ; 2 uses
  %i.fi = fadd <2 x double> %i.eu, %i.fh          ; 6 uses
  %i.fj = fsub <2 x double> %i.eu, %i.fh          ; 4 uses
  br i1 %.not.i, label %bb.g, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = fsub double %i.ff, %.sroa.0170.0.copyload
  %i.fm = shufflevector <2 x double> %i.eu, <2 x double> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.fn = fsub <2 x double> %i.fk, %i.fm          ; 2 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0
  %i.fp = call double @hypot(double noundef %i.fl, double noundef %i.fo) #11
  %i.fq = fadd double %i.fp, 0.000000e+00
  %i.fr = shufflevector <2 x double> %i.fd, <2 x double> %i.ec, <2 x i32> <i32 1, i32 2>
  %i.fs = fsub <2 x double> %i.fr, %i.fe          ; 2 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0
  %i.fu = extractelement <2 x double> %i.fn, i64 1
  %i.fv = call double @hypot(double noundef %i.ft, double noundef %i.fu) #11
  %i.fw = fadd double %i.fq, %i.fv
  %foldExtExtBinop348 = fsub <2 x double> %i.ec, %i.fk
  %i.fx = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.fy = extractelement <2 x double> %i.fs, i64 1
  %i.fz = call double @hypot(double noundef %i.fy, double noundef %i.fx) #11
  %i.ga = fadd double %i.fw, %i.fz
  br i1 %i.h, label %.lr.ph.i36.i, label %dist_n.exit41.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i36.i
  %indvars.iv.i37.i = phi i64 [ %indvars.iv.next.i39.i, %.lr.ph.i36.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.014.i38.i = phi double [ %i.gj, %.lr.ph.i36.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i37.i ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 -16
  %i.gd = load <2 x double>, ptr %i.gb, align 8, !tbaa !9
  %i.ge = load <2 x double>, ptr %i.gc, align 8, !tbaa !9
  %i.gf = fsub <2 x double> %i.gd, %i.ge          ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = extractelement <2 x double> %i.gf, i64 1
  %i.gi = call double @hypot(double noundef %i.gg, double noundef %i.gh) #11
  %i.gj = fadd double %.014.i38.i, %i.gi          ; 2 uses
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i40.i, label %dist_n.exit41.loopexit.i, label %.lr.ph.i36.i, !llvm.loop !22

dist_n.exit41.loopexit.i:                         ; preds = %.lr.ph.i36.i
  %i.gk = fadd double %i.gj, -1.000000e-03
  br label %dist_n.exit41.i

dist_n.exit41.i:                                  ; preds = %dist_n.exit41.loopexit.i, %.lr.ph.i.preheader.i
  %.0.lcssa.i.i = phi double [ -1.000000e-03, %.lr.ph.i.preheader.i ], [ %i.gk, %dist_n.exit41.loopexit.i ]
  %i.gl = fcmp olt double %i.ga, %.0.lcssa.i.i
  br i1 %i.gl, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %dist_n.exit41.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.g
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> splat (double 3.000000e+00), <2 x double> %i.es) ; 2 uses
  %shift = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop350 = fsub <2 x double> %i.gm, %shift
  %i.gn = extractelement <2 x double> %foldExtExtBinop350, i64 0 ; 2 uses
  %i.go = fsub double %i.ff, %.sroa.0170.0.copyload
  %i.gp = fmul double %i.go, 3.000000e+00         ; 2 uses
  %i.gq = shufflevector <2 x double> %i.fd, <2 x double> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.gr = fmul <2 x double> %i.gq, <double 3.000000e+00, double 1.000000e+00>
  %i.gs = shufflevector <2 x double> %i.et, <2 x double> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> splat (double 3.000000e+00), <2 x double> %i.gr) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  %i.gv = call double @llvm.fmuladd.f64(double %i.ff, double -6.000000e+00, double %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.fj, i64 1 ; 3 uses
  %i.gx = call double @llvm.fmuladd.f64(double %i.gw, double 3.000000e+00, double %.sroa.6173.0.copyload)
  %i.gy = extractelement <2 x double> %i.gt, i64 1
  %i.gz = fsub double %i.gy, %i.gx                ; 2 uses
end_hunk_0
begin_hunk_1_@reallyroutespline:bb.a
  %i.ni = fmul <2 x double> %i.nh, %i.nh
  %i.nj = fmul <2 x double> %i.nh, %i.ni          ; 3 uses
  %i.nk = fmul double %i.ff, %i.ne
  %i.nl = extractelement <2 x double> %i.nj, i64 0
  %i.nm = call double @llvm.fmuladd.f64(double %i.nl, double %.sroa.0170.0.copyload, double %i.nk)
  %i.nn = fmul double %i.hc, %i.ne
  %i.no = call double @llvm.fmuladd.f64(double %i.nf, double %i.hk, double %i.nm)
  %i.np = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.no, i64 1
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.ex, <2 x double> %i.nq) ; 2 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 0
  %i.nt = call double @llvm.fmuladd.f64(double %i.nf, double %i.gw, double %i.ns)
  %i.nu = extractelement <2 x double> %i.nj, i64 1
  %i.nv = call double @llvm.fmuladd.f64(double %i.nu, double %i.en, double %i.nt) ; 2 uses
  %i.nw = extractelement <2 x double> %i.nr, i64 1 ; 2 uses
  %i.nx = fsub double %i.nw, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.ny = fsub double %i.nv, %.sroa.5.0.copyload.i.i ; 2 uses
  %i.nz = fmul double %i.ny, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.nx, double %i.nx, double %i.nz)
  %i.ob = fcmp olt double %i.oa, 1.000000e-03
  br i1 %i.ob, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.oc = fsub double %i.nw, %.sroa.7.16.copyload.i.i ; 2 uses
  %i.od = fsub double %i.nv, %.sroa.10.16.copyload.i.i ; 2 uses
  %i.oe = fmul double %i.od, %i.od
  %i.of = call double @llvm.fmuladd.f64(double %i.oc, double %i.oc, double %i.oe)
  %i.og = fcmp olt double %i.of, 1.000000e-03
  br i1 %i.og, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i44.i
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count.i43.i
  br i1 %exitcond.not.i47.i, label %.loopexit.i.i, label %.lr.ph.i44.i, !llvm.loop !29

.loopexit.sink.split.i.i:                         ; preds = %bb.x, %bb.t, %.preheader141.i.i.i, %.preheader144.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ae, %.loopexit.sink.split.i.i, %splineintersectsline.exit.i.i
  %i.oh = add nuw i64 %.04969.i.i, 1              ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %i.oh, %1
  br i1 %exitcond79.not.i.i, label %.loopexit.i, label %bb.h, !llvm.loop !30

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.oi = load i64, ptr @opl, align 8, !tbaa !11  ; 3 uses
  %i.oj = add i64 %i.oi, 4                        ; 3 uses
  %i.ok = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i.i = icmp ugt i64 %i.oj, %i.ok
  %.pre96.i = load ptr, ptr @ops, align 8, !tbaa !14 ; 2 uses
  br i1 %.not.i.i, label %bb.af, label %growops.exit.i

bb.af:                                            ; preds = %.loopexit.i
  %i.ol = shl i64 %i.oj, 4
  %i.om = call ptr @realloc(ptr noundef %.pre96.i, i64 noundef %i.ol) #9 ; 3 uses
  store ptr %i.om, ptr @ops, align 8, !tbaa !14
  %.not5.i.i = icmp eq ptr %i.om, null
  br i1 %.not5.i.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.oj, ptr @opn, align 8, !tbaa !11
  br label %growops.exit.i

growops.exit.i:                                   ; preds = %bb.ag, %.loopexit.i
  %i.on = phi ptr [ %.pre96.i, %.loopexit.i ], [ %i.om, %bb.ag ]
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %i.oi ; 2 uses
  store double %i.ff, ptr %i.oo, align 8, !tbaa !37
  br label %bb.an

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.op = fcmp olt double %.032.i, 5.000000e-03
  br i1 %i.op, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ej, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.oq = load i64, ptr @opl, align 8, !tbaa !11  ; 3 uses
  %i.or = add i64 %i.oq, 4                        ; 3 uses
  %i.os = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i48.i = icmp ugt i64 %i.or, %i.os
  %.pre.i130 = load ptr, ptr @ops, align 8, !tbaa !14 ; 2 uses
  br i1 %.not.i48.i, label %bb.ak, label %growops.exit51.i

bb.ak:                                            ; preds = %bb.aj
  %i.ot = shl i64 %i.or, 4
  %i.ou = call ptr @realloc(ptr noundef %.pre.i130, i64 noundef %i.ot) #9 ; 3 uses
  store ptr %i.ou, ptr @ops, align 8, !tbaa !14
  %.not5.i50.i = icmp eq ptr %i.ou, null
  br i1 %.not5.i50.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.or, ptr @opn, align 8, !tbaa !11
  br label %growops.exit51.i

growops.exit51.i:                                 ; preds = %bb.al, %bb.aj
  %i.ov = phi ptr [ %.pre.i130, %bb.aj ], [ %i.ou, %bb.al ]
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.ov, i64 %i.oq ; 2 uses
  store double %i.ff, ptr %i.ow, align 8, !tbaa !37
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.ox = fcmp ogt double %.032.i, 1.000000e-02
  %i.oy = fmul nnan double %.032.i, 5.000000e-01
  %.133.i = select i1 %i.ox, double %i.oy, double 0.000000e+00
  br label %bb.f

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv249 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next250, %.lr.ph210 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv249 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !34 ; 3 uses
  %i.pc = fsub double 1.000000e+00, %i.pb         ; 3 uses
  %i.pd = fmul double %i.pb, 3.000000e+00         ; 2 uses
  %i.pe = fmul double %i.pd, %i.pc
  %i.pf = fmul double %i.pc, %i.pe
  %i.pg = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = fmul <2 x double> %i.ad, %i.ph
  store <2 x double> %i.pi, ptr %i.pa, align 8, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pk = fmul double %i.pb, %i.pd
  %i.pl = fmul double %i.pc, %i.pk
  %i.pm = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pn = shufflevector <2 x double> %i.pm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.po = fmul <2 x double> %i.af, %i.pn
  store <2 x double> %i.po, ptr %i.pj, align 8, !tbaa !9
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.lr.ph.i, label %.lr.ph210, !llvm.loop !31

bb.an:                                            ; preds = %growops.exit51.i, %growops.exit.i
  %.sink320 = phi ptr [ %i.ow, %growops.exit51.i ], [ %i.oo, %growops.exit.i ] ; 4 uses
  %.sink136.i = phi i64 [ %i.oq, %growops.exit51.i ], [ %i.oi, %growops.exit.i ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sink320, i64 8
  %i.pq = extractelement <2 x double> %i.fi, i64 0
  store double %i.pq, ptr %i.pp, align 8, !tbaa !38
  %i.pr = getelementptr i8, ptr %.sink320, i64 16
  %i.ps = extractelement <2 x double> %i.fd, i64 1
  store double %i.ps, ptr %i.pr, align 8, !tbaa !37
  %i.pt = getelementptr i8, ptr %.sink320, i64 24
  %i.pu = extractelement <2 x double> %i.fj, i64 1
  store double %i.pu, ptr %i.pt, align 8, !tbaa !38
  %i.pv = getelementptr i8, ptr %.sink320, i64 32
  %i.pw = add i64 %.sink136.i, 3
  store <2 x double> %i.ec, ptr %i.pv, align 8, !tbaa !9
  store i64 %i.pw, ptr @opl, align 8, !tbaa !11
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak, %bb.af
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

.loopexit:                                        ; preds = %dist_n.exit41.i, %bb.ai
  %i.px = fmul double %i.ee, f0x3FD5555555555555
  %i.py = fmul <2 x double> %i.eh, splat (double f0x3FD5555555555555) ; 2 uses
  %i.pz = fadd double %.sroa.0170.0.copyload, %i.px
  %i.qa = fmul double %i.ei, f0x3FD5555555555555
  %i.qb = insertelement <2 x double> %i.ec, double %.sroa.6173.0.copyload, i64 1 ; 3 uses
  %i.qc = fsub <2 x double> %i.qb, %i.py
  %i.qd = fadd <2 x double> %i.qb, %i.py
  %i.qe = shufflevector <2 x double> %i.qc, <2 x double> %i.qd, <2 x i32> <i32 0, i32 3>
  %i.qf = fsub double %i.en, %i.qa
  %i.qg = icmp sgt i32 %3, 2
  br i1 %i.qg, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %.loopexit
  %i.qh = add nsw i32 %3, -1
  %wide.trip.count257 = zext nneg i32 %i.qh to i64
  br label %.lr.ph215

._crit_edge216:                                   ; preds = %.lr.ph215, %.loopexit
  %.0123.lcssa = phi i32 [ -1, %.loopexit ], [ %.1124, %.lr.ph215 ] ; 3 uses
  call void @free(ptr noundef %i.f) #11
  %i.qi = sext i32 %.0123.lcssa to i64
  %i.qj = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qi ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 -16
  %i.ql = add nsw i32 %.0123.lcssa, 1             ; 2 uses
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qm
  %i.qo = load <4 x double>, ptr %i.qk, align 8   ; 4 uses
  %i.qp = load <2 x double>, ptr %i.qn, align 8
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qr = shufflevector <4 x double> %i.qo, <4 x double> %i.qq, <2 x i32> <i32 2, i32 4>
  %i.qs = shufflevector <4 x double> %i.qo, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.qt = fsub <2 x double> %i.qr, %i.qs          ; 4 uses
  %i.qu = shufflevector <4 x double> %i.qo, <4 x double> %i.qq, <2 x i32> <i32 3, i32 5>
  %i.qv = shufflevector <4 x double> %i.qo, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qw = fsub <2 x double> %i.qu, %i.qv          ; 4 uses
  %i.qx = fmul <2 x double> %i.qw, %i.qw
  %i.qy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.qt, <2 x double> %i.qx) ; 2 uses
  %i.qz = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qy) ; 2 uses
  %i.ra = fcmp ogt <2 x double> %i.qy, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.rb = fdiv <2 x double> %i.qt, %i.qz
  %i.rc = fdiv <2 x double> %i.qw, %i.qz
  %i.rd = select <2 x i1> %i.ra, <2 x double> %i.rc, <2 x double> %i.qw
  %i.re = select <2 x i1> %i.ra, <2 x double> %i.rb, <2 x double> %i.qt
  %10 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.re) ; 4 uses
  %11 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.rd) ; 4 uses
  %i.rf = fmul double %11, %11
  %i.rg = call double @llvm.fmuladd.f64(double %10, double %10, double %i.rf) ; 2 uses
  %i.rh = fcmp ogt double %i.rg, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %sqrt.i154 = call double @llvm.sqrt.f64(double %i.rg) ; 2 uses
  %12 = fdiv double %10, %sqrt.i154
  %13 = fdiv double %11, %sqrt.i154
  %.sroa.6.0.i155 = select i1 %i.rh, double %13, double %11 ; 2 uses
  %.sroa.0.0.i156 = select i1 %i.rh, double %12, double %10 ; 2 uses
  %i.ri = call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %i.ql, double %4, double %5, double %.sroa.0.0.i156, double %.sroa.6.0.i155)
  %i.rj = icmp slt i32 %i.ri, 0
  br i1 %i.rj, label %bb.aq, label %bb.ap

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %indvars.iv254 = phi i64 [ 1, %.lr.ph215.preheader ], [ %indvars.iv.next255, %.lr.ph215 ] ; 4 uses
  %.0121212 = phi double [ -1.000000e+00, %.lr.ph215.preheader ], [ %.1122, %.lr.ph215 ] ; 2 uses
  %.0123211 = phi i32 [ -1, %.lr.ph215.preheader ], [ %.1124, %.lr.ph215 ]
  %i.rk = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv254
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !34 ; 3 uses
  %i.rm = fmul double %i.rl, 3.000000e+00
  %i.rn = fsub double 1.000000e+00, %i.rl
  %i.ro = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rp = insertelement <2 x double> %i.ro, double %i.rn, i64 1 ; 5 uses
  %i.rq = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rs = fmul <2 x double> %i.rp, %i.rr
  %i.rt = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ru = fmul <2 x double> %i.rt, %i.rs          ; 3 uses
  %i.rv = extractelement <2 x double> %i.ru, i64 1
  %i.rw = fmul double %i.pz, %i.rv
  %i.rx = fmul <2 x double> %i.rp, %i.rp
  %i.ry = fmul <2 x double> %i.rp, %i.rx          ; 3 uses
  %i.rz = extractelement <2 x double> %i.ry, i64 1
  %i.sa = call double @llvm.fmuladd.f64(double %i.rz, double %.sroa.0170.0.copyload, double %i.rw)
  %i.sb = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.sa, i64 0
  %i.sc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ru, <2 x double> %i.qe, <2 x double> %i.sb)
  %i.sd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.qb, <2 x double> %i.sc) ; 2 uses
  %i.se = extractelement <2 x double> %i.sd, i64 1
  %i.sf = extractelement <2 x double> %i.ru, i64 0
  %i.sg = extractelement <2 x double> %i.ry, i64 0
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv254
  %i.si = call double @llvm.fmuladd.f64(double %i.sf, double %i.qf, double %i.se)
  %i.sj = call double @llvm.fmuladd.f64(double %i.sg, double %i.en, double %i.si)
  %i.sk = load <2 x double>, ptr %i.sh, align 8
  %i.sl = insertelement <2 x double> %i.sd, double %i.sj, i64 1
  %i.sm = fsub <2 x double> %i.sk, %i.sl          ; 2 uses
  %i.sn = extractelement <2 x double> %i.sm, i64 0
  %i.so = extractelement <2 x double> %i.sm, i64 1
  %i.sp = call double @hypot(double noundef %i.sn, double noundef %i.so) #11 ; 2 uses
  %i.sq = fcmp ogt double %i.sp, %.0121212        ; 2 uses
  %i.sr = trunc nuw nsw i64 %indvars.iv254 to i32
  %.1124 = select i1 %i.sq, i32 %i.sr, i32 %.0123211 ; 2 uses
  %.1122 = select i1 %i.sq, double %i.sp, double %.0121212
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !32

bb.ap:                                            ; preds = %._crit_edge216
  %i.ss = sub nsw i32 %3, %.0123.lcssa
  %i.st = call fastcc i32 @reallyroutespline(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.qj, i32 noundef %i.ss, double %.sroa.0.0.i156, double %.sroa.6.0.i155, double %6, double %7)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %._crit_edge216, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.an ], [ -1, %bb.ao ], [ -1, %._crit_edge216 ], [ %i.st, %bb.ap ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @solve3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(1) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS5Pxy_t", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!16 = !{!"Ppoly_t", !13, i64 0, !10, i64 8}
!17 = !{!16, !10, i64 8}
!18 = !{!16, !13, i64 0}
!19 = distinct !{!19, !35}
!20 = distinct !{!20, !35}
!21 = distinct !{!21, !35}
!22 = distinct !{!22, !35}
!23 = distinct !{!23, !35}
!24 = distinct !{!24, !35}
!25 = distinct !{!25, !35}
!26 = distinct !{!26, !35}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !35}
!29 = distinct !{!29, !35}
!30 = distinct !{!30, !35}
!31 = distinct !{!31, !35}
!32 = distinct !{!32, !35}
!33 = !{!"tna_t", !8, i64 0, !4, i64 8}
!34 = !{!33, !8, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"Pxy_t", !8, i64 0, !8, i64 8}
!37 = !{!36, !8, i64 0}
!38 = !{!36, !8, i64 8}
end_hunk_1
