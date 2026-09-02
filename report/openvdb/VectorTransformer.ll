Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd:bb.a
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hb, <2 x double> %i.ei)
  store <2 x double> %i.hj, ptr %0, align 8, !tbaa !41
  %i.hk = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hl, <2 x double> %i.dy) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 0
  store double %i.hn, ptr %i.dq, align 8, !tbaa !41
  %i.ho = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hb, <2 x double> %i.eo)
  store <2 x double> %i.hp, ptr %i.ds, align 8, !tbaa !41
  %i.hq = extractelement <2 x double> %i.hm, i64 1
  store double %i.hq, ptr %i.ea, align 8, !tbaa !41
  %i.hr = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hb, <2 x double> %i.ev)
  store <2 x double> %i.ht, ptr %i.ed, align 8, !tbaa !41
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gg, double %i.ex)
  store double %i.hu, ptr %i.ey, align 8, !tbaa !41
  br label %bb.r

.critedge:                                        ; preds = %bb.f
  %i.hv = extractelement <2 x double> %i.fb, i64 0
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !41 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hz = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.eo, %i.ia
  %i.ic = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.ei, <2 x double> %i.ib)
  %i.ie = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.ev, <2 x double> %i.id)
  %i.ih = fneg <2 x double> %i.ig
  store <2 x double> %i.ih, ptr %i.hy, align 8, !tbaa !41
  %i.ii = fmul double %i.eb, %i.fc
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.dz, double %i.ii)
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ex, double %i.ij)
  %i.il = fneg double %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.il, ptr %i.im, align 8, !tbaa !41
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.in, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.io, align 8, !tbaa !41
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ip, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.iq, align 8, !tbaa !41
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ir = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %2)
  br i1 %i.ir, label %bb.r, label %.critedge107

.critedge107:                                     ; preds = %bb.g, %bb.d, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.is, ptr %3, align 8, !tbaa !237
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.it, align 8, !tbaa !240
  store i8 0, ptr %i.is, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.critedge107
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.iv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #20 ; 0 uses
  %i.iw = load ptr, ptr %5, align 8, !tbaa !242   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !241
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.p

