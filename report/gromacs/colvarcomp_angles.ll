Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_angles?download=true
inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar12dipole_angle10calc_valueEv:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.v:                                             ; preds = %bb.f
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21, %bb.m
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.y:                                             ; preds = %bb.o
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.cm
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.y
  %i.gd = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.x
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.x ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.ga, %bb.y ] ; 2 uses
  %i.gf = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !126
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 2 uses
  %i.gk = load ptr, ptr %9, align 8, !tbaa !124   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !126
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.gp = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.ad
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gr = load i64, ptr %i.ad, align 8, !tbaa !126
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  %i.gt = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.o
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.gv = load i64, ptr %i.o, align 8, !tbaa !126
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.t ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.gx = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !126
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar12dipole_angle14calc_gradientsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1745) initializes((1696, 1744)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !91 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = load double, ptr %i.e, align 8, !tbaa !91 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 6 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !89 ; 5 uses
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !89 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 1
  %i.l = extractelement <2 x double> %i.j, i64 0
  %i.m = extractelement <2 x double> %i.i, i64 0
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 10 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !89 ; 9 uses
  %i.p = shufflevector <2 x double> %i.i, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.q = shufflevector <2 x double> %i.j, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.s)
  %i.u = tail call noundef double @llvm.fmuladd.f64(double %i.d, double %i.f, double %i.t)
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = fdiv double %i.u, %i.v                   ; 2 uses
  %i.x = fneg double %i.w                         ; 4 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double 1.000000e+00)
  %i.z = tail call noundef double @sqrt(double noundef %i.y) #19
  %i.aa = fdiv double -1.000000e+00, %i.z
  %i.ab = fmul double %i.aa, f0x404CA5DC1A63C1F8
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fdiv <2 x double> %i.j, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.i, %i.af
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ag, %i.ah
  %i.aj = fadd <2 x double> %i.ad, %i.ai
  %i.ak = fdiv <2 x double> splat (double 1.000000e+00), %i.o
  %i.al = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 3 uses
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.aj
  store <2 x double> %i.ap, ptr %i.h, align 8, !tbaa !89
  %i.aq = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.ar = fdiv <2 x double> %i.aq, %i.o
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.d, i64 0
  %i.av = fmul <2 x double> %i.au, %i.af
  %i.aw = fmul double %i.k, %i.x
  %i.ax = fmul double %i.f, %i.x
  %i.ay = fdiv <2 x double> %i.av, %i.o
  %i.az = fadd <2 x double> %i.as, %i.ay
  %i.ba = fmul <2 x double> %i.an, %i.az
  store <2 x double> %i.ba, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !89
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 4 uses
  %i.bb = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.o
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.ax, i64 1
  %i.bh = fdiv <2 x double> %i.bg, %i.o
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bj, %i.bi
  store <2 x double> %i.bk, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !120 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1128
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !207
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1120
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !208
  %i.br = fdiv double %i.bo, %i.bq                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1144
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !209 ; 10 uses
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %.preheader68, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 1200
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 1248
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !116 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 1272
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !116 ; 6 uses
  %.idx.i = shl i64 %i.bt, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ca = shl i64 %i.bt, 3                        ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca  ; 4 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 %.idx.i ; 7 uses
  %i.cd = mul i64 %i.bt, 24
  %i.ce = getelementptr i8, ptr %i.bz, i64 %i.cd  ; 4 uses
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.ca  ; 3 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.ca  ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 3 uses
  %i.ci = insertelement <4 x ptr> poison, ptr %i.bz, i64 0
  %i.cj = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x ptr> poison, ptr %i.ce, i64 0
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %i.cf, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %i.cg, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.ch, i64 3
  %i.co = icmp ult <4 x ptr> %i.cj, %i.cn
  %i.cp = insertelement <4 x ptr> poison, ptr %i.cc, i64 0
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.bv, i64 1
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %i.bx, i64 2
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %i.h, i64 3
  %i.ct = insertelement <4 x ptr> poison, ptr %i.cb, i64 0
  %i.cu = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cv = icmp ult <4 x ptr> %i.cs, %i.cu
  %i.cw = and <4 x i1> %i.co, %i.cv
  %bound0133 = icmp ult ptr %i.cb, %i.cf
  %bound1134 = icmp ult ptr %i.bv, %i.cc
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0137 = icmp ult ptr %i.cb, %i.cg
  %bound1138 = icmp ult ptr %i.bx, %i.cc
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0141 = icmp ult ptr %i.cb, %i.ch
  %bound1142 = icmp ult ptr %i.h, %i.cc
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %i.cc, %i.cf
  %bound1146 = icmp ult ptr %i.bv, %i.ce
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %i.cc, %i.cg
  %bound1150 = icmp ult ptr %i.bx, %i.ce
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %i.cc, %i.ch
  %bound1154 = icmp ult ptr %i.h, %i.ce
  %found.conflict155 = and i1 %bound0153, %bound1154
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = icmp ne i4 %i.cx, 0
  %op.rdx = or i1 %i.cy, %found.conflict135
  %op.rdx324 = or i1 %found.conflict139, %found.conflict143
  %op.rdx325 = or i1 %found.conflict147, %found.conflict151
  %op.rdx326 = or i1 %op.rdx, %op.rdx324
  %op.rdx327 = or i1 %op.rdx325, %found.conflict155
  %op.rdx328 = or i1 %op.rdx326, %op.rdx327
  br i1 %op.rdx328, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, -2                      ; 3 uses
  %i.cz = load <1 x double>, ptr %i.h, align 8
  %broadcast.splat159.a = shufflevector <1 x double> %i.cz, <1 x double> poison, <2 x i32> zeroinitializer
  %i.da = load <1 x double>, ptr %.sroa.466.0..sroa_idx, align 8
  %broadcast.splat161.a = shufflevector <1 x double> %i.da, <1 x double> poison, <2 x i32> zeroinitializer
  %i.db = load <1 x double>, ptr %.sroa.567.0..sroa_idx, align 8
  %broadcast.splat163 = shufflevector <1 x double> %i.db, <1 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index
  %wide.load = load <2 x double>, ptr %i.dc, align 8, !tbaa !89, !alias.scope !210
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index
  %wide.load157 = load <2 x double>, ptr %i.dd, align 8, !tbaa !89, !alias.scope !211
  %i.de = fneg <2 x double> %wide.load157
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %broadcast.splat, <2 x double> %wide.load) ; 3 uses
  %i.dg = fmul <2 x double> %i.df, %broadcast.splat159.a
  %i.dh = fmul <2 x double> %i.df, %broadcast.splat161.a
  %i.di = fmul <2 x double> %i.df, %broadcast.splat163
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 3 uses
  store <2 x double> %i.dg, ptr %i.dj, align 8, !tbaa !89, !alias.scope !212, !noalias !213
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.bt
  store <2 x double> %i.dh, ptr %i.dk, align 8, !tbaa !89, !alias.scope !214, !noalias !215
  %i.dl = getelementptr i8, ptr %i.dj, i64 %.idx.i
  store <2 x double> %i.di, ptr %i.dl, align 8, !tbaa !89, !alias.scope !216, !noalias !215
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.preheader68, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.02769.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader68:                                     ; preds = %scalar.ph, %middle.block, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !121 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1144
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !209 ; 10 uses
  %.not74 = icmp eq i64 %i.dq, 0
  br i1 %.not74, label %.preheader, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader68
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1320
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !116 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1272
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !116 ; 8 uses
  %.idx.i28 = shl i64 %i.dq, 4                    ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.dq, 18
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph71
  %i.dv = shl i64 %i.dq, 3                        ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.dv  ; 5 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 %.idx.i28 ; 5 uses
  %i.dy = mul i64 %i.dq, 24
  %i.dz = getelementptr i8, ptr %i.du, i64 %i.dy  ; 3 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 %i.dv  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 3 uses
  %bound0201 = icmp ult ptr %i.du, %i.dz
  %bound1202 = icmp ult ptr %i.dx, %i.dw
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0204.a = icmp ult ptr %i.du, %i.ea
  %bound1205.a = icmp ult ptr %i.ds, %i.dw
  %found.conflict206.a = and i1 %bound0204.a, %bound1205.a
  %conflict.rdx207.a = or i1 %found.conflict203, %found.conflict206.a
  %bound0208.a = icmp ult ptr %i.du, %i.eb
  %bound1209.a = icmp ult ptr %i.n, %i.dw
  %found.conflict210.a = and i1 %bound0208.a, %bound1209.a
  %conflict.rdx211.a = or i1 %conflict.rdx207.a, %found.conflict210.a
  %bound0212.a = icmp ult ptr %i.dw, %i.ea
  %bound1213.a = icmp ult ptr %i.ds, %i.dx
  %found.conflict214.a = and i1 %bound0212.a, %bound1213.a
  %conflict.rdx215.a = or i1 %conflict.rdx211.a, %found.conflict214.a
  %bound0216.a = icmp ult ptr %i.dw, %i.eb
  %bound1217.a = icmp ult ptr %i.n, %i.dx
  %found.conflict218.a = and i1 %bound0216.a, %bound1217.a
  %conflict.rdx219.a = or i1 %conflict.rdx215.a, %found.conflict218.a
  %bound0220.a = icmp ult ptr %i.dx, %i.ea
  %bound1221.a = icmp ult ptr %i.ds, %i.dz
  %found.conflict222.a = and i1 %bound0220.a, %bound1221.a
  %conflict.rdx223.a = or i1 %conflict.rdx219.a, %found.conflict222.a
  %bound0224 = icmp ult ptr %i.dx, %i.eb
  %bound1225 = icmp ult ptr %i.n, %i.dz
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx223.a, %found.conflict226
  br i1 %conflict.rdx227, label %scalar.ph198.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck200
  %n.vec229 = and i64 %i.dq, -4                   ; 3 uses
  %broadcast.splatinsert230 = load <2 x double>, ptr %i.n, align 8
  %broadcast.splatinsert232 = load <2 x double>, ptr %.sroa.452.0..sroa_idx, align 8
  %i.ec = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !alias.scope !220, !noalias !221
  %i.ed = fneg <2 x double> %broadcast.splatinsert230
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = fneg <2 x double> %broadcast.splatinsert232
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.scalar = fneg double %i.ec
  %i.eh = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph228
  %index237 = phi i64 [ 0, %vector.ph228 ], [ %index.next240, %vector.body236 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index237 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load238 = load <2 x double>, ptr %i.ej, align 8, !tbaa !89, !alias.scope !222 ; 3 uses
  %wide.load239 = load <2 x double>, ptr %i.ek, align 8, !tbaa !89, !alias.scope !222 ; 3 uses
  %i.el = fmul <2 x double> %wide.load238, %i.ee
  %i.em = fmul <2 x double> %wide.load239, %i.ee
  %i.en = fmul <2 x double> %wide.load238, %i.eg
  %i.eo = fmul <2 x double> %wide.load239, %i.eg
  %i.ep = fmul <2 x double> %wide.load238, %i.ei
  %i.eq = fmul <2 x double> %wide.load239, %i.ei
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index237 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x double> %i.el, ptr %i.er, align 8, !tbaa !89, !alias.scope !223, !noalias !224
  store <2 x double> %i.em, ptr %i.es, align 8, !tbaa !89, !alias.scope !223, !noalias !224
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %i.dq ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  store <2 x double> %i.en, ptr %i.et, align 8, !tbaa !89, !alias.scope !225, !noalias !226
  store <2 x double> %i.eo, ptr %i.eu, align 8, !tbaa !89, !alias.scope !225, !noalias !226
  %i.ev = getelementptr i8, ptr %i.er, i64 %.idx.i28 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  store <2 x double> %i.ep, ptr %i.ev, align 8, !tbaa !89, !alias.scope !227, !noalias !226
  store <2 x double> %i.eq, ptr %i.ew, align 8, !tbaa !89, !alias.scope !227, !noalias !226
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next240, %n.vec229
  br i1 %i.ex, label %middle.block241, label %vector.body236, !llvm.loop !186

middle.block241:                                  ; preds = %vector.body236
  %cmp.n242 = icmp eq i64 %i.dq, %n.vec229
  br i1 %cmp.n242, label %.preheader, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %vector.memcheck200, %.lr.ph71, %middle.block241
  %.02670.ph = phi i64 [ 0, %vector.memcheck200 ], [ 0, %.lr.ph71 ], [ %n.vec229, %middle.block241 ]
  br label %scalar.ph198

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02769 = phi i64 [ %i.fp, %scalar.ph ], [ %.02769.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.02769
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !89
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02769
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !89
  %i.fc = fneg double %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.br, double %i.ez) ; 2 uses
  %i.fe = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !228
  %i.ff = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fg, %i.fe          ; 2 uses
  %i.fi = load double, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !91, !noalias !228
  %i.fj = fmul double %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.02769 ; 3 uses
  %i.fl = extractelement <2 x double> %i.fh, i64 0
  store double %i.fl, ptr %i.fk, align 8, !tbaa !89
  %i.fm = getelementptr [8 x i8], ptr %i.fk, i64 %i.bt
  %i.fn = extractelement <2 x double> %i.fh, i64 1
  store double %i.fn, ptr %i.fm, align 8, !tbaa !89
  %i.fo = getelementptr i8, ptr %i.fk, i64 %.idx.i
  store double %i.fj, ptr %i.fo, align 8, !tbaa !89
  %i.fp = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %i.bt
  br i1 %exitcond.not, label %.preheader68, label %scalar.ph, !llvm.loop !189

.preheader:                                       ; preds = %scalar.ph198, %middle.block241, %.preheader68
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !122 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1144
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !209 ; 10 uses
  %.not75 = icmp eq i64 %i.ft, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 1320
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !116 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 1272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !116 ; 8 uses
  %.idx.i29 = shl i64 %i.ft, 4                    ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.ft, 20
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck280

vector.memcheck280:                               ; preds = %.lr.ph73
  %i.fy = shl i64 %i.ft, 3                        ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fx, i64 %i.fy  ; 5 uses
  %i.ga = getelementptr i8, ptr %i.fx, i64 %.idx.i29 ; 5 uses
  %i.gb = mul i64 %i.ft, 24
  %i.gc = getelementptr i8, ptr %i.fx, i64 %i.gb  ; 3 uses
  %i.gd = getelementptr i8, ptr %i.fv, i64 %i.fy  ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 3 uses
  %bound0281 = icmp ult ptr %i.fx, %i.gc
  %bound1282 = icmp ult ptr %i.ga, %i.fz
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0284 = icmp ult ptr %i.fx, %i.gd
  %bound1285 = icmp ult ptr %i.fv, %i.fz
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %found.conflict283, %found.conflict286
  %bound0288 = icmp ult ptr %i.fx, %i.ge
  %bound1289 = icmp ult ptr %i.n, %i.fz
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %i.fz, %i.gd
  %bound1293 = icmp ult ptr %i.fv, %i.ga
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.fz, %i.ge
  %bound1297 = icmp ult ptr %i.n, %i.ga
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.ga, %i.gd
  %bound1301 = icmp ult ptr %i.fv, %i.gc
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %i.ga, %i.ge
  %bound1305 = icmp ult ptr %i.n, %i.gc
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  br i1 %conflict.rdx307, label %scalar.ph278.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck280
  %n.vec309 = and i64 %i.ft, -4                   ; 3 uses
  %i.gf = load <1 x double>, ptr %i.n, align 8
  %broadcast.splat315 = shufflevector <1 x double> %i.gf, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gg = load <1 x double>, ptr %.sroa.452.0..sroa_idx, align 8
  %broadcast.splat317 = shufflevector <1 x double> %i.gg, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !alias.scope !229, !noalias !230
  %broadcast.splatinsert318 = insertelement <2 x double> poison, double %i.gh, i64 0
  %broadcast.splat319 = shufflevector <2 x double> %broadcast.splatinsert318, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next320, %vector.body310 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %index311 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load312 = load <2 x double>, ptr %i.gi, align 8, !tbaa !89, !alias.scope !231 ; 3 uses
  %wide.load313 = load <2 x double>, ptr %i.gj, align 8, !tbaa !89, !alias.scope !231 ; 3 uses
  %i.gk = fmul <2 x double> %wide.load312, %broadcast.splat315
  %i.gl = fmul <2 x double> %wide.load313, %broadcast.splat315
  %i.gm = fmul <2 x double> %wide.load312, %broadcast.splat317
  %i.gn = fmul <2 x double> %wide.load313, %broadcast.splat317
  %i.go = fmul <2 x double> %wide.load312, %broadcast.splat319
  %i.gp = fmul <2 x double> %wide.load313, %broadcast.splat319
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index311 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <2 x double> %i.gk, ptr %i.gq, align 8, !tbaa !89, !alias.scope !232, !noalias !233
  store <2 x double> %i.gl, ptr %i.gr, align 8, !tbaa !89, !alias.scope !232, !noalias !233
  %i.gs = getelementptr [8 x i8], ptr %i.gq, i64 %i.ft ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store <2 x double> %i.gm, ptr %i.gs, align 8, !tbaa !89, !alias.scope !234, !noalias !235
  store <2 x double> %i.gn, ptr %i.gt, align 8, !tbaa !89, !alias.scope !234, !noalias !235
  %i.gu = getelementptr i8, ptr %i.gq, i64 %.idx.i29 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  store <2 x double> %i.go, ptr %i.gu, align 8, !tbaa !89, !alias.scope !236, !noalias !235
  store <2 x double> %i.gp, ptr %i.gv, align 8, !tbaa !89, !alias.scope !236, !noalias !235
  %index.next320 = add nuw i64 %index311, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next320, %n.vec309
  br i1 %i.gw, label %middle.block321, label %vector.body310, !llvm.loop !198

middle.block321:                                  ; preds = %vector.body310
  %cmp.n322 = icmp eq i64 %i.ft, %n.vec309
  br i1 %cmp.n322, label %._crit_edge, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck280, %.lr.ph73, %middle.block321
  %.072.ph = phi i64 [ 0, %vector.memcheck280 ], [ 0, %.lr.ph73 ], [ %n.vec309, %middle.block321 ]
  br label %scalar.ph278

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %.02670 = phi i64 [ %i.hm, %scalar.ph198 ], [ %.02670.ph, %scalar.ph198.preheader ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.02670
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !89 ; 2 uses
  %i.gz = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !221
  %i.ha = load <2 x double>, ptr %i.n, align 8, !tbaa !89, !noalias !221
  %i.hb = fneg <2 x double> %i.ha
  %i.hc = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x double> %i.hd, %i.hb          ; 2 uses
  %i.hf = fneg double %i.gz
  %i.hg = fmul double %i.gy, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.02670 ; 3 uses
  %i.hi = extractelement <2 x double> %i.he, i64 0
  store double %i.hi, ptr %i.hh, align 8, !tbaa !89
  %i.hj = getelementptr [8 x i8], ptr %i.hh, i64 %i.dq
  %i.hk = extractelement <2 x double> %i.he, i64 1
  store double %i.hk, ptr %i.hj, align 8, !tbaa !89
  %i.hl = getelementptr i8, ptr %i.hh, i64 %.idx.i28
  store double %i.hg, ptr %i.hl, align 8, !tbaa !89
  %i.hm = add nuw i64 %.02670, 1                  ; 2 uses
  %exitcond76.not = icmp eq i64 %i.hm, %i.dq
  br i1 %exitcond76.not, label %.preheader, label %scalar.ph198, !llvm.loop !199

._crit_edge:                                      ; preds = %scalar.ph278, %middle.block321, %.preheader
  ret void

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %.072 = phi i64 [ %i.ia, %scalar.ph278 ], [ %.072.ph, %scalar.ph278.preheader ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.072
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !89 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.n, align 8, !tbaa !89, !noalias !230
  %i.hq = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hr, %i.hp          ; 2 uses
  %i.ht = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !230
  %i.hu = fmul double %i.ho, %i.ht
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.072 ; 3 uses
  %i.hw = extractelement <2 x double> %i.hs, i64 0
  store double %i.hw, ptr %i.hv, align 8, !tbaa !89
  %i.hx = getelementptr [8 x i8], ptr %i.hv, i64 %i.ft
  %i.hy = extractelement <2 x double> %i.hs, i64 1
  store double %i.hy, ptr %i.hx, align 8, !tbaa !89
  %i.hz = getelementptr i8, ptr %i.hv, i64 %.idx.i29
  store double %i.hu, ptr %i.hz, align 8, !tbaa !89
  %i.ia = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond77.not = icmp eq i64 %i.ia, %i.ft
  br i1 %exitcond77.not, label %._crit_edge, label %scalar.ph278, !llvm.loop !200
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1745) %i.a, i64 noundef 1752) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar8dihedralD0Ev(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1713) dereferenceable(1713) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1720) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar8dihedral4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1713) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6colvar3cvc4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.b, ptr %i.c, align 8, !tbaa !128
  %i.d = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.f, ptr %i.g, align 8, !tbaa !130
  %i.h = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, i1 noundef zeroext false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.h, ptr %i.i, align 8, !tbaa !131
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = or i32 %i.m, %i.a
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(1713) initializes((600, 608), (1640, 1712)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %5 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %6 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 417
  %i.p = load i8, ptr %i.o, align 1, !tbaa !102, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !91, !noalias !247
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !91, !noalias !247
  %i.v = fsub double %i.s, %i.u
  %i.w = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !247
  %i.x = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !247
  %i.y = fsub <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !89, !alias.scope !247
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.v, ptr %i.z, align 16, !tbaa !91, !alias.scope !247
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.n, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 417
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre6 = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !91, !noalias !248
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !91, !noalias !248
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !248
  %i.al = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !248
  %i.am = fsub <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !89, !alias.scope !248
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.an, align 16, !tbaa !91, !alias.scope !248
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %.pre6, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !102, !range !103, !noundef !104
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 16, !tbaa !91, !noalias !249
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !91, !noalias !249
  %i.ax = fsub double %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %4, align 16, !tbaa !89, !noalias !249
  %i.az = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !249
  %i.ba = fsub <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !89, !alias.scope !249
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ax, ptr %i.bb, align 16, !tbaa !91, !alias.scope !249
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !89, !noalias !250 ; 4 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !89, !noalias !104 ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.ab, align 8, !tbaa !89, !noalias !250 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !250 ; 7 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bo, <2 x double> %i.bn) ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.br = fneg <2 x double> %i.bq
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bf, align 8, !tbaa !89, !noalias !251 ; 4 uses
  %i.bx = load <2 x double>, ptr %i.bc, align 8, !tbaa !89, !noalias !251 ; 2 uses
  %i.by = shufflevector <2 x double> %i.bh, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.by, <2 x double> %i.bu) ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.cb = fneg <2 x double> %i.ca
  %i.cc = fmul <2 x double> %i.bx, %i.cb
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bw, <2 x double> %i.cc) ; 2 uses
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = shufflevector <2 x double> %i.cd, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cg)
  %i.ck = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x double> %i.cd, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cj) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bk, %i.bk
  %i.cn = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.co = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.cn)
  %i.cp = call noundef double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.co)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cp)
  %i.cq = extractelement <2 x double> %i.cm, i64 1
  %i.cr = fmul double %sqrt.i, %i.cq
  %i.cs = extractelement <2 x double> %i.cm, i64 0
  %i.ct = call noundef double @atan2(double noundef %i.cr, double noundef %i.cs) #19
  %i.cu = fmul double %i.ct, f0x404CA5DC1A63C1F8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.cu, ptr %i.cw, align 8, !tbaa !90
  %i.cx = load ptr, ptr %0, align 8, !tbaa !88
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1713) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load double, ptr %i.a, align 8, !tbaa !105, !noalias !264 ; 3 uses
  %i.g = fneg double %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !89, !noalias !104 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !265 ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = fneg double %i.k
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = extractelement <2 x double> %i.l, i64 1
  %i.r = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.u = load <2 x double>, ptr %i.c, align 8, !tbaa !89, !noalias !264 ; 3 uses
  %i.v = load double, ptr %i.e, align 8, !tbaa !91, !noalias !264 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = load <2 x double>, ptr %i.b, align 8, !tbaa !89, !noalias !264 ; 9 uses
  %i.y = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = extractelement <2 x double> %i.x, i64 1
  %i.ad = fneg <2 x double> %i.x                  ; 2 uses
  %i.ae = fneg <2 x double> %i.u
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ag = fmul <2 x double> %i.x, %i.af
  %i.ah = insertelement <2 x double> %i.ab, double %i.f, i64 0
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ab, <2 x double> %i.ag) ; 3 uses
  %i.aj = insertelement <2 x double> %i.y, double %i.g, i64 0
  %i.ak = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ak, <2 x double> %i.aa) ; 4 uses
  %i.am = shufflevector <2 x double> %i.j, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.an = fmul <2 x double> %i.j, %i.am
  %i.ao = shufflevector <2 x double> %i.ad, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.m, <2 x double> %i.an) ; 4 uses
  %i.aq = extractelement <2 x double> %i.ai, i64 1
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.aq)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ar) ; 2 uses
  %i.as = fmul double %sqrt.i, f0x404CA5DC1A63C1F8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.q, double %i.p) ; 3 uses
  %i.aw = shufflevector <2 x double> %i.ap, <2 x double> %i.al, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw
  %i.ay = insertelement <2 x double> %i.al, double %i.av, i64 0 ; 2 uses
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ay, <2 x double> %i.ax)
  %i.ba = shufflevector <2 x double> %i.ap, <2 x double> %i.ai, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ba, <2 x double> %i.az) ; 2 uses
  %i.bc = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = shufflevector <2 x double> %i.l, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = insertelement <2 x double> %i.r, double %i.f, i64 1
  %i.bg = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = insertelement <2 x double> %i.m, double %i.v, i64 1
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.ak, <2 x double> %i.bh)
  %i.bk = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bb
  %i.bn = fdiv <2 x double> %i.bj, %i.bm          ; 3 uses
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x double> %i.al, %i.bo
  %i.bq = insertelement <2 x double> %i.ap, double %i.av, i64 1
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %i.bt = fmul <2 x double> %i.ba, %i.bn
  %i.bu = fadd <2 x double> %i.bp, %i.bs
  %i.bv = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bt)
  %i.bw = fmul <2 x double> %i.bu, splat (double f0x404CA5DC1A63C1F8) ; 2 uses
  %i.bx = fmul double %i.bv, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fdiv <2 x double> %i.bz, %i.bb          ; 4 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x double> %i.al, %i.cb          ; 2 uses
  %shift = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ai, %shift
  %i.cd = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ce = extractelement <2 x double> %i.ca, i64 0
  %i.cf = fmul double %i.av, %i.ce                ; 2 uses
  %i.cg = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.ap, %i.cg          ; 3 uses
  store double %i.cf, ptr %1, align 8, !tbaa !105, !alias.scope !266
  store <2 x double> %i.ch, ptr %i.i, align 8, !tbaa !89, !alias.scope !266
  %i.ci = fneg <2 x double> %i.cc
  %i.cj = fneg double %i.cd
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ck, ptr %2, align 16, !tbaa !89, !alias.scope !267
  store double %i.cj, ptr %i.at, align 16, !tbaa !91, !alias.scope !267
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cm = fadd <2 x double> %i.cc, %i.bw
  %i.cn = fadd double %i.cd, %i.bx
  %i.co = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.co, ptr %3, align 16, !tbaa !89, !alias.scope !268
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.cn, ptr %i.cp, align 16, !tbaa !91, !alias.scope !268
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cs = extractelement <2 x double> %i.ch, i64 1
  %i.ct = fneg double %i.cs
  %i.cu = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = fsub double %i.ct, %i.bx
  %i.cw = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cx = insertelement <2 x double> %i.cw, double %i.cf, i64 0
  %i.cy = fneg <2 x double> %i.cx
  %i.cz = fsub <2 x double> %i.cy, %i.cu
  store <2 x double> %i.cz, ptr %4, align 16, !tbaa !89, !alias.scope !269
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.cv, ptr %i.da, align 16, !tbaa !91, !alias.scope !269
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !131
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1713) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %3 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load <6 x double>, ptr %i.a, align 8, !tbaa !89, !noalias !104 ; 4 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !105, !noalias !276
  %i.f = load double, ptr %i.b, align 8, !tbaa !106, !noalias !277
  %i.g = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.i, <2 x double> %i.h)
  %i.k = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 2, i32 5> ; 3 uses
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.k, <2 x double> %i.j) ; 2 uses
  %i.m = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.l) ; 4 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fcmp ogt <2 x double> %i.l, zeroinitializer ; 3 uses
  %i.p = insertelement <2 x double> %i.k, double %i.e, i64 1
  %i.q = fdiv <2 x double> %i.p, %i.m
  %i.r = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.s = fdiv <2 x double> %i.r, %i.m
  %i.t = insertelement <2 x double> %i.g, double %i.f, i64 0
  %i.u = fdiv <2 x double> %i.t, %i.m
  %i.v = select <2 x i1> %i.o, <2 x double> %i.u, <2 x double> zeroinitializer ; 5 uses
  %i.w = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !89, !noalias !278 ; 3 uses
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = extractelement <2 x double> %i.v, i64 0
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = extractelement <2 x double> %i.v, i64 1 ; 3 uses
  %i.af = load double, ptr %i.x, align 8, !tbaa !105, !noalias !278
  %i.ag = select <2 x i1> %i.o, <2 x double> %i.q, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 6 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fneg double %i.ah                       ; 2 uses
  %i.aj = fneg double %i.ae                       ; 2 uses
  %i.ak = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = fmul <2 x double> %i.ak, %i.am
  %i.ao = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x double> %i.ao, double %i.ai, i64 0
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ag, <2 x double> %i.an) ; 3 uses
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar
  %i.at = shufflevector <2 x double> %i.z, <2 x double> %i.aq, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.au = extractelement <2 x double> %i.ag, i64 0
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.au, double %i.ad)
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.af, i64 1 ; 3 uses
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %i.as)
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %i.ay) ; 2 uses
  %i.ba = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.az) ; 4 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fdiv <2 x double> %i.z, %i.bb
  %i.bd = fcmp ogt <2 x double> %i.az, zeroinitializer ; 3 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 1
  %i.bf = fdiv <2 x double> %i.ax, %i.ba          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1
  %.sink4.i15 = select i1 %i.be, double %i.bg, double 1.000000e+00 ; 2 uses
  %i.bh = shufflevector <2 x i1> %i.bd, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.bc, <2 x double> zeroinitializer ; 5 uses
  %i.bj = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x double> %i.aq, %i.bj          ; 2 uses
  %i.bl = extractelement <2 x i1> %i.bd, i64 0    ; 3 uses
  %i.bm = extractelement <2 x double> %i.bf, i64 0
  %.sink4.i20 = select i1 %i.bl, double %i.bm, double 1.000000e+00 ; 2 uses
  %i.bn = extractelement <2 x double> %i.bk, i64 0
  %.sink3.i21 = select i1 %i.bl, double %i.bn, double 0.000000e+00 ; 2 uses
  %i.bo = extractelement <2 x double> %i.bk, i64 1
  %.sink.i22 = select i1 %i.bl, double %i.bo, double 0.000000e+00 ; 2 uses
  %i.bp = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = shufflevector <2 x double> %i.v, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.br = fmul <2 x double> %i.bp, %i.bq
  %i.bs = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = insertelement <2 x double> %i.w, double %.sink4.i15, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bt, <2 x double> %i.br)
  %i.bv = shufflevector <2 x double> %i.ag, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.bv, <2 x double> %i.bu) ; 2 uses
  %i.bx = fneg <2 x double> %i.bw
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bw, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %i.ca = tail call noundef double @sqrt(double noundef %i.bz) #19
  %i.cb = fmul double %i.n, %i.ca                 ; 2 uses
  %i.cc = extractelement <2 x double> %i.by, i64 1
  %i.cd = tail call noundef double @sqrt(double noundef %i.cc) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !128
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 353
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cl = fmul double %i.cb, f0x3F91DF46A2529D39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !128
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.cm)
  %i.cn = load double, ptr %1, align 8, !tbaa !105
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !106
  %i.cq = fmul double %.sink3.i21, %i.cp
  %i.cr = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.cn, double %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !91
  %i.cu = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.ct, double %i.cr)
  %i.cv = fmul double %i.cl, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cw = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x double> poison, double %.sink4.i15, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> %i.w, double %i.aj, i64 0
  %i.da = fmul <2 x double> %i.cy, %i.cz
  %i.db = extractelement <2 x double> %i.bi, i64 0
  %i.dc = fmul double %i.db, %i.ab
  %i.dd = extractelement <2 x double> %i.bi, i64 1
  %i.de = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.dd, double %i.dc) ; 3 uses
  %i.df = insertelement <2 x double> %i.cw, double %i.ai, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.bi, <2 x double> %i.da) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.dg, %i.dg
  %i.dh = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.dh)
  %i.dj = extractelement <2 x double> %i.dg, i64 0 ; 2 uses
  %i.dk = tail call noundef double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.di) ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 0.000000e+00     ; 3 uses
  %sqrt.i.i23 = tail call double @llvm.sqrt.f64(double %i.dk) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %sqrt.i.i23, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dg, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %.sink.i26 = select i1 %i.dl, double %i.dp, double 0.000000e+00
  %i.dq = extractelement <2 x double> %i.do, i64 1
  %.sink3.i25 = select i1 %i.dl, double %i.dq, double 0.000000e+00
  %i.dr = fdiv double %i.de, %sqrt.i.i23
  %.sink4.i24 = select i1 %i.dl, double %i.dr, double 1.000000e+00
  %i.ds = extractelement <2 x double> %i.ba, i64 1
  %i.dt = fmul double %i.cd, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !131
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.dw = load ptr, ptr %i.ce, align 8, !tbaa !128
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.dw)
  %i.dx = load double, ptr %2, align 8, !tbaa !105
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !106
  %i.ea = fmul double %.sink3.i21, %i.dz
  %i.eb = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.dx, double %i.ea)
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !91
  %i.ee = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.ed, double %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !131
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1712) %i.ef)
  %i.eg = load double, ptr %3, align 8, !tbaa !105
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !106
  %i.ej = fmul double %.sink3.i25, %i.ei
  %i.ek = call double @llvm.fmuladd.f64(double %.sink4.i24, double %i.eg, double %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load double, ptr %i.el, align 8, !tbaa !91
  %i.en = call noundef double @llvm.fmuladd.f64(double %.sink.i26, double %i.em, double %i.ek)
  %i.eo = fmul double %i.dt, %i.en
  %i.ep = call double @llvm.fmuladd.f64(double %i.cb, double %i.ee, double %i.eo)
  %i.eq = fmul double %i.ep, f0x3F81DF46A2529D39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.cv, %bb.b ], [ %i.eq, %bb.c ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double %.sink, ptr %i.er, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %class.colvarvalue, align 8         ; 23 uses
  %i.c = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !89
  call void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108
  store i32 %i.e, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.f = load i32, ptr %1, align 8, !tbaa !108
  store i32 %i.f, ptr %i.b, align 4, !tbaa !109
  %i.g = invoke noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.h = load i32, ptr %1, align 8, !tbaa !108    ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !108
  switch i32 %i.h, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double %i.j, ptr %i.k, align 8, !tbaa !110
  br label %_ZN11colvarvalueaSERKS_.exit

bb.c:                                             ; preds = %.noexc, %.noexc, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !99
  br label %_ZN11colvarvalueaSERKS_.exit

bb.d:                                             ; preds = %.noexc, %.noexc
end_hunk_0
begin_hunk_1_@_ZN6colvar5angleC2ERKN12colvarmodule10atom_group11simple_atomES5_S5_:bb.a
  br label %bb.w

bb.t:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit14
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.i, %bb.h, %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit15
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.w, %bb.u ], [ %i.v, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.u, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.t, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q, %bb.p, %bb.o, %bb.n
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.n ], [ %.pn.pn.pn, %bb.x ], [ %i.s, %bb.q ], [ %i.r, %bb.p ], [ %i.q, %bb.o ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %0) #19
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN12colvarmodule10atom_groupC1Ev(ptr noundef nonnull align 8 dereferenceable(1712)) unnamed_addr #0

