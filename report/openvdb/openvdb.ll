Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 383
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1355
begin_hunk_0_@_ZNK7openvdb5v13_04math4Mat3IdE7inverseEd:bb.a
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9213 ; 5 uses
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9213 ; 4 uses
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9213 ; 5 uses
  %i.j = fneg <2 x double> %i.g                   ; 3 uses
  %i.k = shufflevector <2 x double> %i.f, <2 x double> %i.i, <2 x i32> <i32 1, i32 2>
  %i.l = fmul <2 x double> %i.k, %i.j
  %i.m = shufflevector <2 x double> %i.f, <2 x double> %i.i, <2 x i32> <i32 0, i32 3>
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.h, <2 x double> %i.l) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load <2 x double>, ptr %i.d, align 8, !tbaa !1104, !noalias !9213 ; 6 uses
  %i.q = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9213 ; 5 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !1104, !noalias !9213 ; 2 uses
  %i.s = load double, ptr %1, align 8, !tbaa !1104, !noalias !9213 ; 5 uses
  %i.t = fneg <2 x double> %i.f
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.v = fmul <2 x double> %i.p, %i.u
  %i.w = shufflevector <2 x double> %i.i, <2 x double> %i.n, <2 x i32> <i32 0, i32 2>
  %i.x = insertelement <2 x double> %i.q, double %i.s, i64 1
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.v) ; 3 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.r, double %i.aa) ; 2 uses
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp ule double %i.ac, %2
  br i1 %i.ad, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !1122
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !1125
  store i8 0, ptr %i.ae, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.16, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #26 ; 0 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !1127  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1126
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.ao, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.an, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aq = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ar, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !1127  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ae
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.k
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !1126
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.as

bb.l:                                             ; preds = %bb.a
  %i.ax = fneg double %i.r                        ; 2 uses
  %i.ay = fdiv double 1.000000e+00, %i.ab         ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fmul <2 x double> %i.n, %i.ba
  store <2 x double> %i.bb, ptr %0, align 8, !tbaa !1104, !alias.scope !9214
  %i.bc = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 1, i32 2>
  %i.bd = fneg <2 x double> %i.bc
  %i.be = insertelement <2 x double> %i.i, double %i.s, i64 1
  %i.bf = fmul <2 x double> %i.be, %i.bd
  %i.bg = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x double> %i.bg, double %i.s, i64 0
  %i.bi = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 0, i32 3>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bf) ; 2 uses
  %i.bk = insertelement <2 x double> %i.j, double %i.ax, i64 0
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bn = insertelement <2 x double> %i.bm, double %i.s, i64 0
  %i.bo = shufflevector <2 x double> %i.g, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bo, <2 x double> %i.bl)
  %i.bq = shufflevector <2 x double> %i.y, <2 x double> %i.bp, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.br = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.bq, <4 x double> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bt = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.bu = shufflevector <4 x double> %i.bt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x double> %i.bs, %i.bu
  store <4 x double> %i.bv, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9214
  %i.bw = shufflevector <2 x double> %i.f, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.bx = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.s, i64 1
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.cb = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.bz)
  %i.cd = fmul <2 x double> %i.cc, %i.ba
  store <2 x double> %i.cd, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9214
  %i.ce = extractelement <2 x double> %i.bj, i64 0
  %i.cf = fmul double %i.ce, %i.ay
  store double %i.cf, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9214
  ret void

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Mat4", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  store double 1.000000e+00, ptr %1, align 8, !tbaa !1104
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !1104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !1104
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !1104
  br label %bb.b

.loopexit115:                                     ; preds = %.loopexit113, %.loopexit116
  %exitcond157 = icmp eq i64 %indvars.iv.next155, 4
  br i1 %exitcond157, label %.critedge.preheader, label %bb.b, !llvm.loop !9215