bb.k:                                             ; preds = %.critedge107
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.jd, %bb.m ], [ %i.jc, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.jb, %bb.k ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.je = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jf = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.jf, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.jf, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %3, align 8, !tbaa !242   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.is
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.q
  %i.jj = load i64, ptr %i.is, align 8, !tbaa !241
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.jg

bb.r:                                             ; preds = %.split.thread, %.critedge, %bb.h
  ret void

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Mat4", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  store double 1.000000e+00, ptr %1, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !41
  br label %bb.b

.loopexit115:                                     ; preds = %.loopexit113, %.loopexit116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond157 = icmp eq i64 %indvars.iv.next155, 4
  br i1 %exitcond157, label %.critedge.preheader, label %bb.b, !llvm.loop !518

bb.b:                                             ; preds = %bb.a, %.loopexit115
  %indvars.iv154 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.loopexit115 ] ; 10 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit115 ] ; 6 uses
  %.093128 = phi double [ 1.000000e+00, %bb.a ], [ %i.br, %.loopexit115 ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv154, 2        ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv154 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !41 ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 4 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv154, 3  ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv154 to i32  ; 3 uses
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %4 = trunc i64 %indvars.iv154 to i1
  br i1 %4, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.idx.prol = shl nuw nsw i64 %indvars.iv, 5
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx.prol
  %i.n = load double, ptr %gep.prol, align 8, !tbaa !41
  %i.o = tail call double @llvm.fabs.f64(double %i.n) ; 2 uses
  %i.p = fcmp ogt double %i.o, %i.k               ; 2 uses
  %.1109.prol = select i1 %i.p, double %i.o, double %i.k ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %.1.prol = select i1 %i.p, i32 %i.q, i32 %i.m   ; 2 uses
  %indvars.iv.next136.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1109.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %.1109.prol, %.lr.ph.prol ]
  %.1.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1.prol, %.lr.ph.prol ]
  %indvars.iv135.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next136.prol, %.lr.ph.prol ]
  %.089120.unr = phi i32 [ %i.m, %.lr.ph.preheader ], [ %.1.prol, %.lr.ph.prol ]
  %.0108119.unr = phi double [ %i.k, %.lr.ph.preheader ], [ %.1109.prol, %.lr.ph.prol ]
  %i.r = icmp eq i64 %indvars.iv154, 2
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.0108.lcssa = phi double [ %i.k, %bb.b ], [ %.1109.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1109.1, %.lr.ph ]
  %.089.lcssa = phi i32 [ %i.m, %bb.b ], [ %.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1.1, %.lr.ph ] ; 2 uses
  %i.s = fcmp oeq double %.0108.lcssa, 0.000000e+00
  br i1 %i.s, label %.thread, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %.lr.ph ], [ %indvars.iv135.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.089120 = phi i32 [ %.1.1, %.lr.ph ], [ %.089120.unr, %.lr.ph.prol.loopexit ]
  %.0108119 = phi double [ %.1109.1, %.lr.ph ], [ %.0108119.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %gep.idx = shl nuw nsw i64 %indvars.iv135, 5
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx
  %i.t = load double, ptr %gep, align 8, !tbaa !41
  %i.u = tail call double @llvm.fabs.f64(double %i.t) ; 2 uses
  %i.v = fcmp ogt double %i.u, %.0108119          ; 2 uses
  %.1109 = select i1 %i.v, double %i.u, double %.0108119 ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv135 to i32
  %.1 = select i1 %i.v, i32 %i.w, i32 %.089120
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %gep.idx.1 = shl nuw nsw i64 %indvars.iv.next136, 5
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx.1
  %i.x = load double, ptr %gep.1, align 8, !tbaa !41
  %i.y = tail call double @llvm.fabs.f64(double %i.x) ; 2 uses
  %i.z = fcmp ogt double %i.y, %.1109             ; 2 uses
  %.1109.1 = select i1 %i.z, double %i.y, double %.1109 ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next136 to i32
  %.1.1 = select i1 %i.z, i32 %i.aa, i32 %.1      ; 2 uses
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next136.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !519

bb.c:                                             ; preds = %._crit_edge
  %i.ab = zext i32 %.089.lcssa to i64
  %.not = icmp eq i64 %indvars.iv154, %i.ab
  %.pre175 = load double, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  br i1 %.not, label %..loopexit116_crit_edge, label %.loopexit116.loopexit

..loopexit116_crit_edge:                          ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre178 = load double, ptr %.phi.trans.insert177, align 8, !tbaa !41
  %i.ac = load <2 x double>, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.phi.trans.insert182 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.phi.trans.insert185 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %i.ad = load <2 x double>, ptr %.phi.trans.insert182, align 8, !tbaa !41
  %i.ae = load <2 x double>, ptr %.phi.trans.insert185, align 8, !tbaa !41
  %i.af = insertelement <2 x double> poison, double %.pre175, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %.pre178, i64 1
  br label %.loopexit116

.loopexit116.loopexit:                            ; preds = %bb.c
  %i.ah = shl nuw nsw i32 %.089.lcssa, 2
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load <2 x double>, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  store double %.pre175, ptr %i.aj, align 8, !tbaa !41
  %i.ap = load <2 x double>, ptr %i.ak, align 8, !tbaa !41
  %i.aq = load <2 x double>, ptr %i.al, align 8, !tbaa !41
  store <2 x double> %i.aq, ptr %i.ak, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load <2 x double>, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.an, align 8, !tbaa !41
  store <2 x double> %i.ay, ptr %i.am, align 8, !tbaa !41
  store <2 x double> %i.ao, ptr %i.h, align 8, !tbaa !41
  %i.az = load double, ptr %i.aw, align 8, !tbaa !41
  store double %i.az, ptr %i.av, align 8, !tbaa !41
  store <2 x double> %i.ax, ptr %i.as, align 8, !tbaa !41
  %i.ba = load <2 x double>, ptr %i.at, align 8, !tbaa !41
  %i.bb = load <2 x double>, ptr %i.au, align 8, !tbaa !41
  store <2 x double> %i.bb, ptr %i.at, align 8, !tbaa !41
  %i.bc = fneg double %.093128
  %.pre = load double, ptr %i.i, align 8, !tbaa !41
  br label %.loopexit116

.loopexit116:                                     ; preds = %..loopexit116_crit_edge, %.loopexit116.loopexit
  %i.bd = phi double [ %i.j, %..loopexit116_crit_edge ], [ %.pre, %.loopexit116.loopexit ] ; 2 uses
  %.194 = phi double [ %.093128, %..loopexit116_crit_edge ], [ %i.bc, %.loopexit116.loopexit ]
  %i.be = phi <2 x double> [ %i.ag, %..loopexit116_crit_edge ], [ %i.ao, %.loopexit116.loopexit ]
  %i.bf = phi <2 x double> [ %i.ad, %..loopexit116_crit_edge ], [ %i.ax, %.loopexit116.loopexit ]
  %i.bg = phi <2 x double> [ %i.ac, %..loopexit116_crit_edge ], [ %i.ap, %.loopexit116.loopexit ]
  %i.bh = phi <2 x double> [ %i.ae, %..loopexit116_crit_edge ], [ %i.ba, %.loopexit116.loopexit ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.bj = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bl = fdiv <2 x double> %i.be, %i.bk
  %i.bm = fdiv <2 x double> %i.bg, %i.bk
  store <2 x double> %i.bl, ptr %i.h, align 8, !tbaa !41
  store <2 x double> %i.bm, ptr %i.bi, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bo = fdiv <2 x double> %i.bf, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bq = fdiv <2 x double> %i.bh, %i.bk
  store <2 x double> %i.bo, ptr %i.bn, align 8, !tbaa !41
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !41
  %i.br = fmul double %.194, %i.bd                ; 3 uses
  br i1 %i.l, label %.lr.ph127, label %.loopexit115

.lr.ph127:                                        ; preds = %.loopexit116, %.loopexit113
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.loopexit113 ], [ %indvars.iv, %.loopexit116 ] ; 2 uses
  %i.bs = shl nuw nsw i64 %indvars.iv150, 2       ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv154
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !41 ; 2 uses
  %i.bw = fcmp oeq double %i.bv, 0.000000e+00
  br i1 %i.bw, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %.lr.ph127
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs ; 3 uses
  %i.by = load <2 x double>, ptr %i.h, align 8, !tbaa !41
  %i.bz = load <2 x double>, ptr %i.bt, align 8, !tbaa !41
  %i.ca = fneg <2 x double> %i.by
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.bz)
  store <2 x double> %i.cd, ptr %i.bt, align 8, !tbaa !41
  %i.ce = load <2 x double>, ptr %i.bi, align 8, !tbaa !41
  %i.cf = load <2 x double>, ptr %i.bx, align 8, !tbaa !41
  %i.cg = fneg <2 x double> %i.ce
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cc, <2 x double> %i.cf)
  store <2 x double> %i.ch, ptr %i.bx, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ck = load <2 x double>, ptr %i.bn, align 8, !tbaa !41
  %i.cl = load <2 x double>, ptr %i.ci, align 8, !tbaa !41
  %i.cm = fneg <2 x double> %i.ck
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cc, <2 x double> %i.cl)
  store <2 x double> %i.cn, ptr %i.ci, align 8, !tbaa !41
  %i.co = load <2 x double>, ptr %i.bp, align 8, !tbaa !41
  %i.cp = load <2 x double>, ptr %i.cj, align 8, !tbaa !41
  %i.cq = fneg <2 x double> %i.co
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cc, <2 x double> %i.cp)
  store <2 x double> %i.cr, ptr %i.cj, align 8, !tbaa !41
  br label %.loopexit113

.loopexit113:                                     ; preds = %.preheader112, %.lr.ph127
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 4
  br i1 %exitcond153.not, label %.loopexit115, label %.lr.ph127, !llvm.loop !520

.critedge.preheader:                              ; preds = %.loopexit115
  %invariant.gep132 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ct = load double, ptr %invariant.gep132, align 8, !tbaa !41 ; 2 uses
  %i.cu = fcmp oeq double %i.ct, 0.000000e+00
  br i1 %i.cu, label %.loopexit, label %.preheader

.preheader.1:                                     ; preds = %.loopexit.2174
  %i.cv = load <2 x double>, ptr %i.ge, align 8, !tbaa !41
  %i.cw = load <2 x double>, ptr %1, align 8, !tbaa !41
  %i.cx = fneg <2 x double> %i.cv
  %i.cy = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cz, <2 x double> %i.cw)
  store <2 x double> %i.da, ptr %1, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dd = load <2 x double>, ptr %i.db, align 8, !tbaa !41
  %i.de = load <2 x double>, ptr %i.dc, align 8, !tbaa !41
  %i.df = fneg <2 x double> %i.dd
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cz, <2 x double> %i.de)
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !41
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit.2174
  %gep133.1.1 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dh = load double, ptr %gep133.1.1, align 8, !tbaa !41 ; 2 uses
  %i.di = fcmp oeq double %i.dh, 0.000000e+00
  br i1 %i.di, label %.loopexit.1.1, label %.preheader.1.1

