Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@main:bb.a
  %5 = alloca %struct.mat, align 8                ; 5 uses
  %6 = alloca %struct.vec.18, align 8             ; 7 uses
  %7 = alloca %struct.vec.18, align 8             ; 7 uses
  %8 = alloca %struct.mat, align 8                ; 5 uses
  %9 = alloca %struct.vec.18, align 8             ; 7 uses
  %10 = alloca %struct.vec.18, align 8            ; 7 uses
  %11 = alloca %struct.vec, align 16              ; 3 uses
  %12 = alloca %struct.vec, align 8               ; 2 uses
  %13 = alloca %struct.TGAImage, align 8          ; 10 uses
  %14 = alloca %class.Model, align 8              ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %struct.PhongShader, align 8       ; 27 uses
  %17 = alloca [3 x %struct.vec.18], align 16     ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 14) ; 0 uses
  %i.n = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !80
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

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
          to label %.noexc39 unwind label %.loopexit.split-lp

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
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc.i38
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bj = add nuw i64 %i.bg, 1                    ; 2 uses
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %.noexc11.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, !prof !86

.noexc11.i37:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #14
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc11.i37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.m
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #15
          to label %.noexc42 unwind label %.loopexit.split-lp ; 2 uses

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
  %i.cn = extractelement <2 x double> %i.cm, i64 1 ; 2 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double 0.000000e+00)
  %i.cp = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.cq = call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.co)
  %i.cr = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cq)
  %i.cs = call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cr)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.cs)
  %i.ct = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fdiv <2 x double> %i.cm, %i.cu
  %i.cw = fdiv <2 x double> %i.cb, %i.cu
  store <2 x double> %i.cw, ptr %i.ag, align 8, !tbaa !14
  store <2 x double> %i.cv, ptr %.sroa.917.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %.0 = phi i32 [ %i.mr, %bb.aa ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.cx = invoke noundef i32 @_ZNK5Model6nfacesEv(ptr noundef nonnull align 8 dereferenceable(264) %14)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cy = icmp slt i32 %.0, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.i, !llvm.loop !29

.loopexit.split-lp:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, %.noexc11.i37, %.noexc.i38, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.u:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %15, align 8, !tbaa !87   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ad
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.u
  %i.dc = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.v:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.df = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  %i.dg = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.df, i32 noundef %.0, i32 noundef 0)
          to label %.noexc47 unwind label %bb.ab  ; 2 uses

.noexc47:                                         ; preds = %bb.w
  %i.dh = extractvalue { double, double } %i.dg, 0
  %i.di = extractvalue { double, double } %i.dg, 1
  store double %i.dh, ptr %i.ah, align 8, !tbaa !14, !noalias !90
  store double %i.di, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !90
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc48 unwind label %bb.ab

