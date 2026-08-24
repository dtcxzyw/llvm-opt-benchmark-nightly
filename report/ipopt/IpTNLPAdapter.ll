Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPAdapter?download=true
inline.NumInlined: 3192
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Ipopt11TNLPAdapter16CheckDerivativesENS0_18DerivativeTestEnumEi:bb.a
  %.pn499.pn.pn = phi { ptr, i32 } [ %i.la, %bb.ed ], [ %.pn499.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603 ], [ %.pn499.pn, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %bb.jw

bb.ei:                                            ; preds = %bb.dw
  %i.lo = load i32, ptr %i.e, align 4, !tbaa !262
  %i.lp = icmp eq i32 %i.lo, 1
  %.pre = load i32, ptr %i.c, align 4, !tbaa !97  ; 5 uses
  %i.lq = icmp sgt i32 %.pre, 0
  %or.cond920 = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond920, label %.lr.ph727.preheader, label %.loopexit717

.lr.ph727.preheader:                              ; preds = %bb.ei
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %.pre, 8
  br i1 %min.iters.check, label %.lr.ph727.preheader943, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph727.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.lr, align 4, !tbaa !97
  %wide.load924 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !97
  %i.lt = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.lu = add nsw <4 x i32> %wide.load924, splat (i32 -1)
  store <4 x i32> %i.lt, ptr %i.lr, align 4, !tbaa !97
  store <4 x i32> %i.lu, ptr %i.ls, align 4, !tbaa !97
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  %wide.load925 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !97
  %wide.load926 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !97
  %i.lx = add nsw <4 x i32> %wide.load925, splat (i32 -1)
  %i.ly = add nsw <4 x i32> %wide.load926, splat (i32 -1)
  store <4 x i32> %i.lx, ptr %i.lv, align 4, !tbaa !97
  store <4 x i32> %i.ly, ptr %i.lw, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lz = icmp eq i64 %index.next, %n.vec
  br i1 %i.lz, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit717, label %.lr.ph727.preheader943

.lr.ph727.preheader943:                           ; preds = %.lr.ph727.preheader, %middle.block
  %indvars.iv779.ph = phi i64 [ 0, %.lr.ph727.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph727

.lr.ph727:                                        ; preds = %.lr.ph727.preheader943, %.lr.ph727
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %.lr.ph727 ], [ %indvars.iv779.ph, %.lr.ph727.preheader943 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv779 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !97
  %i.mc = add nsw i32 %i.mb, -1
  store i32 %i.mc, ptr %i.ma, align 4, !tbaa !97
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv779 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !97
  %i.mf = add nsw i32 %i.me, -1
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !97
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next780, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit717, label %.lr.ph727, !llvm.loop !264

.loopexit717:                                     ; preds = %.lr.ph727, %middle.block, %bb.ei
  %i.mg = sext i32 %.pre to i64
  %i.mh = icmp slt i32 %.pre, 0
  %i.mi = shl nsw i64 %i.mg, 3
  %i.mj = select i1 %i.mh, i64 -1, i64 %i.mi
  %i.mk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mj) #25 ; 2 uses
  %i.ml = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.mm = load i32, ptr %i.a, align 4, !tbaa !97
  %i.mn = load i32, ptr %i.b, align 4, !tbaa !97
  %i.mo = load i32, ptr %i.c, align 4, !tbaa !97
  %i.mp = load ptr, ptr %i.ml, align 8, !tbaa !10
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 104
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = call noundef zeroext i1 %i.mr(ptr noundef nonnull align 8 dereferenceable(12) %i.ml, i32 noundef %i.mm, ptr noundef nonnull %i.dz, i1 noundef zeroext false, i32 noundef %i.mn, i32 noundef %i.mo, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.mk)
  br i1 %i.ms, label %bb.eu, label %bb.ej

bb.ej:                                            ; preds = %.loopexit717
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %48)
          to label %bb.ek unwind label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  %i.mt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.1)
          to label %bb.el unwind label %bb.eq     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.mu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.129)
          to label %bb.em unwind label %bb.eq     ; 0 uses

bb.em:                                            ; preds = %bb.el
  %i.mv = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.en unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.thread

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.mv, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %49, i32 noundef 3108)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  invoke void @__cxa_throw(ptr nonnull %i.mv, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.er

bb.ep:                                            ; preds = %bb.ej
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

bb.eq:                                            ; preds = %bb.el, %bb.ek
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.thread: ; preds = %bb.em
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %bb.es

bb.er:                                            ; preds = %bb.eo, %bb.en
  %.0338 = phi i1 [ false, %bb.eo ], [ true, %bb.en ] ; 2 uses
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.na = load ptr, ptr %49, align 8, !tbaa !22   ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606: ; preds = %bb.er
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !27
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br i1 %.0338, label %bb.es, label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608: ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br i1 %.0338, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608
  %.pn503690 = phi { ptr, i32 } [ %i.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.thread ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606 ]
  call void @__cxa_free_exception(ptr %i.mv) #22
  br label %bb.et

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %bb.es, %bb.eq
  %.pn503.pn = phi { ptr, i32 } [ %.pn503690, %bb.es ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %i.mx, %bb.eq ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606 ] ; 2 uses
  %i.nf = load ptr, ptr %47, align 8, !tbaa !22   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609: ; preds = %bb.et
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !27
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609, %bb.ep
  %.pn503.pn.pn = phi { ptr, i32 } [ %i.mw, %bb.ep ], [ %.pn503.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609 ], [ %.pn503.pn, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.jw

bb.eu:                                            ; preds = %.loopexit717, %bb.dv
  %.0345 = phi ptr [ %i.ki, %.loopexit717 ], [ null, %bb.dv ] ; 9 uses
  %.0344 = phi ptr [ %i.ko, %.loopexit717 ], [ null, %bb.dv ] ; 9 uses
  %.0343 = phi ptr [ %i.mk, %.loopexit717 ], [ null, %bb.dv ] ; 9 uses
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i32 %i.nk, 0
  %i.nn = shl nsw i64 %i.nl, 3
  %i.no = select i1 %i.nm, i64 -1, i64 %i.nn
  %i.np = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.no) #25 ; 8 uses
  %i.nq = load i32, ptr %i.a, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.nq, ptr noundef nonnull %i.dz, i32 noundef 1, ptr noundef nonnull %i.np, i32 noundef 1)
  %i.nr = load i32, ptr %i.b, align 4, !tbaa !97  ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.nt = zext nneg i32 %i.nr to i64
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.nu) #25
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.0337 = phi ptr [ %i.nv, %bb.ev ], [ null, %bb.eu ] ; 4 uses
  %i.nw = load i32, ptr %i.e, align 4, !tbaa !262
  %i.nx = icmp eq i32 %i.nw, 1                    ; 3 uses
  %spec.store.select = zext i1 %i.nx to i32
  %or.cond = icmp ult i32 %1, 3
  br i1 %or.cond, label %bb.ex, label %.loopexit715