end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IfEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 3 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.bk, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.v ], [ %.sroa.9.0.copyload, %bb.w ] ; 3 uses
  %.sroa.0147.0 = phi <2 x float> [ zeroinitializer, %bb.v ], [ %.sroa.0147.0.copyload, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store <2 x float> %.sroa.0147.0, ptr %9, align 8
  %.sroa.9.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx150, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bm = load i8, ptr %i.b, align 1, !tbaa !241  ; 3 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread187, label %bb.z

.thread187:                                       ; preds = %bb.y
  store <2 x float> %.sroa.0147.0, ptr %10, align 8
  %.sroa.9.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx152, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bo = fneg <2 x float> %.sroa.0147.0
  %i.bp = fneg float %.sroa.9.0
  store <2 x float> %i.bo, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.bp, ptr %.sroa.2.0..sroa_idx, align 8
  switch i8 %i.bm, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 12, i32 noundef 1)
          to label %.thread155 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread156, %bb.ad, %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 12)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 5
  br i1 %i.bu, label %bb.af, label %.thread189

.thread155:                                       ; preds = %bb.ab
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %.thread156, label %bb.ag

.thread156:                                       ; preds = %.thread155
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 12, i32 noundef 1)
          to label %.thread156._crit_edge unwind label %bb.ac ; 0 uses

.thread156._crit_edge:                            ; preds = %.thread156
  %.pre170 = load i8, ptr %i.b, align 1, !tbaa !241
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 12)
          to label %.thread157 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread156._crit_edge, %bb.z, %.thread155
  %i.bz = phi i8 [ %.pre170, %.thread156._crit_edge ], [ %i.bv, %.thread155 ], [ %i.bm, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.ca = add i8 %i.bz, -3
  %or.cond13 = icmp ult i8 %i.ca, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread189:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cb = add i8 %i.bt, -3
  %or.cond13190 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13190, label %.thread159, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread157:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !241
  %i.cd = add i8 %i.cc, -3
  %or.cond13158 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13158, label %.thread159, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread159, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread159, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit

.thread159:                                       ; preds = %.thread189, %.thread157, %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread189, %.thread187, %.thread159, %.thread157, %bb.ai, %bb.ag
  %i.ch = load i8, ptr %i.b, align 1
  %i.ci = icmp ne i8 %i.ch, 6
  %or.cond16 = select i1 %i.q, i1 %i.ci, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.cj = load <8 x i64>, ptr %3, align 8, !tbaa !283
  %i.ck = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.cj)
  %i.cl = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ck) ; 2 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32          ; 3 uses
  br i1 %i.r, label %bb.al, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not109 = icmp eq i32 %2, %i.cm
  br i1 %.not109, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = mul nuw nsw i64 %i.cl, 12
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #27
          to label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit unwind label %.thread160 ; 2 uses

.thread160:                                       ; preds = %bb.am
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit

bb.an:                                            ; preds = %.invoke193, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %bb.am, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.co, %bb.am ] ; 4 uses
  %.089 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.co, %bb.am ] ; 3 uses
  %.088 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.cm, %bb.ak ], [ %i.cm, %bb.am ] ; 4 uses
  %i.cr = select i1 %i.r, ptr %.089, ptr null     ; 4 uses
  br i1 %4, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  invoke void @_ZN7openvdb5v13_02io10HalfReaderILb1ENS0_4math4Vec3IfEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cr, i32 noundef %.088, i32 noundef %i.o, ptr noundef %i.av, i64 noundef %.0101)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.cs = icmp eq ptr %i.cr, null                 ; 2 uses
  %i.ct = and i32 %i.o, 5
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = icmp ne ptr %i.av, null
  %i.cw = and i1 %i.cu, %i.cv
  %or.cond3.i = and i1 %i.cs, %i.cw
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cx = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.0101)
          to label %.invoke193 unwind label %bb.an

bb.ar:                                            ; preds = %bb.ap
  %i.cy = and i32 %i.o, 4
  %.not.i125 = icmp eq i32 %i.cy, 0
  br i1 %.not.i125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = zext i32 %.088 to i64
  %i.da = mul nuw nsw i64 %i.cz, 12
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cr, i64 noundef %i.da)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.at:                                            ; preds = %bb.ar
  %12 = trunc i32 %i.o to i1
  %i.db = zext i32 %.088 to i64
  %i.dc = mul nuw nsw i64 %i.db, 12               ; 3 uses
  br i1 %12, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cr, i64 noundef %i.dc)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  br i1 %i.cs, label %.invoke193, label %bb.aw

.invoke193:                                       ; preds = %bb.av, %bb.aq
  %i.dd = phi i64 [ %i.cx, %bb.aq ], [ %i.dc, %bb.av ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dd, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.089, i64 noundef %i.dc)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke193, %bb.as, %bb.au, %bb.aw, %bb.ao
  %.not118 = icmp ne i32 %.088, %2
  %i.dg = and i1 %i.q, %.not118
  %or.cond119.not = and i1 %i.r, %i.dg
  br i1 %or.cond119.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, %bb.az
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 0, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 5 uses
  %.0168 = phi i32 [ %.1, %bb.az ], [ 0, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 3 uses
  %i.dh = lshr i64 %indvars.iv, 6
  %i.di = and i64 %i.dh, 67108863                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !283
  %i.dl = and i64 %indvars.iv, 63
  %i.dm = shl nuw i64 1, %i.dl                    ; 2 uses
  %i.dn = and i64 %i.dk, %i.dm
  %.not165 = icmp eq i64 %i.dn, 0
  br i1 %.not165, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.do = zext i32 %.0168 to i64
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %.089, i64 %i.do
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dq, ptr noundef nonnull align 4 dereferenceable(12) %i.dp, i64 12, i1 false)
  %i.dr = add i32 %.0168, 1
  br label %bb.az

