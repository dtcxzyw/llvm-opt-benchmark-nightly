Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@main:bb.a
bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !26
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.w, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %11, align 16, !tbaa !14
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double 2.000000e+00, ptr %.sroa.7130.0..sroa_idx, align 16, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  tail call void @_Z6lookat3vecILi3EES0_S0_(ptr noundef nonnull byval(%struct.vec) align 8 %11, ptr noundef nonnull byval(%struct.vec) align 8 %12, ptr noundef nonnull byval(%struct.vec) align 8 @__const.main.up)
  tail call void @_Z16init_perspectived(double noundef f0x4001E3779B97F4A8)
  tail call void @_Z13init_viewportiiii(i32 noundef 50, i32 noundef 50, i32 noundef 700, i32 noundef 700)
  tail call void @_Z12init_zbufferii(i32 noundef 800, i32 noundef 800)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @_ZN8TGAImageC1Eiii8TGAColor(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 800, i32 noundef 800, i32 noundef 3, i40 21471806385)
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %spec.select.i11.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %spec.select.i11.1.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %spec.select.i11.2.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 96
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 112
  %spec.select.i11.i.i9.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %spec.select.i11.1.i.i10.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %spec.select.i11.2.i.i11.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 192
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 64
  %.sroa.4.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %spec.select.i11.i.i.i52 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %spec.select.i11.1.i.i.i53 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %spec.select.i11.2.i.i.i54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 128
  %.sroa.517.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %spec.select.i11.i.i9.i70 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %spec.select.i11.1.i.i10.i71 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %spec.select.i11.2.i.i11.i72 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 224
  %.sroa.7.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 80
  %.sroa.4.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %16, i64 88
  %spec.select.i11.i.i.i82 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i.i83 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i.i84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 160
  %.sroa.517.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %16, i64 176
  %spec.select.i11.i.i9.i100 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %spec.select.i11.1.i.i10.i101 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select.i11.2.i.i11.i102 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 256
  %.sroa.7.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %16, i64 272
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 80
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 48
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.az, ptr %18, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.az, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, i64 15, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 15, ptr %i.ba, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 31
  store i8 0, ptr %i.bb, align 1, !tbaa !81
  %i.bc = invoke noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr nofree noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.t
  %indvars.iv = phi i64 [ 1, %bb.h ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !55 ; 4 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !83
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #13 ; 8 uses
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %bb.l, label %._crit_edge.i.i35

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp slt i64 %i.bg, 0
  br i1 %i.bi, label %.noexc.i38, label %bb.m

.noexc.i38:                                       ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc.i38
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bj = add nuw i64 %i.bg, 1                    ; 2 uses
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %.noexc11.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, !prof !86

.noexc11.i37:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #14
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc11.i37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.m
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #15
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  store ptr %i.bl, ptr %15, align 8, !tbaa !87
  store i64 %i.bg, ptr %i.ad, align 8, !tbaa !81
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc42, %bb.k
  %i.bm = phi ptr [ %i.bl, %.noexc42 ], [ %i.ad, %bb.k ] ; 3 uses
  switch i64 %i.bg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i35
  %i.bn = load i8, ptr %i.be, align 1, !tbaa !81
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !81
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i35
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg
  store i8 0, ptr %i.bo, align 1, !tbaa !81
  invoke void @_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %14, ptr nofree noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %15, align 8, !tbaa !87   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ad
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11PhongShader, i64 16), ptr %16, align 8, !tbaa !57
  store ptr %14, ptr %i.af, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ay, i8 0, i64 240, i1 false)
  %i.bt = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !89 ; 4 uses
  %i.bu = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.bw = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.bx = fadd <2 x double> %i.bw, %i.bv
  %i.by = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bz = fadd <2 x double> %i.by, %i.bx
  %i.ca = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cb = fadd <2 x double> %i.ca, %i.bz          ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.cd = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ce = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !89 ; 4 uses
  %i.cf = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ch = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ci = fadd <2 x double> %i.ch, %i.cg
  %i.cj = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ck = fadd <2 x double> %i.cj, %i.ci
  %i.cl = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cm = fadd <2 x double> %i.cl, %i.ck          ; 3 uses
  %19 = extractelement <2 x double> %i.cm, i64 1  ; 2 uses
  %20 = call double @llvm.fmuladd.f64(double %19, double %19, double 0.000000e+00)
  %i.cn = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %20)
  %i.cp = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.co)
  %i.cq = call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cp)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.cq)
  %i.cr = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fdiv <2 x double> %i.cm, %i.cs
  %i.cu = fdiv <2 x double> %i.cb, %i.cs
  store <2 x double> %i.cu, ptr %i.ag, align 8, !tbaa !14
  store <2 x double> %i.ct, ptr %.sroa.917.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %.0 = phi i32 [ %i.mp, %bb.aa ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.cv = invoke noundef i32 @_ZNK5Model6nfacesEv(ptr noundef nonnull align 8 dereferenceable(264) %14)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp slt i32 %.0, %i.cv
  br i1 %i.cw, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.i, !llvm.loop !29

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, %.noexc11.i37, %.noexc.i38, %bb.j
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.u:                                             ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %15, align 8, !tbaa !87   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ad
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.u
  %i.da = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.v:                                             ; preds = %bb.r
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.dd = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  %i.de = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.dd, i32 noundef %.0, i32 noundef 0)
          to label %.noexc47 unwind label %bb.ab  ; 2 uses