bb.ex:                                            ; preds = %bb.ew
  %i.ny = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ob(ptr noundef nonnull align 8 dereferenceable(40) %i.ny, i32 noundef 3, i32 noundef 12, ptr noundef nonnull @.str.130)
  %.sroa.speculated.i612 = call noundef i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %i.oc = load i32, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.od = icmp slt i32 %.sroa.speculated.i612, %i.oc
  br i1 %i.od, label %.lr.ph743, label %.loopexit715

.lr.ph743:                                        ; preds = %bb.ex
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.oh = zext i1 %i.nx to i64                    ; 3 uses
  %i.oi = zext nneg i32 %.sroa.speculated.i612 to i64
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph743, %.loopexit714
  %indvars.iv789 = phi i64 [ %i.oi, %.lr.ph743 ], [ %indvars.iv.next790, %.loopexit714 ] ; 9 uses
  %i.oj = phi i32 [ %i.oc, %.lr.ph743 ], [ %i.ua, %.loopexit714 ]
  %.0354739 = phi i32 [ 0, %.lr.ph743 ], [ %.4, %.loopexit714 ]
  %i.ok = load double, ptr %i.oe, align 8, !tbaa !265
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv789 ; 2 uses
  %i.om = load double, ptr %i.ol, align 8, !tbaa !137 ; 2 uses
  %i.on = call noundef double @llvm.fabs.f64(double %i.om) ; 2 uses
  %i.oo = fcmp ogt double %i.on, 1.000000e+00
  %.sroa.speculated.i613 = select i1 %i.oo, double %i.on, double 1.000000e+00
  %i.op = fmul double %i.ok, %.sroa.speculated.i613 ; 3 uses
  %i.oq = fadd double %i.om, %i.op
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv789 ; 2 uses
  store double %i.oq, ptr %i.or, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.os = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !10
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 80
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = call noundef zeroext i1 %i.ov(ptr noundef nonnull align 8 dereferenceable(12) %i.os, i32 noundef %i.oj, ptr noundef nonnull %i.np, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.ow, label %bb.fk, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %52)
          to label %bb.fa unwind label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  %i.ox = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.1)
          to label %bb.fb unwind label %bb.fg     ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.oy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.131)
          to label %bb.fc unwind label %bb.fg     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.oz = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %54)
          to label %bb.fd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616.thread

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.oz, ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %53, i32 noundef 3143)
          to label %bb.fe unwind label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  invoke void @__cxa_throw(ptr nonnull %i.oz, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.fh

bb.ff:                                            ; preds = %bb.ez
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619

bb.fg:                                            ; preds = %bb.fb, %bb.fa
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616.thread: ; preds = %bb.fc
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fe, %bb.fd
  %.0334 = phi i1 [ false, %bb.fe ], [ true, %bb.fd ] ; 2 uses
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pe = load ptr, ptr %53, align 8, !tbaa !22   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614: ; preds = %bb.fh
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !27
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br i1 %.0334, label %bb.fi, label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br i1 %.0334, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616
  %.pn526693 = phi { ptr, i32 } [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616.thread ], [ %i.pd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616 ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614 ]
  call void @__cxa_free_exception(ptr %i.oz) #22
  br label %bb.fj

bb.fj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, %bb.fi, %bb.fg
  %.pn526.pn = phi { ptr, i32 } [ %.pn526693, %bb.fi ], [ %i.pd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616 ], [ %i.pb, %bb.fg ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614 ] ; 2 uses
  %i.pj = load ptr, ptr %51, align 8, !tbaa !22   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617: ; preds = %bb.fj
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !27
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617, %bb.ff
  %.pn526.pn.pn = phi { ptr, i32 } [ %i.pa, %bb.ff ], [ %.pn526.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617 ], [ %.pn526.pn, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  br label %bb.gl

bb.fk:                                            ; preds = %bb.ey
  %i.po = load double, ptr %i.g, align 8, !tbaa !137
  %i.pp = load double, ptr %i.f, align 8, !tbaa !137
  %i.pq = fsub double %i.po, %i.pp
  %i.pr = fdiv double %i.pq, %i.op                ; 3 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv789
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !137 ; 2 uses
  %i.pu = fsub double %i.pr, %i.pt
  %i.pv = call noundef double @llvm.fabs.f64(double %i.pu)
  %i.pw = call noundef double @llvm.fabs.f64(double %i.pr) ; 2 uses
  %i.px = load double, ptr %i.of, align 8, !tbaa !266 ; 3 uses
  %i.py = fcmp olt double %i.pw, %i.px
  %.sroa.speculated.i620 = select i1 %i.py, double %i.px, double %i.pw
  %i.pz = fdiv double %i.pv, %.sroa.speculated.i620 ; 2 uses
  %i.qa = fcmp oge double %i.pz, %i.px            ; 3 uses
  %i.qb = zext i1 %i.qa to i32
  %.1355 = add nsw i32 %.0354739, %i.qb           ; 3 uses
  %.0330 = select i1 %i.qa, i32 42, i32 32
  br i1 %i.qa, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qc = load i8, ptr %i.og, align 8, !tbaa !267, !range !120, !noundef !121
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qe = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.qf = add nuw nsw i64 %indvars.iv789, %i.oh
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !10
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = trunc nuw i64 %i.qf to i32
  call void (ptr, i32, i32, ptr, ...) %i.qi(ptr noundef nonnull align 8 dereferenceable(40) %i.qe, i32 noundef 4, i32 noundef 12, ptr noundef nonnull @.str.132, i32 noundef %.0330, i32 noundef %i.qj, double noundef %i.pt, double noundef %i.pr, double noundef %i.pz)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.qk = load i32, ptr %i.b, align 4, !tbaa !97  ; 2 uses
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %bb.fo, label %.loopexit714

bb.fo:                                            ; preds = %bb.fn
  %i.qm = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.qn = load i32, ptr %i.a, align 4, !tbaa !97
  %i.qo = load ptr, ptr %i.qm, align 8, !tbaa !10
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 96
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = call noundef zeroext i1 %i.qq(ptr noundef nonnull align 8 dereferenceable(12) %i.qm, i32 noundef %i.qn, ptr noundef nonnull %i.np, i1 noundef zeroext false, i32 noundef %i.qk, ptr noundef %.0337)
  br i1 %i.qr, label %.preheader713, label %bb.fp

.preheader713:                                    ; preds = %bb.fo
  %i.qs = load i32, ptr %i.b, align 4, !tbaa !97  ; 2 uses
  %i.qt = icmp sgt i32 %i.qs, 0
  br i1 %i.qt, label %.lr.ph737, label %.loopexit714

.lr.ph737:                                        ; preds = %.preheader713
  %i.qu = add nuw nsw i64 %indvars.iv789, %i.oh
  %.pre820.a = load i32, ptr %i.c, align 4, !tbaa !97
  %i.qv = trunc nuw i64 %i.qu to i32
  br label %bb.ga

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
end_hunk_0
begin_hunk_1_@_ZN5Ipopt11TNLPAdapter16CheckDerivativesENS0_18DerivativeTestEnumEi:bb.a
  %i.uw = load i32, ptr %i.b, align 4, !tbaa !97
  %i.ux = load i32, ptr %i.d, align 4, !tbaa !97
  %i.uy = load ptr, ptr %i.uu, align 8, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 112
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = call noundef zeroext i1 %i.va(ptr noundef nonnull align 8 dereferenceable(12) %i.uu, i32 noundef %i.uv, ptr noundef null, i1 noundef zeroext false, double noundef 0.000000e+00, i32 noundef %i.uw, ptr noundef null, i1 noundef zeroext false, i32 noundef %i.ux, ptr noundef nonnull %i.un, ptr noundef nonnull %i.ut, ptr noundef null)
  br i1 %i.vb, label %bb.gy, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %60)
          to label %bb.go unwind label %bb.gt

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  %i.vc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @.str.1)
          to label %bb.gp unwind label %bb.gu     ; 0 uses