bb.ay:                                            ; preds = %.preheader
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.di
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !283
  %i.du = and i64 %i.dt, %i.dm
  %.not166 = icmp eq i64 %i.du, 0
  %i.dv = select i1 %.not166, ptr %10, ptr %9
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dw, ptr noundef nonnull align 8 dereferenceable(12) %i.dv, i64 12, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1 = phi i32 [ %i.dr, %bb.ax ], [ %.0168, %bb.ay ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !564

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IfEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i132 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i132, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit134, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i133

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i133: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit134

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit134: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not.i.i135 = icmp eq ptr %i.au, null
  br i1 %.not.i.i135, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit134
  %i.dx = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dx, align 8, !tbaa !334
  %i.eb = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !335
  %i.ec = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  %i.ef = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139

bb.bc:                                            ; preds = %bb.ba
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i136 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i136, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

bb.be:                                            ; preds = %bb.bc
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i138 = phi i32 [ %i.ea, %bb.bd ], [ %i.ek, %bb.be ]
  %i.el = icmp eq i32 %.0.i.i.i.i138, 1
  br i1 %i.el, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, !prof !336

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit134, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !332 ; 8 uses
  %.not.i.i140 = icmp eq ptr %i.en, null
  br i1 %.not.i.i140, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.eo, align 8, !tbaa !334
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !335
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !234
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20, !inline_history !14
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !234
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20, !inline_history !14
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i141 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i141, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

bb.bk:                                            ; preds = %bb.bi
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i143 = phi i32 [ %i.er, %bb.bj ], [ %i.fb, %bb.bk ]
  %i.fc = icmp eq i32 %.0.i.i.i.i143, 1
  br i1 %i.fc, label %bb.bl, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !336

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.aj, %.thread160, %bb.an, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %.pn110.pn = phi { ptr, i32 } [ %i.cq, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i ], [ %i.cf, %bb.aj ], [ %i.cp, %.thread160 ], [ %i.cq, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, %bb.ac
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit ], [ %i.br, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.x, %bb.bm, %bb.p
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn110.pn.pn, %bb.bm ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.l, %bb.h
  %.pn110.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn, %bb.bn ], [ %i.am, %bb.h ], [ %.pn.pn, %bb.l ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.g
  %.pn110.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn, %bb.bo ], [ %i.al, %bb.g ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_07MetaMap11getMetadataINS0_2io19DelayedLoadMetadataEEENT_3PtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.d

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !575  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !237, !alias.scope !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(13) @.str.37, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.ad, align 8, !tbaa !240, !alias.scope !576
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 0, ptr %i.ae, align 1, !tbaa !241, !alias.scope !576
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 13
  %.pre = load ptr, ptr %3, align 8, !tbaa !242   ; 4 uses
  br i1 %i.ah, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %.pre, align 1
  %i.aj = load i64, ptr %i.ac, align 1
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %.pre, i64 5
  %i.am = getelementptr i8, ptr %i.ac, i64 5
  %i.an = load i64, ptr %i.al, align 1
  %i.ao = load i64, ptr %i.am, align 1
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = or i64 %i.ak, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.au = phi i1 [ false, %bb.d ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %.pre, %i.av
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !241
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !332, !noalias !579 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.x, align 8, !tbaa !297, !noalias !579
  store <2 x ptr> %i.bc, ptr %0, align 8, !tbaa !297, !alias.scope !579
  %.not.i.i.i.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i6, label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241, !noalias !579
  %.not.i.i.i.i.i.i7 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !46, !noalias !579
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !46, !noalias !579
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !579 ; 0 uses
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.j, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !334
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !335
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !336

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef i64 @_ZNK7openvdb5v13_02io14StreamMetadata4leafEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfReaderILb1ENS0_4math4Vec3IfEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %3, 5
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %4, null
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %5)
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  %i.k = mul nuw nsw i64 %i.j, 6
  tail call void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.k)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.g:                                             ; preds = %bb.e
  %6 = trunc i32 %3 to i1
  %i.l = zext i32 %2 to i64
  %i.m = mul nuw nsw i64 %i.l, 6                  ; 2 uses
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.m)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.i:                                             ; preds = %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.m, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

.noexc:                                           ; preds = %bb.b
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 6                  ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.q, i8 0, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 3 uses
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.s, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.j
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.r, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.q, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.r, %.noexc ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.w = and i32 %3, 4
  %.not.i20 = icmp eq i32 %i.w, 0
  br i1 %.not.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp

bb.l:                                             ; preds = %.loopexit
  %7 = trunc i32 %3 to i1
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28: ; preds = %bb.k, %bb.m, %bb.n
  %i.y = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  %i.ac = udiv exact i64 %i.aa, 6
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc29, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ag, %.noexc29 ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.af, %.noexc29 ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ae, %.noexc29 ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ad = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZN7openvdb5v13_04math4Vec3IfEaSINS1_8internal4halfEEERKS3_RKNS2_IT_EE(ptr noundef nonnull align 4 dereferenceable(12) %.0811.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0910.i.i.i.i.i)
          to label %.noexc29 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit ; 0 uses

.noexc29:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.ag = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit, !llvm.loop !580

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit: ; preds = %.noexc29, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #25
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp: ; preds = %bb.k, %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #25
  resume { ptr, i32 } %lpad.phi

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !334
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !335
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !336

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(12) ptr @_ZN7openvdb5v13_04math4Vec3IfEaSINS1_8internal4halfEEERKS3_RKNS2_IT_EE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i16, ptr %1, align 2, !tbaa !343 ; 2 uses
  %i.a = zext i16 %.sroa.0.0.copyload.i.i to i32
  %i.b = shl nuw nsw i32 %i.a, 13
  %i.c = and i32 %i.b, 268427264                  ; 6 uses
  %.signext.i.i = sext i16 %.sroa.0.0.copyload.i.i to i32
  %i.d = and i32 %.signext.i.i, -2147483648       ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 8388607
  br i1 %i.e, label %bb.b, label %bb.e, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i32 %i.c, %i.d               ; 2 uses
  %i.g = icmp samesign ult i32 %i.c, 260046848
  br i1 %i.g, label %bb.c, label %bb.d, !prof !344

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.f, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = or i32 %i.f, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.k = add nsw i32 %i.j, -8                     ; 2 uses
  %i.l = shl i32 %i.c, %i.k
  %i.m = or i32 %i.d, %i.l
  %i.n = or i32 %i.m, 947912704
  %i.o = shl nuw nsw i32 %i.k, 23
  %i.p = sub nuw i32 %i.n, %i.o
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit:  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.d, %bb.e ]
  store i32 %.sroa.0.0.i.i, ptr %0, align 4, !tbaa !346
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload.i.i4 = load i16, ptr %i.q, align 2, !tbaa !343 ; 2 uses
  %i.r = zext i16 %.sroa.0.0.copyload.i.i4 to i32
  %i.s = shl nuw nsw i32 %i.r, 13
  %i.t = and i32 %i.s, 268427264                  ; 6 uses
  %.signext.i.i5 = sext i16 %.sroa.0.0.copyload.i.i4 to i32
  %i.u = and i32 %.signext.i.i5, -2147483648      ; 3 uses
  %i.v = icmp samesign ugt i32 %i.t, 8388607
  br i1 %i.v, label %bb.g, label %bb.j, !prof !344

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit
  %i.w = or disjoint i32 %i.t, %i.u               ; 2 uses
  %i.x = icmp samesign ult i32 %i.t, 260046848
  br i1 %i.x, label %bb.h, label %bb.i, !prof !344

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i32 %i.w, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8

