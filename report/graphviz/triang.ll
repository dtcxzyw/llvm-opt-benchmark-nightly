Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/triang?download=true
inline.NumInlined: 34
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.fmuladd.f64

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ptriangulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 11 uses
  %mul.ov.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, i64 noundef %i.b, i64 noundef 8) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.b, 0
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #12 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  %or.cond3.i = and i1 %i.e, %i.g
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.c
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %gv_calloc.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %gv_calloc.exit.preheader
  %i.h = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %gv_calloc.exit.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.h, <2 x i64> %vec.ind
  %wide.gep19 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <2 x i64> %step.add
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x ptr> %wide.gep, ptr %i.i, align 8, !tbaa !11
  store <2 x ptr> %wide.gep19, ptr %i.j, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.preheader20

gv_calloc.exit.preheader20:                       ; preds = %.lr.ph, %middle.block
  %.017.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.m = shl nuw i64 %i.b, 3
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.1, i64 noundef %i.m) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

gv_calloc.exit._crit_edge:                        ; preds = %gv_calloc.exit, %middle.block, %gv_calloc.exit.preheader
  %i.o = tail call fastcc i32 @triangulate(ptr noundef %i.f, i64 noundef %i.b, ptr noundef %1, ptr noundef %2)
  %.not = icmp ne i32 %i.o, 0
  tail call void @free(ptr noundef %i.f) #13
  %. = zext i1 %.not to i32
  ret i32 %.

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader20, %gv_calloc.exit
  %.017 = phi i64 [ %i.r, %gv_calloc.exit ], [ %.017.ph, %gv_calloc.exit.preheader20 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.017
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.017
  store ptr %i.p, ptr %i.q, align 8, !tbaa !11
  %i.r = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.b
  br i1 %exitcond.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit, !llvm.loop !14
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @triangulate(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca [3 x %struct.Pxy_t], align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ugt i64 %1, 3
  br i1 %i.a, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.043126 = phi i64 [ 0, %.preheader ], [ %i.c, %.loopexit ] ; 6 uses
  %i.c = add nuw i64 %.043126, 1                  ; 4 uses
  %i.d = add i64 %.043126, 2
  %i.e = urem i64 %i.d, %1                        ; 3 uses
  %i.f = icmp eq i64 %i.c, %1
  %i.g = select i1 %i.f, i64 0, i64 %i.c          ; 4 uses
  %i.h = add i64 %i.b, %.043126
  %i.i = urem i64 %i.h, %1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.043126
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %.sroa.2.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !26 ; 11 uses
  %.sroa.2.0.copyload.i107 = load double, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !26 ; 9 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !26 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.r, %i.o
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.t = extractelement <2 x double> %i.r, i64 1
  %i.u = fsub double %i.t, %.sroa.2.0.copyload.i107 ; 2 uses
  %i.v = insertelement <2 x double> %i.o, double %.sroa.2.0.copyload.i107, i64 1
  %i.w = fsub <2 x double> %i.l, %i.v             ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = fneg double %i.x
  %i.z = fmul double %i.u, %i.y
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.s, double %i.z)
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = load <2 x double>, ptr %i.ae, align 8, !tbaa !26 ; 12 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1 ; 8 uses
  %i.ah = fsub double %.sroa.2.0.copyload.i107, %i.ag ; 5 uses
  %foldExtExtBinop156 = fsub <2 x double> %i.o, %i.af
  %i.ai = extractelement <2 x double> %foldExtExtBinop156, i64 0
  %i.aj = fneg double %i.ai                       ; 5 uses
  br i1 %i.ac, label %bb.c, label %.split.i

bb.c:                                             ; preds = %bb.b
  %i.ak = fsub <2 x double> %i.l, %i.af           ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1
  %i.am = fmul double %i.al, %i.aj
  %i.an = extractelement <2 x double> %i.ak, i64 0
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.an, double %i.am)
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %.loopexit

.split.i:                                         ; preds = %bb.b
  %i.aq = fsub <2 x double> %i.r, %i.af           ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 1
  %i.as = fmul double %i.ar, %i.aj
  %i.at = extractelement <2 x double> %i.aq, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.at, double %i.as)
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  br i1 %i.av, label %.split.i..preheader.i_crit_edge, label %.loopexit