bb.gp:                                            ; preds = %bb.go
  %i.vd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @.str.135)
          to label %bb.gq unwind label %bb.gu     ; 0 uses

bb.gq:                                            ; preds = %bb.gp
  %i.ve = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.gr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630.thread

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %61, i32 noundef 3213)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  invoke void @__cxa_throw(ptr nonnull %i.ve, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.gv

bb.gt:                                            ; preds = %bb.gn
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

bb.gu:                                            ; preds = %bb.gp, %bb.go
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630.thread: ; preds = %bb.gq
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gs, %bb.gr
  %.0322 = phi i1 [ false, %bb.gs ], [ true, %bb.gr ] ; 2 uses
  %i.vi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vj = load ptr, ptr %61, align 8, !tbaa !22   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %bb.gv
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !27
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br i1 %.0322, label %bb.gw, label %bb.gx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br i1 %.0322, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
  %.pn507699 = phi { ptr, i32 } [ %i.vh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630.thread ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630 ], [ %i.vi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628 ]
  call void @__cxa_free_exception(ptr %i.ve) #22
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %bb.gw, %bb.gu
  %.pn507.pn = phi { ptr, i32 } [ %.pn507699, %bb.gw ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630 ], [ %i.vg, %bb.gu ], [ %i.vi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628 ] ; 2 uses
  %i.vo = load ptr, ptr %59, align 8, !tbaa !22   ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.vq = icmp eq ptr %i.vo, %i.vp
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %bb.gx
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !27
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631, %bb.gt
  %.pn507.pn.pn = phi { ptr, i32 } [ %i.vf, %bb.gt ], [ %.pn507.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631 ], [ %.pn507.pn, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  br label %bb.jh

bb.gy:                                            ; preds = %bb.gm
  %i.vt = load i32, ptr %i.e, align 4, !tbaa !262
  %i.vu = icmp eq i32 %i.vt, 1
  %.pre822 = load i32, ptr %i.d, align 4, !tbaa !97 ; 5 uses
  %i.vv = icmp sgt i32 %.pre822, 0
  %or.cond921 = select i1 %i.vu, i1 %i.vv, i1 false
  br i1 %or.cond921, label %.lr.ph746.preheader, label %.loopexit712

.lr.ph746.preheader:                              ; preds = %bb.gy
  %wide.trip.count795 = zext nneg i32 %.pre822 to i64 ; 3 uses
  %min.iters.check928 = icmp ult i32 %.pre822, 8
  br i1 %min.iters.check928, label %.lr.ph746.preheader942, label %vector.ph929

vector.ph929:                                     ; preds = %.lr.ph746.preheader
  %n.vec930 = and i64 %wide.trip.count795, 2147483640 ; 3 uses
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph929
  %index932 = phi i64 [ 0, %vector.ph929 ], [ %index.next937, %vector.body931 ] ; 3 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %index932 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 2 uses
  %wide.load933.a = load <4 x i32>, ptr %i.vw, align 4, !tbaa !97
  %wide.load934 = load <4 x i32>, ptr %i.vx, align 4, !tbaa !97
  %i.vy = add nsw <4 x i32> %wide.load933.a, splat (i32 -1)
  %i.vz = add nsw <4 x i32> %wide.load934, splat (i32 -1)
  store <4 x i32> %i.vy, ptr %i.vw, align 4, !tbaa !97
  store <4 x i32> %i.vz, ptr %i.vx, align 4, !tbaa !97
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %index932 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 2 uses
  %wide.load935 = load <4 x i32>, ptr %i.wa, align 4, !tbaa !97
  %wide.load936 = load <4 x i32>, ptr %i.wb, align 4, !tbaa !97
  %i.wc = add nsw <4 x i32> %wide.load935, splat (i32 -1)
  %i.wd = add nsw <4 x i32> %wide.load936, splat (i32 -1)
  store <4 x i32> %i.wc, ptr %i.wa, align 4, !tbaa !97
  store <4 x i32> %i.wd, ptr %i.wb, align 4, !tbaa !97
  %index.next937 = add nuw i64 %index932, 8       ; 2 uses
  %i.we = icmp eq i64 %index.next937, %n.vec930
  br i1 %i.we, label %middle.block938, label %vector.body931, !llvm.loop !271

middle.block938:                                  ; preds = %vector.body931
  %cmp.n939 = icmp eq i64 %n.vec930, %wide.trip.count795
  br i1 %cmp.n939, label %.loopexit712, label %.lr.ph746.preheader942

.lr.ph746.preheader942:                           ; preds = %.lr.ph746.preheader, %middle.block938
  %indvars.iv792.ph = phi i64 [ 0, %.lr.ph746.preheader ], [ %n.vec930, %middle.block938 ]
  br label %.lr.ph746

.lr.ph746:                                        ; preds = %.lr.ph746.preheader942, %.lr.ph746
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %.lr.ph746 ], [ %indvars.iv792.ph, %.lr.ph746.preheader942 ] ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv792 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !97
  %i.wh = add nsw i32 %i.wg, -1
  store i32 %i.wh, ptr %i.wf, align 4, !tbaa !97
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv792 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !97
  %i.wk = add nsw i32 %i.wj, -1
  store i32 %i.wk, ptr %i.wi, align 4, !tbaa !97
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %wide.trip.count795
  br i1 %exitcond796.not, label %.loopexit712, label %.lr.ph746, !llvm.loop !272

.loopexit712:                                     ; preds = %.lr.ph746, %middle.block938, %bb.gy
  %i.wl = sext i32 %.pre822 to i64
  %i.wm = icmp slt i32 %.pre822, 0
  %i.wn = shl nsw i64 %i.wl, 3
  %i.wo = select i1 %i.wm, i64 -1, i64 %i.wn
  %i.wp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.wo) #25 ; 3 uses
  %i.wq = load i32, ptr %i.b, align 4, !tbaa !97  ; 2 uses
  %i.wr = icmp sgt i32 %i.wq, 0
  br i1 %i.wr, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.loopexit712
  %i.ws = zext nneg i32 %i.wq to i64
  %i.wt = shl nuw nsw i64 %i.ws, 3
  %i.wu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #25 ; 2 uses
  %i.wv = load i32, ptr %i.b, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.wv, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.wu, i32 noundef 1)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.loopexit712
  %.0320 = phi ptr [ %i.wu, %bb.gz ], [ null, %.loopexit712 ] ; 5 uses
  %i.ww = load i32, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.wx = sext i32 %i.ww to i64
  %i.wy = icmp slt i32 %i.ww, 0
  %i.wz = shl nsw i64 %i.wx, 3
  %i.xa = select i1 %i.wy, i64 -1, i64 %i.wz
  %i.xb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.xa) #25 ; 9 uses
  %i.xc = load i32, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.xd = sext i32 %i.xc to i64
  %i.xe = icmp slt i32 %i.xc, 0
  %i.xf = shl nsw i64 %i.xd, 3
  %i.xg = select i1 %i.xe, i64 -1, i64 %i.xf
  %i.xh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.xg) #25 ; 5 uses
  %i.xi = load i32, ptr %i.c, align 4, !tbaa !97  ; 2 uses
  %i.xj = sext i32 %i.xi to i64
  %i.xk = icmp slt i32 %i.xi, 0
  %i.xl = shl nsw i64 %i.xj, 3
  %i.xm = select i1 %i.xk, i64 -1, i64 %i.xl
  %i.xn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.xm) #25 ; 3 uses
  %.sroa.speculated.i634 = call noundef i32 @llvm.smax.i32(i32 %2, i32 -1) ; 2 uses
  %i.xo = load i32, ptr %i.b, align 4, !tbaa !97
  %i.xp = icmp slt i32 %.sroa.speculated.i634, %i.xo
  br i1 %i.xp, label %.lr.ph775, label %._crit_edge776