bb.i:                                             ; preds = %bb.g
  %i.z = or i32 %i.w, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit
  %.not.i.i6 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i6, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %i.ab = add nsw i32 %i.aa, -8                   ; 2 uses
  %i.ac = shl i32 %i.t, %i.ab
  %i.ad = or i32 %i.u, %i.ac
  %i.ae = or i32 %i.ad, 947912704
  %i.af = shl nuw nsw i32 %i.ab, 23
  %i.ag = sub nuw i32 %i.ae, %i.af
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IdEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 3 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load <2 x double>, ptr %i.bk, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.9.0 = phi double [ 0.000000e+00, %bb.v ], [ %.sroa.9.0.copyload, %bb.w ] ; 3 uses
  %i.bn = phi <2 x double> [ zeroinitializer, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store <2 x double> %i.bn, ptr %9, align 16
  %.sroa.9.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx150, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bo = load i8, ptr %i.b, align 1, !tbaa !241  ; 3 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %.thread187, label %bb.z

.thread187:                                       ; preds = %bb.y
  store <2 x double> %i.bn, ptr %10, align 16
  %.sroa.9.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx152, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bq = fneg double %.sroa.9.0
  %i.br = fneg <2 x double> %i.bn
  store <2 x double> %i.br, ptr %10, align 16, !tbaa !41, !alias.scope !667
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.bq, ptr %i.bs, align 16, !tbaa !41, !alias.scope !667
  switch i8 %i.bo, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 24, i32 noundef 1)
          to label %.thread155 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread156, %bb.ad, %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %bb.aa
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 24)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 5
  br i1 %i.bx, label %bb.af, label %.thread189

.thread155:                                       ; preds = %bb.ab
  %i.by = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bz = icmp eq i8 %i.by, 5
  br i1 %i.bz, label %.thread156, label %bb.ag

.thread156:                                       ; preds = %.thread155
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 24, i32 noundef 1)
          to label %.thread156._crit_edge unwind label %bb.ac ; 0 uses

.thread156._crit_edge:                            ; preds = %.thread156
  %.pre170 = load i8, ptr %i.b, align 1, !tbaa !241
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 24)
          to label %.thread157 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread156._crit_edge, %bb.z, %.thread155
  %i.cc = phi i8 [ %.pre170, %.thread156._crit_edge ], [ %i.by, %.thread155 ], [ %i.bo, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cd = add i8 %i.cc, -3
  %or.cond13 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread189:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.ce = add i8 %i.bw, -3
  %or.cond13190 = icmp ult i8 %i.ce, 3
  br i1 %or.cond13190, label %.thread159, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread157:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cf = load i8, ptr %i.b, align 1, !tbaa !241
  %i.cg = add i8 %i.cf, -3
  %or.cond13158 = icmp ult i8 %i.cg, 3
  br i1 %or.cond13158, label %.thread159, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread159, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread159, %bb.ai
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit

.thread159:                                       ; preds = %.thread189, %.thread157, %bb.ah
  %i.cj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread189, %.thread187, %.thread159, %.thread157, %bb.ai, %bb.ag
  %i.ck = load i8, ptr %i.b, align 1
  %i.cl = icmp ne i8 %i.ck, 6
  %or.cond16 = select i1 %i.q, i1 %i.cl, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.cm = load <8 x i64>, ptr %3, align 8, !tbaa !283
  %i.cn = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.cm)
  %i.co = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cn) ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.co to i32          ; 3 uses
  br i1 %i.r, label %bb.al, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not105 = icmp eq i32 %2, %i.cp
  br i1 %.not105, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = mul nuw nsw i64 %i.co, 24
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #27
          to label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit unwind label %.thread160 ; 2 uses

.thread160:                                       ; preds = %bb.am
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit

bb.an:                                            ; preds = %.invoke193, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %bb.am, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cr, %bb.am ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cr, %bb.am ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.cp, %bb.ak ], [ %i.cp, %bb.am ] ; 4 uses
  %i.cu = select i1 %i.r, ptr %.085, ptr null     ; 4 uses
  br i1 %4, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  invoke void @_ZN7openvdb5v13_02io10HalfReaderILb1ENS0_4math4Vec3IdEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cu, i32 noundef %.084, i32 noundef %i.o, ptr noundef %i.av, i64 noundef %.086)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.cv = icmp eq ptr %i.cu, null                 ; 2 uses
  %i.cw = and i32 %i.o, 5
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp ne ptr %i.av, null
  %i.cz = and i1 %i.cx, %i.cy
  %or.cond3.i = and i1 %i.cv, %i.cz
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.da = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.086)
          to label %.invoke193 unwind label %bb.an

bb.ar:                                            ; preds = %bb.ap
  %i.db = and i32 %i.o, 4
  %.not.i121 = icmp eq i32 %i.db, 0
  br i1 %.not.i121, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = zext i32 %.084 to i64
  %i.dd = mul nuw nsw i64 %i.dc, 24
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cu, i64 noundef %i.dd)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.at:                                            ; preds = %bb.ar
  %12 = trunc i32 %i.o to i1
  %i.de = zext i32 %.084 to i64
  %i.df = mul nuw nsw i64 %i.de, 24               ; 3 uses
  br i1 %12, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cu, i64 noundef %i.df)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  br i1 %i.cv, label %.invoke193, label %bb.aw

