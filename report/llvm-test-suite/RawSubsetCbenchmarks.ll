inline.NumInlined: 219
inline.NumDeleted: 51
begin_hunk_0_@_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.1
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11
  %i.cz = fmul double %i.cw, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cu, double %i.cz)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next.1
  %i.dc = load double, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.1
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.de, double %i.da)
  %i.dg = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.1
  %i.di = load double, ptr %i.dh, align 8, !tbaa !11
  %i.dj = tail call double @llvm.fmuladd.f64(double %store_forwarded100, double %i.di, double %i.df)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.1
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !11
  %i.dm = fadd double %i.dj, %i.dl
  %i.dn = fsub double %i.dm, %i.cq
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double 1.750000e-01, double %i.cq) ; 2 uses
  store double %i.do, ptr %i.dg, align 8, !tbaa !11
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.t
  br i1 %exitcond.1.not, label %._crit_edge.us.us.1, label %bb.b, !llvm.loop !292

._crit_edge.us.us.1:                              ; preds = %bb.b
  %.pre92 = load double, ptr %.phi.trans.insert91, align 8, !tbaa !11
  %load_initial101 = load double, ptr %i.w, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge.us.us.1
  %store_forwarded102 = phi double [ %load_initial101, %._crit_edge.us.us.1 ], [ %i.en, %bb.c ]
  %i.dp = phi double [ %.pre92, %._crit_edge.us.us.1 ], [ %i.eb, %bb.c ] ; 2 uses
  %indvars.iv.2 = phi i64 [ 1, %._crit_edge.us.us.1 ], [ %indvars.iv.next.2, %bb.c ] ; 9 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.2
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.2
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.2
  %i.dv = load double, ptr %i.du, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.2
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !11
  %i.dy = fmul double %i.dv, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %i.dy)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.2
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !11
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ed, double %i.dz)
  %i.ef = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv.2
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.2
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !11
  %i.ei = tail call double @llvm.fmuladd.f64(double %store_forwarded102, double %i.eh, double %i.ee)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.2
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = fadd double %i.ei, %i.ek
  %i.em = fsub double %i.el, %i.dp
  %i.en = tail call double @llvm.fmuladd.f64(double %i.em, double 1.750000e-01, double %i.dp) ; 2 uses
  store double %i.en, ptr %i.ef, align 8, !tbaa !11
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %i.t
  br i1 %exitcond.2.not, label %._crit_edge.us.us.2, label %bb.c, !llvm.loop !292

._crit_edge.us.us.2:                              ; preds = %bb.c
  %.pre94 = load double, ptr %.phi.trans.insert93, align 8, !tbaa !11
  %load_initial103 = load double, ptr %i.ai, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.us.2
  %store_forwarded104 = phi double [ %load_initial103, %._crit_edge.us.us.2 ], [ %i.fm, %bb.d ]
  %i.eo = phi double [ %.pre94, %._crit_edge.us.us.2 ], [ %i.fa, %bb.d ] ; 2 uses
  %indvars.iv.3 = phi i64 [ 1, %._crit_edge.us.us.2 ], [ %indvars.iv.next.3, %bb.d ] ; 9 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.3
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !11
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.3
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.3
  %i.eu = load double, ptr %i.et, align 8, !tbaa !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.3
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !11
  %i.ex = fmul double %i.eu, %i.ew
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.es, double %i.ex)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.3
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.3
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fc, double %i.ey)
  %i.fe = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv.3
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.3
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !11
  %i.fh = tail call double @llvm.fmuladd.f64(double %store_forwarded104, double %i.fg, double %i.fd)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.3
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !11
  %i.fk = fadd double %i.fh, %i.fj
  %i.fl = fsub double %i.fk, %i.eo
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double 1.750000e-01, double %i.eo) ; 2 uses
  store double %i.fm, ptr %i.fe, align 8, !tbaa !11
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %i.t
  br i1 %exitcond.3.not, label %._crit_edge.us.us.3, label %bb.d, !llvm.loop !292

._crit_edge.us.us.3:                              ; preds = %bb.d
  %.pre96 = load double, ptr %.phi.trans.insert95, align 8, !tbaa !11
  %load_initial105 = load double, ptr %i.au, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.us.us.3
  %store_forwarded106 = phi double [ %load_initial105, %._crit_edge.us.us.3 ], [ %i.gl, %bb.e ]
  %i.fn = phi double [ %.pre96, %._crit_edge.us.us.3 ], [ %i.fz, %bb.e ] ; 2 uses
  %indvars.iv.4 = phi i64 [ 1, %._crit_edge.us.us.3 ], [ %indvars.iv.next.4, %bb.e ] ; 9 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.4
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !11
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.4
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.4
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !11
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.4
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !11
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fr, double %i.fw)
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.4
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.4
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.gb, double %i.fx)
  %i.gd = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.4
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.4
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !11
  %i.gg = tail call double @llvm.fmuladd.f64(double %store_forwarded106, double %i.gf, double %i.gc)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.4
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !11
  %i.gj = fadd double %i.gg, %i.gi
  %i.gk = fsub double %i.gj, %i.fn
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double 1.750000e-01, double %i.fn) ; 2 uses
  store double %i.gl, ptr %i.gd, align 8, !tbaa !11
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, %i.t
  br i1 %exitcond.4.not, label %._crit_edge.us.us.4, label %bb.e, !llvm.loop !292

._crit_edge.us.us.4:                              ; preds = %bb.e
  %i.gm = add nsw i64 %.sroa.054.063.us, -1       ; 2 uses
  %.not.i.not.us = icmp eq i64 %i.gm, 0
  br i1 %.not.i.not.us, label %._crit_edge, label %.preheader59.us, !prof !55

