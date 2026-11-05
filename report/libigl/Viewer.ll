Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/Viewer?download=true
inline.NumInlined: 3854
inline.NumDeleted: 1142
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3igl11deserializeIfEEbRT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIcS7_E:bb.a
  %.sroa.042.4 = phi ptr [ %i.ad, %.noexc25 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22 unwind label %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp

.lr.ph.i11:                                       ; preds = %.noexc25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18
  %.sroa.042.3 = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ], [ %i.ad, %.noexc25 ] ; 2 uses
  %.057.i12 = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ], [ 0, %.noexc25 ] ; 4 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !156 ; 2 uses
  %.not.i.i13 = icmp ult i64 %.057.i12, %i.ae
  br i1 %.not.i.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i11
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.24, i64 noundef %.057.i12, i64 noundef %i.ae) #34
          to label %.noexc.i17 unwind label %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp

.noexc.i17:                                       ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18: ; preds = %.lr.ph.i11
  %i.af = load ptr, ptr %3, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.057.i12
  %i.ah = load i8, ptr %.sroa.042.3, align 1, !tbaa !138
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.042.3, i64 1 ; 2 uses
  %i.aj = add nuw i64 %.057.i12, 1                ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %i.aj, %i.ac
  br i1 %exitcond.not.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21, label %.lr.ph.i11, !llvm.loop !19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21
  %i.ak = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.j
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22
  %i.am = load i64, ptr %i.j, align 8, !tbaa !138
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24

.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21, %bb.d
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14: ; preds = %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !138
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15: ; preds = %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.as = load i64, ptr %.sroa.042.4, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.042.4, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.e, align 8, !tbaa !156 ; 3 uses
  %i.av = load i64, ptr %i.l, align 8, !tbaa !156
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.ay = load ptr, ptr %1, align 8, !tbaa !79
  %i.az = load ptr, ptr %5, align 8, !tbaa !79
  %bcmp.i = call i32 @bcmp(ptr %i.az, ptr %i.ay, i64 %i.au)
  %i.ba = icmp eq i32 %bcmp.i, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIf, i64 8), align 8, !tbaa !216 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !138
  %i.bd = icmp eq i8 %i.bc, 42
  %.idx.i = zext i1 %i.bd to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !156 ; 3 uses
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #30
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.bj = load ptr, ptr %6, align 8, !tbaa !79
  %bcmp.i29 = call i32 @bcmp(ptr %i.bj, ptr nonnull %i.be, i64 %i.bf)
  %i.bk = icmp eq i32 %bcmp.i29, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %i.bl, %bb.g ], [ %lpad.loopexit.split-lp166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15 ]
  %i.bm = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.f
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !138
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bq = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !138
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %eh.lpad-body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.047.1 = phi ptr [ %i.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.047.0103, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.047.0103, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.sroa.047.0103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24 ], [ %.sroa.047.0103, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 6 uses
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 %i.as ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.f
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !138
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bz = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.d
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !138
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !212
  %.not = icmp eq ptr %i.bu, %i.cd
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !379

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.not152 = icmp eq ptr %.sroa.047.1, %i.bu
  br i1 %.not152, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ce = load i8, ptr %.sroa.047.1, align 1, !tbaa !138
  store i8 %i.ce, ptr %0, align 4, !tbaa !138
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !138
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !138
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !138
  store i8 %i.ck, ptr %i.cj, align 2, !tbaa !138
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 3
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !138
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !138
  br label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  store float 0.000000e+00, ptr %0, align 4, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.h
  %.lcssa63142 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.h ]
  ret i1 %.lcssa63142
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl9serializeIN5Eigen10QuaternionIfLi0EEEEEbRKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcSB_E(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36 ; 4 uses
  %4 = load <16 x i8>, ptr %0, align 16, !tbaa !138
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <16 x i8> %5, ptr %i.b, align 1, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 27, ptr %i.a, align 8, !tbaa !155
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !79
  %i.e = load i64, ptr %i.a, align 8, !tbaa !155  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @_ZTSN5Eigen10QuaternionIfLi0EEE, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !156
  %i.g = load ptr, ptr %3, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !156  ; 4 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !193    ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = add i64 %i.j, 40
  %i.s = add i64 %i.r, %i.k                       ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, %i.q
  br i1 %i.u, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.s)
          to label %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge unwind label %bb.e