.invoke193:                                       ; preds = %bb.av, %bb.aq
  %i.dg = phi i64 [ %i.da, %bb.aq ], [ %i.df, %bb.av ]
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dg, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.di = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.df)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke193, %bb.as, %bb.au, %bb.aw, %bb.ao
  %.not114 = icmp ne i32 %.084, %2
  %i.dj = and i1 %i.q, %.not114
  %or.cond115.not = and i1 %i.r, %i.dj
  br i1 %or.cond115.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, %bb.az
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 0, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 5 uses
  %.0168 = phi i32 [ %.1, %bb.az ], [ 0, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 3 uses
  %i.dk = lshr i64 %indvars.iv, 6
  %i.dl = and i64 %i.dk, 67108863                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !283
  %i.do = and i64 %indvars.iv, 63
  %i.dp = shl nuw i64 1, %i.do                    ; 2 uses
  %i.dq = and i64 %i.dn, %i.dp
  %.not165 = icmp eq i64 %i.dq, 0
  br i1 %.not165, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.dr = zext i32 %.0168 to i64
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.085, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  %i.du = add i32 %.0168, 1
  br label %bb.az

bb.ay:                                            ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dl
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !283
  %i.dx = and i64 %i.dw, %i.dp
  %.not166 = icmp eq i64 %i.dx, 0
  %. = select i1 %.not166, ptr %10, ptr %9
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 16 dereferenceable(24) %., i64 24, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1 = phi i32 [ %i.du, %bb.ax ], [ %.0168, %bb.ay ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !666

.loopexit:                                        ; preds = %bb.az, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3IdEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i128 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i128, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit130, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i129

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i129: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit130

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit130: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not.i.i131 = icmp eq ptr %i.au, null
  br i1 %.not.i.i131, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit130
  %i.dz = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dz, align 8, !tbaa !334
  %i.ed = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !335
  %i.ee = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.bc:                                            ; preds = %bb.ba
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i132 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i132, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.be:                                            ; preds = %bb.bc
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i134 = phi i32 [ %i.ec, %bb.bd ], [ %i.em, %bb.be ]
  %i.en = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.en, label %bb.bf, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !336

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit130, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !332 ; 8 uses
  %.not.i.i136 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i136, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.eq, align 8, !tbaa !334
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !335
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !234
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #20, !inline_history !14
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !234
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #20, !inline_history !14
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i137 = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i137, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

bb.bk:                                            ; preds = %bb.bi
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i139 = phi i32 [ %i.et, %bb.bj ], [ %i.fd, %bb.bk ]
  %i.fe = icmp eq i32 %.0.i.i.i.i139, 1
  br i1 %i.fe, label %bb.bl, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !336

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.aj, %.thread160, %bb.an, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %.pn106.pn = phi { ptr, i32 } [ %i.ct, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i ], [ %i.ci, %bb.aj ], [ %i.cs, %.thread160 ], [ %i.ct, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, %bb.ac
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit ], [ %i.bu, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.x, %bb.bm, %bb.p
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn106.pn.pn, %bb.bm ], [ %i.bm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.l, %bb.h
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn, %bb.bn ], [ %i.am, %bb.h ], [ %.pn.pn, %bb.l ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.g
  %.pn106.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn.pn, %bb.bo ], [ %i.al, %bb.g ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn106.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfReaderILb1ENS0_4math4Vec3IdEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %3, 5
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %4, null
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %5)
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  %i.k = mul nuw nsw i64 %i.j, 6
  tail call void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.k)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.g:                                             ; preds = %bb.e
  %6 = trunc i32 %3 to i1
  %i.l = zext i32 %2 to i64
  %i.m = mul nuw nsw i64 %i.l, 6                  ; 2 uses
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.m)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.i:                                             ; preds = %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.m, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

.noexc:                                           ; preds = %bb.b
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 6                  ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.q, i8 0, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 3 uses
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.s, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.j
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.r, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.q, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.r, %.noexc ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.w = and i32 %3, 4
  %.not.i20 = icmp eq i32 %i.w, 0
  br i1 %.not.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp

bb.l:                                             ; preds = %.loopexit
  %7 = trunc i32 %3 to i1
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28: ; preds = %bb.k, %bb.m, %bb.n
  %i.y = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  %i.ac = udiv exact i64 %i.aa, 6
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc29, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ag, %.noexc29 ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.af, %.noexc29 ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ae, %.noexc29 ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7openvdb5v13_04math4Vec3IdEaSINS1_8internal4halfEEERKS3_RKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0910.i.i.i.i.i)
          to label %.noexc29 unwind label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit ; 0 uses

.noexc29:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ag = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit, !llvm.loop !668

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit: ; preds = %.noexc29, %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #25
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp: ; preds = %bb.k, %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31

_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit31.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #25
  resume { ptr, i32 } %lpad.phi

_ZN7openvdb5v13_02io8readDataINS0_4math4Vec3INS3_8internal4halfEEEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3INS2_8internal4halfEEESaIS6_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN7openvdb5v13_04math4Vec3IdEaSINS1_8internal4halfEEERKS3_RKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i16, ptr %1, align 2, !tbaa !343 ; 2 uses
  %i.a = zext i16 %.sroa.0.0.copyload.i.i to i32
  %i.b = shl nuw nsw i32 %i.a, 13
  %i.c = and i32 %i.b, 268427264                  ; 6 uses
  %.signext.i.i = sext i16 %.sroa.0.0.copyload.i.i to i32
  %i.d = and i32 %.signext.i.i, -2147483648       ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 8388607
  br i1 %i.e, label %bb.b, label %bb.e, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i32 %i.c, %i.d               ; 2 uses
  %i.g = icmp samesign ult i32 %i.c, 260046848
  br i1 %i.g, label %bb.c, label %bb.d, !prof !344

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.f, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = or i32 %i.f, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.k = add nsw i32 %i.j, -8                     ; 2 uses
  %i.l = shl i32 %i.c, %i.k
  %i.m = or i32 %i.d, %i.l
  %i.n = or i32 %i.m, 947912704
  %i.o = shl nuw nsw i32 %i.k, 23
  %i.p = sub nuw i32 %i.n, %i.o
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit:  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.d, %bb.e ]
  %i.q = bitcast i32 %.sroa.0.0.i.i to float
  %i.r = fpext float %i.q to double
  store double %i.r, ptr %0, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload.i.i4 = load i16, ptr %i.s, align 2, !tbaa !343 ; 2 uses
  %i.t = zext i16 %.sroa.0.0.copyload.i.i4 to i32
  %i.u = shl nuw nsw i32 %i.t, 13
  %i.v = and i32 %i.u, 268427264                  ; 6 uses
  %.signext.i.i5 = sext i16 %.sroa.0.0.copyload.i.i4 to i32
  %i.w = and i32 %.signext.i.i5, -2147483648      ; 3 uses
  %i.x = icmp samesign ugt i32 %i.v, 8388607
  br i1 %i.x, label %bb.g, label %bb.j, !prof !344

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit
  %i.y = or disjoint i32 %i.v, %i.w               ; 2 uses
  %i.z = icmp samesign ult i32 %i.v, 260046848
  br i1 %i.z, label %bb.h, label %bb.i, !prof !344

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i32 %i.y, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8