.noexc48:                                         ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !90
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %9, ptr noundef nonnull align 8 dereferenceable(264) %i.dj, i32 noundef %.0, i32 noundef 0)
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %.noexc48
  %i.dk = load <8 x double>, ptr %8, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.dl = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dm = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dn = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.do = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dp = load <8 x double>, ptr %i.ai, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.dq = load double, ptr %spec.select.i11.i.i.i, align 8, !tbaa !14, !noalias !91
  %i.dr = load <1 x double>, ptr %spec.select.i11.1.i.i.i, align 8
  %i.ds = load <1 x double>, ptr %spec.select.i11.2.i.i.i, align 8
  %i.dt = load <1 x double>, ptr %9, align 8
  %i.du = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dv = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dw, <2 x double> zeroinitializer)
  %i.dy = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dz = shufflevector <1 x double> %i.dr, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dz, <2 x double> %i.dx)
  %i.eb = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ec = shufflevector <1 x double> %i.ds, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ec, <2 x double> %i.ea)
  %i.ee = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ef = shufflevector <1 x double> %i.dt, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ef, <2 x double> %i.ed)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dw, <2 x double> zeroinitializer)
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dz, <2 x double> %i.eh)
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.ec, <2 x double> %i.ei)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ef, <2 x double> %i.ej)
  store <2 x double> %i.ek, ptr %i.aj, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.eg, ptr %.sroa.517.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !90
  %i.el = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %10, ptr noundef nonnull align 8 dereferenceable(264) %i.el, i32 noundef %.0, i32 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %.noexc49
  %i.em = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.en = shufflevector <8 x double> %i.em, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.eo = shufflevector <8 x double> %i.em, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ep = shufflevector <8 x double> %i.em, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.eq = shufflevector <8 x double> %i.em, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.er = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.es = load double, ptr %spec.select.i11.i.i9.i, align 8, !tbaa !14, !noalias !92
  %i.et = load <1 x double>, ptr %spec.select.i11.1.i.i10.i, align 8
  %i.eu = load <1 x double>, ptr %spec.select.i11.2.i.i11.i, align 8
  %i.ev = load <1 x double>, ptr %10, align 8
  %i.ew = shufflevector <8 x double> %i.er, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ex = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> zeroinitializer)
  %i.fa = shufflevector <8 x double> %i.er, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.fb = shufflevector <1 x double> %i.et, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fb, <2 x double> %i.ez)
  %i.fd = shufflevector <8 x double> %i.er, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.fe = shufflevector <1 x double> %i.eu, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.fc)
  %i.fg = shufflevector <8 x double> %i.er, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.fh = shufflevector <1 x double> %i.ev, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fh, <2 x double> %i.ff) ; 3 uses
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ey, <2 x double> zeroinitializer)
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.fb, <2 x double> %i.fj)
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.fe, <2 x double> %i.fk)
  %i.fm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.fh, <2 x double> %i.fl) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !90
  store <2 x double> %i.fm, ptr %i.ak, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.fi, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.fn = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.fo = shufflevector <8 x double> %i.fn, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.fp = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fp, <2 x double> zeroinitializer)
  %i.fr = shufflevector <8 x double> %i.fn, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.fs = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fq)
  %i.fu = shufflevector <8 x double> %i.fn, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.fv = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fv, <2 x double> %i.ft)
  %i.fx = shufflevector <8 x double> %i.fn, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.fy = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fy, <2 x double> %i.fw)
  store <2 x double> %i.fz, ptr %i.al, align 16, !tbaa !14, !alias.scope !94
  %i.ga = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.gb = shufflevector <8 x double> %i.ga, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fp, <2 x double> zeroinitializer)
  %i.gd = shufflevector <8 x double> %i.ga, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fs, <2 x double> %i.gc)
  %i.gf = shufflevector <8 x double> %i.ga, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.fv, <2 x double> %i.ge)
  %i.gh = shufflevector <8 x double> %i.ga, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.fy, <2 x double> %i.gg)
  store <2 x double> %i.gi, ptr %17, align 16, !tbaa !14, !alias.scope !94
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.gj = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  %i.gk = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.gj, i32 noundef %.0, i32 noundef 1)
          to label %.noexc76 unwind label %bb.ab  ; 2 uses

.noexc76:                                         ; preds = %bb.x
  %i.gl = extractvalue { double, double } %i.gk, 0
  %i.gm = extractvalue { double, double } %i.gk, 1
  store double %i.gl, ptr %i.an, align 8, !tbaa !14, !noalias !95
  store double %i.gm, ptr %.sroa.4.0..sroa_idx.i51, align 8, !tbaa !14, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !95
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc77 unwind label %bb.ab

.noexc77:                                         ; preds = %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !95
  %i.gn = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.gn, i32 noundef %.0, i32 noundef 1)
          to label %.noexc78 unwind label %bb.ab