._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge:    ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !212
  %.pre61 = load i64, ptr %i.i, align 8, !tbaa !156
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.b:                                             ; preds = %.noexc
  %i.v = icmp ult i64 %i.t, %i.q
  br i1 %i.v, label %bb.c, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.w, ptr %i.l, align 8, !tbaa !195
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i, %bb.c, %bb.b
  %i.x = phi i64 [ %.pre61, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.j, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  %i.y = phi ptr [ %.pre, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.n, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.x, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 7 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !79    ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !156 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %.not14.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not14.i, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = add i64 %i.z, %i.o
  %i.ah = add i64 %i.p, %i.ad
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, 7
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, -32                     ; 5 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %n.vec ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ac, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep70, align 1, !tbaa !138
  %wide.load71 = load <16 x i8>, ptr %i.an, align 1, !tbaa !138
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !138
  store <16 x i8> %wide.load71, ptr %i.ao, align 1, !tbaa !138
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !213

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.ae, -8                    ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 %n.vec72 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ac, i64 %n.vec72
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 3 uses
  %next.gep74 = getelementptr i8, ptr %i.ab, i64 %index73
  %next.gep75 = getelementptr i8, ptr %i.ac, i64 %index73
  %wide.load76 = load <8 x i8>, ptr %next.gep75, align 1, !tbaa !138
  store <8 x i8> %wide.load76, ptr %next.gep74, align 1, !tbaa !138
  %index.next77 = add nuw i64 %index73, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !381

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.ae, %n.vec72
  br i1 %cmp.n78, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.0.copyload.i9.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.015.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %i.at = add i64 %i.ae, %i.ad                    ; 2 uses
  %.sroa.010.015.i.ph118 = ptrtoaddr ptr %.sroa.010.015.i.ph to i64 ; 2 uses
  %i.au = sub i64 %i.at, %.sroa.010.015.i.ph118
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.0.copyload.i9.i.prol = phi ptr [ %i.aw, %.lr.ph.i.prol ], [ %.sroa.0.0.copyload.i9.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.010.015.i.prol = phi ptr [ %i.ax, %.lr.ph.i.prol ], [ %.sroa.010.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.av = load i8, ptr %.sroa.010.015.i.prol, align 1, !tbaa !138
  store i8 %i.av, ptr %.sroa.0.0.copyload.i9.i.prol, align 1, !tbaa !138
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i.prol, i64 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !382

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.aw, %.lr.ph.i.prol ]
  %.sroa.0.0.copyload.i9.i.unr = phi ptr [ %.sroa.0.0.copyload.i9.i.ph, %.lr.ph.i.preheader ], [ %i.aw, %.lr.ph.i.prol ]
  %.sroa.010.015.i.unr = phi ptr [ %.sroa.010.015.i.ph, %.lr.ph.i.preheader ], [ %i.ax, %.lr.ph.i.prol ]
  %i.ay = sub i64 %.sroa.010.015.i.ph118, %i.at
  %i.az = icmp ugt i64 %i.ay, -8
  br i1 %i.az, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.0.copyload.i9.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.sroa.0.0.copyload.i9.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.sroa.010.015.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.sroa.010.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ba = load i8, ptr %.sroa.010.015.i, align 1, !tbaa !138
  store i8 %i.ba, ptr %.sroa.0.0.copyload.i9.i, align 1, !tbaa !138
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !138
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !138
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !138
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !138
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !138
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 5
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !138
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !138
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !138
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 7
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !138
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !138
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3igl11deserializeIN5Eigen10QuaternionIfLi0EEEEEbRT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIcSA_E:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ad = load i64, ptr %.sroa.043.2, align 1     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.k, ptr %3, align 8, !tbaa !154
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ad, i8 noundef signext 0)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.043.2, i64 8 ; 2 uses
  %.not.i10 = icmp eq i64 %i.ad, 0
  br i1 %.not.i10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21, label %.lr.ph.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18, %.noexc25
  %.sroa.043.4 = phi ptr [ %i.ae, %.noexc25 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22 unwind label %.loopexit.split-lp56.loopexit.split-lp.loopexit.split-lp

.lr.ph.i11:                                       ; preds = %.noexc25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18
  %.sroa.043.3 = phi ptr [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ], [ %i.ae, %.noexc25 ] ; 2 uses
  %.057.i12 = phi i64 [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18 ], [ 0, %.noexc25 ] ; 4 uses
  %i.af = load i64, ptr %i.l, align 8, !tbaa !156 ; 2 uses
  %.not.i.i13 = icmp ult i64 %.057.i12, %i.af
  br i1 %.not.i.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i11
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.24, i64 noundef %.057.i12, i64 noundef %i.af) #34
          to label %.noexc.i17 unwind label %.loopexit.split-lp56.loopexit.split-lp.loopexit.split-lp

.noexc.i17:                                       ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i18: ; preds = %.lr.ph.i11
  %i.ag = load ptr, ptr %3, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.057.i12
  %i.ai = load i8, ptr %.sroa.043.3, align 1, !tbaa !138
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.043.3, i64 1 ; 2 uses
  %i.ak = add nuw i64 %.057.i12, 1                ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21, label %.lr.ph.i11, !llvm.loop !19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21
  %i.al = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.k
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22
  %i.an = load i64, ptr %i.k, align 8, !tbaa !138
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24

.loopexit.split-lp56.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.i21, %bb.d
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14: ; preds = %.loopexit.split-lp56.loopexit.split-lp.loopexit.split-lp
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !138
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15: ; preds = %.loopexit.split-lp56.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.at = load i64, ptr %.sroa.043.4, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.043.4, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.f, align 8, !tbaa !156 ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !156
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.az = load ptr, ptr %1, align 8, !tbaa !79
  %i.ba = load ptr, ptr %5, align 8, !tbaa !79
  %bcmp.i = call i32 @bcmp(ptr %i.ba, ptr %i.az, i64 %i.av)
  %i.bb = icmp eq i32 %bcmp.i, 0
  %i.bc = load i64, ptr %i.h, align 8
  %i.bd = icmp eq i64 %i.bc, 27
  %or.cond = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.e
  %.old = load i64, ptr %i.h, align 8, !tbaa !156
  %.old154 = icmp eq i64 %.old, 27
  br i1 %.old154, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.be = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bf = load i128, ptr %i.be, align 1
  %i.bg = xor i128 %i.bf, 146809059122212410516703339845031114062
  %i.bh = getelementptr i8, ptr %i.be, i64 11
  %i.bi = load i128, ptr %i.bh, align 1
  %i.bj = xor i128 %i.bi, 92076403514200838416161957364170585185
  %i.bk = or i128 %i.bg, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  %spec.select = select i1 %i.bn, ptr %i.au, ptr %.sroa.048.0107
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %i.bo, %bb.f ], [ %lpad.loopexit.split-lp170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i15 ]
  %i.bp = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.g
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.br = load i64, ptr %i.g, align 8, !tbaa !138
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bt = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.e
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !138
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %eh.lpad-body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.048.1 = phi ptr [ %.sroa.048.0107, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.048.0107, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.sroa.048.0107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24 ] ; 20 uses
  %i.bx = getelementptr inbounds i8, ptr %i.au, i64 %i.at ; 3 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.g
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53
  %i.ca = load i64, ptr %i.g, align 8, !tbaa !138
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cc = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.e
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !138
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !212
  %.not = icmp eq ptr %i.bx, %i.cg
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !388

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.not155 = icmp eq ptr %.sroa.048.1, %i.bx
  br i1 %.not155, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.sroa.048.1.lcssa167 = ptrtoaddr ptr %.sroa.048.1 to i64 ; 2 uses
  %i.ch = add i64 %.sroa.048.1.lcssa167, 16
  %i.ci = add nuw i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.ch, %i.a
  %rt.bound1 = icmp ugt i64 %i.ci, %.sroa.048.1.lcssa167
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !389

._crit_edge.thread:                               ; preds = %.rtvec, %.rtscalar, %bb.a, %._crit_edge
  %.lcssa67145 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %.rtscalar ], [ true, %.rtvec ]
  ret i1 %.lcssa67145