._crit_edge:                                      ; preds = %._crit_edge.us.us.4, %.preheader59.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav()
  tail call void @_Z8loopInitj(i32 noundef 32)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %.not = icmp ne i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2226 = icmp eq i64 %i.h, 0
  %.not.i.not22 = select i1 %.not, i1 true, i1 %.not.i.not2226
  br i1 %.not.i.not22, label %._crit_edge25, label %.lr.ph24, !prof !39

.lr.ph24:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph24.split, label %.lr.ph24.split.us

.lr.ph24.split.us:                                ; preds = %.lr.ph24
  store i32 0, ptr %i.a, align 4, !tbaa !4
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge, %.lr.ph24.split.us, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

.lr.ph24.split:                                   ; preds = %.lr.ph24, %._crit_edge
  %i.m = phi i64 [ %i.p, %._crit_edge ], [ %i.k, %.lr.ph24 ] ; 2 uses
  %i.n = phi i64 [ %i.q, %._crit_edge ], [ %i.k, %.lr.ph24 ] ; 2 uses
  %.sroa.016.023 = phi i64 [ %i.r, %._crit_edge ], [ %i.h, %.lr.ph24 ]
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph24.split
  %i.p = phi i64 [ %i.m, %.lr.ph24.split ], [ %i.aa, %bb.b ]
  %i.q = phi i64 [ %i.n, %.lr.ph24.split ], [ %i.aa, %bb.b ]
  %i.r = add nsw i64 %.sroa.016.023, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.r, 0
  br i1 %.not.i.not, label %._crit_edge25, label %.lr.ph24.split, !prof !55, !llvm.loop !293

.lr.ph:                                           ; preds = %.lr.ph24.split, %bb.b
  %i.s = phi i64 [ %i.aa, %bb.b ], [ %i.m, %.lr.ph24.split ]
  %1 = phi i32 [ %2, %bb.b ], [ 0, %.lr.ph24.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 1, %.lr.ph24.split ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fcmp olt double %i.u, %i.x
  br i1 %i.y, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph
  %i.z = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.z) #9, !srcloc !60
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4
  %.pre.a = load ptr, ptr %i.i, align 32, !tbaa !40
  %.pre29 = load i64, ptr %.pre.a, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.aa = phi i64 [ %i.s, %.lr.ph ], [ %.pre29, %bb.a ] ; 4 uses
  %2 = phi i32 [ %1, %.lr.ph ], [ %.pre, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, %indvars.iv.next
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !294
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.o, ptr %19, align 8, !tbaa !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.o, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 15, ptr %i.p, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 31
  store i8 0, ptr %i.q, align 1, !tbaa !297
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.n, align 8, !tbaa !298
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  store ptr @_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE, ptr %i.r, align 8, !tbaa !300
  %i.s = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.t = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.s, i64 noundef 171)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.t, i64 noundef 5001)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.u, i64 noundef 44217)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.v, i32 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %19, align 8, !tbaa !325   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.x) #11
  br label %__cxx_global_var_init.1.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %19, align 8, !tbaa !325  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3
  %.sink = phi ptr [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i122 ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i113 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i104 ], [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i100 ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i90 ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i86 ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i81 ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i76 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i66 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i57 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i48 ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i39 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i35 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i30 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i20 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i11 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i131 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i17 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i16 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i26 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i25 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i31 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i36 ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i45 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i44 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i54 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i53 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i63 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i62 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i72 ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i71 ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i77 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i82 ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i87 ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i96 ], [ %i.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i95 ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i101 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i110 ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i109 ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i119 ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i118 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i128 ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i127 ], [ %i.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i137 ], [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i136 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i122 ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i113 ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i104 ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i100 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i90 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i86 ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i81 ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i76 ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i66 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i57 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i48 ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i39 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i35 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i30 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i20 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i11 ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i131 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i17 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i16 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i26 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i25 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i31 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i36 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i45 ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i44 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i54 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i53 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i63 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i62 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i72 ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i71 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i77 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i82 ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i87 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i96 ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i95 ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i101 ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i110 ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i109 ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i119 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i118 ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i128 ], [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i127 ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i137 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i136 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #11
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i127 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i7 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i16 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i25 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i30 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i35 ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i44 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i53 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i62 ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i71 ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i76 ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i81 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i86 ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i95 ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i100 ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i109 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i118 ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i101 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i110 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i8 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i77 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i17 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i136 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i26 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i82 ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i119 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i31 ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i87 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i36 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i45 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i96 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i54 ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i137 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i63 ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i128 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i72 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.1.exit:                     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  store ptr %i.w, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !326
  %i.ac = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.ad, ptr %18, align 8, !tbaa !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ad, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 11, ptr %i.ae, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 27
  store i8 0, ptr %i.af, align 1, !tbaa !297
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %__cxx_global_var_init.1.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.ac, align 8, !tbaa !298
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  store ptr @_ZL11BM_ICCG_RAWRN9benchmark5StateE, ptr %i.ag, align 8, !tbaa !300
  %i.ah = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.ac)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, i64 noundef 171)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aj = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ai, i64 noundef 5001)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.aj, i64 noundef 44217)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, i32 noundef 1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %18, align 8, !tbaa !325  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.am) #11
  br label %__cxx_global_var_init.2.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %__cxx_global_var_init.1.exit
  %.0.i1 = phi i1 [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ true, %__cxx_global_var_init.1.exit ] ; 2 uses
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ap = load ptr, ptr %18, align 8, !tbaa !325  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ap) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  br i1 %.0.i1, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  br i1 %.0.i1, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  store ptr %i.al, ptr @_ZL27benchmark_uniq_3_benchmark_, align 8, !tbaa !326
end_hunk_0