bb.b:                                             ; preds = %bb.a, %.loopexit115
  %indvars.iv.a = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.loopexit115 ] ; 11 uses
  %.093128 = phi double [ 1.000000e+00, %bb.a ], [ %i.bs, %.loopexit115 ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv.a, 2         ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g ; 10 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.a ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104 ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 4 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv.a, 1 ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.a ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv.a, 3   ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.a to i32   ; 3 uses
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = and i64 %indvars.iv.a, 1
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.idx.prol = shl nuw nsw i64 %indvars.iv.next155, 5
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx.prol
  %i.o = load double, ptr %gep.prol, align 8, !tbaa !1104
  %i.p = tail call double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.q = fcmp ogt double %i.p, %i.k               ; 2 uses
  %.1109.prol = select i1 %i.q, double %i.p, double %i.k ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next155 to i32
  %.1.prol = select i1 %i.q, i32 %i.r, i32 %i.m   ; 2 uses
  %indvars.iv.next136.prol = add nuw nsw i64 %indvars.iv.a, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1109.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %.1109.prol, %.lr.ph.prol ]
  %.1.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1.prol, %.lr.ph.prol ]
  %indvars.iv135.unr = phi i64 [ %indvars.iv.next155, %.lr.ph.preheader ], [ %indvars.iv.next136.prol, %.lr.ph.prol ]
  %.089120.unr = phi i32 [ %i.m, %.lr.ph.preheader ], [ %.1.prol, %.lr.ph.prol ]
  %.0108119.unr = phi double [ %i.k, %.lr.ph.preheader ], [ %.1109.prol, %.lr.ph.prol ]
  %i.s = icmp eq i64 %indvars.iv.a, 2
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.0108.lcssa = phi double [ %i.k, %bb.b ], [ %.1109.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1109.1, %.lr.ph ]
  %.089.lcssa = phi i32 [ %i.m, %bb.b ], [ %.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1.1, %.lr.ph ] ; 2 uses
  %i.t = fcmp oeq double %.0108.lcssa, 0.000000e+00
  br i1 %i.t, label %.thread, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %.lr.ph ], [ %indvars.iv135.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.089120 = phi i32 [ %.1.1, %.lr.ph ], [ %.089120.unr, %.lr.ph.prol.loopexit ]
  %.0108119 = phi double [ %.1109.1, %.lr.ph ], [ %.0108119.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %gep.idx = shl nuw nsw i64 %indvars.iv135, 5
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx
  %i.u = load double, ptr %gep, align 8, !tbaa !1104
  %i.v = tail call double @llvm.fabs.f64(double %i.u) ; 2 uses
  %i.w = fcmp ogt double %i.v, %.0108119          ; 2 uses
  %.1109 = select i1 %i.w, double %i.v, double %.0108119 ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv135 to i32
  %.1 = select i1 %i.w, i32 %i.x, i32 %.089120
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %gep.idx.1 = shl nuw nsw i64 %indvars.iv.next136, 5
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx.1
  %i.y = load double, ptr %gep.1, align 8, !tbaa !1104
  %i.z = tail call double @llvm.fabs.f64(double %i.y) ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.1109            ; 2 uses
  %.1109.1 = select i1 %i.aa, double %i.z, double %.1109 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next136 to i32
  %.1.1 = select i1 %i.aa, i32 %i.ab, i32 %.1     ; 2 uses
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next136.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !9216

bb.c:                                             ; preds = %._crit_edge
  %i.ac = zext i32 %.089.lcssa to i64
  %.not = icmp eq i64 %indvars.iv.a, %i.ac
  br i1 %.not, label %..loopexit116_crit_edge, label %.loopexit116.loopexit

..loopexit116_crit_edge:                          ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !1104
  %i.ae = load <2 x double>, ptr %.phi.trans.insert, align 8, !tbaa !1104
  %.phi.trans.insert182 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.phi.trans.insert185 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %i.af = load <2 x double>, ptr %.phi.trans.insert182, align 8, !tbaa !1104
  %i.ag = load <2 x double>, ptr %.phi.trans.insert185, align 8, !tbaa !1104
  br label %.loopexit116

.loopexit116.loopexit:                            ; preds = %bb.c
  %.pre175 = load double, ptr %i.h, align 8, !tbaa !1104
  %i.ah = shl nuw nsw i32 %.089.lcssa, 2
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = load <2 x double>, ptr %i.aj, align 8, !tbaa !1104 ; 2 uses
  %i.ao = load double, ptr %i.am, align 8, !tbaa !1104
  %i.ap = load <2 x double>, ptr %i.ak, align 8, !tbaa !1104
  %i.aq = load <2 x double>, ptr %i.al, align 8, !tbaa !1104
  store <2 x double> %i.aq, ptr %i.ak, align 8, !tbaa !1104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = load <2 x double>, ptr %i.ar, align 8, !tbaa !1104 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.as, align 8, !tbaa !1104
  %i.ax = insertelement <4 x double> poison, double %.pre175, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.ao, i64 1
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.ba, ptr %i.aj, align 8, !tbaa !1104
  store <2 x double> %i.an, ptr %i.h, align 8, !tbaa !1104
  store <2 x double> %i.av, ptr %i.as, align 8, !tbaa !1104
  %i.bb = load <2 x double>, ptr %i.at, align 8, !tbaa !1104
  %i.bc = load <2 x double>, ptr %i.au, align 8, !tbaa !1104
  store <2 x double> %i.bc, ptr %i.at, align 8, !tbaa !1104
  %i.bd = fneg double %.093128
  %.pre = load double, ptr %i.i, align 8, !tbaa !1104
  br label %.loopexit116

.loopexit116:                                     ; preds = %..loopexit116_crit_edge, %.loopexit116.loopexit
  %i.be = phi double [ %i.j, %..loopexit116_crit_edge ], [ %.pre, %.loopexit116.loopexit ] ; 2 uses
  %.194 = phi double [ %.093128, %..loopexit116_crit_edge ], [ %i.bd, %.loopexit116.loopexit ]
  %i.bf = phi <2 x double> [ %i.ad, %..loopexit116_crit_edge ], [ %i.an, %.loopexit116.loopexit ]
  %i.bg = phi <2 x double> [ %i.af, %..loopexit116_crit_edge ], [ %i.av, %.loopexit116.loopexit ]
  %i.bh = phi <2 x double> [ %i.ae, %..loopexit116_crit_edge ], [ %i.ap, %.loopexit116.loopexit ]
  %i.bi = phi <2 x double> [ %i.ag, %..loopexit116_crit_edge ], [ %i.bb, %.loopexit116.loopexit ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.bk = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bm = fdiv <2 x double> %i.bf, %i.bl
  %i.bn = fdiv <2 x double> %i.bh, %i.bl
  store <2 x double> %i.bm, ptr %i.h, align 8, !tbaa !1104
  store <2 x double> %i.bn, ptr %i.bj, align 8, !tbaa !1104
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bp = fdiv <2 x double> %i.bg, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.br = fdiv <2 x double> %i.bi, %i.bl
  store <2 x double> %i.bp, ptr %i.bo, align 8, !tbaa !1104
  store <2 x double> %i.br, ptr %i.bq, align 8, !tbaa !1104
  %i.bs = fmul double %.194, %i.be                ; 3 uses
  br i1 %i.l, label %.lr.ph127, label %.loopexit115

.lr.ph127:                                        ; preds = %.loopexit116, %.loopexit113
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.loopexit113 ], [ %indvars.iv.next155, %.loopexit116 ] ; 2 uses
  %i.bt = shl nuw nsw i64 %indvars.iv150, 2       ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.a
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !1104 ; 2 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00
  br i1 %i.bx, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %.lr.ph127
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 3 uses
  %i.bz = load <2 x double>, ptr %i.h, align 8, !tbaa !1104
  %i.ca = load <2 x double>, ptr %i.bu, align 8, !tbaa !1104
  %i.cb = fneg <2 x double> %i.bz
  %i.cc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cd, <2 x double> %i.ca)
  store <2 x double> %i.ce, ptr %i.bu, align 8, !tbaa !1104
  %i.cf = load <2 x double>, ptr %i.bj, align 8, !tbaa !1104
  %i.cg = load <2 x double>, ptr %i.by, align 8, !tbaa !1104
  %i.ch = fneg <2 x double> %i.cf
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cd, <2 x double> %i.cg)
  store <2 x double> %i.ci, ptr %i.by, align 8, !tbaa !1104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cl = load <2 x double>, ptr %i.bo, align 8, !tbaa !1104
  %i.cm = load <2 x double>, ptr %i.cj, align 8, !tbaa !1104
  %i.cn = fneg <2 x double> %i.cl
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cd, <2 x double> %i.cm)
  store <2 x double> %i.co, ptr %i.cj, align 8, !tbaa !1104
  %i.cp = load <2 x double>, ptr %i.bq, align 8, !tbaa !1104
  %i.cq = load <2 x double>, ptr %i.ck, align 8, !tbaa !1104
  %i.cr = fneg <2 x double> %i.cp
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cd, <2 x double> %i.cq)
  store <2 x double> %i.cs, ptr %i.ck, align 8, !tbaa !1104
  br label %.loopexit113

