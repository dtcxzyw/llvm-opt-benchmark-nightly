Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector15LineValidation_EPjS3_jjRSt6vectorIdSaIdEERf:bb.a
          to label %bb.v unwind label %.loopexit.split-lp

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.078129 = phi i32 [ %spec.select, %scalar.ph ], [ %.078129.ph, %scalar.ph.preheader ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !75
  %i.ec = fsub double %i.da, %i.eb
  %i.ed = tail call double @llvm.fabs.f64(double %i.ec) ; 2 uses
  %i.ee = fsub double f0x401921FB54442D18, %i.ed
  %i.ef = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eg = fcmp olt double %i.ef, 3.926990e-01
  %i.eh = fcmp olt double %i.ed, 3.926990e-01
  %or.cond11 = select i1 %i.eg, i1 true, i1 %i.eh
  %i.ei = zext i1 %or.cond11 to i32
  %spec.select = add nuw nsw i32 %.078129, %i.ei  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond141.not, label %._crit_edge133, label %scalar.ph, !llvm.loop !409

bb.v:                                             ; preds = %._crit_edge133
  %i.ej = fcmp ogt double %i.dz, 0.000000e+00
  br label %bb.x

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %._crit_edge133, %bb.f
  %.sroa.0.0118 = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge133 ], [ %.sroa.0.0119, %bb.f ]
  %.sroa.12.0114 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge133 ], [ %.sroa.12.0121, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.0117 = phi ptr [ %.sroa.0.0119, %.loopexit ], [ %.sroa.0.0118, %.loopexit.split-lp ] ; 3 uses
  %.sroa.12.0113 = phi ptr [ %.sroa.12.0121, %.loopexit ], [ %.sroa.12.0114, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i90 = icmp eq ptr %.sroa.0.0117, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIdSaIdEED2Ev.exit91, label %bb.z

bb.x:                                             ; preds = %bb.s, %bb.t, %bb.p, %bb.q, %._crit_edge, %bb.v
  %.084 = phi i1 [ %i.ej, %bb.v ], [ false, %._crit_edge ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.s ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.el = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.em) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.z:                                             ; preds = %bb.w
  %i.en = ptrtoint ptr %.sroa.12.0113 to i64
  %i.eo = ptrtoint ptr %.sroa.0.0117 to i64
  %i.ep = sub i64 %i.en, %i.eo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0117, i64 noundef %i.ep) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit91

_ZNSt6vectorIdSaIdEED2Ev.exit91:                  ; preds = %bb.w, %bb.z
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.y, %bb.x, %bb.a
  %.185 = phi i1 [ true, %bb.a ], [ %.084, %bb.x ], [ %.084, %bb.y ]
  ret i1 %.185
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15line_descriptor16BinaryDescriptor10EdgeChainsD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2

_ZNSt6vectorIjSaIjEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !195    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIjSaIjEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !223
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit4

_ZNSt6vectorIjSaIjEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2, %bb.d
  ret void
}

declare void @_ZN2cvmlERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #7

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