.split.i..preheader.i_crit_edge:                  ; preds = %.split.i
  %foldExtExtBinop158 = fsub <2 x double> %i.af, %i.o
  %.pre = extractelement <2 x double> %foldExtExtBinop158, i64 0
  %.pre135 = fsub double %i.ag, %.sroa.2.0.copyload.i107
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.aw = fsub double %i.ag, %.sroa.2.0.copyload.i107 ; 2 uses
  %foldExtExtBinop160 = fsub <2 x double> %i.af, %i.o
  %i.ax = extractelement <2 x double> %foldExtExtBinop160, i64 0 ; 2 uses
  %i.ay = fneg double %i.ax
  %i.az = fmul double %i.u, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.s, double %i.az)
  %i.bb = fcmp olt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %.split.i..preheader.i_crit_edge, %bb.d
  %.pre-phi136 = phi double [ %.pre135, %.split.i..preheader.i_crit_edge ], [ %i.aw, %bb.d ] ; 4 uses
  %.pre-phi = phi double [ %.pre, %.split.i..preheader.i_crit_edge ], [ %i.ax, %bb.d ] ; 4 uses
  %i.bc = fmul double %.pre-phi136, %.pre-phi136
  %i.bd = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %.pre-phi, double %i.bc) ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge111.i, %.preheader.i
  %.0103119.i = phi i64 [ 0, %.preheader.i ], [ %i.be, %.critedge111.i ] ; 4 uses
  %i.be = add nuw i64 %.0103119.i, 1              ; 3 uses
  %i.bf = icmp eq i64 %i.be, %1                   ; 2 uses
  %i.bg = select i1 %i.bf, i64 0, i64 %i.be       ; 3 uses
  %i.bh = icmp eq i64 %.0103119.i, %.043126
  %i.bi = icmp eq i64 %i.bg, %.043126
  %or.cond.i = or i1 %i.bh, %i.bi
  %i.bj = icmp eq i64 %.0103119.i, %i.e
  %or.cond108.i = or i1 %i.bj, %or.cond.i
  %i.bk = icmp eq i64 %i.bg, %i.e
  %or.cond109.i = or i1 %i.bk, %or.cond108.i
  br i1 %or.cond109.i, label %.critedge111.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0103119.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bp = load <2 x double>, ptr %i.bm, align 8, !tbaa !26 ; 9 uses
  %5 = load <2 x double>, ptr %i.bo, align 8, !tbaa !26 ; 11 uses
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26 ; 9 uses
  %i.bq = fsub <2 x double> %i.bp, %i.af          ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 1
  %i.bs = fmul double %i.br, %i.aj
  %i.bt = extractelement <2 x double> %i.bq, i64 0
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bt, double %i.bs) ; 3 uses
  %i.bv = fcmp ule double %i.bu, 0.000000e+00
  %i.bw = fcmp olt double %i.bu, 0.000000e+00     ; 2 uses
  %i.bx = xor i1 %i.bw, %i.bv
  br i1 %i.bx, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop162 = fsub <2 x double> %5, %i.af
  %i.by = extractelement <2 x double> %foldExtExtBinop162, i64 0
  %i.bz = fsub double %.sroa.2.0.copyload.i, %i.ag
  %i.ca = fmul double %i.bz, %i.aj
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.by, double %i.ca) ; 2 uses
  %i.cc = fcmp ule double %i.cb, 0.000000e+00
  %i.cd = fcmp olt double %i.cb, 0.000000e+00     ; 2 uses
  %i.ce = xor i1 %i.cd, %i.cc
  br i1 %i.ce, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = extractelement <2 x double> %i.bp, i64 1
  %i.cg = fsub double %i.cf, %.sroa.2.0.copyload.i ; 2 uses
  %foldExtExtBinop164 = fsub <2 x double> %i.o, %5
  %i.ch = extractelement <2 x double> %foldExtExtBinop164, i64 0
  %i.ci = fsub double %.sroa.2.0.copyload.i107, %.sroa.2.0.copyload.i
  %foldExtExtBinop166 = fsub <2 x double> %i.bp, %5
  %i.cj = extractelement <2 x double> %foldExtExtBinop166, i64 0
  %i.ck = fneg double %i.cj                       ; 2 uses
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cl) ; 2 uses
  %i.cn = fcmp ule double %i.cm, 0.000000e+00
  %i.co = fcmp olt double %i.cm, 0.000000e+00     ; 2 uses
  %i.cp = xor i1 %i.co, %i.cn
  br i1 %i.cp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop168 = fsub <2 x double> %i.af, %5
  %i.cq = extractelement <2 x double> %foldExtExtBinop168, i64 0
  %i.cr = fsub double %i.ag, %.sroa.2.0.copyload.i
  %i.cs = fmul double %i.cr, %i.ck
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cq, double %i.cs) ; 2 uses
  %i.cu = fcmp ule double %i.ct, 0.000000e+00
  %i.cv = fcmp olt double %i.ct, 0.000000e+00     ; 2 uses
  %i.cw = xor i1 %i.cv, %i.cu
  br i1 %i.cw, label %bb.j, label %.split116.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %foldExtExtBinop170 = fsub <2 x double> %i.bp, %i.o
  %i.cx = extractelement <2 x double> %foldExtExtBinop170, i64 0 ; 3 uses
  %i.cy = extractelement <2 x double> %i.bp, i64 1 ; 3 uses
  %i.cz = fsub double %i.cy, %.sroa.2.0.copyload.i107 ; 3 uses
  %.not.i.i.i = fcmp ueq double %i.bu, 0.000000e+00
  br i1 %.not.i.i.i, label %bb.k, label %between.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.da = fmul double %.pre-phi136, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cx, double %.pre-phi, double %i.da)
  %i.dc = fcmp ult double %i.db, 0.000000e+00
  br i1 %i.dc, label %between.exit.thread.i.i, label %between.exit.i.i

