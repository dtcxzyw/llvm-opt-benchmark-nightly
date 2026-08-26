Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCUtil?download=true
inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE:bb.a
  %3 = alloca %class.aiVector3t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.025)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.025, align 8
  store double 0.000000e+00, ptr %.sroa.626, align 8
  store double 0.000000e+00, ptr %.sroa.8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %.sroa.025, align 8
  %i.n = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load double, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %cond42 = icmp eq i32 %i.q, 1
  %spec.select43 = select i1 %cond42, ptr %.sroa.626, ptr %.sroa.025
  store double %i.p, ptr %spec.select43, align 8
  %i.r = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load double, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %cond = icmp eq i32 %i.u, 2
  %spec.select = select i1 %cond, ptr %.sroa.8, ptr %.sroa.025
  store double %i.t, ptr %spec.select, align 8
  %i.v = or disjoint i64 %.07.i, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  store double %i.x, ptr %.sroa.025, align 8
  %i.y = add nuw i64 %.07.i, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN10aiVector3tIdEixEj.exit.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ac, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i.epil
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = trunc i64 %.07.i.epil to i32
  switch i32 %i.ab, label %_ZN10aiVector3tIdEixEj.exit.i.epil [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

bb.c:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

_ZN10aiVector3tIdEixEj.exit.i.epil:               ; preds = %bb.c, %bb.b, %.lr.ph.i.epil
  %.0.i.i.epil = phi ptr [ %.sroa.626, %bb.b ], [ %.sroa.8, %bb.c ], [ %.sroa.025, %.lr.ph.i.epil ]
  store double %i.aa, ptr %.0.i.i.epil, align 8
  %i.ac = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil, !llvm.loop !191

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %_ZN10aiVector3tIdEixEj.exit.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i8, ptr %i.ag, align 8, !range !192, !noundef !187
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load i8, ptr %i.al, align 8, !range !192, !noundef !187
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ap)
  %.pre = load double, ptr %3, align 8            ; 2 uses
  %i.aq = load <2 x double>, ptr %i.af, align 8   ; 2 uses
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x double> %i.ar, double %.pre, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi double [ %.pre, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.au = phi <2 x double> [ %i.as, %bb.f ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 3 uses
  %i.av = phi <2 x double> [ %i.aq, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.av, %i.av
  %i.aw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.aw)
  %i.ay = extractelement <2 x double> %i.au, i64 0 ; 2 uses
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.ax) ; 2 uses
  %i.ba = fcmp oeq double %i.az, 0.000000e+00
  br i1 %i.ba, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.g
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.az)
  %i.bb = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fmul <2 x double> %i.au, %i.bd
  %i.bf = fmul <2 x double> %i.av, %i.bd
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i
  %i.bg = phi <2 x double> [ %i.au, %bb.g ], [ %i.be, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 3 uses
  %i.bh = phi <2 x double> [ %i.av, %bb.g ], [ %i.bf, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 2 uses
  %i.bi = load double, ptr %2, align 8            ; 4 uses
  %i.bj = load <2 x double>, ptr %i.ad, align 8   ; 6 uses
  %foldExtExtBinop37 = fmul <2 x double> %i.bh, %i.bj
  %i.bk = extractelement <2 x double> %foldExtExtBinop37, i64 0
  %i.bl = extractelement <2 x double> %i.bg, i64 1
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bi, double %i.bk)
  %i.bn = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bo = extractelement <2 x double> %i.bg, i64 0
  %i.bp = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bn, double %i.bm)
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x double> %i.bq, double %i.bi, i64 1 ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fmul <2 x double> %i.br, %i.bt
  %i.bv = fmul <2 x double> %i.bj, %i.bt
  %i.bw = fsub <2 x double> %i.bg, %i.bu          ; 4 uses
  %i.bx = fsub <2 x double> %i.bh, %i.bv          ; 4 uses
  %foldExtExtBinop39 = fmul <2 x double> %i.bx, %i.bx
  %i.by = extractelement <2 x double> %foldExtExtBinop39, i64 0
  %i.bz = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.by)
  %i.cb = extractelement <2 x double> %i.bw, i64 0 ; 2 uses
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.ca) ; 2 uses
  %i.cd = fcmp oeq double %i.cc, 0.000000e+00
  br i1 %i.cd, label %_ZN10aiVector3tIdE9NormalizeEv.exit9, label %_ZN10aiVector3tIdEdVEd.exit.i7