declare noundef i32 @_ZN12colvarmodule10atom_group13atom_modifier8add_atomERKNS0_11simple_atomE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #7

declare void @_ZN6colvar3cvc19register_atom_groupEPN12colvarmodule10atom_groupE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef) local_unnamed_addr #0

declare void @_ZN12colvarmodule10atom_group13atom_modifierC1EPS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #0

declare void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind writable sret(%"class.colvarmodule::rvector") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #11

declare void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712)) local_unnamed_addr #0

declare void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind writable sret(%"class.colvarmodule::rvector") align 8, ptr noundef nonnull align 8 dereferenceable(1712)) local_unnamed_addr #0

declare void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #20
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117
  %.not.i.i.i4 = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !117
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN12colvarmodule8vector1dIdED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ad) #20
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit

_ZN12colvarmodule8vector1dIdED2Ev.exit:           ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !109    ; 6 uses
  switch i32 %i.a, label %bb.c [
    i32 0, label %bb.x
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !109    ; 2 uses
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.x, label %.thread76

bb.c:                                             ; preds = %bb.a
  %.pr = load i32, ptr %1, align 4, !tbaa !109    ; 3 uses
  %i.d = icmp eq i32 %.pr, 3
  %i.e = icmp eq i32 %i.a, 4
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.a, 5
  %i.g = icmp eq i32 %.pr, 6
  %or.cond77 = and i1 %i.f, %i.g
  br i1 %or.cond77, label %bb.x, label %.thread76

.thread76:                                        ; preds = %bb.b, %bb.d
  %i.h = phi i32 [ %.pr, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %i.i = icmp eq i32 %i.h, 5
  %i.j = icmp eq i32 %i.a, 6
  %or.cond78 = and i1 %i.j, %i.i
  %.not22 = icmp eq i32 %i.a, %i.h
  %or.cond79 = or i1 %.not22, %or.cond78
  br i1 %or.cond79, label %bb.x, label %bb.e

bb.e:                                             ; preds = %.thread76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.k = load ptr, ptr %6, align 8, !tbaa !124, !noalias !289
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !125, !noalias !289 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !123, !alias.scope !290
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !125, !alias.scope !290
  store i8 0, ptr %i.n, align 8, !tbaa !126, !alias.scope !290
  %i.p = add i64 %i.m, 43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !125, !alias.scope !290
  %i.r = add i64 %i.q, -4611686018427387861
  %i.s = icmp ult i64 %i.r, 43
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, i64 noundef 43)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !125, !alias.scope !290
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.m
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !124, !alias.scope !290 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !125, !noalias !291
  %i.ac = add i64 %i.ab, -4611686018427387884
  %i.ad = icmp ult i64 %i.ac, 20
  br i1 %i.ad, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, i64 noundef 20)
          to label %.noexc28 unwind label %bb.s   ; 6 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !123, !alias.scope !291
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !125 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc28
  store ptr %i.ag, ptr %4, align 8, !tbaa !124, !alias.scope !291
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !126
  store i64 %i.an, ptr %i.af, align 8, !tbaa !126, !alias.scope !291
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !125
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.ao = phi i64 [ %i.ak, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !125, !alias.scope !291
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !124
  store i64 0, ptr %i.ap, align 8, !tbaa !125
  store i8 0, ptr %i.ah, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ar = load i32, ptr %0, align 4, !tbaa !109
  invoke void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.ar)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !125, !noalias !292 ; 2 uses
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !125, !noalias !292
  %i.av = sub i64 4611686018427387903, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.ax = load ptr, ptr %7, align 8, !tbaa !124, !noalias !292
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ax, i64 noundef %i.at)
          to label %.noexc33 unwind label %bb.u   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !123, !alias.scope !292
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.m:                                             ; preds = %.noexc33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !125 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.noexc33
  store ptr %i.ba, ptr %3, align 8, !tbaa !124, !alias.scope !292
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !126
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !126, !alias.scope !292
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i31 = load i64, ptr %.phi.trans.insert.i30, align 8, !tbaa !125
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.m
  %i.bi = phi i64 [ %i.be, %bb.m ], [ %.pre.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !125, !alias.scope !292
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !124
  store i64 0, ptr %i.bj, align 8, !tbaa !125
  store i8 0, ptr %i.bb, align 8, !tbaa !126
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !125, !noalias !293
  %i.bm = add i64 %i.bl, -4611686018427387901
  %i.bn = icmp ult i64 %i.bm, 3
  br i1 %i.bn, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc38 unwind label %bb.v

.noexc38:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34: ; preds = %bb.n
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, i64 noundef 3)
          to label %.noexc39 unwind label %bb.v   ; 6 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !123, !alias.scope !293
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !124 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.p:                                             ; preds = %.noexc39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !125 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.noexc39
  store ptr %i.bq, ptr %2, align 8, !tbaa !124, !alias.scope !293
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !126
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !126, !alias.scope !293
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.pre.i37 = load i64, ptr %.phi.trans.insert.i36, align 8, !tbaa !125
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %i.by = phi i64 [ %i.bu, %bb.p ], [ %.pre.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !125, !alias.scope !293
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !124
  store i64 0, ptr %i.bz, align 8, !tbaa !125
  store i8 0, ptr %i.br, align 8, !tbaa !126
  %i.cb = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1)
          to label %bb.r unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr %2, align 8, !tbaa !124   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bp
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.r
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.cg = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.az
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = load i64, ptr %i.az, align 8, !tbaa !126
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ck = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !126
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cp = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.af
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cr = load i64, ptr %i.af, align 8, !tbaa !126
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ct = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !126
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.cx = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !126
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.x

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.t:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34, %bb.o
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.w:                                             ; preds = %bb.q
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !124   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bp
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.w
  %i.dj = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.v
  %.pn = phi { ptr, i32 } [ %i.df, %bb.v ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.dg, %bb.w ] ; 2 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.az
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.dn = load i64, ptr %i.az, align 8, !tbaa !126
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.dp = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !126
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.du = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.af
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.dw = load i64, ptr %i.af, align 8, !tbaa !126
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.s ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.n
  br i1 %i.dz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.g
  %.sink = phi ptr [ %i.z, %bb.g ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.y, %bb.g ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %i.ea = load i64, ptr %i.n, align 8, !tbaa !126
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eb) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  %i.ec = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %.body
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !126
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.x:                                             ; preds = %.thread76, %bb.d, %bb.c, %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.020 = phi i32 [ %i.a, %bb.a ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ 0, %bb.b ], [ 0, %.thread76 ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.020
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE11_M_allocateEm.exit.i, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !133

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.r, ptr %i.o, align 4, !tbaa !109
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !114    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #20
  br label %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !115
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !294  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !133

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !114
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !294 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !114
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !294
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !109
  br label %_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !133

bb.r:                                             ; preds = %_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN11colvarvalue4TypeES2_ET0_T_S4_S3_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !109
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !294
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11colvarvalue4TypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295
  %i.c = load ptr, ptr %1, align 8, !tbaa !112    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !133

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !296
  store i32 %i.r, ptr %i.o, align 4, !tbaa !296
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #20
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !113
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !295  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !296
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !296
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !133

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !112
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !295 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !112
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !295
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !296
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !296
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !133

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !296
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !296
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !295
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #0

declare noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

declare void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = load ptr, ptr %1, align 8, !tbaa !116    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.i = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !133

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !89
  store double %i.r, ptr %i.o, align 8, !tbaa !89
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !116    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !118
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load double, ptr %i.c, align 8, !tbaa !89
  store double %i.ae, ptr %i.i, align 8, !tbaa !89
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !133

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !116
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !117 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !117
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !89
  store double %i.ah, ptr %i.i, align 8, !tbaa !89
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !133

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !89
  store double %i.ap, ptr %i.ai, align 8, !tbaa !89
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar12dipole_angleC2Ev(ptr noundef nonnull align 8 dereferenceable(1745) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar12dipole_angleE, i64 16), ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar12dipole_angleE, i64 248), ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i8 0, i64 49, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.f, align 1, !tbaa !126
  %i.g = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !126
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  invoke void @_ZN6colvar3cvc13init_as_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !tbaa !126
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.c
  %.pn5 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #19
  resume { ptr, i32 } %.pn5
}