between.exit.i.i:                                 ; preds = %bb.k
  %i.dd = fmul double %i.cz, %i.cz
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.dd)
  %i.df = fcmp ugt double %i.de, %i.bd
  br i1 %i.df, label %between.exit.thread.i.i, label %.loopexit

between.exit.thread.i.i:                          ; preds = %between.exit.i.i, %bb.k, %bb.j
  %foldExtExtBinop172 = fsub <2 x double> %5, %i.o
  %i.dg = extractelement <2 x double> %foldExtExtBinop172, i64 0 ; 3 uses
  %i.dh = fsub double %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i107 ; 3 uses
  %foldExtExtBinop174 = fsub <2 x double> %5, %i.af
  %i.di = extractelement <2 x double> %foldExtExtBinop174, i64 0
  %i.dj = fsub double %.sroa.2.0.copyload.i, %i.ag
  %i.dk = fmul double %i.dj, %i.aj
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.di, double %i.dk)
  %.not.i74.i.i = fcmp ueq double %i.dl, 0.000000e+00
  br i1 %.not.i74.i.i, label %bb.l, label %between.exit76.thread.i.i

bb.l:                                             ; preds = %between.exit.thread.i.i
  %i.dm = fmul double %.pre-phi136, %i.dh
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dg, double %.pre-phi, double %i.dm)
  %i.do = fcmp ult double %i.dn, 0.000000e+00
  br i1 %i.do, label %between.exit76.thread.i.i, label %between.exit76.i.i

between.exit76.i.i:                               ; preds = %bb.l
  %i.dp = fmul double %i.dh, %i.dh
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dg, double %i.dp)
  %i.dr = fcmp ugt double %i.dq, %i.bd
  br i1 %i.dr, label %between.exit76.thread.i.i, label %.loopexit

between.exit76.thread.i.i:                        ; preds = %between.exit76.i.i, %bb.l, %between.exit.thread.i.i
  %i.ds = shufflevector <2 x double> %i.o, <2 x double> %5, <2 x i32> <i32 0, i32 2>
  %i.dt = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fsub <2 x double> %i.ds, %i.dt          ; 6 uses
  %i.dv = shufflevector <2 x double> %i.o, <2 x double> %5, <2 x i32> <i32 1, i32 3>
  %i.dw = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fsub <2 x double> %i.dv, %i.dw          ; 6 uses
  %i.dy = fsub double %i.cy, %.sroa.2.0.copyload.i ; 2 uses
  %foldExtExtBinop176 = fsub <2 x double> %i.o, %5
  %i.dz = extractelement <2 x double> %foldExtExtBinop176, i64 0
  %i.ea = fsub double %.sroa.2.0.copyload.i107, %.sroa.2.0.copyload.i
  %foldExtExtBinop178 = fsub <2 x double> %i.bp, %5
  %i.eb = extractelement <2 x double> %foldExtExtBinop178, i64 0
  %i.ec = fneg double %i.eb                       ; 2 uses
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dz, double %i.ed)
  %.not.i77.i.i = fcmp ueq double %i.ee, 0.000000e+00
  br i1 %.not.i77.i.i, label %bb.m, label %between.exit79.thread.i.i