_ZN10aiVector3tIdEdVEd.exit.i7:                   ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %sqrt.i.i8 = tail call noundef double @llvm.sqrt.f64(double %i.cc)
  %i.ce = fdiv double 1.000000e+00, %sqrt.i.i8
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x double> %i.bw, %i.cg
  %i.ci = fmul <2 x double> %i.bx, %i.cg
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit9

_ZN10aiVector3tIdE9NormalizeEv.exit9:             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %_ZN10aiVector3tIdEdVEd.exit.i7
  %i.cj = phi <2 x double> [ %i.bw, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.ch, %_ZN10aiVector3tIdEdVEd.exit.i7 ] ; 3 uses
  %i.ck = phi <2 x double> [ %i.bx, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.ci, %_ZN10aiVector3tIdEdVEd.exit.i7 ] ; 2 uses
  %i.cl = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.cm = fneg <2 x double> %i.ck
  %i.cn = fmul <2 x double> %i.br, %i.cm
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.cj, <2 x double> %i.cn) ; 2 uses
  %i.cp = extractelement <2 x double> %i.cj, i64 1 ; 2 uses
  %i.cq = fneg double %i.cp
  %i.cr = fmul double %i.cl, %i.cq
  %i.cs = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.cs, double %i.cr)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.7.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.a, i8 0, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0. = load double, ptr %.sroa.025, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.cv, align 8
  %.sroa.626.0..sroa.626.0..sroa.626.0..sroa.626.8. = load double, ptr %.sroa.626, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.626.0..sroa.626.0..sroa.626.0..sroa.626.8., ptr %i.cw, align 8
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load double, ptr %.sroa.8, align 8
  store double %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., ptr %.sroa.6.0..sroa_idx.i, align 8
  store double %i.cp, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.cs, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = extractelement <2 x double> %i.cj, i64 0
  store double %i.cz, ptr %i.cy, align 8
  %i.da = extractelement <2 x double> %i.co, i64 0
  store double %i.da, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.db = extractelement <2 x double> %i.co, i64 1
  store double %i.db, ptr %i.cu, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ct, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bi, ptr %i.dd, align 8
  store double %i.cl, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  store double %i.bn, ptr %.sroa.7.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.025)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.30", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcCartesianPointE, i64 -1) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #28
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.30", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x312IfcDirectionE, i64 -1) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #28
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement2DE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.08 = alloca double, align 8              ; 9 uses
  %.sroa.69 = alloca double, align 8              ; 6 uses
  %.sroa.8 = alloca double, align 8               ; 6 uses
  %2 = alloca %class.aiVector3t, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.08, align 8
  store double 0.000000e+00, ptr %.sroa.69, align 8
  store double 0.000000e+00, ptr %.sroa.8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %.sroa.08, align 8
  %i.n = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load double, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %cond15 = icmp eq i32 %i.q, 1
  %spec.select16 = select i1 %cond15, ptr %.sroa.69, ptr %.sroa.08
  store double %i.p, ptr %spec.select16, align 8
  %i.r = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load double, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %cond = icmp eq i32 %i.u, 2
  %spec.select = select i1 %cond, ptr %.sroa.8, ptr %.sroa.08
  store double %i.t, ptr %spec.select, align 8
  %i.v = or disjoint i64 %.07.i, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  store double %i.x, ptr %.sroa.08, align 8
  %i.y = add nuw i64 %.07.i, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN10aiVector3tIdEixEj.exit.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ac, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i.epil
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = trunc i64 %.07.i.epil to i32
  switch i32 %i.ab, label %_ZN10aiVector3tIdEixEj.exit.i.epil [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

bb.c:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

_ZN10aiVector3tIdEixEj.exit.i.epil:               ; preds = %bb.c, %bb.b, %.lr.ph.i.epil
  %.0.i.i.epil = phi ptr [ %.sroa.69, %bb.b ], [ %.sroa.8, %bb.c ], [ %.sroa.08, %.lr.ph.i.epil ]
  store double %i.aa, ptr %.0.i.i.epil, align 8
  %i.ac = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil, !llvm.loop !193

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %_ZN10aiVector3tIdEixEj.exit.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i8, ptr %i.ad, align 8, !range !192, !noundef !187
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
  %i.aj = load <2 x double>, ptr %2, align 16
  %.pre11 = load double, ptr %i.ag, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.ak = phi double [ %.pre11, %bb.d ], [ 0.000000e+00, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit ]
  %i.al = phi <2 x double> [ %i.aj, %bb.d ], [ <double 1.000000e+00, double 0.000000e+00>, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit ] ; 3 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fneg double %i.am
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.08.0..sroa.08.0..sroa.08.0..sroa.08.0. = load double, ptr %.sroa.08, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.08.0..sroa.08.0..sroa.08.0..sroa.08.0., ptr %i.ap, align 8
  %.sroa.69.0..sroa.69.0..sroa.69.0..sroa.69.8. = load double, ptr %.sroa.69, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.69.0..sroa.69.0..sroa.69.0..sroa.69.8., ptr %i.aq, align 8
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load double, ptr %.sroa.8, align 8
  store double %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = extractelement <2 x double> %i.al, i64 1
  store double %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ak, ptr %i.at, align 8
  store <2 x double> %i.al, ptr %0, align 8
  store double %i.an, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %i.av, align 8
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER10aiVector3tIdES3_RKNS0_10Schema_2x317IfcAxis1PlacementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN10aiVector3tIdEixEj.exit.i, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.o, %_ZN10aiVector3tIdEixEj.exit.i ]
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %_ZN10aiVector3tIdEixEj.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i
  %i.k = load double, ptr %i.j, align 8
  %i.l = trunc i64 %.07.i to i32
  switch i32 %i.l, label %_ZN10aiVector3tIdEixEj.exit.i [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN10aiVector3tIdEixEj.exit.i

bb.d:                                             ; preds = %bb.b
  br label %_ZN10aiVector3tIdEixEj.exit.i

_ZN10aiVector3tIdEixEj.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %1, %bb.b ]
  store double %i.k, ptr %.0.i.i, align 8
  %i.m = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %bb.b, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN10aiVector3tIdEixEj.exit.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.v = load i8, ptr %i.u, align 8, !range !192, !noundef !187
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.y = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  tail call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  br label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !187, !align !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %i.k = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcAxis2Placement3DE, i64 -1) #25 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit
  tail call void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread: ; preds = %bb.a, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit
  %i.l = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #25 ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread
  %i.m = load ptr, ptr %i.b, align 8, !nonnull !187, !align !188
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 noundef %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i13, label %bb.f, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  %.pre.i.i.i15 = load ptr, ptr %i.q, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit: ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %.pre.i.i.i15, %bb.f ], [ %i.r, %bb.e ]
  %i.t = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.s, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcAxis2Placement2DE, i64 -1) #25 ; 2 uses
  %.not11 = icmp eq ptr %i.t, null
  br i1 %.not11, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit
  tail call void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement2DE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.t)
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit
  %i.u = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.u, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.w = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.w, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA42_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(42) @.str.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit: ; preds = %bb.h, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC24ConvertTransformOperatorER12aiMatrix4x4tIdERKNS0_10Schema_2x334IfcCartesianTransformationOperatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0101 = alloca double, align 8            ; 9 uses
  %.sroa.6102 = alloca double, align 8            ; 6 uses
  %.sroa.8103 = alloca double, align 8            ; 6 uses
  %2 = alloca %class.aiVector3t, align 16         ; 7 uses
  %3 = alloca %class.aiVector3t, align 16         ; 7 uses
  %4 = alloca %class.aiVector3t, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8103)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.0101, align 8
  store double 0.000000e+00, ptr %.sroa.6102, align 8
  store double 0.000000e+00, ptr %.sroa.8103, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
end_hunk_0