.noexc47:                                         ; preds = %bb.w
  %i.df = extractvalue { double, double } %i.de, 0
  %i.dg = extractvalue { double, double } %i.de, 1
  store double %i.df, ptr %i.ah, align 8, !tbaa !14, !noalias !90
  store double %i.dg, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !90
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc48 unwind label %bb.ab

.noexc48:                                         ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !90
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %9, ptr noundef nonnull align 8 dereferenceable(264) %i.dh, i32 noundef %.0, i32 noundef 0)
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %.noexc48
  %i.di = load <8 x double>, ptr %8, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.dj = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dk = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dl = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dm = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dn = load <8 x double>, ptr %i.ai, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.do = load double, ptr %spec.select.i11.i.i.i, align 8, !tbaa !14, !noalias !91
  %i.dp = load <1 x double>, ptr %spec.select.i11.1.i.i.i, align 8
  %i.dq = load <1 x double>, ptr %spec.select.i11.2.i.i.i, align 8
  %i.dr = load <1 x double>, ptr %9, align 8
  %i.ds = shufflevector <8 x double> %i.dn, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dt = insertelement <2 x double> poison, double %i.do, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.du, <2 x double> zeroinitializer)
  %i.dw = shufflevector <8 x double> %i.dn, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dx = shufflevector <1 x double> %i.dp, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dx, <2 x double> %i.dv)
  %i.dz = shufflevector <8 x double> %i.dn, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ea = shufflevector <1 x double> %i.dq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ea, <2 x double> %i.dy)
  %i.ec = shufflevector <8 x double> %i.dn, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ed = shufflevector <1 x double> %i.dr, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ed, <2 x double> %i.eb)
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.du, <2 x double> zeroinitializer)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dx, <2 x double> %i.ef)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.ea, <2 x double> %i.eg)
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.ed, <2 x double> %i.eh)
  store <2 x double> %i.ei, ptr %i.aj, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.ee, ptr %.sroa.517.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !90
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %10, ptr noundef nonnull align 8 dereferenceable(264) %i.ej, i32 noundef %.0, i32 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %.noexc49
  %i.ek = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.el = shufflevector <8 x double> %i.ek, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.em = shufflevector <8 x double> %i.ek, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.en = shufflevector <8 x double> %i.ek, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.eo = shufflevector <8 x double> %i.ek, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ep = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.eq = load double, ptr %spec.select.i11.i.i9.i, align 8, !tbaa !14, !noalias !92
  %i.er = load <1 x double>, ptr %spec.select.i11.1.i.i10.i, align 8
  %i.es = load <1 x double>, ptr %spec.select.i11.2.i.i11.i, align 8
  %i.et = load <1 x double>, ptr %10, align 8
  %i.eu = shufflevector <8 x double> %i.ep, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ev = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ew, <2 x double> zeroinitializer)
  %i.ey = shufflevector <8 x double> %i.ep, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ez = shufflevector <1 x double> %i.er, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ez, <2 x double> %i.ex)
  %i.fb = shufflevector <8 x double> %i.ep, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.fc = shufflevector <1 x double> %i.es, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.fc, <2 x double> %i.fa)
  %i.fe = shufflevector <8 x double> %i.ep, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ff = shufflevector <1 x double> %i.et, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.ff, <2 x double> %i.fd) ; 3 uses
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.ew, <2 x double> zeroinitializer)
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.ez, <2 x double> %i.fh)
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.fc, <2 x double> %i.fi)
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ff, <2 x double> %i.fj) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !90
  store <2 x double> %i.fk, ptr %i.ak, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.fg, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.fl = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.fm = shufflevector <8 x double> %i.fl, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.fn = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fn, <2 x double> zeroinitializer)
  %i.fp = shufflevector <8 x double> %i.fl, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.fq = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fq, <2 x double> %i.fo)
  %i.fs = shufflevector <8 x double> %i.fl, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ft = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.ft, <2 x double> %i.fr)
  %i.fv = shufflevector <8 x double> %i.fl, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.fw = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fw, <2 x double> %i.fu)
  store <2 x double> %i.fx, ptr %i.al, align 16, !tbaa !14, !alias.scope !94
  %i.fy = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.fz = shufflevector <8 x double> %i.fy, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fn, <2 x double> zeroinitializer)
  %i.gb = shufflevector <8 x double> %i.fy, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fq, <2 x double> %i.ga)
  %i.gd = shufflevector <8 x double> %i.fy, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.ft, <2 x double> %i.gc)
  %i.gf = shufflevector <8 x double> %i.fy, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.fw, <2 x double> %i.ge)
  store <2 x double> %i.gg, ptr %17, align 16, !tbaa !14, !alias.scope !94
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.gh = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  %i.gi = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.gh, i32 noundef %.0, i32 noundef 1)
          to label %.noexc76 unwind label %bb.ab  ; 2 uses