bb.m:                                             ; preds = %between.exit76.thread.i.i
  %shift = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fmul <2 x double> %i.dx, %shift
  %i.ef = extractelement <2 x double> %foldExtExtBinop180, i64 0
  %i.eg = extractelement <2 x double> %i.du, i64 0
  %i.eh = extractelement <2 x double> %i.du, i64 1
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eh, double %i.ef)
  %i.ej = fcmp ult double %i.ei, 0.000000e+00
  br i1 %i.ej, label %between.exit79.thread.i.i, label %between.exit79.i.i

between.exit79.i.i:                               ; preds = %bb.m
  %i.ek = fmul <2 x double> %i.dx, %i.dx
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.du, <2 x double> %i.ek) ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = extractelement <2 x double> %i.el, i64 1
  %i.eo = fcmp ugt double %i.em, %i.en
  br i1 %i.eo, label %between.exit79.thread.i.i, label %.loopexit

between.exit79.thread.i.i:                        ; preds = %between.exit79.i.i, %bb.m, %between.exit76.thread.i.i
  %foldExtExtBinop182 = fsub <2 x double> %i.af, %i.bp ; 2 uses
  %i.ep = fsub double %i.ag, %i.cy                ; 2 uses
  %foldExtExtBinop184 = fsub <2 x double> %i.af, %5
  %i.eq = extractelement <2 x double> %foldExtExtBinop184, i64 0
  %i.er = fsub double %i.ag, %.sroa.2.0.copyload.i
  %i.es = fmul double %i.er, %i.ec
  %i.et = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.eq, double %i.es)
  %.not.i80.i.i = fcmp ueq double %i.et, 0.000000e+00
  br i1 %.not.i80.i.i, label %bb.n, label %.critedge111.i

bb.n:                                             ; preds = %between.exit79.thread.i.i
  %i.eu = extractelement <2 x double> %foldExtExtBinop182, i64 0
  %i.ev = extractelement <2 x double> %i.dx, i64 1
  %i.ew = fmul double %i.ep, %i.ev
  %i.ex = extractelement <2 x double> %i.du, i64 1
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ex, double %i.ew)
  %i.ez = fcmp ult double %i.ey, 0.000000e+00
  br i1 %i.ez, label %.critedge111.i, label %intersects.exit.i

.split116.i:                                      ; preds = %bb.i
  %i.fa = xor i1 %i.bw, %i.cd
  %i.fb = xor i1 %i.co, %i.cv
  %i.fc = and i1 %i.fa, %i.fb
  br i1 %i.fc, label %.loopexit, label %.critedge111.i

intersects.exit.i:                                ; preds = %bb.n
  %i.fd = insertelement <2 x double> %i.dx, double %i.ep, i64 0 ; 2 uses
  %i.fe = fmul <2 x double> %i.fd, %i.fd
  %i.ff = shufflevector <2 x double> %foldExtExtBinop182, <2 x double> %i.du, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.ff, <2 x double> %i.fe) ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0
  %i.fi = extractelement <2 x double> %i.fg, i64 1
  %i.fj = fcmp ugt double %i.fh, %i.fi
  br i1 %i.fj, label %.critedge111.i, label %.loopexit

.critedge111.i:                                   ; preds = %intersects.exit.i, %.split116.i, %bb.n, %between.exit79.thread.i.i, %bb.e
  br i1 %i.bf, label %isdiagonal.exit, label %bb.e, !llvm.loop !0

isdiagonal.exit:                                  ; preds = %.critedge111.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !27
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !27
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !27
  call void %2(ptr noundef %3, ptr noundef nonnull %4) #13
  %xtraiter = and i64 %1, 1
  %unroll_iter = and i64 %1, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %isdiagonal.exit
  %.0128 = phi i64 [ 0, %isdiagonal.exit ], [ %.1.1, %bb.s ] ; 3 uses
  %.144127 = phi i64 [ 0, %isdiagonal.exit ], [ %i.fv, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %isdiagonal.exit ], [ %niter.next.1, %bb.s ]
  %.not49 = icmp eq i64 %.144127, %i.g
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.144127
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !11
  %i.fo = add i64 %.0128, 1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0128
  store ptr %i.fn, ptr %i.fp, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %i.fo, %bb.p ], [ %.0128, %bb.o ] ; 3 uses
  %i.fq = or disjoint i64 %.144127, 1             ; 2 uses
  %.not49.1 = icmp eq i64 %i.fq, %i.g
  br i1 %.not49.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !11
  %i.ft = add i64 %.1, 1
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1
  store ptr %i.fs, ptr %i.fu, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1 = phi i64 [ %i.ft, %bb.r ], [ %.1, %bb.q ] ; 2 uses
  %i.fv = add nuw i64 %.144127, 2                 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.unr-lcssa, label %bb.o, !llvm.loop !23