declare void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector3nfaEiidd(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %i.a = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, %0
  %i.c = fcmp ole double %2, 0.000000e+00
  %or.cond3 = or i1 %i.b, %i.c
  %i.d = fcmp oge double %2, 1.000000e+00
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector3nfaEiidd, ptr noundef nonnull @.str.26, i32 noundef 764) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %4, align 8, !tbaa !84     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !62
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %1, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fneg double %3
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.m = icmp eq i32 %0, %1
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = fneg double %3
  %i.o = uitofp nneg i32 %1 to double
  %i.p = tail call double @llvm.log10.f64(double %2)
  %i.q = fneg double %i.o
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.p, double %i.n)
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.s = fsub double 1.000000e+00, %2             ; 2 uses
  %i.t = fdiv double %2, %i.s
  %i.u = uitofp nneg i32 %0 to double             ; 2 uses
  %6 = fadd double %i.u, 1.000000e+00             ; 9 uses
  %7 = fcmp ogt double %6, 1.500000e+01
  br i1 %7, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = fadd double %6, -5.000000e-01
  %i.w = tail call double @llvm.log.f64(double %6)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double f0x3FED67F1C864BEB7)
  %i.y = fsub double %i.x, %6
  %i.z = fmul nnan double %6, 5.000000e-01
  %i.aa = fdiv double 1.000000e+00, %6
  %i.ab = tail call double @sinh(double noundef %i.aa) #23
  %i.ac = tail call double @pow(double noundef %6, double noundef 6.000000e+00) #23
  %i.ad = fmul double %i.ac, 8.100000e+02
  %i.ae = fdiv double 1.000000e+00, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %6, double %i.ab, double %i.ae)
  %i.ag = tail call double @log(double noundef %i.af) #23
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.ag, double %i.y)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector17log_gamma_lanczosEd(double noundef %6)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = phi double [ %i.ah, %bb.k ], [ %i.ai, %bb.l ]
  %i.ak = uitofp nneg i32 %1 to double            ; 3 uses
  %8 = fadd double %i.ak, 1.000000e+00            ; 9 uses
  %9 = fcmp ogt double %8, 1.500000e+01
  br i1 %9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = fadd double %8, -5.000000e-01
  %i.am = tail call double @llvm.log.f64(double %8)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double f0x3FED67F1C864BEB7)
  %i.ao = fsub double %i.an, %8
  %i.ap = fmul nnan double %8, 5.000000e-01
  %i.aq = fdiv double 1.000000e+00, %8
  %i.ar = tail call double @sinh(double noundef %i.aq) #23
  %i.as = tail call double @pow(double noundef %8, double noundef 6.000000e+00) #23
  %i.at = fmul double %i.as, 8.100000e+02
  %i.au = fdiv double 1.000000e+00, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %8, double %i.ar, double %i.au)
  %i.aw = tail call double @log(double noundef %i.av) #23
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.aw, double %i.ao)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ay = tail call noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector17log_gamma_lanczosEd(double noundef %8)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = phi double [ %i.ax, %bb.n ], [ %i.ay, %bb.o ]
  %i.ba = fsub double %i.aj, %i.az
  %i.bb = sub nuw nsw i32 %0, %1
  %i.bc = sitofp i32 %i.bb to double              ; 2 uses
  %i.bd = fadd double %i.bc, 1.000000e+00         ; 9 uses
  %i.be = fcmp ogt double %i.bd, 1.500000e+01
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = fadd double %i.bd, -5.000000e-01
  %i.bg = tail call double @llvm.log.f64(double %i.bd)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double f0x3FED67F1C864BEB7)
  %i.bi = fsub double %i.bh, %i.bd
  %i.bj = fmul nnan double %i.bd, 5.000000e-01
  %i.bk = fdiv double 1.000000e+00, %i.bd
  %i.bl = tail call double @sinh(double noundef %i.bk) #23
  %i.bm = tail call double @pow(double noundef %i.bd, double noundef 6.000000e+00) #23
  %i.bn = fmul double %i.bm, 8.100000e+02
  %i.bo = fdiv double 1.000000e+00, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bl, double %i.bo)
  %i.bq = tail call double @log(double noundef %i.bp) #23
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.bq, double %i.bi)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bs = tail call noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector17log_gamma_lanczosEd(double noundef %i.bd)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bt = phi double [ %i.br, %bb.q ], [ %i.bs, %bb.r ]
  %i.bu = fsub double %i.ba, %i.bt
  %i.bv = tail call double @llvm.log.f64(double %2)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bv, double %i.bu)
  %i.bx = tail call double @log(double noundef %i.s) #23
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bx, double %i.bw) ; 2 uses
  %i.bz = tail call double @exp(double noundef %i.by) #23 ; 6 uses
  %i.ca = fcmp oeq double %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit.thread, label %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit

_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit: ; preds = %bb.s
  %i.cb = tail call double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cc = fcmp one double %i.bz, 0.000000e+00
  %i.cd = select i1 %i.cc, double %i.cb, double 0.000000e+00 ; 2 uses
  %i.ce = fcmp olt double %i.cd, f0x0010000000000000
  %spec.store.select.i = select i1 %i.ce, double f0x0010000000000000, double %i.cd
  %i.cf = fdiv double %i.cb, %spec.store.select.i
  %i.cg = fcmp ugt double %i.cf, f0x3D19000000000000
  br i1 %i.cg, label %.preheader, label %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit.thread