.noexc76:                                         ; preds = %bb.x
  %i.gj = extractvalue { double, double } %i.gi, 0
  %i.gk = extractvalue { double, double } %i.gi, 1
  store double %i.gj, ptr %i.an, align 8, !tbaa !14, !noalias !95
  store double %i.gk, ptr %.sroa.4.0..sroa_idx.i51, align 8, !tbaa !14, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !95
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc77 unwind label %bb.ab

.noexc77:                                         ; preds = %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !95
  %i.gl = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.gl, i32 noundef %.0, i32 noundef 1)
          to label %.noexc78 unwind label %bb.ab

.noexc78:                                         ; preds = %.noexc77
  %i.gm = load <8 x double>, ptr %5, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.gn = shufflevector <8 x double> %i.gm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.go = shufflevector <8 x double> %i.gm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gp = shufflevector <8 x double> %i.gm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gq = shufflevector <8 x double> %i.gm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gr = load <8 x double>, ptr %i.ao, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.gs = load double, ptr %spec.select.i11.i.i.i52, align 8, !tbaa !14, !noalias !96
  %i.gt = load <1 x double>, ptr %spec.select.i11.1.i.i.i53, align 8
  %i.gu = load <1 x double>, ptr %spec.select.i11.2.i.i.i54, align 8
  %i.gv = load <1 x double>, ptr %6, align 8
  %i.gw = shufflevector <8 x double> %i.gr, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gx = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ModelD2Ev:bb.a
  br i1 %.not.i.i.i.i1, label %_ZN8TGAImageD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN8TGAImageD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZN8TGAImageD2Ev.exit2

_ZN8TGAImageD2Ev.exit2:                           ; preds = %_ZN8TGAImageD2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3, label %_ZN8TGAImageD2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN8TGAImageD2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #16
  br label %_ZN8TGAImageD2Ev.exit4