.lr.ph775:                                        ; preds = %bb.ha
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xt = zext i1 %i.nx to i64                    ; 2 uses
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph775, %bb.je
  %.6772.a = phi i32 [ %.sroa.speculated.i634, %.lr.ph775 ], [ %78, %bb.je ] ; 10 uses
  %.6772 = phi i32 [ %.5, %.lr.ph775 ], [ %.7.lcssa, %bb.je ] ; 2 uses
  %i.xu = icmp eq i32 %.6772.a, -1                ; 3 uses
  br i1 %i.xu, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.xv = load i32, ptr %i.a, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.xv, ptr noundef nonnull %i.jd, i32 noundef 1, ptr noundef nonnull %i.xb, i32 noundef 1)
  br label %.loopexit710

bb.hd:                                            ; preds = %bb.hb
  %75 = zext nneg i32 %.6772.a to i64
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %.0320, i64 %75
  store double 1.500000e+00, ptr %i.xw, align 8, !tbaa !137
  %i.xx = load i32, ptr %i.a, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.xx, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.xb, i32 noundef 1)
  %i.xy = load i32, ptr %i.c, align 4, !tbaa !97  ; 4 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %.lr.ph749.preheader, label %.loopexit710

.lr.ph749.preheader:                              ; preds = %bb.hd
  %wide.trip.count800 = zext nneg i32 %i.xy to i64 ; 2 uses
  %xtraiter947 = and i64 %wide.trip.count800, 1
  %i.ya = icmp eq i32 %i.xy, 1
  br i1 %i.ya, label %.lr.ph749.epil.preheader, label %.lr.ph749.preheader.new

.lr.ph749.preheader.new:                          ; preds = %.lr.ph749.preheader
  %unroll_iter950 = and i64 %wide.trip.count800, 2147483646
  br label %.lr.ph749

.lr.ph749:                                        ; preds = %bb.hg, %.lr.ph749.preheader.new
  %indvars.iv797 = phi i64 [ 0, %.lr.ph749.preheader.new ], [ %indvars.iv.next798.1, %bb.hg ] ; 5 uses
  %niter951 = phi i64 [ 0, %.lr.ph749.preheader.new ], [ %niter951.next.1, %bb.hg ]
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %indvars.iv797
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !97
  %i.yd = icmp eq i32 %i.yc, %.6772.a
  br i1 %i.yd, label %bb.he, label %.lr.ph749.1

bb.he:                                            ; preds = %.lr.ph749
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %.0343, i64 %indvars.iv797
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !137
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %indvars.iv797
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !97
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.yi ; 2 uses
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !137
  %i.yl = fadd double %i.yf, %i.yk
  store double %i.yl, ptr %i.yj, align 8, !tbaa !137
  br label %.lr.ph749.1

.lr.ph749.1:                                      ; preds = %.lr.ph749, %bb.he
  %indvars.iv.next798 = or disjoint i64 %indvars.iv797, 1 ; 3 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %indvars.iv.next798
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !97
  %i.yo = icmp eq i32 %i.yn, %.6772.a
  br i1 %i.yo, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.lr.ph749.1
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %.0343, i64 %indvars.iv.next798
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !137
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %indvars.iv.next798
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !97
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.yt ; 2 uses
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !137
  %i.yw = fadd double %i.yq, %i.yv
  store double %i.yw, ptr %i.yu, align 8, !tbaa !137
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.lr.ph749.1
  %indvars.iv.next798.1 = add nuw nsw i64 %indvars.iv797, 2 ; 2 uses
  %niter951.next.1 = add i64 %niter951, 2         ; 2 uses
  %niter951.ncmp.1 = icmp eq i64 %niter951.next.1, %unroll_iter950
  br i1 %niter951.ncmp.1, label %.loopexit710.loopexit.unr-lcssa, label %.lr.ph749, !llvm.loop !273

.loopexit710.loopexit.unr-lcssa:                  ; preds = %bb.hg
  %lcmp.mod948.not = icmp eq i64 %xtraiter947, 0
  br i1 %lcmp.mod948.not, label %.loopexit710, label %.lr.ph749.epil.preheader