.rtvec:                                           ; preds = %bb.g
  %7 = load <16 x i8>, ptr %.sroa.048.1, align 1, !tbaa !138
  %8 = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3>
  store <16 x i8> %8, ptr %0, align 16, !tbaa !138
  br label %._crit_edge.thread

.rtscalar:                                        ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load i8, ptr %.sroa.048.1, align 1, !tbaa !138
  store i8 %i.ck, ptr %i.cj, align 4, !tbaa !138
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !138
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !138
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !138
  store i8 %i.cq, ptr %i.cp, align 2, !tbaa !138
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !138
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !138
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !138
  store i8 %i.cv, ptr %0, align 16, !tbaa !138
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 5
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !138
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !138
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 6
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !138
  store i8 %i.db, ptr %i.da, align 2, !tbaa !138
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 7
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !138
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !138
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !138
  store i8 %i.dh, ptr %i.dg, align 4, !tbaa !138
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !138
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !138
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 10
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !138
  store i8 %i.dn, ptr %i.dm, align 2, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 11
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !138
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !138
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !138
  store i8 %i.dt, ptr %i.ds, align 8, !tbaa !138
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 13
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !138
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !138
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 14
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !138
  store i8 %i.dz, ptr %i.dy, align 2, !tbaa !138
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.048.1, i64 15
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !138
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !138
  br label %._crit_edge.thread
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl9serializeINS_6opengl10ViewerCore12RotationTypeEEEbRKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcSB_E(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #36 ; 4 uses
  %i.c = load <4 x i8>, ptr %0, align 4, !tbaa !138
  store <4 x i8> %i.c, ptr %i.b, align 1, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !155
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %3, align 8, !tbaa !79
  %i.f = load i64, ptr %i.a, align 8, !tbaa !155  ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.e, ptr noundef nonnull align 1 dereferenceable(39) @_ZTSN3igl6opengl10ViewerCore12RotationTypeE, i64 39, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !156  ; 4 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !193    ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = add i64 %i.j, 28
  %i.s = add i64 %i.r, %i.k                       ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, %i.q
  br i1 %i.u, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.s)
          to label %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge unwind label %bb.e

._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge:    ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !212
  %.pre61 = load i64, ptr %i.i, align 8, !tbaa !156
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.b:                                             ; preds = %.noexc
  %i.v = icmp ult i64 %i.t, %i.q
  br i1 %i.v, label %bb.c, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.w, ptr %i.l, align 8, !tbaa !195
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i, %bb.c, %bb.b
  %i.x = phi i64 [ %.pre61, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.j, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  %i.y = phi ptr [ %.pre, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.n, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.x, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 7 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !79    ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !156 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %.not14.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not14.i, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = add i64 %i.z, %i.o
  %i.ah = add i64 %i.p, %i.ad
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, 7
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, -32                     ; 5 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %n.vec ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ac, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep70, align 1, !tbaa !138
  %wide.load71 = load <16 x i8>, ptr %i.an, align 1, !tbaa !138
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !138
  store <16 x i8> %wide.load71, ptr %i.ao, align 1, !tbaa !138
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !213

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.ae, -8                    ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 %n.vec72 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ac, i64 %n.vec72
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 3 uses
  %next.gep74 = getelementptr i8, ptr %i.ab, i64 %index73
end_hunk_1