.thread.unr-lcssa:                                ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.unr-lcssa
  %lcmp.mod193 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %.not49.epil = icmp eq i64 %i.fv, %i.g
  br i1 %.not49.epil, label %.thread, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !11
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.1
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.epil.preheader, %bb.t, %.thread.unr-lcssa
  %i.fz = call fastcc i32 @triangulate(ptr noundef %0, i64 noundef %i.b, ptr noundef %2, ptr noundef %3)
  br label %.loopexit120

.loopexit:                                        ; preds = %between.exit79.i.i, %between.exit76.i.i, %between.exit.i.i, %.split116.i, %intersects.exit.i, %.split.i, %bb.c, %bb.d
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.loopexit120, label %bb.b, !llvm.loop !24

bb.u:                                             ; preds = %bb.a
  %i.ga = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !27
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !27
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !27
  call void %2(ptr noundef %3, ptr noundef nonnull %4) #13
  br label %.loopexit120

.loopexit120:                                     ; preds = %.loopexit, %.thread, %bb.u
  %.3 = phi i32 [ 0, %bb.u ], [ %i.fz, %.thread ], [ -1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @isdiagonal(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %0, 1
  %i.b = urem i64 %i.a, %3                        ; 3 uses
  %i.c = add i64 %0, -1
  %i.d = add i64 %i.c, %3
  %i.e = urem i64 %i.d, %3                        ; 2 uses
  %i.f = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.e) #13 ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  %i.i = tail call { double, double } %4(ptr noundef %2, i64 noundef %0) #13 ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 2 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 2 uses
  %i.l = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.b) #13 ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fsub double %i.h, %i.k
  %i.p = fsub double %i.m, %i.j
  %i.q = fsub double %i.n, %i.k
  %i.r = fsub double %i.g, %i.j
  %i.s = fneg double %i.r
  %i.t = fmul double %i.q, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double %i.p, double %i.t)
  %i.v = fcmp olt double %i.u, 0.000000e+00
  %i.w = tail call { double, double } %4(ptr noundef %2, i64 noundef %0) #13 ; 2 uses
  %i.x = extractvalue { double, double } %i.w, 0
  %i.y = extractvalue { double, double } %i.w, 1
  %i.z = tail call { double, double } %4(ptr noundef %2, i64 noundef %1) #13 ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0 ; 3 uses
  %i.ab = extractvalue { double, double } %i.z, 1 ; 3 uses
  %i.ac = fsub double %i.y, %i.ab                 ; 2 uses
  %i.ad = fsub double %i.x, %i.aa
  %i.ae = fneg double %i.ad                       ; 2 uses
  br i1 %i.v, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.af = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.e) #13 ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = fsub double %i.ag, %i.aa
  %i.aj = fsub double %i.ah, %i.ab
  %i.ak = fmul double %i.aj, %i.ae
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ai, double %i.ak)
  %i.am = fcmp olt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.c, label %.critedge

.split:                                           ; preds = %bb.a
  %i.an = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.b) #13 ; 2 uses
  %i.ao = extractvalue { double, double } %i.an, 0
  %i.ap = extractvalue { double, double } %i.an, 1
  %i.aq = fsub double %i.ao, %i.aa
  %i.ar = fsub double %i.ap, %i.ab
  %i.as = fmul double %i.ar, %i.ae
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.aq, double %i.as)
  %i.au = fcmp ogt double %i.at, 0.000000e+00
  br i1 %i.au, label %.preheader.preheader, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.av = tail call { double, double } %4(ptr noundef %2, i64 noundef %1) #13 ; 2 uses
  %i.aw = extractvalue { double, double } %i.av, 0
  %i.ax = extractvalue { double, double } %i.av, 1
  %i.ay = tail call { double, double } %4(ptr noundef %2, i64 noundef %0) #13 ; 2 uses
  %i.az = extractvalue { double, double } %i.ay, 0 ; 2 uses
  %i.ba = extractvalue { double, double } %i.ay, 1 ; 2 uses
  %i.bb = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.b) #13 ; 2 uses
  %i.bc = extractvalue { double, double } %i.bb, 0
  %i.bd = extractvalue { double, double } %i.bb, 1
  %i.be = fsub double %i.ax, %i.ba
  %i.bf = fsub double %i.bc, %i.az
end_hunk_0