.lr.ph749.epil.preheader:                         ; preds = %.loopexit710.loopexit.unr-lcssa, %.lr.ph749.preheader
  %indvars.iv797.epil.init = phi i64 [ 0, %.lr.ph749.preheader ], [ %indvars.iv.next798.1, %.loopexit710.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod949 = trunc i32 %i.xy to i1
  call void @llvm.assume(i1 %lcmp.mod949)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %indvars.iv797.epil.init
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !97
  %i.yz = icmp eq i32 %i.yy, %.6772.a
  br i1 %i.yz, label %bb.hh, label %.loopexit710

bb.hh:                                            ; preds = %.lr.ph749.epil.preheader
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %.0343, i64 %indvars.iv797.epil.init
  %i.zb = load double, ptr %i.za, align 8, !tbaa !137
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %indvars.iv797.epil.init
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !97
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.ze ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !137
  %i.zh = fadd double %i.zb, %i.zg
  store double %i.zh, ptr %i.zf, align 8, !tbaa !137
  br label %.loopexit710

.loopexit710:                                     ; preds = %.loopexit710.loopexit.unr-lcssa, %bb.hh, %.lr.ph749.epil.preheader, %bb.hd, %bb.hc
  %.0318 = phi double [ 1.500000e+00, %bb.hc ], [ 0.000000e+00, %bb.hd ], [ 0.000000e+00, %.lr.ph749.epil.preheader ], [ 0.000000e+00, %bb.hh ], [ 0.000000e+00, %.loopexit710.loopexit.unr-lcssa ]
  %i.zi = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.zj = load i32, ptr %i.a, align 4, !tbaa !97
  %i.zk = load i32, ptr %i.b, align 4, !tbaa !97
  %i.zl = load i32, ptr %i.d, align 4, !tbaa !97
  %i.zm = load ptr, ptr %i.zi, align 8, !tbaa !10
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 112
  %i.zo = load ptr, ptr %i.zn, align 8
  %i.zp = call noundef zeroext i1 %i.zo(ptr noundef nonnull align 8 dereferenceable(12) %i.zi, i32 noundef %i.zj, ptr noundef nonnull %i.dz, i1 noundef zeroext true, double noundef %.0318, i32 noundef %i.zk, ptr noundef %.0320, i1 noundef zeroext true, i32 noundef %i.zl, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.wp)
  br i1 %i.zp, label %.preheader, label %bb.hi

.preheader:                                       ; preds = %.loopexit710
  %i.zq = load i32, ptr %i.a, align 4, !tbaa !97  ; 2 uses
  %i.zr = icmp sgt i32 %i.zq, 0
  br i1 %i.zr, label %.lr.ph769, label %._crit_edge770

.lr.ph769:                                        ; preds = %.preheader
  %76 = add nuw nsw i32 %.6772.a, %spec.store.select
  br label %bb.ht

bb.hi:                                            ; preds = %.loopexit710
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %64)
          to label %bb.hj unwind label %bb.ho

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  %i.zs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.1)
          to label %bb.hk unwind label %bb.hp     ; 0 uses

bb.hk:                                            ; preds = %bb.hj
  %i.zt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.136)
          to label %bb.hl unwind label %bb.hp     ; 0 uses

bb.hl:                                            ; preds = %bb.hk
  %i.zu = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.hm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637.thread

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.zu, ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 3279)
          to label %bb.hn unwind label %bb.hq

bb.hn:                                            ; preds = %bb.hm
  invoke void @__cxa_throw(ptr nonnull %i.zu, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hi
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640

bb.hp:                                            ; preds = %bb.hk, %bb.hj
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637.thread: ; preds = %bb.hl
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hn, %bb.hm
  %.0315 = phi i1 [ false, %bb.hn ], [ true, %bb.hm ] ; 2 uses
  %i.zy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.zz = load ptr, ptr %65, align 8, !tbaa !22   ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.aab = icmp eq ptr %i.zz, %i.aaa
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635: ; preds = %bb.hq
  %i.aac = load i64, ptr %i.aaa, align 8, !tbaa !27
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aad) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br i1 %.0315, label %bb.hr, label %bb.hs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637: ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br i1 %.0315, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637
  %.pn511702 = phi { ptr, i32 } [ %i.zx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637.thread ], [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %i.zy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635 ]
  call void @__cxa_free_exception(ptr %i.zu) #22
  br label %bb.hs

bb.hs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, %bb.hr, %bb.hp
  %.pn511.pn = phi { ptr, i32 } [ %.pn511702, %bb.hr ], [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %i.zw, %bb.hp ], [ %i.zy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635 ] ; 2 uses
  %i.aae = load ptr, ptr %63, align 8, !tbaa !22  ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.aag = icmp eq ptr %i.aae, %i.aaf
  br i1 %i.aag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638: ; preds = %bb.hs
  %i.aah = load i64, ptr %i.aaf, align 8, !tbaa !27
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638, %bb.ho
  %.pn511.pn.pn = phi { ptr, i32 } [ %i.zv, %bb.ho ], [ %.pn511.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638 ], [ %.pn511.pn, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  br label %bb.jh

._crit_edge770:                                   ; preds = %._crit_edge765, %.preheader
  %.7.lcssa = phi i32 [ %.6772, %.preheader ], [ %.8.lcssa, %._crit_edge765 ] ; 2 uses
  %i.aaj = icmp sgt i32 %.6772.a, -1
  br i1 %i.aaj, label %bb.jd, label %bb.je

bb.ht:                                            ; preds = %.lr.ph769, %._crit_edge765
  %indvars.iv814 = phi i64 [ 0, %.lr.ph769 ], [ %indvars.iv.next815, %._crit_edge765 ] ; 6 uses
  %i.aak = phi i32 [ %i.zq, %.lr.ph769 ], [ %i.adl, %._crit_edge765 ] ; 2 uses
  %.7767 = phi i32 [ %.6772, %.lr.ph769 ], [ %.8.lcssa, %._crit_edge765 ] ; 2 uses
  %i.aal = load double, ptr %i.xq, align 8, !tbaa !265
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv814 ; 2 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !137 ; 2 uses
  %i.aao = call noundef double @llvm.fabs.f64(double %i.aan) ; 2 uses
  %i.aap = fcmp ogt double %i.aao, 1.000000e+00
  %.sroa.speculated.i641 = select i1 %i.aap, double %i.aao, double 1.000000e+00
  %i.aaq = fmul double %i.aal, %.sroa.speculated.i641 ; 2 uses
  %i.aar = fadd double %i.aan, %i.aaq
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv814 ; 2 uses
  store double %i.aar, ptr %i.aas, align 8, !tbaa !137
  %i.aat = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 4 uses
  br i1 %i.xu, label %bb.hu, label %bb.ig

bb.hu:                                            ; preds = %bb.ht
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !10
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 88
  %i.aaw = load ptr, ptr %i.aav, align 8
  %i.aax = call noundef zeroext i1 %i.aaw(ptr noundef nonnull align 8 dereferenceable(12) %i.aat, i32 noundef %i.aak, ptr noundef nonnull %i.np, i1 noundef zeroext true, ptr noundef nonnull %i.xh)
  br i1 %i.aax, label %.loopexit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %bb.hw unwind label %bb.ib

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  %i.aay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.1)
          to label %bb.hx unwind label %bb.ic     ; 0 uses

bb.hx:                                            ; preds = %bb.hw
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.137)
          to label %bb.hy unwind label %bb.ic     ; 0 uses

bb.hy:                                            ; preds = %bb.hx
  %i.aba = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %bb.hz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644.thread

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.aba, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(32) %69, i32 noundef 3292)
          to label %bb.ia unwind label %bb.id

