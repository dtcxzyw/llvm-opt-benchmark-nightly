inline.NumInlined: 34
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@triangulate:bb.a
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
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !22 ; 11 uses
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !22 ; 9 uses
  %i.bq = load <2 x double>, ptr %i.bm, align 8, !tbaa !22 ; 9 uses
  %i.br = fsub <2 x double> %i.bq, %i.af          ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  %i.bt = fmul double %i.bs, %i.aj
  %i.bu = extractelement <2 x double> %i.br, i64 0
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bu, double %i.bt) ; 3 uses
  %i.bw = fcmp ule double %i.bv, 0.000000e+00
  %i.bx = fcmp olt double %i.bv, 0.000000e+00     ; 2 uses
  %i.by = xor i1 %i.bx, %i.bw
  br i1 %i.by, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop162 = fsub <2 x double> %i.bp, %i.af
  %i.bz = extractelement <2 x double> %foldExtExtBinop162, i64 0
  %i.ca = fsub double %.sroa.2.0.copyload.i, %i.ag
  %i.cb = fmul double %i.ca, %i.aj
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bz, double %i.cb) ; 2 uses
  %i.cd = fcmp ule double %i.cc, 0.000000e+00
  %i.ce = fcmp olt double %i.cc, 0.000000e+00     ; 2 uses
  %i.cf = xor i1 %i.ce, %i.cd
  br i1 %i.cf, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = extractelement <2 x double> %i.bq, i64 1
  %i.ch = fsub double %i.cg, %.sroa.2.0.copyload.i ; 2 uses
  %foldExtExtBinop164 = fsub <2 x double> %i.o, %i.bp
  %i.ci = extractelement <2 x double> %foldExtExtBinop164, i64 0
  %i.cj = fsub double %.sroa.2.0.copyload.i107, %.sroa.2.0.copyload.i
  %foldExtExtBinop166 = fsub <2 x double> %i.bq, %i.bp
  %i.ck = extractelement <2 x double> %foldExtExtBinop166, i64 0
  %i.cl = fneg double %i.ck                       ; 2 uses
  %i.cm = fmul double %i.cj, %i.cl
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %i.cm) ; 2 uses
  %i.co = fcmp ule double %i.cn, 0.000000e+00
  %i.cp = fcmp olt double %i.cn, 0.000000e+00     ; 2 uses
  %i.cq = xor i1 %i.cp, %i.co
  br i1 %i.cq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop168 = fsub <2 x double> %i.af, %i.bp
  %i.cr = extractelement <2 x double> %foldExtExtBinop168, i64 0
  %i.cs = fsub double %i.ag, %.sroa.2.0.copyload.i
  %i.ct = fmul double %i.cs, %i.cl
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cr, double %i.ct) ; 2 uses
  %i.cv = fcmp ule double %i.cu, 0.000000e+00
  %i.cw = fcmp olt double %i.cu, 0.000000e+00     ; 2 uses
  %i.cx = xor i1 %i.cw, %i.cv
  br i1 %i.cx, label %bb.j, label %.split116.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %foldExtExtBinop170 = fsub <2 x double> %i.bq, %i.o
  %i.cy = extractelement <2 x double> %foldExtExtBinop170, i64 0 ; 3 uses
  %i.cz = extractelement <2 x double> %i.bq, i64 1 ; 3 uses
  %i.da = fsub double %i.cz, %.sroa.2.0.copyload.i107 ; 3 uses
  %.not.i.i.i = fcmp ueq double %i.bv, 0.000000e+00
  br i1 %.not.i.i.i, label %bb.k, label %between.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.db = fmul double %.pre-phi136, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cy, double %.pre-phi, double %i.db)
  %i.dd = fcmp ult double %i.dc, 0.000000e+00
  br i1 %i.dd, label %between.exit.thread.i.i, label %between.exit.i.i

between.exit.i.i:                                 ; preds = %bb.k
  %i.de = fmul double %i.da, %i.da
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %i.de)
  %i.dg = fcmp ugt double %i.df, %i.bd
  br i1 %i.dg, label %between.exit.thread.i.i, label %.loopexit