_ZN8TGAImageD2Ev.exit4:                           ; preds = %_ZN8TGAImageD2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8TGAImageD2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8TGAImageD2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !116
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, %bb.i
  %i.be = load ptr, ptr %0, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12:       ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i48 @_ZNK11PhongShader8fragmentE3vecILi3EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef byval(%struct.vec) align 8 %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.vec.19, align 8             ; 7 uses
  %3 = alloca %struct.vec.18, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.9239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.22247.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.3.0.copyload.i = load double, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load double, ptr %.in.i.i, align 8, !tbaa !14 ; 3 uses
  %i.g = fsub double %.sroa.3.0.copyload.i, %i.f  ; 2 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.i = fsub double %.sroa.0.0.copyload.i, %i.h  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i15 = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.0.copyload.i17 = load double, ptr %.sroa.3.0..sroa_idx.i16, align 8, !tbaa !14 ; 2 uses
  %i.k = fsub double %.sroa.3.0.copyload.i17, %i.f ; 2 uses
  %i.l = fsub double %.sroa.0.0.copyload.i15, %i.h
  %i.m = fneg double %i.g
  %i.n = fneg double %i.l                         ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.g, double 0.000000e+00)
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.i, double %i.o)
  %i.q = load <2 x double>, ptr %.sroa.9239.0..sroa_idx, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %spec.select.i.1.i, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = load <2 x double>, ptr %.sroa.22247.32..sroa_idx, align 8, !tbaa !14
  %i.u = fsub <2 x double> %i.t, %i.r             ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.k, i64 1
  %i.x = insertelement <2 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.s, <2 x double> %i.ab) ; 3 uses
  %4 = extractelement <2 x double> %i.ad, i64 1   ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.af = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.ag = load <2 x double>, ptr %i.a, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.ah = fsub <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.aj = fsub <2 x double> %i.ai, %i.ag          ; 2 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.aj, <2 x double> zeroinitializer)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ah, <2 x double> %i.ak) ; 3 uses
  %i.am = insertelement <2 x double> poison, double %i.i, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.n, i64 1
  %i.ao = fdiv <2 x double> %i.an, %i.y           ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.ar = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.s, <2 x double> %i.aq) ; 3 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.at)
  %5 = shufflevector <2 x double> %i.al, <2 x double> %i.as, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.av = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.au, i64 0
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %5, <2 x double> %i.av)
  %7 = shufflevector <2 x double> %i.al, <2 x double> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %7, <2 x double> %6) ; 2 uses
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aj, <2 x double> zeroinitializer)
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ah, <2 x double> %i.aw) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load <2 x double>, ptr %.sroa.8183.0..sroa_idx, align 8, !tbaa !14
  %i.be = load <2 x double>, ptr %.sroa.9173.0..sroa_idx, align 8, !tbaa !14
  %i.bf = load <2 x double>, ptr %.sroa.9164.0..sroa_idx, align 8, !tbaa !14
  %i.bg = load <2 x double>, ptr %i.ay, align 8, !tbaa !14
  %i.bh = load <2 x double>, ptr %i.az, align 8, !tbaa !14
  %i.bi = load <2 x double>, ptr %i.bb, align 8, !tbaa !14
  %i.bj = load double, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bd
  %i.bn = fmul <2 x double> %i.bl, %i.bg
  %i.bo = load double, ptr %i.ba, align 8, !tbaa !14 ; 3 uses
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x double> %i.bq, %i.be
  %i.bs = fmul <2 x double> %i.bq, %i.bh
  %i.bt = fadd <2 x double> %i.bm, %i.br
  %i.bu = fadd <2 x double> %i.bn, %i.bs
  %i.bv = load double, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <2 x double> %i.bx, %i.bf
  %i.bz = fmul <2 x double> %i.bx, %i.bi
  %i.ca = fadd <2 x double> %i.bt, %i.by          ; 3 uses
  %i.cb = fadd <2 x double> %i.bu, %i.bz          ; 3 uses
  %9 = shufflevector <2 x double> %i.ax, <2 x double> %i.ca, <2 x i32> <i32 1, i32 3> ; 2 uses
  %10 = shufflevector <2 x double> %8, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %9, <2 x double> %10)
  %11 = shufflevector <2 x double> %i.ax, <2 x double> %i.ca, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %11, <2 x double> %i.cc) ; 2 uses
  %12 = shufflevector <2 x double> %8, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %13 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %12) ; 2 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = fdiv <2 x double> %i.ad, %14
  %16 = fdiv <2 x double> %i.al, %14
  %17 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = fdiv <2 x double> %i.as, %17
  %i.cf = fdiv <2 x double> %i.ax, %17
  %18 = extractelement <2 x double> %i.cb, i64 1  ; 2 uses
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %i.cg)
  %i.ch = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ci = tail call noundef double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %19)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.ci)
  %i.cj = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fdiv <2 x double> %i.ca, %i.ck
  %i.cm = fdiv <2 x double> %i.cb, %i.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.cn = fmul double %i.f, %i.bj
  %i.co = fmul double %i.h, %i.bj
  %i.cp = fmul double %.sroa.3.0.copyload.i, %i.bo
  %i.cq = fmul double %.sroa.0.0.copyload.i, %i.bo
  %i.cr = fadd double %i.cn, %i.cp
  %i.cs = fadd double %i.co, %i.cq
  %i.ct = fmul double %.sroa.3.0.copyload.i17, %i.bv
  %i.cu = fmul double %.sroa.0.0.copyload.i15, %i.bv
  %i.cv = fadd double %i.cr, %i.ct
  %i.cw = fadd double %i.cs, %i.cu
  store double %i.cw, ptr %2, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.cv, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !130
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.de = load <1 x double>, ptr %spec.select.i11.1.i.i, align 8
  %i.df = load <1 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.dg = load <1 x double>, ptr %3, align 8
  %i.dh = shufflevector <1 x double> %i.de, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.dh, <2 x double> %i.dd)
  %i.dj = shufflevector <1 x double> %i.df, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.dj, <2 x double> %i.di)
  %i.dl = shufflevector <1 x double> %i.dg, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.dl, <2 x double> %i.dk) ; 3 uses
  %i.dn = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.dh, <2 x double> %i.dn)
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.dj, <2 x double> %i.do)
  %i.dq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %i.dl, <2 x double> %i.dp) ; 3 uses
  %20 = extractelement <2 x double> %i.dm, i64 1  ; 2 uses
  %21 = call double @llvm.fmuladd.f64(double %20, double %20, double 0.000000e+00)
  %i.dr = extractelement <2 x double> %i.dm, i64 0 ; 2 uses
  %i.ds = call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %21)
  %i.dt = extractelement <2 x double> %i.dq, i64 1 ; 2 uses
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.ds)
  %i.dv = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  %i.dw = call noundef double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %i.du)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.dw)
  %i.dx = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fdiv <2 x double> %i.dm, %i.dy          ; 2 uses
  %i.ea = fdiv <2 x double> %i.dq, %i.dy          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.ed = extractelement <2 x double> %i.dz, i64 1 ; 2 uses
  %i.ee = call double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.eg = extractelement <2 x double> %i.dz, i64 0 ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.ef, double %i.ee)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.ej = extractelement <2 x double> %i.ea, i64 1 ; 2 uses
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double %i.ei, double %i.eh)
  %i.el = load double, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %i.em = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.en = call noundef double @llvm.fmuladd.f64(double %i.em, double %i.el, double %i.ek) ; 6 uses
  %i.eo = fmul double %i.ed, %i.en
  %i.ep = fmul double %i.eg, %i.en
  %i.eq = fmul double %i.ej, %i.en
  %i.er = fmul double %i.em, %i.en
  %i.es = fmul double %i.eo, 2.000000e+00
  %i.et = fmul double %i.ep, 2.000000e+00
  %i.eu = fmul double %i.eq, 2.000000e+00
  %i.ev = fmul double %i.er, 2.000000e+00
  %i.ew = fsub double %i.es, %i.ec                ; 2 uses
  %i.ex = fsub double %i.eu, %i.ei                ; 2 uses
  %i.ey = fsub double %i.ev, %i.el                ; 2 uses
  %22 = call double @llvm.fmuladd.f64(double %i.ew, double %i.ew, double 0.000000e+00)
  %i.ez = fcmp ogt double %i.en, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.ez, double %i.en, double 0.000000e+00
  %i.fa = load ptr, ptr %i.cy, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fb = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fa) ; 3 uses
  %i.fc = load double, ptr %2, align 8, !tbaa !14
  %i.fd = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fb)
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fptosi double %i.ff to i32
  %i.fh = load double, ptr %i.cx, align 8, !tbaa !14
  %i.fi = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fb)
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fmul double %i.fh, %i.fj
  %i.fl = fptosi double %i.fk to i32
  %i.fm = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, i32 noundef %i.fg, i32 noundef %i.fl)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.fm to i8
  %i.fn = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.fo = fsub double %i.et, %i.ef                ; 3 uses
  %i.fp = call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %22)
  %i.fq = call double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.fp)
  %i.fr = call noundef double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.fq)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.fr)
  %i.fs = fmul nnan double %i.fn, 2.000000e+00
  %i.ft = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.fw = fdiv <2 x double> %i.fu, %i.fv          ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  %i.fy = fadd nnan double %i.fx, 5.000000e-01
  %i.fz = extractelement <2 x double> %i.fw, i64 0 ; 2 uses
  %i.ga = fcmp olt double %i.fz, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.ga, double 0.000000e+00, double %i.fz
  %i.gb = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gc = fmul double %i.gb, %i.fy
  %i.gd = load ptr, ptr %i.cy, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.ge = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gd) ; 3 uses
  %i.gf = load double, ptr %2, align 8, !tbaa !14
  %i.gg = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ge)
  %i.gh = sitofp i32 %i.gg to double
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fptosi double %i.gi to i32
  %i.gk = load double, ptr %i.cx, align 8, !tbaa !14
  %i.gl = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ge)
  %i.gm = sitofp i32 %i.gl to double
  %i.gn = fmul double %i.gk, %i.gm
  %i.go = fptosi double %i.gn to i32
  %i.gp = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.ge, i32 noundef %i.gj, i32 noundef %i.go) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.gp, -16777216
  %i.gq = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.gr = fadd double %i.gq, %i.gc                ; 3 uses
  %i.gs = trunc i40 %i.gp to i8
  %i.gt = uitofp i8 %i.gs to double
  %i.gu = fmul double %i.gr, %i.gt
  %i.gv = fptosi double %i.gu to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gv, i32 255)
  %i.gw = lshr i40 %i.gp, 8
  %i.gx = trunc i40 %i.gw to i8
  %i.gy = uitofp i8 %i.gx to double
  %i.gz = fmul double %i.gr, %i.gy
  %i.ha = fptosi double %i.gz to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.ha, i32 255)
  %i.hb = lshr i40 %i.gp, 16
  %i.hc = trunc i40 %i.hb to i8
  %i.hd = uitofp i8 %i.hc to double
  %i.he = fmul double %i.gr, %i.hd
  %i.hf = fptosi double %i.he to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hf, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hg = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hg to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.hh = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.hh to i40
  %.sroa.5.0.insert.insert = or disjoint i40 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.mask254 = and i32 %.sroa.speculated, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask254 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.sroa.2.0.insert.ext = zext i40 %.sroa.0.0.insert.insert to i48
  %.sroa.2.0.insert.shift = shl nuw i48 %.sroa.2.0.insert.ext, 8
  ret i48 %.sroa.2.0.insert.shift
}