bb.ia:                                            ; preds = %bb.hz
  invoke void @__cxa_throw(ptr nonnull %i.aba, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.id

bb.ib:                                            ; preds = %bb.hv
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647

bb.ic:                                            ; preds = %bb.hx, %bb.hw
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644.thread: ; preds = %bb.hy
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br label %bb.ie

bb.id:                                            ; preds = %bb.ia, %bb.hz
  %.0312 = phi i1 [ false, %bb.ia ], [ true, %bb.hz ] ; 2 uses
  %i.abe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abf = load ptr, ptr %69, align 8, !tbaa !22  ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.abh = icmp eq ptr %i.abf, %i.abg
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642: ; preds = %bb.id
  %i.abi = load i64, ptr %i.abg, align 8, !tbaa !27
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abf, i64 noundef %i.abj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br i1 %.0312, label %bb.ie, label %bb.if

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br i1 %.0312, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644
  %.pn519705 = phi { ptr, i32 } [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644.thread ], [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %i.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642 ]
  call void @__cxa_free_exception(ptr %i.aba) #22
  br label %bb.if

bb.if:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %bb.ie, %bb.ic
  %.pn519.pn = phi { ptr, i32 } [ %.pn519705, %bb.ie ], [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %i.abc, %bb.ic ], [ %i.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642 ] ; 2 uses
  %i.abk = load ptr, ptr %67, align 8, !tbaa !22  ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.abm = icmp eq ptr %i.abk, %i.abl
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645: ; preds = %bb.if
  %i.abn = load i64, ptr %i.abl, align 8, !tbaa !27
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647: ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645, %bb.ib
  %.pn519.pn.pn = phi { ptr, i32 } [ %i.abb, %bb.ib ], [ %.pn519.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645 ], [ %.pn519.pn, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %bb.jh

bb.ig:                                            ; preds = %bb.ht
  %i.abp = load i32, ptr %i.b, align 4, !tbaa !97
  %i.abq = load i32, ptr %i.c, align 4, !tbaa !97
  %i.abr = load ptr, ptr %i.aat, align 8, !tbaa !10
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 104
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = call noundef zeroext i1 %i.abt(ptr noundef nonnull align 8 dereferenceable(12) %i.aat, i32 noundef %i.aak, ptr noundef nonnull %i.np, i1 noundef zeroext true, i32 noundef %i.abp, i32 noundef %i.abq, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.xn)
  br i1 %i.abu, label %bb.is, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %72)
          to label %bb.ii unwind label %bb.in

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  %i.abv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @.str.1)
          to label %bb.ij unwind label %bb.io     ; 0 uses

bb.ij:                                            ; preds = %bb.ii
  %i.abw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @.str.129)
          to label %bb.ik unwind label %bb.io     ; 0 uses

bb.ik:                                            ; preds = %bb.ij
  %i.abx = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %bb.il unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650.thread

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(112) %i.abx, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %73, i32 noundef 3299)
          to label %bb.im unwind label %bb.ip

bb.im:                                            ; preds = %bb.il
  invoke void @__cxa_throw(ptr nonnull %i.abx, ptr nonnull @_ZTIN5Ipopt11TNLPAdapter29ERROR_IN_TNLP_DERIVATIVE_TESTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #23
          to label %bb.ka unwind label %bb.ip

bb.in:                                            ; preds = %bb.ih
  %i.aby = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653

bb.io:                                            ; preds = %bb.ij, %bb.ii
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650.thread: ; preds = %bb.ik
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.iq

bb.ip:                                            ; preds = %bb.im, %bb.il
  %.0310 = phi i1 [ false, %bb.im ], [ true, %bb.il ] ; 2 uses
  %i.acb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.acc = load ptr, ptr %73, align 8, !tbaa !22  ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.ace = icmp eq ptr %i.acc, %i.acd
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %bb.ip
  %i.acf = load i64, ptr %i.acd, align 8, !tbaa !27
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br i1 %.0310, label %bb.iq, label %bb.ir

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br i1 %.0310, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
  %.pn515708 = phi { ptr, i32 } [ %i.aca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650.thread ], [ %i.acb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650 ], [ %i.acb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648 ]
  call void @__cxa_free_exception(ptr %i.abx) #22
  br label %bb.ir

bb.ir:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, %bb.iq, %bb.io
  %.pn515.pn = phi { ptr, i32 } [ %.pn515708, %bb.iq ], [ %i.acb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650 ], [ %i.abz, %bb.io ], [ %i.acb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648 ] ; 2 uses
  %i.ach = load ptr, ptr %71, align 8, !tbaa !22  ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.acj = icmp eq ptr %i.ach, %i.aci
  br i1 %i.acj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651: ; preds = %bb.ir
  %i.ack = load i64, ptr %i.aci, align 8, !tbaa !27
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651, %bb.in
  %.pn515.pn.pn = phi { ptr, i32 } [ %i.aby, %bb.in ], [ %.pn515.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651 ], [ %.pn515.pn, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  br label %bb.jh

bb.is:                                            ; preds = %bb.ig
  %i.acm = load i32, ptr %i.a, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.acm, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.xh, i32 noundef 1)
  %i.acn = load i32, ptr %i.a, align 4, !tbaa !97
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.acn, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.xb, i32 noundef 1)
  %i.aco = load i32, ptr %i.c, align 4, !tbaa !97 ; 2 uses
  %i.acp = icmp sgt i32 %i.aco, 0
  br i1 %i.acp, label %.lr.ph752.preheader, label %.loopexit

.lr.ph752.preheader:                              ; preds = %bb.is
  %wide.trip.count805 = zext nneg i32 %i.aco to i64
  br label %.lr.ph752

.lr.ph752:                                        ; preds = %.lr.ph752.preheader, %bb.iu
  %indvars.iv802 = phi i64 [ 0, %.lr.ph752.preheader ], [ %indvars.iv.next803, %bb.iu ] ; 5 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %indvars.iv802
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !97
  %i.acs = icmp eq i32 %i.acr, %.6772.a
  br i1 %i.acs, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %.lr.ph752
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv802
  %i.acu = load double, ptr %i.act, align 8, !tbaa !137
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %indvars.iv802
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !97
  %i.acx = sext i32 %i.acw to i64                 ; 2 uses
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.acx ; 2 uses
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !137
  %i.ada = fadd double %i.acu, %i.acz
  store double %i.ada, ptr %i.acy, align 8, !tbaa !137
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %.0343, i64 %indvars.iv802
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !137
  %i.add = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.acx ; 2 uses
  %i.ade = load double, ptr %i.add, align 8, !tbaa !137
  %i.adf = fadd double %i.adc, %i.ade
  store double %i.adf, ptr %i.add, align 8, !tbaa !137
  br label %bb.iu