.noexc78:                                         ; preds = %.noexc77
  %i.go = load <8 x double>, ptr %5, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.gp = shufflevector <8 x double> %i.go, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gq = shufflevector <8 x double> %i.go, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gr = shufflevector <8 x double> %i.go, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gs = shufflevector <8 x double> %i.go, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gt = load <8 x double>, ptr %i.ao, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.gu = load double, ptr %spec.select.i11.i.i.i52, align 8, !tbaa !14, !noalias !96
  %i.gv = load <1 x double>, ptr %spec.select.i11.1.i.i.i53, align 8
  %i.gw = load <1 x double>, ptr %spec.select.i11.2.i.i.i54, align 8
  %i.gx = load <1 x double>, ptr %6, align 8
  %i.gy = shufflevector <8 x double> %i.gt, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gz = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ha, <2 x double> zeroinitializer)
  %i.hc = shufflevector <8 x double> %i.gt, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.hd = shufflevector <1 x double> %i.gv, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.hb)
  %i.hf = shufflevector <8 x double> %i.gt, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.hg = shufflevector <1 x double> %i.gw, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hg, <2 x double> %i.he)
  %i.hi = shufflevector <8 x double> %i.gt, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.hj = shufflevector <1 x double> %i.gx, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hj, <2 x double> %i.hh)
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.ha, <2 x double> zeroinitializer)
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.hd, <2 x double> %i.hl)
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.hg, <2 x double> %i.hm)
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.hj, <2 x double> %i.hn)
  store <2 x double> %i.ho, ptr %i.ap, align 8, !tbaa !14, !noalias !95
  store <2 x double> %i.hk, ptr %.sroa.517.0..sroa_idx.i68, align 8, !tbaa !14, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !95
  %i.hp = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %7, ptr noundef nonnull align 8 dereferenceable(264) %i.hp, i32 noundef %.0, i32 noundef 1)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %.noexc78
  %i.hq = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !97 ; 4 uses
  %i.hr = shufflevector <8 x double> %i.hq, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.hs = shufflevector <8 x double> %i.hq, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ht = shufflevector <8 x double> %i.hq, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.hu = shufflevector <8 x double> %i.hq, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.hv = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !97 ; 4 uses
  %i.hw = load double, ptr %spec.select.i11.i.i9.i70, align 8, !tbaa !14, !noalias !97
  %i.hx = load <1 x double>, ptr %spec.select.i11.1.i.i10.i71, align 8
  %i.hy = load <1 x double>, ptr %spec.select.i11.2.i.i11.i72, align 8
  %i.hz = load <1 x double>, ptr %7, align 8
  %i.ia = shufflevector <8 x double> %i.hv, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ib = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ic, <2 x double> zeroinitializer)
  %i.ie = shufflevector <8 x double> %i.hv, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.if = shufflevector <1 x double> %i.hx, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.if, <2 x double> %i.id)
  %i.ih = shufflevector <8 x double> %i.hv, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ii = shufflevector <1 x double> %i.hy, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ii, <2 x double> %i.ig)
  %i.ik = shufflevector <8 x double> %i.hv, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.il = shufflevector <1 x double> %i.hz, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.il, <2 x double> %i.ij) ; 3 uses
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.ic, <2 x double> zeroinitializer)
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.if, <2 x double> %i.in)
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.ii, <2 x double> %i.io)
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.il, <2 x double> %i.ip) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !95
  store <2 x double> %i.iq, ptr %i.aq, align 8, !tbaa !14, !noalias !95
  store <2 x double> %i.im, ptr %.sroa.7.0..sroa_idx.i74, align 8, !tbaa !14, !noalias !95
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ir = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !99 ; 4 uses
  %i.is = shufflevector <8 x double> %i.ir, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.it = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.it, <2 x double> zeroinitializer)
  %i.iv = shufflevector <8 x double> %i.ir, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.iw = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.iw, <2 x double> %i.iu)
  %i.iy = shufflevector <8 x double> %i.ir, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.iz = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iz, <2 x double> %i.ix)
  %i.jb = shufflevector <8 x double> %i.ir, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jc = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jc, <2 x double> %i.ja)
  store <2 x double> %i.jd, ptr %i.ar, align 16, !tbaa !14, !alias.scope !99
  %i.je = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !99 ; 4 uses
  %i.jf = shufflevector <8 x double> %i.je, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.it, <2 x double> zeroinitializer)
  %i.jh = shufflevector <8 x double> %i.je, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.iw, <2 x double> %i.jg)
  %i.jj = shufflevector <8 x double> %i.je, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.iz, <2 x double> %i.ji)
  %i.jl = shufflevector <8 x double> %i.je, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jc, <2 x double> %i.jk)
  store <2 x double> %i.jm, ptr %i.am, align 16, !tbaa !14, !alias.scope !99
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.jn = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  %i.jo = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.jn, i32 noundef %.0, i32 noundef 2)
          to label %.noexc106 unwind label %bb.ab ; 2 uses