between.exit.thread.i.i:                          ; preds = %between.exit.i.i, %bb.k, %bb.j
  %foldExtExtBinop172 = fsub <2 x double> %i.bp, %i.o
  %i.dh = extractelement <2 x double> %foldExtExtBinop172, i64 0 ; 3 uses
  %i.di = fsub double %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i107 ; 3 uses
  %foldExtExtBinop174 = fsub <2 x double> %i.bp, %i.af
  %i.dj = extractelement <2 x double> %foldExtExtBinop174, i64 0
  %i.dk = fsub double %.sroa.2.0.copyload.i, %i.ag
  %i.dl = fmul double %i.dk, %i.aj
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.dj, double %i.dl)
  %.not.i74.i.i = fcmp ueq double %i.dm, 0.000000e+00
  br i1 %.not.i74.i.i, label %bb.l, label %between.exit76.thread.i.i

bb.l:                                             ; preds = %between.exit.thread.i.i
  %i.dn = fmul double %.pre-phi136, %i.di
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dh, double %.pre-phi, double %i.dn)
  %i.dp = fcmp ult double %i.do, 0.000000e+00
  br i1 %i.dp, label %between.exit76.thread.i.i, label %between.exit76.i.i

between.exit76.i.i:                               ; preds = %bb.l
  %i.dq = fmul double %i.di, %i.di
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.dq)
  %i.ds = fcmp ugt double %i.dr, %i.bd
  br i1 %i.ds, label %between.exit76.thread.i.i, label %.loopexit

between.exit76.thread.i.i:                        ; preds = %between.exit76.i.i, %bb.l, %between.exit.thread.i.i
  %i.dt = shufflevector <2 x double> %i.o, <2 x double> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fsub <2 x double> %i.dt, %i.du          ; 6 uses
  %i.dw = shufflevector <2 x double> %i.o, <2 x double> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.dx = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = fsub <2 x double> %i.dw, %i.dx          ; 6 uses
  %i.dz = fsub double %i.cz, %.sroa.2.0.copyload.i ; 2 uses
  %foldExtExtBinop176 = fsub <2 x double> %i.o, %i.bp
  %i.ea = extractelement <2 x double> %foldExtExtBinop176, i64 0
  %i.eb = fsub double %.sroa.2.0.copyload.i107, %.sroa.2.0.copyload.i
  %foldExtExtBinop178 = fsub <2 x double> %i.bq, %i.bp
  %i.ec = extractelement <2 x double> %foldExtExtBinop178, i64 0
  %i.ed = fneg double %i.ec                       ; 2 uses
  %i.ee = fmul double %i.eb, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.ee)
  %.not.i77.i.i = fcmp ueq double %i.ef, 0.000000e+00
  br i1 %.not.i77.i.i, label %bb.m, label %between.exit79.thread.i.i

bb.m:                                             ; preds = %between.exit76.thread.i.i
  %shift = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fmul <2 x double> %i.dy, %shift
  %i.eg = extractelement <2 x double> %foldExtExtBinop180, i64 0
  %i.eh = extractelement <2 x double> %i.dv, i64 0
  %i.ei = extractelement <2 x double> %i.dv, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.eg)
  %i.ek = fcmp ult double %i.ej, 0.000000e+00
  br i1 %i.ek, label %between.exit79.thread.i.i, label %between.exit79.i.i

between.exit79.i.i:                               ; preds = %bb.m
  %i.el = fmul <2 x double> %i.dy, %i.dy
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dv, <2 x double> %i.el) ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = extractelement <2 x double> %i.em, i64 1
  %i.ep = fcmp ugt double %i.en, %i.eo
  br i1 %i.ep, label %between.exit79.thread.i.i, label %.loopexit

between.exit79.thread.i.i:                        ; preds = %between.exit79.i.i, %bb.m, %between.exit76.thread.i.i
  %foldExtExtBinop182 = fsub <2 x double> %i.af, %i.bq ; 2 uses
  %i.eq = fsub double %i.ag, %i.cz                ; 2 uses
  %foldExtExtBinop184 = fsub <2 x double> %i.af, %i.bp
  %i.er = extractelement <2 x double> %foldExtExtBinop184, i64 0
  %i.es = fsub double %i.ag, %.sroa.2.0.copyload.i
  %i.et = fmul double %i.es, %i.ed
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.er, double %i.et)
  %.not.i80.i.i = fcmp ueq double %i.eu, 0.000000e+00
  br i1 %.not.i80.i.i, label %bb.n, label %.critedge111.i