.loopexit113:                                     ; preds = %.preheader112, %.lr.ph127
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 4
  br i1 %exitcond153.not, label %.loopexit115, label %.lr.ph127, !llvm.loop !9217

.critedge.preheader:                              ; preds = %.loopexit115
  %invariant.gep132 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.cu = load double, ptr %invariant.gep132, align 8, !tbaa !1104 ; 2 uses
  %i.cv = fcmp oeq double %i.cu, 0.000000e+00
  br i1 %i.cv, label %.loopexit, label %.preheader

.preheader.1:                                     ; preds = %.loopexit.2174
  %i.cw = load <2 x double>, ptr %i.gf, align 8, !tbaa !1104
  %i.cx = load <2 x double>, ptr %1, align 8, !tbaa !1104
  %i.cy = fneg <2 x double> %i.cw
  %i.cz = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> %i.cx)
  store <2 x double> %i.db, ptr %1, align 8, !tbaa !1104
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = load <2 x double>, ptr %i.dc, align 8, !tbaa !1104
  %i.df = load <2 x double>, ptr %i.dd, align 8, !tbaa !1104
  %i.dg = fneg <2 x double> %i.de
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.da, <2 x double> %i.df)
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !1104
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit.2174
  %gep133.1.1 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.di = load double, ptr %gep133.1.1, align 8, !tbaa !1104 ; 2 uses
  %i.dj = fcmp oeq double %i.di, 0.000000e+00
  br i1 %i.dj, label %.loopexit.1.1, label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.loopexit.1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dl = load <2 x double>, ptr %i.gf, align 8, !tbaa !1104
  %i.dm = load <2 x double>, ptr %i.dk, align 8, !tbaa !1104
  %i.dn = fneg <2 x double> %i.dl
  %i.do = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dp, <2 x double> %i.dm)
  store <2 x double> %i.dq, ptr %i.dk, align 8, !tbaa !1104
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dt = load <2 x double>, ptr %i.dr, align 8, !tbaa !1104
  %i.du = load <2 x double>, ptr %i.ds, align 8, !tbaa !1104
  %i.dv = fneg <2 x double> %i.dt
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dp, <2 x double> %i.du)
  store <2 x double> %i.dw, ptr %i.ds, align 8, !tbaa !1104
  br label %.loopexit.1.1