declare noundef i32 @_ZN12colvarmodule10atom_group11calc_dipoleERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

declare void @_ZN12colvarmodule6to_strB5cxx11ERKNS_7rvectorEmm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedralC2Ev(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar8dihedralE, i64 16), ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar8dihedralE, i64 248), ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.b, i8 0, i64 105, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !123
  store i64 7809649004360788324, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !126
  %i.f = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.g       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !126
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  invoke void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 9, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 10, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.p = load i64, ptr %i.c, align 8, !tbaa !126
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.f
  %.pn5 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #19
  resume { ptr, i32 } %.pn5
}

declare void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedralC2ERKN12colvarmodule10atom_group11simple_atomES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(1713) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(120) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.colvarmodule::atom_group::atom_modifier", align 8 ; 7 uses
  %6 = alloca %"class.colvarmodule::atom_group::atom_modifier", align 8 ; 7 uses
  %7 = alloca %"class.colvarmodule::atom_group::atom_modifier", align 8 ; 7 uses
  %8 = alloca %"class.colvarmodule::atom_group::atom_modifier", align 8 ; 7 uses
  tail call void @_ZN6colvar8dihedralC2Ev(ptr noundef nonnull align 8 dereferenceable(1713) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store i8 0, ptr %i.a, align 8, !tbaa !297
  %i.b = invoke noalias noundef nonnull dereferenceable(1712) ptr @_Znwm(i64 noundef 1712) #22
          to label %bb.b unwind label %bb.r       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN12colvarmodule10atom_groupC1Ev(ptr noundef nonnull align 8 dereferenceable(1712) %i.b)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !128
  %i.d = invoke noalias noundef nonnull dereferenceable(1712) ptr @_Znwm(i64 noundef 1712) #22
          to label %bb.d unwind label %bb.r       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN12colvarmodule10atom_groupC1Ev(ptr noundef nonnull align 8 dereferenceable(1712) %i.d)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = invoke noalias noundef nonnull dereferenceable(1712) ptr @_Znwm(i64 noundef 1712) #22
          to label %bb.f unwind label %bb.r       ; 3 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN12colvarmodule10atom_groupC1Ev(ptr noundef nonnull align 8 dereferenceable(1712) %i.f)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !130
  %i.h = invoke noalias noundef nonnull dereferenceable(1712) ptr @_Znwm(i64 noundef 1712) #22
          to label %bb.h unwind label %bb.r       ; 3 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN12colvarmodule10atom_groupC1Ev(ptr noundef nonnull align 8 dereferenceable(1712) %i.h)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !128
  invoke void @_ZN12colvarmodule10atom_group13atom_modifierC1EPS0_(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(1712) %i.j)
          to label %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit unwind label %bb.w

_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !129
  invoke void @_ZN12colvarmodule10atom_group13atom_modifierC1EPS0_(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(1712) %i.k)
          to label %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit17 unwind label %bb.x

_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit17: ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !130
  invoke void @_ZN12colvarmodule10atom_group13atom_modifierC1EPS0_(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(1712) %i.l)
          to label %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit18 unwind label %bb.y

_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit18: ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !131
  invoke void @_ZN12colvarmodule10atom_group13atom_modifierC1EPS0_(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull align 8 dereferenceable(1712) %i.m)
          to label %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit19 unwind label %bb.z

_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit19: ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit18
  %i.n = invoke noundef i32 @_ZN12colvarmodule10atom_group13atom_modifier8add_atomERKNS0_11simple_atomE(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.j unwind label %bb.aa      ; 0 uses

bb.j:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit19
  %i.o = invoke noundef i32 @_ZN12colvarmodule10atom_group13atom_modifier8add_atomERKNS0_11simple_atomE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.k unwind label %bb.aa      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.p = invoke noundef i32 @_ZN12colvarmodule10atom_group13atom_modifier8add_atomERKNS0_11simple_atomE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.l unwind label %bb.aa      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.q = invoke noundef i32 @_ZN12colvarmodule10atom_group13atom_modifier8add_atomERKNS0_11simple_atomE(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull align 8 dereferenceable(120) %4)
          to label %bb.m unwind label %bb.aa      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !128
  invoke void @_ZN6colvar3cvc19register_atom_groupEPN12colvarmodule10atom_groupE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef %i.r)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !129
  invoke void @_ZN6colvar3cvc19register_atom_groupEPN12colvarmodule10atom_groupE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef %i.s)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !130
  invoke void @_ZN6colvar3cvc19register_atom_groupEPN12colvarmodule10atom_groupE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef %i.t)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !131
  invoke void @_ZN6colvar3cvc19register_atom_groupEPN12colvarmodule10atom_groupE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef %i.u)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  ret void

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.g, %bb.e, %bb.c, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1712) #20
  br label %bb.af