bb.n:                                             ; preds = %between.exit79.thread.i.i
  %i.ev = extractelement <2 x double> %foldExtExtBinop182, i64 0
  %i.ew = extractelement <2 x double> %i.dy, i64 1
  %i.ex = fmul double %i.eq, %i.ew
  %i.ey = extractelement <2 x double> %i.dv, i64 1
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ey, double %i.ex)
  %i.fa = fcmp ult double %i.ez, 0.000000e+00
  br i1 %i.fa, label %.critedge111.i, label %intersects.exit.i

.split116.i:                                      ; preds = %bb.i
  %i.fb = xor i1 %i.bx, %i.ce
  %i.fc = xor i1 %i.cp, %i.cw
  %i.fd = and i1 %i.fb, %i.fc
  br i1 %i.fd, label %.loopexit, label %.critedge111.i

intersects.exit.i:                                ; preds = %bb.n
  %i.fe = insertelement <2 x double> %i.dy, double %i.eq, i64 0 ; 2 uses
  %i.ff = fmul <2 x double> %i.fe, %i.fe
  %i.fg = shufflevector <2 x double> %foldExtExtBinop182, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fg, <2 x double> %i.ff) ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %i.fj = extractelement <2 x double> %i.fh, i64 1
  %i.fk = fcmp ugt double %i.fi, %i.fj
  br i1 %i.fk, label %.critedge111.i, label %.loopexit

.critedge111.i:                                   ; preds = %intersects.exit.i, %.split116.i, %bb.n, %between.exit79.thread.i.i, %bb.e
  br i1 %i.bf, label %isdiagonal.exit, label %bb.e, !llvm.loop !24

isdiagonal.exit:                                  ; preds = %.critedge111.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !25
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !25
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !25
  call void %2(ptr noundef %3, ptr noundef nonnull %4) #13
  %xtraiter = and i64 %1, 1
  %unroll_iter = and i64 %1, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %isdiagonal.exit
  %.0128 = phi i64 [ 0, %isdiagonal.exit ], [ %.1.1, %bb.s ] ; 3 uses
  %.144127 = phi i64 [ 0, %isdiagonal.exit ], [ %i.fw, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %isdiagonal.exit ], [ %niter.next.1, %bb.s ]
  %.not49 = icmp eq i64 %.144127, %i.g
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.144127
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !16
  %i.fp = add i64 %.0128, 1
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0128
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %i.fp, %bb.p ], [ %.0128, %bb.o ] ; 3 uses
  %i.fr = or disjoint i64 %.144127, 1
  %.not49.1 = icmp eq i64 %i.fr, %i.g
  br i1 %.not49.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.144127
  %5 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ft = load ptr, ptr %5, align 8, !tbaa !16
  %i.fu = add i64 %.1, 1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1 = phi i64 [ %i.fu, %bb.r ], [ %.1, %bb.q ] ; 2 uses
  %i.fw = add nuw i64 %.144127, 2                 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.unr-lcssa, label %bb.o, !llvm.loop !26

.thread.unr-lcssa:                                ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.unr-lcssa
  %lcmp.mod193 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %.not49.epil = icmp eq i64 %i.fw, %i.g
  br i1 %.not49.epil, label %.thread, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.1
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %.epil.preheader, %bb.t, %.thread.unr-lcssa
  %i.ga = call fastcc i32 @triangulate(ptr noundef %0, i64 noundef %i.b, ptr noundef %2, ptr noundef %3)
  br label %.loopexit120

.loopexit:                                        ; preds = %between.exit79.i.i, %between.exit76.i.i, %between.exit.i.i, %.split116.i, %intersects.exit.i, %.split.i, %bb.c, %bb.d
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.loopexit120, label %bb.b, !llvm.loop !27

bb.u:                                             ; preds = %bb.a
  %i.gb = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !25
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !25
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !25
  call void %2(ptr noundef %3, ptr noundef nonnull %4) #13
  br label %.loopexit120