.preheader:                                       ; preds = %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit
  %.not91.not96 = icmp slt i32 %1, %0
  br i1 %.not91.not96, label %.lr.ph, label %._crit_edge

_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit.thread: ; preds = %bb.s, %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit
  %i.ch = fmul double %2, %i.u
  %i.ci = fcmp olt double %i.ch, %i.ak
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit.thread
  %i.cj = fdiv double %i.by, f0xC0026BB1BBB55516
  %i.ck = fsub double %i.cj, %3
  br label %bb.x

bb.u:                                             ; preds = %_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector12double_equalEdd.exit.thread
  %i.cl = fneg double %3
  br label %bb.x

.lr.ph:                                           ; preds = %.preheader, %.lr.ph.backedge
  %.07899.in = phi i32 [ %.07899, %.lr.ph.backedge ], [ %1, %.preheader ] ; 2 uses
  %.07998 = phi double [ %i.cs, %.lr.ph.backedge ], [ %i.bz, %.preheader ]
  %.08097 = phi double [ %i.cr, %.lr.ph.backedge ], [ %i.bz, %.preheader ]
  %.07899 = add nuw nsw i32 %.07899.in, 1         ; 4 uses
  %i.cm = sub i32 %0, %.07899.in
  %i.cn = sitofp i32 %i.cm to double              ; 2 uses
  %i.co = uitofp nneg i32 %.07899 to double
  %i.cp = fdiv double %i.cn, %i.co                ; 2 uses
  %i.cq = fmul double %i.t, %i.cp                 ; 3 uses
  %i.cr = fmul double %.08097, %i.cq              ; 3 uses
  %i.cs = fadd double %.07998, %i.cr              ; 5 uses
  %i.ct = fcmp olt double %i.cp, 1.000000e+00
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.cu = tail call double @pow(double noundef %i.cq, double noundef %i.cn) #23
  %i.cv = fsub double 1.000000e+00, %i.cu
  %i.cw = fsub double 1.000000e+00, %i.cq
  %i.cx = fdiv double %i.cv, %i.cw
  %i.cy = fadd double %i.cx, -1.000000e+00
  %i.cz = fmul double %i.cr, %i.cy
  %i.da = tail call double @log10(double noundef %i.cs) #23
  %i.db = fneg double %i.da
  %i.dc = fsub double %i.db, %3
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fmul double %i.dd, 1.000000e-01
  %i.df = fmul double %i.cs, %i.de
  %i.dg = fcmp uge double %i.cz, %i.df
  %.not91.not = icmp slt i32 %.07899, %0
  %or.cond = and i1 %i.dg, %.not91.not
  br i1 %or.cond, label %.lr.ph.backedge, label %._crit_edge

bb.w:                                             ; preds = %.lr.ph
  %.not91.not.old = icmp slt i32 %.07899, %0
  br i1 %.not91.not.old, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %bb.w, %bb.v
  br label %.lr.ph, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.w, %bb.v, %.preheader
  %.1 = phi double [ %i.bz, %.preheader ], [ %i.cs, %bb.v ], [ %i.cs, %bb.w ]
  %i.dh = tail call double @log10(double noundef %.1) #23
  %i.di = fneg double %i.dh
  %i.dj = fsub double %i.di, %3
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.u, %bb.t, %bb.i, %bb.g
  %.081 = phi double [ %i.l, %bb.g ], [ %i.r, %bb.i ], [ %i.ck, %bb.t ], [ %i.cl, %bb.u ], [ %i.dj, %._crit_edge ]
  ret double %.081
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !413
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !413
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  %i.c = load ptr, ptr %1, align 8, !tbaa !156    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.i = load ptr, ptr %0, align 8, !tbaa !156    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !63

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !158

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !113
  store float %i.r, ptr %i.o, align 4, !tbaa !113
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !156    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !160
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !155  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !158

end_hunk_0