declare void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind noalias writable sret(%struct.mat) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.mat, align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 7 uses
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.cb, %.preheader ] ; 3 uses
  %i.a = icmp samesign ult i32 %.0612, 4
  %i.b = select i1 %i.a, i64 3, i64 2
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = icmp samesign ult i32 %.0612, 3
  %i.e = select i1 %i.d, i64 2, i64 1
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.g = icmp samesign ult i32 %.0612, 2
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %spec.select.i.1.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 2 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.p = fneg double %i.k                         ; 2 uses
  %i.q = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !14 ; 4 uses
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.s, <2 x double> zeroinitializer)
  %i.u = load <2 x double>, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.l, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.t) ; 4 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = extractelement <2 x double> %i.u, i64 0
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = extractelement <2 x double> %i.q, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> zeroinitializer)
  %i.ag = extractelement <2 x double> %i.u, i64 1
  %i.ah = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x double> %i.ah, double %i.n, i64 0 ; 2 uses
  %i.aj = fneg <2 x double> %i.x
  %i.ak = shufflevector <2 x double> %i.u, <2 x double> %i.aj, <2 x i32> <i32 3, i32 1>
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ak, <2 x double> %i.af) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.an, double %i.am) ; 2 uses
  %i.ap = and i64 %indvars.iv, 1
  %.not13.i.not = icmp eq i64 %i.ap, 0
  %i.aq = fneg double %i.ao
  %i.ar = select i1 %.not13.i.not, double %i.aq, double %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store double %i.ar, ptr %i.as, align 8, !tbaa !14
  %spec.select.i.i8.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.at = load double, ptr %spec.select.i.i8.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.au = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.av = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !14 ; 3 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.p, double 0.000000e+00)
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.at, double %i.aw)
  %i.ay = fneg double %i.ax                       ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.au, i64 1
  %i.bb = insertelement <2 x double> %i.x, double %i.aa, i64 1
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bb, <2 x double> zeroinitializer)
  %i.bd = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.at, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.be, <2 x double> %i.bc) ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  %i.bh = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bi = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.bh, double %i.bg) ; 2 uses
  %i.bj = and i64 %indvars.iv, 1
  %.not13.i.1 = icmp eq i64 %i.bj, 0
  %i.bk = fneg double %i.bi
  %i.bl = select i1 %.not13.i.1, double %i.bi, double %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.bl, ptr %i.bm, align 16, !tbaa !14
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.av, double %i.y, double 0.000000e+00)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ay, double %i.bn)
  %i.bp = fneg double %i.ag
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.au, double %i.bp, double 0.000000e+00)
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.at, double %i.bq) ; 2 uses
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.br, double %i.bo) ; 2 uses
  %i.bt = and i64 %indvars.iv, 1
  %.not13.i.2.not = icmp eq i64 %i.bt, 0
  %i.bu = fneg double %i.bs
  %i.bv = select i1 %.not13.i.2.not, double %i.bu, double %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !14
  %i.bx = fneg double %i.bh
  %i.by = tail call double @llvm.fmuladd.f64(double %i.av, double %i.an, double 0.000000e+00)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bx, double %i.by)
  %i.ca = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.br, double %i.bz)
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = and i32 %i.cb, 1
  %.not13.i.3 = icmp eq i32 %i.cc, 0
  %i.cd = select i1 %.not13.i.3, i32 1, i32 -1
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fmul double %i.ca, %i.ce
  store double %i.cf, ptr %i.j, align 16, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load double, ptr %spec.select.i11.i, align 8, !tbaa !14
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14
  %i.cj = load double, ptr %1, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load <2 x double>, ptr %2, align 16, !tbaa !14 ; 3 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  %i.cs = extractelement <2 x double> %i.cq, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !14 ; 3 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cg, double 0.000000e+00)
  %i.cw = extractelement <2 x double> %i.ct, i64 0
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ch, double %i.cv)
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.ci, double %i.cx)
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %i.cs, double %i.cj, double %i.cy)
  %i.da = load <2 x double>, ptr %i.ck, align 16, !tbaa !14, !noalias !134
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.dd = fdiv <2 x double> %i.da, %i.dc
  store <2 x double> %i.dd, ptr %i.cl, align 8, !tbaa !14, !alias.scope !134
  %i.de = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !14, !noalias !134
  %i.df = fdiv <2 x double> %i.de, %i.dc
  store <2 x double> %i.df, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !134
  %i.dg = load <2 x double>, ptr %i.cm, align 16, !tbaa !14, !noalias !134
  %i.dh = fdiv <2 x double> %i.dg, %i.dc
  store <2 x double> %i.dh, ptr %i.cn, align 8, !tbaa !14, !alias.scope !134
  %i.di = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !14, !noalias !134
  %i.dj = fdiv <2 x double> %i.di, %i.dc
  store <2 x double> %i.dj, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !14, !alias.scope !134
  %i.dk = load <2 x double>, ptr %i.co, align 16, !tbaa !14, !noalias !134
  %i.dl = fdiv <2 x double> %i.dk, %i.dc
  store <2 x double> %i.dl, ptr %i.cp, align 8, !tbaa !14, !alias.scope !134
  %i.dm = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !14, !noalias !134
  %i.dn = fdiv <2 x double> %i.dm, %i.dc
  store <2 x double> %i.dn, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !14, !alias.scope !134
  %i.do = fdiv <2 x double> %i.ct, %i.dc
  %i.dp = fdiv <2 x double> %i.cq, %i.dc
  store <2 x double> %i.dp, ptr %0, align 8, !tbaa !14, !alias.scope !134
  store <2 x double> %i.do, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !14, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZNK5Model6normalEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK5Model4vertEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS5Model", !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"_ZTS7IShader"}