bb.i:                                             ; preds = %bb.g
  %i.ab = or i32 %i.y, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit
  %.not.i.i6 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i6, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 true)
  %i.ad = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.ae = shl i32 %i.v, %i.ad
  %i.af = or i32 %i.w, %i.ae
  %i.ag = or i32 %i.af, 947912704
  %i.ah = shl nuw nsw i32 %i.ad, 23
  %i.ai = sub nuw i32 %i.ag, %i.ah
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i.i7 = phi i32 [ %i.aa, %bb.h ], [ %i.ab, %bb.i ], [ %i.ai, %bb.k ], [ %i.w, %bb.j ]
  %i.aj = bitcast i32 %.sroa.0.0.i.i7 to float
  %i.ak = fpext float %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ak, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i.i9 = load i16, ptr %i.am, align 2, !tbaa !343 ; 2 uses
  %i.an = zext i16 %.sroa.0.0.copyload.i.i9 to i32
  %i.ao = shl nuw nsw i32 %i.an, 13
  %i.ap = and i32 %i.ao, 268427264                ; 6 uses
  %.signext.i.i10 = sext i16 %.sroa.0.0.copyload.i.i9 to i32
  %i.aq = and i32 %.signext.i.i10, -2147483648    ; 3 uses
  %i.ar = icmp samesign ugt i32 %i.ap, 8388607
  br i1 %i.ar, label %bb.l, label %bb.o, !prof !344

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8
  %i.as = or disjoint i32 %i.ap, %i.aq            ; 2 uses
  %i.at = icmp samesign ult i32 %i.ap, 260046848
  br i1 %i.at, label %bb.m, label %bb.n, !prof !344

bb.m:                                             ; preds = %bb.l
  %i.au = add nuw nsw i32 %i.as, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit13

bb.n:                                             ; preds = %bb.l
  %i.av = or i32 %i.as, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit13

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit8
  %.not.i.i11 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i11, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit13, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ap, i1 true)
  %i.ax = add nsw i32 %i.aw, -8                   ; 2 uses
  %i.ay = shl i32 %i.ap, %i.ax
  %i.az = or i32 %i.aq, %i.ay
  %i.ba = or i32 %i.az, 947912704
  %i.bb = shl nuw nsw i32 %i.ax, 23
  %i.bc = sub nuw i32 %i.ba, %i.bb
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit13

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit13: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i.i12 = phi i32 [ %i.au, %bb.m ], [ %i.av, %bb.n ], [ %i.bc, %bb.p ], [ %i.aq, %bb.o ]
  %i.bd = bitcast i32 %.sroa.0.0.i.i12 to float
  %i.be = fpext float %i.bd to double
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.be, ptr %i.bf, align 8, !tbaa !41
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !332  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IiEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bj)
          to label %bb.v unwind label %bb.x       ; 3 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0154.0.copyload = load i64, ptr %i.bk, align 4 ; 2 uses
  %.sroa.0154.sroa.0.0.extract.trunc161 = trunc i64 %.sroa.0154.0.copyload to i32
  %.sroa.0154.sroa.8.0.extract.shift165 = lshr i64 %.sroa.0154.0.copyload, 32
  %.sroa.0154.sroa.8.0.extract.trunc166 = trunc nuw i64 %.sroa.0154.sroa.8.0.extract.shift165 to i32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0154.sroa.8.0 = phi i32 [ 0, %bb.v ], [ %.sroa.0154.sroa.8.0.extract.trunc166, %bb.w ] ; 2 uses
  %.sroa.0154.sroa.0.0 = phi i32 [ 0, %bb.v ], [ %.sroa.0154.sroa.0.0.extract.trunc161, %bb.w ] ; 2 uses
  %.sroa.9.0 = phi i32 [ 0, %bb.v ], [ %.sroa.9.0.copyload, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %.sroa.0154.sroa.8.0.insert.ext = zext i32 %.sroa.0154.sroa.8.0 to i64
  %.sroa.0154.sroa.8.0.insert.shift = shl nuw i64 %.sroa.0154.sroa.8.0.insert.ext, 32
  %.sroa.0154.sroa.0.0.insert.ext = zext i32 %.sroa.0154.sroa.0.0 to i64
  %.sroa.0154.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0154.sroa.8.0.insert.shift, %.sroa.0154.sroa.0.0.insert.ext ; 2 uses
  store i64 %.sroa.0154.sroa.0.0.insert.insert, ptr %9, align 8
  %.sroa.9.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx157, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bm = load i8, ptr %i.b, align 1, !tbaa !241  ; 3 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread204, label %bb.z

.thread204:                                       ; preds = %bb.y
  store i64 %.sroa.0154.sroa.0.0.insert.insert, ptr %10, align 8
  %.sroa.9.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx159, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.bo = sub nsw i32 0, %.sroa.0154.sroa.0.0
  %i.bp = sub nsw i32 0, %.sroa.0154.sroa.8.0
  %i.bq = sub nsw i32 0, %.sroa.9.0
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bp to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bo to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.bq, ptr %.sroa.2.0..sroa_idx, align 8
  switch i8 %i.bm, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.r, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 12, i32 noundef 1)
          to label %.thread172 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread173, %bb.ad, %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ad:                                            ; preds = %bb.aa
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %10, i64 noundef 12)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 5
  br i1 %i.bv, label %bb.af, label %.thread206

.thread172:                                       ; preds = %bb.ab
  %i.bw = load i8, ptr %i.b, align 1, !tbaa !241  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 5
  br i1 %i.bx, label %.thread173, label %bb.ag

.thread173:                                       ; preds = %.thread172
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 12, i32 noundef 1)
          to label %.thread173._crit_edge unwind label %bb.ac ; 0 uses

.thread173._crit_edge:                            ; preds = %.thread173
  %.pre187 = load i8, ptr %i.b, align 1, !tbaa !241
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %9, i64 noundef 12)
          to label %.thread174 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread173._crit_edge, %bb.z, %.thread172
  %i.ca = phi i8 [ %.pre187, %.thread173._crit_edge ], [ %i.bw, %.thread172 ], [ %i.bm, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cb = add i8 %i.ca, -3
  %or.cond13 = icmp ult i8 %i.cb, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread206:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cc = add i8 %i.bu, -3
  %or.cond13207 = icmp ult i8 %i.cc, 3
  br i1 %or.cond13207, label %.thread176, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread174:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !283
  %i.cd = load i8, ptr %i.b, align 1, !tbaa !241
  %i.ce = add i8 %i.cd, -3
  %or.cond13175 = icmp ult i8 %i.ce, 3
  br i1 %or.cond13175, label %.thread176, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.r, label %.thread176, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread176, %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit

.thread176:                                       ; preds = %.thread206, %.thread174, %bb.ah
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread206, %.thread204, %.thread176, %.thread174, %bb.ai, %bb.ag
  %i.ci = load i8, ptr %i.b, align 1
  %i.cj = icmp ne i8 %i.ci, 6
  %or.cond16 = select i1 %i.q, i1 %i.cj, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.ck = load <8 x i64>, ptr %3, align 8, !tbaa !283
  %i.cl = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ck)
  %i.cm = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cl) ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32          ; 3 uses
  br i1 %i.r, label %bb.al, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not109 = icmp eq i32 %2, %i.cn
  br i1 %.not109, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = mul nuw nsw i64 %i.cm, 12
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #27
          to label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit unwind label %.thread177 ; 2 uses