.noexc106:                                        ; preds = %bb.y
  %i.jp = extractvalue { double, double } %i.jo, 0
  %i.jq = extractvalue { double, double } %i.jo, 1
  store double %i.jp, ptr %i.at, align 8, !tbaa !14, !noalias !100
  store double %i.jq, ptr %.sroa.4.0..sroa_idx.i81, align 8, !tbaa !14, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !100
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc107 unwind label %bb.ab

.noexc107:                                        ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !100
  %i.jr = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.jr, i32 noundef %.0, i32 noundef 2)
          to label %.noexc108 unwind label %bb.ab

.noexc108:                                        ; preds = %.noexc107
  %i.js = load <8 x double>, ptr %2, align 8, !tbaa !14, !noalias !101 ; 4 uses
  %i.jt = shufflevector <8 x double> %i.js, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ju = shufflevector <8 x double> %i.js, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.jv = shufflevector <8 x double> %i.js, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.jw = shufflevector <8 x double> %i.js, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jx = load <8 x double>, ptr %i.au, align 8, !tbaa !14, !noalias !101 ; 4 uses
  %i.jy = load double, ptr %spec.select.i11.i.i.i82, align 8, !tbaa !14, !noalias !101
  %i.jz = load <1 x double>, ptr %spec.select.i11.1.i.i.i83, align 8
  %i.ka = load <1 x double>, ptr %spec.select.i11.2.i.i.i84, align 8
  %i.kb = load <1 x double>, ptr %3, align 8
  %i.kc = shufflevector <8 x double> %i.jx, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.kd = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.ke, <2 x double> zeroinitializer)
  %i.kg = shufflevector <8 x double> %i.jx, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.kh = shufflevector <1 x double> %i.jz, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kh, <2 x double> %i.kf)
  %i.kj = shufflevector <8 x double> %i.jx, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.kk = shufflevector <1 x double> %i.ka, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kk, <2 x double> %i.ki)
  %i.km = shufflevector <8 x double> %i.jx, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.kn = shufflevector <1 x double> %i.kb, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.kn, <2 x double> %i.kl)
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.ke, <2 x double> zeroinitializer)
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.kh, <2 x double> %i.kp)
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.kk, <2 x double> %i.kq)
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.kn, <2 x double> %i.kr)
  store <2 x double> %i.ks, ptr %i.av, align 8, !tbaa !14, !noalias !100
  store <2 x double> %i.ko, ptr %.sroa.517.0..sroa_idx.i98, align 8, !tbaa !14, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !100
  %i.kt = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.kt, i32 noundef %.0, i32 noundef 2)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.noexc108
  %i.ku = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !102 ; 4 uses
  %i.kv = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.kw = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.kx = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ky = shufflevector <8 x double> %i.ku, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.kz = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !102 ; 4 uses
  %i.la = load double, ptr %spec.select.i11.i.i9.i100, align 8, !tbaa !14, !noalias !102
  %i.lb = load <1 x double>, ptr %spec.select.i11.1.i.i10.i101, align 8
  %i.lc = load <1 x double>, ptr %spec.select.i11.2.i.i11.i102, align 8
  %i.ld = load <1 x double>, ptr %4, align 8
  %i.le = shufflevector <8 x double> %i.kz, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.lf = insertelement <2 x double> poison, double %i.la, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lg, <2 x double> zeroinitializer)
  %i.li = shufflevector <8 x double> %i.kz, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.lj = shufflevector <1 x double> %i.lb, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.lj, <2 x double> %i.lh)
  %i.ll = shufflevector <8 x double> %i.kz, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.lm = shufflevector <1 x double> %i.lc, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> %i.lm, <2 x double> %i.lk)
  %i.lo = shufflevector <8 x double> %i.kz, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.lp = shufflevector <1 x double> %i.ld, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.lp, <2 x double> %i.ln) ; 3 uses
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.lg, <2 x double> zeroinitializer)
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.lj, <2 x double> %i.lr)
  %i.lt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.lm, <2 x double> %i.ls)
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.lp, <2 x double> %i.lt) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !100
  store <2 x double> %i.lu, ptr %i.aw, align 8, !tbaa !14, !noalias !100
  store <2 x double> %i.lq, ptr %.sroa.7.0..sroa_idx.i104, align 8, !tbaa !14, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.lv = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !104 ; 4 uses
  %i.lw = shufflevector <8 x double> %i.lv, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.lx = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lx, <2 x double> zeroinitializer)
  %i.lz = shufflevector <8 x double> %i.lv, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ma = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ma, <2 x double> %i.ly)
  %i.mc = shufflevector <8 x double> %i.lv, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.md = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.md, <2 x double> %i.mb)
  %i.mf = shufflevector <8 x double> %i.lv, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.mg = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mg, <2 x double> %i.me)
  store <2 x double> %i.mh, ptr %i.ax, align 16, !tbaa !14, !alias.scope !104
  %i.mi = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !104 ; 4 uses
  %i.mj = shufflevector <8 x double> %i.mi, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.lx, <2 x double> zeroinitializer)
  %i.ml = shufflevector <8 x double> %i.mi, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ma, <2 x double> %i.mk)
  %i.mn = shufflevector <8 x double> %i.mi, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.md, <2 x double> %i.mm)
  %i.mp = shufflevector <8 x double> %i.mi, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.mq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.mg, <2 x double> %i.mo)
  store <2 x double> %i.mq, ptr %i.as, align 16, !tbaa !14, !alias.scope !104
  invoke void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  %i.mr = add nuw nsw i32 %.0, 1
  br label %bb.r, !llvm.loop !54