.loopexit.1.1:                                    ; preds = %.preheader.1.1, %.loopexit.1
  %invariant.gep132.2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = load double, ptr %invariant.gep132.2, align 8, !tbaa !1104 ; 2 uses
  %i.dy = fcmp oeq double %i.dx, 0.000000e+00
  br i1 %i.dy, label %.loopexit.2, label %.preheader.2

.preheader.2:                                     ; preds = %.loopexit.1.1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load <2 x double>, ptr %i.dz, align 8, !tbaa !1104
  %i.eb = load <2 x double>, ptr %1, align 8, !tbaa !1104
  %i.ec = fneg <2 x double> %i.ea
  %i.ed = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ee, <2 x double> %i.eb)
  store <2 x double> %i.ef, ptr %1, align 8, !tbaa !1104
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ei = load <2 x double>, ptr %i.eg, align 8, !tbaa !1104
  %i.ej = load <2 x double>, ptr %i.eh, align 8, !tbaa !1104
  %i.ek = fneg <2 x double> %i.ei
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.ee, <2 x double> %i.ej)
  store <2 x double> %i.el, ptr %i.eh, align 8, !tbaa !1104
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1.1
  %i.em = fmul double %i.bs, %i.bs
  %i.en = fmul double %2, %2
  %i.eo = fcmp oge double %i.em, %i.en
  br label %.thread