bb.iu:                                            ; preds = %.lr.ph752, %bb.it
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 1 ; 2 uses
  %exitcond806.not = icmp eq i64 %indvars.iv.next803, %wide.trip.count805
  br i1 %exitcond806.not, label %.loopexit, label %.lr.ph752, !llvm.loop !274

.loopexit:                                        ; preds = %bb.iu, %bb.is, %bb.hu
  %i.adg = load i32, ptr %i.a, align 4, !tbaa !97 ; 3 uses
  %i.adh = icmp sgt i32 %i.adg, 0
  br i1 %i.adh, label %.lr.ph764, label %.loopexit.._crit_edge765_crit_edge

.loopexit.._crit_edge765_crit_edge:               ; preds = %.loopexit
  %.pre825 = sext i32 %i.adg to i64
  br label %._crit_edge765

.lr.ph764:                                        ; preds = %.loopexit
  %i.adi = add nuw nsw i64 %indvars.iv814, %i.xt  ; 2 uses
  %i.adj = trunc nuw nsw i64 %i.adi to i32
  %i.adk = trunc nuw nsw i64 %i.adi to i32
  br label %bb.iv

._crit_edge765:                                   ; preds = %bb.jc, %.loopexit.._crit_edge765_crit_edge
  %.pre-phi826 = phi i64 [ %.pre825, %.loopexit.._crit_edge765_crit_edge ], [ %i.afc, %bb.jc ]
  %i.adl = phi i32 [ %i.adg, %.loopexit.._crit_edge765_crit_edge ], [ %i.afb, %bb.jc ]
  %.8.lcssa = phi i32 [ %.7767, %.loopexit.._crit_edge765_crit_edge ], [ %.9, %bb.jc ] ; 2 uses
  %i.adm = load double, ptr %i.aam, align 8, !tbaa !137
  store double %i.adm, ptr %i.aas, align 8, !tbaa !137
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %i.adn = icmp slt i64 %indvars.iv.next815, %.pre-phi826
  br i1 %i.adn, label %bb.ht, label %._crit_edge770, !llvm.loop !275

bb.iv:                                            ; preds = %.lr.ph764, %bb.jc
  %indvars.iv811 = phi i64 [ 0, %.lr.ph764 ], [ %indvars.iv.next812, %bb.jc ] ; 6 uses
  %.8761 = phi i32 [ %.7767, %.lr.ph764 ], [ %.9, %bb.jc ]
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv811
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !137
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv811
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !137
  %i.ads = fsub double %i.adp, %i.adr
  %i.adt = fmul double %i.ads, 1.500000e+00
  %i.adu = fdiv double %i.adt, %i.aaq             ; 4 uses
  %i.adv = load i32, ptr %i.d, align 4, !tbaa !97 ; 2 uses
  %i.adw = icmp sgt i32 %i.adv, 0
  br i1 %i.adw, label %.lr.ph757.preheader, label %._crit_edge758

.lr.ph757.preheader:                              ; preds = %bb.iv
  %wide.trip.count809 = zext nneg i32 %i.adv to i64
  br label %.lr.ph757

._crit_edge758.loopexit:                          ; preds = %bb.ix
  %i.adx = select i1 %.1, i32 118, i32 32
  br label %._crit_edge758

._crit_edge758:                                   ; preds = %._crit_edge758.loopexit, %bb.iv
  %.0306.lcssa = phi double [ 0.000000e+00, %bb.iv ], [ %.1307, %._crit_edge758.loopexit ] ; 3 uses
  %.0305.lcssa = phi i32 [ 32, %bb.iv ], [ %i.adx, %._crit_edge758.loopexit ] ; 2 uses
  %i.ady = fsub double %i.adu, %.0306.lcssa
  %i.adz = call noundef double @llvm.fabs.f64(double %i.ady)
  %i.aea = call noundef double @llvm.fabs.f64(double %i.adu) ; 2 uses
  %i.aeb = load double, ptr %i.xr, align 8, !tbaa !266 ; 3 uses
  %i.aec = fcmp olt double %i.aea, %i.aeb
  %.sroa.speculated.i654 = select i1 %i.aec, double %i.aeb, double %i.aea
  %i.aed = fdiv double %i.adz, %.sroa.speculated.i654 ; 3 uses
  %i.aee = fcmp oge double %i.aed, %i.aeb         ; 3 uses
  %i.aef = zext i1 %i.aee to i32
  %.9 = add nsw i32 %.8761, %i.aef                ; 2 uses
  %.0 = select i1 %i.aee, i32 42, i32 32          ; 2 uses
  br i1 %i.aee, label %bb.iz, label %bb.iy