bb.ab:                                            ; preds = %.noexc108, %.noexc107, %.noexc106, %bb.y, %.noexc78, %.noexc77, %.noexc76, %bb.x, %.noexc49, %.noexc48, %.noexc47, %bb.w, %bb.z
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %bb.ab
  %.pn28.pn = phi { ptr, i32 } [ %i.de, %bb.v ], [ %i.ms, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %14) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.u, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.ac
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ac ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.mt = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.az
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ad
  %i.mv = load i64, ptr %i.az, align 8, !tbaa !81
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.mx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i, label %_ZN8TGAImageD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.mz = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !25
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #16
  br label %_ZN8TGAImageD2Ev.exit

_ZN8TGAImageD2Ev.exit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.az
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.af
  %i.nh = load i64, ptr %i.az, align 8, !tbaa !81
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.ne, %bb.af ]
  %i.nj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i117, label %_ZN8TGAImageD2Ev.exit118, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.nl = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !25
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nk to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.np) #16
  br label %_ZN8TGAImageD2Ev.exit118

_ZN8TGAImageD2Ev.exit118:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  resume { ptr, i32 } %.pn28.pn.pn.pn

bb.ah:                                            ; preds = %_ZN8TGAImageD2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.023 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %_ZN8TGAImageD2Ev.exit ]
  ret i32 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_Z6lookat3vecILi3EES0_S0_(ptr noundef byval(%struct.vec) align 8, ptr noundef byval(%struct.vec) align 8, ptr noundef byval(%struct.vec) align 8) local_unnamed_addr #3