.preheader:                                       ; preds = %.critedge.preheader
  %i.ep = load <2 x double>, ptr %i.ct, align 8, !tbaa !1104
  %i.eq = load <2 x double>, ptr %1, align 8, !tbaa !1104
  %i.er = fneg <2 x double> %i.ep
  %i.es = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.et, <2 x double> %i.eq)
  store <2 x double> %i.eu, ptr %1, align 8, !tbaa !1104
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ex = load <2 x double>, ptr %i.ev, align 8, !tbaa !1104
  %i.ey = load <2 x double>, ptr %i.ew, align 8, !tbaa !1104
  %i.ez = fneg <2 x double> %i.ex
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.et, <2 x double> %i.ey)
  store <2 x double> %i.fa, ptr %i.ew, align 8, !tbaa !1104
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.critedge.preheader
  %gep133.1 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fb = load double, ptr %gep133.1, align 8, !tbaa !1104 ; 2 uses
  %i.fc = fcmp oeq double %i.fb, 0.000000e+00
  br i1 %i.fc, label %.loopexit.1171, label %.preheader.1169

.preheader.1169:                                  ; preds = %.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.ct, align 8, !tbaa !1104
  %i.ff = load <2 x double>, ptr %i.fd, align 8, !tbaa !1104
  %i.fg = fneg <2 x double> %i.fe
  %i.fh = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fi, <2 x double> %i.ff)
  store <2 x double> %i.fj, ptr %i.fd, align 8, !tbaa !1104
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fm = load <2 x double>, ptr %i.fk, align 8, !tbaa !1104
  %i.fn = load <2 x double>, ptr %i.fl, align 8, !tbaa !1104
  %i.fo = fneg <2 x double> %i.fm
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fi, <2 x double> %i.fn)
  store <2 x double> %i.fp, ptr %i.fl, align 8, !tbaa !1104
  br label %.loopexit.1171

.loopexit.1171:                                   ; preds = %.preheader.1169, %.loopexit
  %gep133.2 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fq = load double, ptr %gep133.2, align 8, !tbaa !1104 ; 2 uses
  %i.fr = fcmp oeq double %i.fq, 0.000000e+00
  br i1 %i.fr, label %.loopexit.2174, label %.preheader.2172

.preheader.2172:                                  ; preds = %.loopexit.1171
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ft = load <2 x double>, ptr %i.ct, align 8, !tbaa !1104
  %i.fu = load <2 x double>, ptr %i.fs, align 8, !tbaa !1104
  %i.fv = fneg <2 x double> %i.ft
  %i.fw = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fu)
  store <2 x double> %i.fy, ptr %i.fs, align 8, !tbaa !1104
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !1104
  %i.gc = load <2 x double>, ptr %i.ga, align 8, !tbaa !1104
  %i.gd = fneg <2 x double> %i.gb
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fx, <2 x double> %i.gc)
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !1104
  br label %.loopexit.2174

.loopexit.2174:                                   ; preds = %.preheader.2172, %.loopexit.1171
  %invariant.gep132.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gg = load double, ptr %invariant.gep132.1, align 8, !tbaa !1104 ; 2 uses
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.loopexit.1, label %.preheader.1

.thread:                                          ; preds = %._crit_edge, %.loopexit.2
  %.398 = phi i1 [ %i.eo, %.loopexit.2 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %.398
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !1104
  %i.b = load double, ptr %1, align 8, !tbaa !1104
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
end_hunk_0