bb.t:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1712) #20
  br label %bb.af

bb.u:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 1712) #20
  br label %bb.af

bb.v:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1712) #20
  br label %bb.af

bb.w:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit17
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit18
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l, %bb.k, %bb.j, %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit19
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.aa ], [ %i.ad, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.ac, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.ab, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ad ], [ %i.aa, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.r ], [ %.pn.pn.pn.pn, %bb.ae ], [ %i.z, %bb.v ], [ %i.y, %bb.u ], [ %i.x, %bb.t ], [ %i.w, %bb.s ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1713) dereferenceable(1713) %0) #19
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11polar_thetaC2Ev(ptr noundef nonnull align 8 dereferenceable(1640) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
end_hunk_1
begin_hunk_2_@llvm.sqrt.v2f64
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!10 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !9, i64 0}
!11 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!14 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSSt15_Rb_tree_header", !14, i64 0, !15, i64 32}
!17 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !10, i64 0, !16, i64 8}
!18 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !17, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !18, i64 0}
!20 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !10, i64 0, !16, i64 8}
!21 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !20, i64 0}
!22 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !21, i64 0}
!23 = !{!"_ZTS12colvarparams", !19, i64 8, !22, i64 56}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !15, i64 8, !5, i64 16}
!27 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!28 = !{!"_ZTSNSt8__detail15_List_node_baseE", !27, i64 0, !27, i64 8}
!29 = !{!"_ZTSNSt8__detail17_List_node_headerE", !28, i64 0, !15, i64 16}
!30 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !31, i64 0}
!33 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !10, i64 0, !16, i64 8}
!34 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !33, i64 0}
!35 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !29, i64 0}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !37, i64 0}
!39 = !{!"_ZTS11colvarparse", !23, i64 0, !26, i64 104, !26, i64 136, !32, i64 168, !35, i64 192, !38, i64 240, !38, i64 264, !26, i64 288}
!40 = !{!"p1 _ZTSN10colvardeps13feature_stateE", !12, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN10colvardeps13feature_stateESaIS1_EE", !43, i64 0}
!45 = !{!"any p2 pointer", !12, i64 0}
!46 = !{!"p2 _ZTS10colvardeps", !45, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIP10colvardepsSaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIP10colvardepsSaIS1_EE", !49, i64 0}
!51 = !{!"_ZTS10colvardeps", !26, i64 8, !6, i64 40, !44, i64 48, !50, i64 72, !50, i64 96}
!52 = !{!"double", !5, i64 0}
!53 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !45, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIPN12colvarmodule10atom_groupESaIS2_EE", !56, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !62, i64 0}
!64 = !{!"_ZTSN11colvarvalue4TypeE", !5, i64 0}
!65 = !{!"_ZTSN12colvarmodule7rvectorE", !52, i64 0, !52, i64 8, !52, i64 16}
!66 = !{!"_ZTSN12colvarmodule10quaternionE", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!67 = !{!"p1 double", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIdSaIdEE", !70, i64 0}
!72 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !71, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !75, i64 0}
!77 = !{!"p1 int", !12, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIiSaIiEE", !80, i64 0}
!82 = !{!"_ZTS11colvarvalue", !64, i64 0, !52, i64 8, !65, i64 16, !66, i64 40, !72, i64 72, !76, i64 96, !81, i64 120, !81, i64 144}
!83 = !{!"_ZTSN6colvar3cvcE", !39, i64 0, !51, i64 320, !26, i64 440, !26, i64 472, !52, i64 504, !6, i64 512, !52, i64 520, !52, i64 528, !57, i64 536, !58, i64 560, !63, i64 568, !82, i64 592, !82, i64 760, !82, i64 928, !82, i64 1096, !82, i64 1264, !82, i64 1432, !52, i64 1600}
!84 = !{!"p1 _ZTSN12colvarmodule10atom_groupE", !12, i64 0}
!85 = !{!"_ZTSN6colvar9polar_phiE", !83, i64 0, !84, i64 1608, !52, i64 1616, !52, i64 1624, !52, i64 1632}
!86 = !{!85, !84, i64 1608}
!87 = !{!"vtable pointer", !4, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!52, !52, i64 0}
!90 = !{!83, !52, i64 600}
!91 = !{!65, !52, i64 16}
!92 = !{!"_ZTSN6colvar11polar_thetaE", !83, i64 0, !84, i64 1608, !52, i64 1616, !52, i64 1624, !52, i64 1632}
!93 = !{!92, !84, i64 1608}
!94 = !{!92, !52, i64 1616}
!95 = !{!"_ZTSN6colvar5angleE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !65, i64 1632, !65, i64 1656, !52, i64 1680, !52, i64 1688, !65, i64 1696, !65, i64 1720, !58, i64 1744}
!96 = !{!95, !84, i64 1608}
!97 = !{!95, !84, i64 1616}
!98 = !{!95, !84, i64 1624}
!99 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89}
!100 = !{!41, !40, i64 0}
!101 = !{!"_ZTSN10colvardeps13feature_stateE", !58, i64 0, !58, i64 1, !6, i64 4, !81, i64 8}
!102 = !{!101, !58, i64 1}
!103 = !{i8 0, i8 2}
!104 = !{}
!105 = !{!65, !52, i64 0}
!106 = !{!65, !52, i64 8}
!107 = !{!83, !52, i64 936}
!108 = !{!82, !64, i64 0}
!109 = !{!64, !64, i64 0}
!110 = !{!82, !52, i64 8}
!111 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89, i64 24, i64 8, !89}
!112 = !{!78, !77, i64 0}
!113 = !{!78, !77, i64 16}
!114 = !{!73, !12, i64 0}
!115 = !{!73, !12, i64 16}
!116 = !{!68, !67, i64 0}
!117 = !{!68, !67, i64 8}
!118 = !{!68, !67, i64 16}
!119 = !{!"_ZTSN6colvar12dipole_angleE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !65, i64 1632, !65, i64 1656, !52, i64 1680, !52, i64 1688, !65, i64 1696, !65, i64 1720, !58, i64 1744}
!120 = !{!119, !84, i64 1608}
!121 = !{!119, !84, i64 1616}
!122 = !{!119, !84, i64 1624}
!123 = !{!25, !24, i64 0}
!124 = !{!26, !24, i64 0}
!125 = !{!26, !15, i64 8}
!126 = !{!5, !5, i64 0}
!127 = !{!"_ZTSN6colvar8dihedralE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !84, i64 1632, !65, i64 1640, !65, i64 1664, !65, i64 1688, !58, i64 1712}
!128 = !{!127, !84, i64 1608}
!129 = !{!127, !84, i64 1616}
!130 = !{!127, !84, i64 1624}
!131 = !{!127, !84, i64 1632}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!134 = !{!85, !52, i64 1616}
!135 = !{!85, !52, i64 1624}
!136 = !{!85, !52, i64 1632}
!137 = !{!92, !52, i64 1624}
!138 = !{!92, !52, i64 1632}
!139 = distinct !{!139, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!140 = distinct !{!140, !139, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!142 = distinct !{!142, !141, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!143 = !{!140}
!144 = !{!95, !52, i64 1680}
!145 = !{!142}
!146 = !{!95, !52, i64 1688}
!147 = distinct !{!147, i1 true, !"_ZplRKN12colvarmodule7rvectorES2_"}
!148 = distinct !{!148, !147, !"_ZplRKN12colvarmodule7rvectorES2_: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZmlRKN12colvarmodule7rvectorEd"}
!150 = distinct !{!150, !149, !"_ZmlRKN12colvarmodule7rvectorEd: argument 0"}
!151 = !{!148}
!152 = !{!150}
!153 = distinct !{!153, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!154 = distinct !{!154, !153, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!156 = distinct !{!156, !155, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!158 = distinct !{!158, !157, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!160 = distinct !{!160, !159, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!162 = distinct !{!162, !161, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!163 = !{!154}
!164 = !{!156}
!165 = !{!158}
!166 = !{!160}
!167 = !{!119, !52, i64 1680}
!168 = !{!162}
!169 = !{!119, !52, i64 1688}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !170}
!174 = distinct !{!174, !170}
!175 = distinct !{!175, !170}
!176 = distinct !{!176, !170}
!177 = distinct !{!177, !217, !218, !219}
!178 = distinct !{!178, i1 false, !"LVerDomain"}
!179 = distinct !{!179, !178}
!180 = distinct !{!180, i1 true, !"_ZmldRKN12colvarmodule7rvectorE"}
!181 = distinct !{!181, !180, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!182 = distinct !{!182, !178}
!183 = distinct !{!183, !178}
!184 = distinct !{!184, !178}
!185 = distinct !{!185, !178}
!186 = distinct !{!186, !217, !218, !219}
!187 = distinct !{!187, i1 true, !"_ZmldRKN12colvarmodule7rvectorE"}
!188 = distinct !{!188, !187, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!189 = distinct !{!189, !217, !218}
!190 = distinct !{!190, i1 false, !"LVerDomain"}
!191 = distinct !{!191, !190}
!192 = distinct !{!192, i1 true, !"_ZmldRKN12colvarmodule7rvectorE"}
!193 = distinct !{!193, !192, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!194 = distinct !{!194, !190}
!195 = distinct !{!195, !190}
!196 = distinct !{!196, !190}
!197 = distinct !{!197, !190}
!198 = distinct !{!198, !217, !218, !219}
!199 = distinct !{!199, !217, !218}
!200 = distinct !{!200, !217, !218}
!201 = !{!"_ZTSN12colvarmodule7rmatrixE", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64}
!202 = !{!"_ZTSN12colvarmodule8rotationE", !201, i64 0, !5, i64 72, !5, i64 200, !5, i64 232, !5, i64 360, !58, i64 488, !66, i64 496, !66, i64 528, !12, i64 560}
!203 = !{!"p1 _ZTS19rotation_derivative", !12, i64 0}
!204 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!205 = !{!"_ZTSSt5mutex", !204, i64 0}
!206 = !{!"_ZTSN12colvarmodule10atom_groupE", !39, i64 0, !51, i64 320, !26, i64 440, !58, i64 472, !26, i64 480, !84, i64 512, !202, i64 520, !58, i64 1088, !58, i64 1089, !71, i64 1096, !52, i64 1120, !52, i64 1128, !203, i64 1136, !15, i64 1144, !81, i64 1152, !71, i64 1176, !71, i64 1200, !71, i64 1224, !71, i64 1248, !71, i64 1272, !71, i64 1296, !71, i64 1320, !81, i64 1344, !81, i64 1368, !81, i64 1392, !65, i64 1416, !6, i64 1440, !71, i64 1448, !71, i64 1472, !15, i64 1496, !65, i64 1504, !65, i64 1528, !65, i64 1552, !71, i64 1576, !65, i64 1600, !65, i64 1624, !65, i64 1648, !205, i64 1672}
!207 = !{!206, !52, i64 1128}
!208 = !{!206, !52, i64 1120}
!209 = !{!206, !15, i64 1144}
!210 = !{!171}
!211 = !{!172}
!212 = !{!173}
!213 = !{!175, !171, !172, !174}
!214 = !{!176}
!215 = !{!171, !172, !174}
!216 = !{!175}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !{!"llvm.loop.isvectorized", i32 1}
!219 = !{!"llvm.loop.unroll.runtime.disable"}
!220 = !{!179}
!221 = !{!181}
!222 = !{!182}
!223 = !{!183}
!224 = !{!184, !182, !179}
!225 = !{!185}
!226 = !{!182, !179}
!227 = !{!184}
!228 = !{!188}
!229 = !{!191}
!230 = !{!193}
!231 = !{!194}
!232 = !{!195}
!233 = !{!196, !194, !191}
!234 = !{!197}
!235 = !{!194, !191}
!236 = !{!196}
!237 = distinct !{!237, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!238 = distinct !{!238, !237, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!239 = distinct !{!239, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!240 = distinct !{!240, !239, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!241 = distinct !{!241, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!242 = distinct !{!242, !241, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!244 = distinct !{!244, !243, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!245 = distinct !{!245, i1 true, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!246 = distinct !{!246, !245, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!247 = !{!238}
!248 = !{!240}
!249 = !{!242}
!250 = !{!244}
!251 = !{!246}
!252 = distinct !{!252, i1 true, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!253 = distinct !{!253, !252, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!255 = distinct !{!255, !254, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZmldRKN12colvarmodule7rvectorE"}
!257 = distinct !{!257, !256, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZngRKN12colvarmodule7rvectorE"}
!259 = distinct !{!259, !258, !"_ZngRKN12colvarmodule7rvectorE: argument 0"}
!260 = distinct !{!260, i1 true, !"_ZplRKN12colvarmodule7rvectorES2_"}
!261 = distinct !{!261, !260, !"_ZplRKN12colvarmodule7rvectorES2_: argument 0"}
!262 = distinct !{!262, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!263 = distinct !{!263, !262, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!264 = !{!253}
!265 = !{!255}
!266 = !{!257}
!267 = !{!259}
!268 = !{!261}
!269 = !{!263}
!270 = distinct !{!270, i1 true, !"_ZNK12colvarmodule7rvector4unitEv"}
!271 = distinct !{!271, !270, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!272 = distinct !{!272, i1 true, !"_ZNK12colvarmodule7rvector4unitEv"}
!273 = distinct !{!273, !272, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!274 = distinct !{!274, i1 true, !"_ZNK12colvarmodule7rvector4unitEv"}
!275 = distinct !{!275, !274, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!276 = !{!271}
!277 = !{!273}
!278 = !{!275}
!279 = distinct !{!279, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!280 = distinct !{!280, !279, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!281 = distinct !{!281, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!282 = distinct !{!282, !281, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!283 = distinct !{!283, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!284 = distinct !{!284, !283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!285 = distinct !{!285, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!286 = distinct !{!286, !285, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!287 = distinct !{!287, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!288 = distinct !{!288, !287, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!289 = !{!280}
!290 = !{!282, !280}
!291 = !{!284}
!292 = !{!286}
!293 = !{!288}
!294 = !{!73, !12, i64 8}
!295 = !{!78, !77, i64 8}
!296 = !{!6, !6, i64 0}
!297 = !{!127, !58, i64 1712}
end_hunk_2