.thread177:                                       ; preds = %bb.am
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit

bb.an:                                            ; preds = %.invoke214, %.invoke213, %.invoke212, %.invoke211, %.invoke210
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %bb.am, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cp, %bb.am ] ; 4 uses
  %.089 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cp, %bb.am ] ; 3 uses
  %.088 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.cn, %bb.ak ], [ %i.cn, %bb.am ] ; 4 uses
  %i.cs = select i1 %i.r, ptr %.089, ptr null     ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 3 uses
  %i.cu = and i32 %i.o, 5
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = icmp ne ptr %i.av, null
  %i.cx = and i1 %i.cv, %i.cw
  %or.cond3.i.i = and i1 %i.ct, %i.cx             ; 2 uses
  br i1 %4, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke214, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cy = and i32 %i.o, 4
  %.not.i.i125 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i125, label %bb.aq, label %.invoke213

bb.aq:                                            ; preds = %bb.ap
  %12 = trunc i32 %i.o to i1
  %i.cz = zext i32 %.088 to i64
  %i.da = mul nuw nsw i64 %i.cz, 12               ; 3 uses
  br i1 %12, label %.invoke212, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ct, label %.invoke211, label %.invoke210

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  br i1 %or.cond3.i.i, label %.invoke214, label %bb.at

.invoke214:                                       ; preds = %bb.as, %bb.ao
  %i.db = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.0101)
          to label %.invoke211 unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %i.dc = and i32 %i.o, 4
  %.not.i132 = icmp eq i32 %i.dc, 0
  br i1 %.not.i132, label %bb.au, label %.invoke213

.invoke213:                                       ; preds = %bb.at, %bb.ap
  %i.dd = zext i32 %.088 to i64
  %i.de = mul nuw nsw i64 %i.dd, 12
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cs, i64 noundef %i.de)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %13 = trunc i32 %i.o to i1
  %i.df = zext i32 %.088 to i64
  %i.dg = mul nuw nsw i64 %i.df, 12               ; 3 uses
  br i1 %13, label %.invoke212, label %bb.av

.invoke212:                                       ; preds = %bb.au, %bb.aq
  %i.dh = phi i64 [ %i.da, %bb.aq ], [ %i.dg, %bb.au ]
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cs, i64 noundef %i.dh)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  br i1 %i.ct, label %.invoke211, label %.invoke210

.invoke211:                                       ; preds = %.invoke214, %bb.av, %bb.ar
  %i.di = phi i64 [ %i.db, %.invoke214 ], [ %i.da, %bb.ar ], [ %i.dg, %bb.av ]
  %i.dj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.di, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

.invoke210:                                       ; preds = %bb.av, %bb.ar
  %i.dk = phi i64 [ %i.da, %bb.ar ], [ %i.dg, %bb.av ]
  %i.dl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.089, i64 noundef %i.dk)
          to label %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke213, %.invoke212, %.invoke211, %.invoke210
  %.not118 = icmp ne i32 %.088, %2
  %i.dm = and i1 %i.q, %.not118
  %or.cond119.not = and i1 %i.r, %i.dm
  br i1 %or.cond119.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 5 uses
  %.0185 = phi i32 [ %.1, %bb.ay ], [ 0, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit ] ; 3 uses
  %i.dn = lshr i64 %indvars.iv, 6
  %i.do = and i64 %i.dn, 67108863                 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !283
  %i.dr = and i64 %indvars.iv, 63
  %i.ds = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dt = and i64 %i.dq, %i.ds
  %.not182 = icmp eq i64 %i.dt, 0
  br i1 %.not182, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.preheader
  %i.du = zext i32 %.0185 to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.089, i64 %i.du
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dw, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i64 12, i1 false)
  %i.dx = add i32 %.0185, 1
  br label %bb.ay

bb.ax:                                            ; preds = %.preheader
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.do
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !283
  %i.ea = and i64 %i.dz, %i.ds
  %.not183 = icmp eq i64 %i.ea, 0
  %. = select i1 %.not183, ptr %10, ptr %9
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %., i64 12, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.1 = phi i32 [ %i.dx, %bb.aw ], [ %.0185, %bb.ax ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !750

.loopexit:                                        ; preds = %bb.ay, %_ZN7openvdb5v13_02io10HalfReaderILb0ENS0_4math4Vec3IiEEE4readERSiPS5_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i139 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i139, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit141, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i140

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i140: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit141

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit141: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not.i.i142 = icmp eq ptr %i.au, null
  br i1 %.not.i.i142, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146, label %bb.az

bb.az:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit141
  %i.ec = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.ec, align 8, !tbaa !334
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !335
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  %i.ek = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !13
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146

bb.bb:                                            ; preds = %bb.az
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i143 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i143, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

bb.bd:                                            ; preds = %bb.bb
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i145 = phi i32 [ %i.ef, %bb.bc ], [ %i.ep, %bb.bd ]
  %i.eq = icmp eq i32 %.0.i.i.i.i145, 1
  br i1 %i.eq, label %bb.be, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146, !prof !336

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit141, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !332 ; 8 uses
  %.not.i.i147 = icmp eq ptr %i.es, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.et, align 8, !tbaa !334
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !335
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !234
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20, !inline_history !14
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !234
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20, !inline_history !14
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !241
  %.not.i.i.i148 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i148, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.bj:                                            ; preds = %bb.bh
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i150 = phi i32 [ %i.ew, %bb.bi ], [ %i.fg, %bb.bj ]
  %i.fh = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.fh, label %bb.bk, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !336

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.aj, %.thread177, %bb.an, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %.pn110.pn = phi { ptr, i32 } [ %i.cr, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IiEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i ], [ %i.cg, %bb.aj ], [ %i.cq, %.thread177 ], [ %i.cr, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, %bb.ac
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit ], [ %i.bs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.x, %bb.bl, %bb.p
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn110.pn.pn, %bb.bl ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.l, %bb.h
  %.pn110.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn, %bb.bm ], [ %i.am, %bb.h ], [ %.pn.pn, %bb.l ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.g
end_hunk_4