declare void @_Z16init_perspectived(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z13init_viewportiiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z12init_zbufferii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN8TGAImageC1Eiii8TGAColor(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, i32 noundef, i40) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #3

declare noundef i32 @_ZNK5Model6nfacesEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11PhongShader6vertexEii(ptr dead_on_unwind noalias writable sret(%struct.vec.18) align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %struct.mat, align 8                ; 5 uses
  %5 = alloca %struct.vec.18, align 8             ; 7 uses
  %6 = alloca %struct.vec.18, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.c = tail call { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = extractvalue { double, double } %i.c, 0
  %i.e = extractvalue { double, double } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = sext i32 %3 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  store double %i.d, ptr %i.h, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %5, ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %2, i32 noundef %3)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %i.m = load <8 x double>, ptr %4, align 8, !tbaa !14, !noalias !111 ; 4 uses
  %i.n = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.o = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.p = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.q = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load <8 x double>, ptr %i.j, align 8, !tbaa !14, !noalias !111 ; 4 uses
  %i.s = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !111
  %i.t = load <1 x double>, ptr %spec.select.i11.1.i.i, align 8
  %i.u = load <1 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.v = load <1 x double>, ptr %5, align 8
  %i.w = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.y, <2 x double> zeroinitializer)
  %i.aa = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ab = shufflevector <1 x double> %i.t, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ab, <2 x double> %i.z)
  %i.ad = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ae = shufflevector <1 x double> %i.u, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ac)
  %i.ag = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ah = shufflevector <1 x double> %i.v, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ah, <2 x double> %i.af)
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.y, <2 x double> zeroinitializer)
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.ab, <2 x double> %i.aj)
  %i.al = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.ae, <2 x double> %i.ak)
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.ah, <2 x double> %i.al)
  store <2 x double> %i.am, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.ai, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.an, i32 noundef %2, i32 noundef %3)
  %spec.select.i11.i.i9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %spec.select.i11.1.i.i10 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %spec.select.i11.2.i.i11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.g ; 2 uses
  %i.aq = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !112 ; 4 uses
  %i.ar = shufflevector <8 x double> %i.aq, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.as = shufflevector <8 x double> %i.aq, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.at = shufflevector <8 x double> %i.aq, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.au = shufflevector <8 x double> %i.aq, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !112 ; 4 uses
  %i.aw = load double, ptr %spec.select.i11.i.i9, align 8, !tbaa !14, !noalias !112
  %i.ax = load <1 x double>, ptr %spec.select.i11.1.i.i10, align 8
  %i.ay = load <1 x double>, ptr %spec.select.i11.2.i.i11, align 8
  %i.az = load <1 x double>, ptr %6, align 8
  %i.ba = shufflevector <8 x double> %i.av, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> zeroinitializer)
  %i.be = shufflevector <8 x double> %i.av, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.bf = shufflevector <1 x double> %i.ax, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.bd)
  %i.bh = shufflevector <8 x double> %i.av, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bi = shufflevector <1 x double> %i.ay, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bg)
  %i.bk = shufflevector <8 x double> %i.av, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.bl = shufflevector <1 x double> %i.az, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bl, <2 x double> %i.bj) ; 3 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bc, <2 x double> zeroinitializer)
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.bf, <2 x double> %i.bn)
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.bi, <2 x double> %i.bo)
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.bl, <2 x double> %i.bp) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  store <2 x double> %i.bq, ptr %i.ap, align 8, !tbaa !14
  store <2 x double> %i.bm, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