!18 = !{!"_ZTS3vecILi4EE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!19 = !{!"_ZTS11PhongShader", !17, i64 0, !15, i64 8, !18, i64 16, !6, i64 48, !6, i64 96, !6, i64 192}
!20 = !{!19, !15, i64 8}
!21 = !{}
!22 = !{i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!24 = !{!23, !11, i64 0}
!25 = !{!23, !11, i64 16}
!26 = distinct !{null, null, null, null}
!27 = distinct !{!27, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!28 = distinct !{!28, !27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, i1 true, !"_ZN11PhongShader6vertexEii"}
!31 = distinct !{!31, !30, !"_ZN11PhongShader6vertexEii: argument 0"}
!32 = distinct !{!32, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!33 = distinct !{!33, !32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!34 = distinct !{!34, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!35 = distinct !{!35, !34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!37 = distinct !{!37, !36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZN11PhongShader6vertexEii"}
!39 = distinct !{!39, !38, !"_ZN11PhongShader6vertexEii: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!43 = distinct !{!43, !42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!45 = distinct !{!45, !44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZN11PhongShader6vertexEii"}
!47 = distinct !{!47, !46, !"_ZN11PhongShader6vertexEii: argument 0"}
!48 = distinct !{!48, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!49 = distinct !{!49, !48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!51 = distinct !{!51, !50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!53 = distinct !{!53, !52, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!54 = distinct !{!54, !16}
!55 = !{!11, !11, i64 0}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"long", !6, i64 0}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !58, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt8ios_base", !58, i64 8, !58, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !6, i64 64, !7, i64 192, !63, i64 200, !65, i64 208}
!67 = !{!66, !60, i64 32}
!68 = !{!"p1 _ZTSSo", !10, i64 0}
!69 = !{!"bool", !6, i64 0}
!70 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!71 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!72 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!73 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!74 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !66, i64 0, !68, i64 216, !6, i64 224, !69, i64 225, !70, i64 232, !71, i64 240, !72, i64 248, !73, i64 256}
!75 = !{!74, !71, i64 240}
!76 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!77 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!78 = !{!"p1 short", !10, i64 0}
!79 = !{!"_ZTSSt5ctypeIcE", !76, i64 0, !77, i64 16, !69, i64 24, !12, i64 32, !12, i64 40, !78, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!80 = !{!79, !6, i64 56}
!81 = !{!6, !6, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!83 = !{!82, !11, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !58, i64 8, !6, i64 16}
!85 = !{!84, !58, i64 8}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!87 = !{!84, !11, i64 0}
!88 = !{!15, !15, i64 0}
!89 = !{!28}
!90 = !{!31}
!91 = !{!33, !31}
!92 = !{!35, !31}
!93 = !{!37}
!94 = !{!37, !31}
!95 = !{!39}
!96 = !{!41, !39}
!97 = !{!43, !39}
!98 = !{!45}
!99 = !{!45, !39}
!100 = !{!47}
!101 = !{!49, !47}
!102 = !{!51, !47}
!103 = !{!53}
!104 = !{!53, !47}
!105 = distinct !{!105, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!106 = distinct !{!106, !105, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!108 = distinct !{!108, !107, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!110 = distinct !{!110, !109, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!111 = !{!106}
!112 = !{!108}
!113 = !{!110}
!114 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!115 = !{!114, !12, i64 0}
!116 = !{!114, !12, i64 16}
!117 = !{!"p1 _ZTS3vecILi2EE", !10, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseI3vecILi2EESaIS1_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!119 = !{!118, !117, i64 0}
!120 = !{!118, !117, i64 16}
!121 = !{!"p1 _ZTS3vecILi4EE", !10, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseI3vecILi4EESaIS1_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!122, !121, i64 0}
!124 = !{!122, !121, i64 16}
!125 = distinct !{!125, i1 true, !"_ZmiILi4EE3vecIXT_EERKS1_S3_"}
!126 = distinct !{!126, !125, !"_ZmiILi4EE3vecIXT_EERKS1_S3_: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!128 = distinct !{!128, !127, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!129 = !{!126}
!130 = !{!128}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, i1 true, !"_ZdvILi4ELi4EE3matIXT_EXT0_EERKS1_RKd"}
!133 = distinct !{!133, !132, !"_ZdvILi4ELi4EE3matIXT_EXT0_EERKS1_RKd: argument 0"}
!134 = !{!133}
end_hunk_1