.loopexit120:                                     ; preds = %.loopexit, %.thread, %bb.u
  %.3 = phi i32 [ 0, %bb.u ], [ %i.ga, %.thread ], [ -1, %.loopexit ]
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
  %i.bg = fsub double %i.bd, %i.ba
  %i.bh = fsub double %i.aw, %i.az
  %i.bi = fneg double %i.bh
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bf, double %i.bj)
  %i.bl = fcmp olt double %i.bk, 0.000000e+00
  br i1 %i.bl, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.c, %.split
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge111
  %.0103119 = phi i64 [ %i.bm, %.critedge111 ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.bm = add nuw i64 %.0103119, 1                ; 4 uses
  %i.bn = icmp eq i64 %i.bm, %3
  %i.bo = select i1 %i.bn, i64 0, i64 %i.bm       ; 3 uses
  %i.bp = icmp eq i64 %.0103119, %0
  %i.bq = icmp eq i64 %i.bo, %0
  %or.cond = or i1 %i.bp, %i.bq
  %i.br = icmp eq i64 %.0103119, %1
  %or.cond108 = or i1 %i.br, %or.cond
  %i.bs = icmp eq i64 %i.bo, %1
  %or.cond109 = or i1 %i.bs, %or.cond108
  br i1 %or.cond109, label %.critedge111, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bt = tail call { double, double } %4(ptr noundef %2, i64 noundef %0) #13 ; 2 uses
  %i.bu = extractvalue { double, double } %i.bt, 0 ; 5 uses
  %i.bv = extractvalue { double, double } %i.bt, 1 ; 5 uses
  %i.bw = tail call { double, double } %4(ptr noundef %2, i64 noundef %1) #13 ; 2 uses
  %i.bx = extractvalue { double, double } %i.bw, 0 ; 8 uses
  %i.by = extractvalue { double, double } %i.bw, 1 ; 8 uses
  %i.bz = tail call { double, double } %4(ptr noundef %2, i64 noundef %.0103119) #13 ; 2 uses
  %i.ca = extractvalue { double, double } %i.bz, 0 ; 5 uses
  %i.cb = extractvalue { double, double } %i.bz, 1 ; 5 uses
  %i.cc = tail call { double, double } %4(ptr noundef %2, i64 noundef %i.bo) #13 ; 2 uses
  %i.cd = extractvalue { double, double } %i.cc, 0 ; 10 uses
  %i.ce = extractvalue { double, double } %i.cc, 1 ; 10 uses
  %i.cf = fsub double %i.bv, %i.by                ; 3 uses
  %i.cg = fsub double %i.ca, %i.bx
  %i.ch = fsub double %i.cb, %i.by
  %i.ci = fsub double %i.bu, %i.bx
  %i.cj = fneg double %i.ci                       ; 3 uses
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ck) ; 3 uses
  %i.cm = fcmp ule double %i.cl, 0.000000e+00
  %i.cn = fcmp olt double %i.cl, 0.000000e+00     ; 2 uses
  %i.co = xor i1 %i.cn, %i.cm
  br i1 %i.co, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = fsub double %i.cd, %i.bx
  %i.cq = fsub double %i.ce, %i.by
  %i.cr = fmul double %i.cq, %i.cj
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cp, double %i.cr) ; 2 uses
  %i.ct = fcmp ule double %i.cs, 0.000000e+00
  %i.cu = fcmp olt double %i.cs, 0.000000e+00     ; 2 uses
  %i.cv = xor i1 %i.cu, %i.ct
  br i1 %i.cv, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = fsub double %i.cb, %i.ce                ; 2 uses
  %i.cx = fsub double %i.bu, %i.cd
  %i.cy = fsub double %i.bv, %i.ce
  %i.cz = fsub double %i.ca, %i.cd
  %i.da = fneg double %i.cz                       ; 2 uses
  %i.db = fmul double %i.cy, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cx, double %i.db) ; 2 uses
  %i.dd = fcmp ule double %i.dc, 0.000000e+00
  %i.de = fcmp olt double %i.dc, 0.000000e+00     ; 2 uses
end_hunk_0