.lr.ph757:                                        ; preds = %.lr.ph757.preheader, %bb.ix
  %indvars.iv807 = phi i64 [ 0, %.lr.ph757.preheader ], [ %indvars.iv.next808, %bb.ix ] ; 4 uses
  %.0305754 = phi i1 [ false, %.lr.ph757.preheader ], [ %.1, %bb.ix ]
  %.0306753 = phi double [ 0.000000e+00, %.lr.ph757.preheader ], [ %.1307, %bb.ix ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv807
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !97
  %i.aei = zext i32 %i.aeh to i64                 ; 2 uses
  %i.aej = icmp eq i64 %indvars.iv814, %i.aei
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv807
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !97
  %i.aem = zext i32 %i.ael to i64                 ; 2 uses
  %i.aen = icmp eq i64 %indvars.iv811, %i.aem
  %or.cond922 = select i1 %i.aej, i1 %i.aen, i1 false
  br i1 %or.cond922, label %bb.iw, label %.lr.ph757._crit_edge

.lr.ph757._crit_edge:                             ; preds = %.lr.ph757
  %i.aeo = icmp eq i64 %indvars.iv814, %i.aem
  %i.aep = icmp eq i64 %indvars.iv811, %i.aei
  %or.cond709 = and i1 %i.aep, %i.aeo
  br i1 %or.cond709, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %.lr.ph757, %.lr.ph757._crit_edge
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv807
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !137
  %i.aes = fadd double %.0306753, %i.aer
  br label %bb.ix

bb.ix:                                            ; preds = %.lr.ph757._crit_edge, %bb.iw
  %.1307 = phi double [ %i.aes, %bb.iw ], [ %.0306753, %.lr.ph757._crit_edge ] ; 2 uses
  %.1 = phi i1 [ true, %bb.iw ], [ %.0305754, %.lr.ph757._crit_edge ] ; 2 uses
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %exitcond810.not = icmp eq i64 %indvars.iv.next808, %wide.trip.count809
  br i1 %exitcond810.not, label %._crit_edge758.loopexit, label %.lr.ph757, !llvm.loop !276

bb.iy:                                            ; preds = %._crit_edge758
  %i.aet = load i8, ptr %i.xs, align 8, !tbaa !267, !range !120, !noundef !121
  %i.aeu = trunc nuw i8 %i.aet to i1
  br i1 %i.aeu, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %bb.iy, %._crit_edge758
  %i.aev = load ptr, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %i.aew = add nuw nsw i64 %indvars.iv811, %i.xt
  %i.aex = load ptr, ptr %i.aev, align 8, !tbaa !10
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8          ; 2 uses
  %i.afa = trunc nuw nsw i64 %i.aew to i32        ; 2 uses
  br i1 %i.xu, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  call void (ptr, i32, i32, ptr, ...) %i.aez(ptr noundef nonnull align 8 dereferenceable(40) %i.aev, i32 noundef 4, i32 noundef 12, ptr noundef nonnull @.str.138, i32 noundef %.0, i32 noundef %i.adk, i32 noundef %i.afa, double noundef %.0306.lcssa, i32 noundef %.0305.lcssa, double noundef %i.adu, double noundef %i.aed)
  br label %bb.jc

bb.jb:                                            ; preds = %bb.iz
  call void (ptr, i32, i32, ptr, ...) %i.aez(ptr noundef nonnull align 8 dereferenceable(40) %i.aev, i32 noundef 4, i32 noundef 12, ptr noundef nonnull @.str.139, i32 noundef %.0, i32 noundef %76, i32 noundef %i.adj, i32 noundef %i.afa, double noundef %.0306.lcssa, i32 noundef %.0305.lcssa, double noundef %i.adu, double noundef %i.aed)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.ja, %bb.jb, %bb.iy
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %i.afb = load i32, ptr %i.a, align 4, !tbaa !97 ; 2 uses
  %i.afc = sext i32 %i.afb to i64                 ; 2 uses
  %i.afd = icmp slt i64 %indvars.iv.next812, %i.afc
  br i1 %i.afd, label %bb.iv, label %._crit_edge765, !llvm.loop !277

bb.jd:                                            ; preds = %._crit_edge770
  %77 = zext nneg i32 %.6772.a to i64
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %.0320, i64 %77
  store double 0.000000e+00, ptr %i.afe, align 8, !tbaa !137
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %._crit_edge770
  %78 = add nsw i32 %.6772.a, 1                   ; 2 uses
  %i.aff = load i32, ptr %i.b, align 4, !tbaa !97
  %i.afg = icmp slt i32 %78, %i.aff
  br i1 %i.afg, label %bb.hb, label %._crit_edge776, !llvm.loop !278

._crit_edge776:                                   ; preds = %bb.je, %bb.ha
  %.6.lcssa = phi i32 [ %.5, %bb.ha ], [ %.7.lcssa, %bb.je ]
  call void @_ZdaPv(ptr noundef nonnull %i.un) #24
  call void @_ZdaPv(ptr noundef nonnull %i.ut) #24
  call void @_ZdaPv(ptr noundef nonnull %i.wp) #24
  %i.afh = icmp eq ptr %.0320, null
  br i1 %i.afh, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %._crit_edge776
  call void @_ZdaPv(ptr noundef nonnull %.0320) #24
  br label %bb.jg

bb.jg:                                            ; preds = %._crit_edge776, %bb.jf
  call void @_ZdaPv(ptr noundef nonnull %i.xb) #24
  call void @_ZdaPv(ptr noundef nonnull %i.xh) #24
  call void @_ZdaPv(ptr noundef nonnull %i.xn) #24
  br label %bb.ji

bb.jh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
  %.pn519.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn507.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ], [ %.pn511.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640 ], [ %.pn519.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647 ], [ %.pn515.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.jw

bb.ji:                                            ; preds = %bb.jg, %.loopexit715
  %.10 = phi i32 [ %.6.lcssa, %bb.jg ], [ %.5, %.loopexit715 ] ; 2 uses
  call void @_ZdaPv(ptr noundef nonnull %i.dz) #24
  %i.afi = icmp eq ptr %.0352, null
  br i1 %i.afi, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  call void @_ZdaPv(ptr noundef nonnull %.0352) #24
  br label %bb.jk

bb.jk:                                            ; preds = %bb.ji, %bb.jj
  call void @_ZdaPv(ptr noundef nonnull %i.jd) #24
  call void @_ZdaPv(ptr noundef nonnull %i.np) #24
  %i.afj = icmp eq ptr %.0345, null
  br i1 %i.afj, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @_ZdaPv(ptr noundef nonnull %.0345) #24
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.afk = icmp eq ptr %.0344, null
  br i1 %i.afk, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @_ZdaPv(ptr noundef nonnull %.0344) #24
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %i.afl = icmp eq ptr %.0343, null
  br i1 %i.afl, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @_ZdaPv(ptr noundef nonnull %.0343) #24
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.afm = icmp eq ptr %.0337, null
  br i1 %i.afm, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @_ZdaPv(ptr noundef nonnull %.0337) #24
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.afn = icmp eq i32 %.10, 0
  %i.afo = load ptr, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !10
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afr = load ptr, ptr %i.afq, align 8          ; 2 uses
  br i1 %i.afn, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  call void (ptr, i32, i32, ptr, ...) %i.afr(ptr noundef nonnull align 8 dereferenceable(40) %i.afo, i32 noundef 3, i32 noundef 12, ptr noundef nonnull @.str.140)
  br label %bb.jv

bb.ju:                                            ; preds = %bb.js
  call void (ptr, i32, i32, ptr, ...) %i.afr(ptr noundef nonnull align 8 dereferenceable(40) %i.afo, i32 noundef 4, i32 noundef 12, ptr noundef nonnull @.str.141, i32 noundef %.10)
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.jz

bb.jw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %bb.gl, %bb.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
  %.pn530.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn487.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587 ], [ %.pn491.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn495.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %.pn499.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605 ], [ %.pn503.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611 ], [ %.pn530.pn.pn.pn, %bb.gl ], [ %.pn519.pn.pn.pn.pn.pn, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.jx

bb.jx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580, %bb.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %.pn530.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn463.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ], [ %.pn479.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ], [ %.pn475.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %.pn471.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562 ], [ %.pn467.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %.pn530.pn.pn.pn.pn.pn.pn.pn, %bb.jw ], [ %.pn483.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
  %.pn530.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn530.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jx ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ]
  resume { ptr, i32 } %.pn530.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.jz:                                            ; preds = %bb.a, %bb.jv
  ret i1 true

bb.ka:                                            ; preds = %bb.im, %bb.ia, %bb.hn, %bb.gs, %bb.fu, %bb.fe, %bb.eo, %bb.ec, %bb.dp, %bb.dd, %bb.cq, %bb.cb, %bb.bp, %bb.bd, %bb.ar, %bb.af, %bb.t, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 17, ptr %i.a, align 8, !tbaa !56
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !22
  %i.d = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.149, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !57
  %i.f = load ptr, ptr %4, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt17INVALID_WARMSTARTE, i64 16), ptr %0, align 8, !tbaa !10
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !27
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.l
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt19INCONSISTENT_BOUNDSC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 19, ptr %i.a, align 8, !tbaa !56
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !22
  %i.d = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.150, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !57
end_hunk_1
